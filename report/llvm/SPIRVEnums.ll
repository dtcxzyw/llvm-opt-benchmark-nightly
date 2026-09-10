Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVEnums?download=true
inline.NumInlined: 9139
inline.NumDeleted: 1393
begin_hunk_0_@_ZN4mlir5spirv24stringifyFunctionControlB5cxx11ENS0_15FunctionControlE:bb.a
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit16
  %.pre34 = phi i32 [ %i.y, %bb.j ], [ %.pre34.pre, %bb.i ], [ %.pre34.pre35, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit16 ] ; 3 uses
  %i.z = and i32 %1, 65536
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !20
  %.not.i20 = icmp ult i32 %.pre34, %i.aa
  br i1 %.not.i20, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.222, i64 12)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !19, !noalias !50
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

bb.m:                                             ; preds = %bb.k
  %i.ab = zext i32 %.pre34 to i64
  %i.ac = load ptr, ptr %2, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr @.str.222, ptr %i.ad, align 1
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 12, ptr %.sroa.3.0..sroa_idx.i21, align 1
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !19
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22: ; preds = %bb.m, %bb.l, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %i.ag = phi i32 [ %i.af, %bb.m ], [ %.pre, %bb.l ], [ %.pre34, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19 ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !18, !noalias !50 ; 2 uses
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ah, ptr noundef %i.aj, ptr nonnull @.str.655, i64 1)
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22
  call void @free(ptr noundef %i.ak) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv24symbolizeFunctionControlEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread125

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736270
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread125

_ZN4llvmeqENS_9StringRefES0_.exit.thread125:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !20
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.655, i64 1, i32 noundef -1, i1 noundef zeroext true) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not172 = icmp eq i32 %i.j, 0
  br i1 %.not172, label %.thread168, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread125
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52
  %.0174 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52 ]
  %.016173 = phi ptr [ %i.i, %.lr.ph ], [ %i.bo, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016173, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.656, i64 6, i64 noundef 0) #16
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 9 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread148 [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1768713801
  %i.ac = getelementptr i8, ptr %i.z, i64 4
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i32
  %i.af = xor i32 %i.ae, 25966
  %i.ag = or i32 %i.ab, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %bb.b
  %i.aj = load i64, ptr %i.z, align 1
  %i.ak = xor i64 %i.aj, 7596567933232246596
  %i.al = getelementptr i8, ptr %i.z, i64 8
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i64
  %i.ao = xor i64 %i.an, 25966
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.as = load i32, ptr %i.z, align 1
  %i.at = icmp ne i32 %i.as, 1701999952
  %i.au = zext i1 %i.at to i32
  %.not.i.i32 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.av = load i32, ptr %i.z, align 1
  %i.aw = xor i32 %i.av, 1936617283
  %i.ax = getelementptr i8, ptr %i.z, i64 4
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = xor i32 %i.az, 116
  %i.bb = or i32 %i.aw, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i41 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.be = load i64, ptr %i.z, align 1
  %i.bf = xor i64 %i.be, 5288754761753194575
  %i.bg = getelementptr i8, ptr %i.z, i64 8
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = xor i64 %i.bi, 1279611982
  %i.bk = or i64 %i.bf, %i.bj
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i50 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

.thread148:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread168

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %.sroa.14.4 = phi i32 [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ]
  %i.bn = or i32 %.sroa.14.4, %.0174              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bo = getelementptr inbounds nuw i8, ptr %.016173, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.l
  br i1 %.not, label %.thread168.loopexit, label %bb.b

.thread168.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52
  %i.bp = zext i32 %i.bn to i64
  %i.bq = or disjoint i64 %i.bp, 4294967296
  br label %.thread168

.thread168:                                       ; preds = %.thread168.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread125, %.thread148
  %.sroa.3.3 = phi i64 [ 0, %.thread148 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread125 ], [ %i.bq, %.thread168.loopexit ]
  %i.br = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread168
  call void @free(ptr noundef %i.br) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread168, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

declare void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv24symbolizeFunctionControlEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -65552
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv23stringifyGroupOperationENS0_14GroupOperationE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 9
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv23stringifyGroupOperationENS0_14GroupOperationE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv23stringifyGroupOperationENS0_14GroupOperationE.5, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.9.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967305) i64 @_ZN4mlir5spirv23symbolizeGroupOperationEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57 [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
    i64 26, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i44
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1969513810
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 25955
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %.thread180

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 8532477917196938825
  %i.l = getelementptr i8, ptr %0, i64 5
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 7953747626748701043
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  %i.r = load i64, ptr %0, align 1
  %i.s = xor i64 %i.r, 8532477917196941381
  %i.t = getelementptr i8, ptr %0, i64 5
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 7953747626748701043
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.i19 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %.thread180

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.z = load i64, ptr %0, align 1
  %i.aa = xor i64 %i.z, 7310016696003423299
  %i.ab = getelementptr i8, ptr %0, i64 7
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 7305812094582154341
  %i.ae = or i64 %i.aa, %i.ad
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not.i.i28 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %.thread180

_ZN4llvmneENS_9StringRefES0_.exit.i.i35:          ; preds = %bb.a
  %i.ah = load i128, ptr %0, align 1
  %i.ai = xor i128 %i.ah, 132203106583659167741251911013499035984
  %i.aj = getelementptr i8, ptr %0, i64 3
  %i.ak = load i128, ptr %i.aj, align 1
  %i.al = xor i128 %i.ak, 114720663195757656565575955968869820788
  %i.am = or i128 %i.ai, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not.i.i37 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i37, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %.thread180

.thread180:                                       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57

_ZN4llvmneENS_9StringRefES0_.exit.i.i44:          ; preds = %bb.a
  %i.ap = load i128, ptr %0, align 1
  %i.aq = xor i128 %i.ap, 156082460263919333893180172407703494992
  %i.ar = getelementptr i8, ptr %0, i64 10
  %i.as = load i128, ptr %i.ar, align 1
  %i.at = xor i128 %i.as, 114720845573396483150810459331030305124
  %i.au = or i128 %i.aq, %i.at
  %i.av = icmp ne i128 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not.i.i46 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i46, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i53

_ZN4llvmneENS_9StringRefES0_.exit.i.i53:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i44
  %i.ax = load i128, ptr %0, align 1
  %i.ay = xor i128 %i.ax, 156082461054963018996538168068243874128
  %i.az = getelementptr i8, ptr %0, i64 10
  %i.ba = load i128, ptr %i.az, align 1
  %i.bb = xor i128 %i.ba, 114720845573396483150810459331030959460
  %i.bc = or i128 %i.ay, %i.bb
  %i.bd = icmp ne i128 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not.i.i55 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not.i.i55, i64 4294967304, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14GroupOperationEES5_E4CaseENS_13StringLiteralES5_.exit57: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread180
  %.sroa.26.6 = phi i64 [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 4294967303, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44 ], [ %i.bf, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53 ], [ 0, %.thread180 ], [ 4294967302, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35 ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967299, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 0, %bb.a ]
  ret i64 %.sroa.26.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967305) i64 @_ZN4mlir5spirv23symbolizeGroupOperationEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 9
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv23symbolizeGroupOperationEj, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.8.0 = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.sroa.8.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv20stringifyImageFormatENS0_11ImageFormatE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 42
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv20stringifyImageFormatENS0_11ImageFormatE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv20stringifyImageFormatENS0_11ImageFormatE.6, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.44.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
end_hunk_0
begin_hunk_1_@_ZN4mlir5spirv22symbolizeImageOperandsEN4llvm9StringRefE:bb.a
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = icmp ne i32 %i.aa, 1935763778
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %bb.b
  %i.ad = load i16, ptr %i.z, align 1
  %i.ae = xor i16 %i.ad, 28492
  %i.af = getelementptr i8, ptr %i.z, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  %i.ai = xor i16 %i.ah, 100
  %i.aj = or i16 %i.ae, %i.ai
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not.i.i23 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.am = load i32, ptr %i.z, align 1
  %i.an = icmp ne i32 %i.am, 1684107847
  %i.ao = zext i1 %i.an to i32
  %.not.i.i32 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ap = load i64, ptr %i.z, align 1
  %i.aq = xor i64 %i.ap, 7378672401064554307
  %i.ar = getelementptr i8, ptr %i.z, i64 3
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 8387236764687758451
  %i.au = or i64 %i.aq, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not.i.i41 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i147

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.ax = load i32, ptr %i.z, align 1
  %i.ay = xor i32 %i.ax, 1936090703
  %i.az = getelementptr i8, ptr %i.z, i64 4
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.bb, 29797
  %i.bd = or i32 %i.ay, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %bb.b
  %i.bg = load i64, ptr %i.z, align 1
  %i.bh = xor i64 %i.bg, 7378672401064554307
  %i.bi = getelementptr i8, ptr %i.z, i64 8
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = xor i64 %i.bk, 1937007987
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i59 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %i.bp = load i32, ptr %i.z, align 1
  %i.bq = xor i32 %i.bp, 1886216531
  %i.br = getelementptr i8, ptr %i.z, i64 4
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i32
  %i.bu = xor i32 %i.bt, 25964
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %.not.i.i68 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i75

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  %i.by = load i32, ptr %i.z, align 1
  %i.bz = xor i32 %i.by, 1282304333
  %i.ca = getelementptr i8, ptr %i.z, i64 4
  %i.cb = load i16, ptr %i.ca, align 1
  %i.cc = zext i16 %i.cb to i32
  %i.cd = xor i32 %i.cc, 25711
  %i.ce = or i32 %i.bz, %i.cd
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %.not.i.i77 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i84:          ; preds = %bb.b
  %i.ch = load i128, ptr %i.z, align 1
  %i.ci = xor i128 %i.ch, 130770195231556900355468233481340543309
  %i.cj = getelementptr i8, ptr %i.z, i64 16
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = zext i16 %i.ck to i128
  %i.cm = xor i128 %i.cl, 25964
  %i.cn = or i128 %i.ci, %i.cm
  %i.co = icmp ne i128 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not.i.i86 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i86, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i93:          ; preds = %bb.b
  %i.cq = load i128, ptr %i.z, align 1
  %i.cr = icmp ne i128 %i.cq, 134814791665814607872214611969614504269
  %i.cs = zext i1 %i.cr to i32
  %.not.i.i95 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i95, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i102:         ; preds = %bb.b
  %i.ct = load i64, ptr %i.z, align 1
  %i.cu = xor i64 %i.ct, 7022916608627470158
  %i.cv = getelementptr i8, ptr %i.z, i64 7
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 7810781505346958433
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not.i.i104 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i111:         ; preds = %bb.b
  %i.db = load i64, ptr %i.z, align 1
  %i.dc = xor i64 %i.db, 7308332243887091542
  %i.dd = getelementptr i8, ptr %i.z, i64 5
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = xor i64 %i.de, 7810781505346956393
  %i.dg = or i64 %i.dc, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not.i.i113 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i113, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %bb.b
  %i.dj = load i64, ptr %i.z, align 1
  %i.dk = xor i64 %i.dj, 7310600334729505107
  %i.dl = getelementptr i8, ptr %i.z, i64 8
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = zext i16 %i.dm to i64
  %i.do = xor i64 %i.dn, 25710
  %i.dp = or i64 %i.dk, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i122 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i138

_ZN4llvmneENS_9StringRefES0_.exit.i.i129:         ; preds = %bb.b
  %i.ds = load i32, ptr %i.z, align 1
  %i.dt = xor i32 %i.ds, 1936090703
  %i.du = getelementptr i8, ptr %i.z, i64 3
  %i.dv = load i32, ptr %i.du, align 1
  %i.dw = xor i32 %i.dv, 1937007987
  %i.dx = or i32 %i.dt, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i131 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i138:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
  %i.ea = load i64, ptr %i.z, align 1
  %i.eb = xor i64 %i.ea, 7310600334747002202
  %i.ec = getelementptr i8, ptr %i.z, i64 8
  %i.ed = load i16, ptr %i.ec, align 1
  %i.ee = zext i16 %i.ed to i64
  %i.ef = xor i64 %i.ee, 25710
  %i.eg = or i64 %i.eb, %i.ef
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %.not.i.i140 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i140, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

_ZN4llvmneENS_9StringRefES0_.exit.i.i147:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %i.ej = load i64, ptr %i.z, align 1
  %i.ek = xor i64 %i.ej, 8030038418114113358
  %i.el = getelementptr i8, ptr %i.z, i64 3
  %i.em = load i64, ptr %i.el, align 1
  %i.en = xor i64 %i.em, 7809649051790304628
  %i.eo = or i64 %i.ek, %i.en
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %.not.i.i149 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151, label %.thread467

.thread467:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread487

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147
  %.sroa.36.15 = phi i32 [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129 ], [ 8192, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138 ], [ 2048, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111 ], [ 4096, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120 ], [ 512, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93 ], [ 1024, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 16384, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147 ]
  %i.er = or i32 %.sroa.36.15, %.0552             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.es = getelementptr inbounds nuw i8, ptr %.016551, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.es, %i.l
  br i1 %.not, label %.thread487.loopexit, label %bb.b

.thread487.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151
  %i.et = zext i32 %i.er to i64
  %i.eu = or disjoint i64 %i.et, 4294967296
  br label %.thread487

.thread487:                                       ; preds = %.thread487.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread356, %.thread467
  %.sroa.3.3 = phi i64 [ 0, %.thread467 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread356 ], [ %i.eu, %.thread487.loopexit ]
  %i.ev = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.f
  br i1 %i.ew, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread487
  call void @free(ptr noundef %i.ev) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread487, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv22symbolizeImageOperandsEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -98304
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv20stringifyLinkageTypeENS0_11LinkageTypeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv20stringifyLinkageTypeENS0_11LinkageTypeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv20stringifyLinkageTypeENS0_11LinkageTypeE.7, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.6.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir5spirv20symbolizeLinkageTypeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30 [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1869641797
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 29810
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1869638985
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = xor i32 %i.n, 29810
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.i10 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30, label %.thread89

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.s = load i64, ptr %0, align 1
  %i.t = xor i64 %i.s, 7305804307908946252
  %i.u = getelementptr i8, ptr %0, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 5927950306404880235
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i19 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30, label %.thread89

.thread89:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.aa = load i32, ptr %0, align 1
  %i.ab = icmp ne i32 %i.aa, 1801545047
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i28 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i.i28, i64 4294967299, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11LinkageTypeEES5_E4CaseENS_13StringLiteralES5_.exit30: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread89
  %.sroa.17.3 = phi i64 [ 0, %bb.a ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ %i.ad, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 0, %.thread89 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.17.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir5spirv20symbolizeLinkageTypeEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.5.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.5.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv20stringifyLoopControlB5cxx11ENS0_11LoopControlE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 38 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  store i32 1701736270, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !16
  br label %bb.ay

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 47 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 15 uses
  store i32 2, ptr %i.g, align 4, !tbaa !20
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.722, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 6, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 2
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.723, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 10, ptr %.sroa.3.0..sroa_idx.i36, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %i.o = and i32 %1, 4
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit40, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37
  %.not.i38 = icmp samesign ult i32 %i.n, 2
  br i1 %.not.i38, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.724, i64 18)
  %.pre118.pre119.pre121.pre123.pre125.pre127.pre129.pre131.pre133.pre135.pre137.pre139.pre141.pre143.pre = load i32, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit40

bb.g:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir5spirv20symbolizeLoopControlEN4llvm9StringRefE:bb.a
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.as = load i128, ptr %i.z, align 1
  %i.at = xor i128 %i.as, 140142229980268133480101835684445185348
  %i.au = getelementptr i8, ptr %i.z, i64 16
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i128
  %i.ax = xor i128 %i.aw, 25972
  %i.ay = or i128 %i.at, %i.ax
  %i.az = icmp ne i128 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i.i32 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.bb = load i128, ptr %i.z, align 1
  %i.bc = icmp ne i128 %i.bb, 138844115831858781072809802724990281028
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i41 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.be = load i64, ptr %i.z, align 1
  %i.bf = xor i64 %i.be, 7021786319146608973
  %i.bg = getelementptr i8, ptr %i.z, i64 5
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = xor i64 %i.bh, 8317708060514677349
  %i.bj = or i64 %i.bf, %i.bi
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i50 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %i.bm = load i64, ptr %i.z, align 1
  %i.bn = xor i64 %i.bm, 7021786319147262285
  %i.bo = getelementptr i8, ptr %i.z, i64 5
  %i.bp = load i64, ptr %i.bo, align 1
  %i.bq = xor i64 %i.bp, 8317708060514677349
  %i.br = or i64 %i.bn, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i59 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i156

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.bu = load i128, ptr %i.z, align 1
  %i.bv = xor i128 %i.bu, 144140299669968241089053537290726765641
  %i.bw = getelementptr i8, ptr %i.z, i64 16
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i128
  %i.bz = xor i128 %i.by, 101
  %i.ca = or i128 %i.bv, %i.bz
  %i.cb = icmp ne i128 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not.i.i68 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i102

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %bb.b
  %i.cd = load i64, ptr %i.z, align 1
  %i.ce = xor i64 %i.cd, 7959390251819296080
  %i.cf = getelementptr i8, ptr %i.z, i64 8
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ch, 116
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not.i.i77 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i84:          ; preds = %bb.b
  %i.cm = load i64, ptr %i.z, align 1
  %i.cn = xor i64 %i.cm, 4858365203579035984
  %i.co = getelementptr i8, ptr %i.z, i64 8
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = xor i64 %i.cq, 1953396079
  %i.cs = or i64 %i.cn, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i.i86 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i86, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i93:          ; preds = %bb.b
  %i.cv = load i128, ptr %i.z, align 1
  %i.cw = xor i128 %i.cv, 157442883092461988006358028127136476745
  %i.cx = getelementptr i8, ptr %i.z, i64 7
  %i.cy = load i128, ptr %i.cx, align 1
  %i.cz = xor i128 %i.cy, 101381306087819322259976216424647389033
  %i.da = or i128 %i.cw, %i.cz
  %i.db = icmp ne i128 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.i.i95 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i95, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i102:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  %i.dd = load i128, ptr %i.z, align 1
  %i.de = xor i128 %i.dd, 92154472488259283713922988312947027788
  %i.df = getelementptr i8, ptr %i.z, i64 16
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i128
  %i.di = xor i128 %i.dh, 76
  %i.dj = or i128 %i.de, %i.di
  %i.dk = icmp ne i128 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i104 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i111:         ; preds = %bb.b
  %i.dm = load i128, ptr %i.z, align 1
  %i.dn = xor i128 %i.dm, 104061283391212604316966028910255432013
  %i.do = getelementptr i8, ptr %i.z, i64 3
  %i.dp = load i128, ptr %i.do, align 1
  %i.dq = xor i128 %i.dp, 101381306087835047591857128037214482243
  %i.dr = or i128 %i.dn, %i.dq
  %i.ds = icmp ne i128 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %.not.i.i113 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i113, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i147

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %bb.b
  %i.du = load i128, ptr %i.z, align 1
  %i.dv = xor i128 %i.du, 97570689689378387572146227686399304013
  %i.dw = getelementptr i8, ptr %i.z, i64 16
  %i.dx = load i32, ptr %i.dw, align 1
  %i.dy = zext i32 %i.dx to i128
  %i.dz = xor i128 %i.dy, 1279611982
  %i.ea = or i128 %i.dv, %i.dz
  %i.eb = icmp ne i128 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %.not.i.i122 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i129

_ZN4llvmneENS_9StringRefES0_.exit.i.i129:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
  %i.ed = load i128, ptr %i.z, align 1
  %i.ee = xor i128 %i.ed, 97663888073284098241630968001114170692
  %i.ef = getelementptr i8, ptr %i.z, i64 16
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = zext i32 %i.eg to i128
  %i.ei = xor i128 %i.eh, 1279611982
  %i.ej = or i128 %i.ee, %i.ei
  %i.ek = icmp ne i128 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %.not.i.i131 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i138:         ; preds = %bb.b
  %i.em = load i128, ptr %i.z, align 1
  %i.en = xor i128 %i.em, 154696420539056336600198941614629285971
  %i.eo = getelementptr i8, ptr %i.z, i64 9
  %i.ep = load i128, ptr %i.eo, align 1
  %i.eq = xor i128 %i.ep, 101381306087827846001706270523529644388
  %i.er = or i128 %i.en, %i.eq
  %i.es = icmp ne i128 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %.not.i.i140 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i140, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i147:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i111
  %i.eu = load i128, ptr %i.z, align 1
  %i.ev = xor i128 %i.eu, 104060878452355318370082743380482222416
  %i.ew = getelementptr i8, ptr %i.z, i64 3
  %i.ex = load i128, ptr %i.ew, align 1
  %i.ey = xor i128 %i.ex, 101381306087810911355112846573395602533
  %i.ez = or i128 %i.ev, %i.ey
  %i.fa = icmp ne i128 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not.i.i149 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvmneENS_9StringRefES0_.exit.i.i156:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i57
  %i.fc = load i64, ptr %i.z, align 1
  %i.fd = xor i64 %i.fc, 7957695011196661582
  %i.fe = getelementptr i8, ptr %i.z, i64 5
  %i.ff = load i64, ptr %i.fe, align 1
  %i.fg = xor i64 %i.ff, 5495891615491714921
  %i.fh = or i64 %i.fd, %i.fg
  %i.fi = icmp ne i64 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %.not.i.i158 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i158, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread526

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156
  %.sroa.38.16 = phi i32 [ 524288, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147 ], [ 262144, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129 ], [ 4194304, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138 ], [ 131072, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111 ], [ 2097152, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120 ], [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93 ], [ 1048576, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 8388608, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156 ]
  %i.fk = or i32 %.sroa.38.16, %.0613             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fl = getelementptr inbounds nuw i8, ptr %.016612, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.fl, %i.l
  br i1 %.not, label %.thread526.loopexit, label %bb.b

.thread526.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit160
  %i.fm = zext i32 %i.fk to i64
  %i.fn = or disjoint i64 %i.fm, 4294967296
  br label %.thread526

.thread526:                                       ; preds = %.thread526.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread377, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit151.thread506 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread377 ], [ %i.fn, %.thread526.loopexit ]
  %i.fo = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.f
  br i1 %i.fp, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread526
  call void @free(ptr noundef %i.fo) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread526, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv20symbolizeLoopControlEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -16712192
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21stringifyMemoryAccessB5cxx11ENS0_12MemoryAccessE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 20 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  store i32 1701736270, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !16
  br label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 20 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  store i32 2, ptr %i.g, align 4, !tbaa !20
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.468, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 8, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 2
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.739, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 7, ptr %.sroa.3.0..sroa_idx.i18, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %i.o = and i32 %1, 4
  %.not11 = icmp eq i32 %i.o, 0
  br i1 %.not11, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %.not.i20 = icmp samesign ult i32 %i.n, 2
  br i1 %.not.i20, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.717, i64 11)
  %.pre55.pre56.pre58.pre60.pre62.pre = load i32, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

bb.g:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p ; 2 uses
  store ptr @.str.717, ptr %i.q, align 8
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 11, ptr %.sroa.3.0..sroa_idx.i21, align 8
  %i.r = add nuw nsw i32 %i.n, 1                  ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22: ; preds = %bb.g, %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %.pre55.pre56.pre58.pre60.pre62 = phi i32 [ %i.r, %bb.g ], [ %.pre55.pre56.pre58.pre60.pre62.pre, %bb.f ], [ %i.n, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19 ] ; 3 uses
  %i.s = and i32 %1, 8
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22
  %i.t = load i32, ptr %i.g, align 4, !tbaa !20
  %.not.i23 = icmp ult i32 %.pre55.pre56.pre58.pre60.pre62, %i.t
  br i1 %.not.i23, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.740, i64 20)
  %.pre55.pre56.pre58.pre60.pre = load i32, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25

bb.j:                                             ; preds = %bb.h
  %i.u = zext i32 %.pre55.pre56.pre58.pre60.pre62 to i64
  %i.v = load ptr, ptr %2, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.u ; 2 uses
  store ptr @.str.740, ptr %i.w, align 1
  %.sroa.3.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 20, ptr %.sroa.3.0..sroa_idx.i24, align 1
  %i.x = load i32, ptr %i.f, align 8, !tbaa !19
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22
  %.pre55.pre56.pre58.pre60 = phi i32 [ %i.y, %bb.j ], [ %.pre55.pre56.pre58.pre60.pre, %bb.i ], [ %.pre55.pre56.pre58.pre60.pre62, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22 ] ; 3 uses
  %i.z = and i32 %1, 16
  %.not13 = icmp eq i32 %i.z, 0
  br i1 %.not13, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !20
  %.not.i26 = icmp ult i32 %.pre55.pre56.pre58.pre60, %i.aa
  br i1 %.not.i26, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.741, i64 18)
  %.pre55.pre56.pre58.pre = load i32, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28

bb.m:                                             ; preds = %bb.k
  %i.ab = zext i32 %.pre55.pre56.pre58.pre60 to i64
  %i.ac = load ptr, ptr %2, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr @.str.741, ptr %i.ad, align 1
  %.sroa.3.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 18, ptr %.sroa.3.0..sroa_idx.i27, align 1
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !19
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28: ; preds = %bb.m, %bb.l, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25
  %.pre55.pre56.pre58 = phi i32 [ %i.af, %bb.m ], [ %.pre55.pre56.pre58.pre, %bb.l ], [ %.pre55.pre56.pre58.pre60, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit25 ] ; 3 uses
  %i.ag = and i32 %1, 32
  %.not14 = icmp eq i32 %i.ag, 0
  br i1 %.not14, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !20
  %.not.i29 = icmp ult i32 %.pre55.pre56.pre58, %i.ah
  br i1 %.not.i29, label %bb.p, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.742, i64 17)
  %.pre55.pre56.pre = load i32, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31

bb.p:                                             ; preds = %bb.n
  %i.ai = zext i32 %.pre55.pre56.pre58 to i64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  store ptr @.str.742, ptr %i.ak, align 1
  %.sroa.3.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 17, ptr %.sroa.3.0..sroa_idx.i30, align 1
  %i.al = load i32, ptr %i.f, align 8, !tbaa !19
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31: ; preds = %bb.p, %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28
  %.pre55.pre56 = phi i32 [ %i.am, %bb.p ], [ %.pre55.pre56.pre, %bb.o ], [ %.pre55.pre56.pre58, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit28 ] ; 3 uses
  %i.an = and i32 %1, 65536
  %.not15 = icmp eq i32 %i.an, 0
  br i1 %.not15, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit34, label %bb.q

end_hunk_2
begin_hunk_3_@_ZN4mlir5spirv21stringifyMemoryAccessB5cxx11ENS0_12MemoryAccessE:bb.a
  %i.bb = phi i32 [ %i.ba, %bb.v ], [ %.pre, %bb.u ], [ %.pre55, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit34 ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !18, !noalias !59 ; 2 uses
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.bc, ptr noundef %i.be, ptr nonnull @.str.655, i64 1)
  %i.bf = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.e
  br i1 %i.bg, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37
  call void @free(ptr noundef %i.bf) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit37, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv21symbolizeMemoryAccessEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread188

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736270
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread188

_ZN4llvmeqENS_9StringRefES0_.exit.thread188:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !20
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.655, i64 1, i32 noundef -1, i1 noundef zeroext true) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not271 = icmp eq i32 %i.j, 0
  br i1 %.not271, label %.thread254, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread188
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79
  %.0273 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79 ]
  %.016272 = phi ptr [ %i.i, %.lr.ph ], [ %i.cg, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016272, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.656, i64 6, i64 noundef 0) #16
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 14 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234 [
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = icmp ne i64 %i.aa, 7308332243887091542
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %bb.b
  %i.ad = load i32, ptr %i.z, align 1
  %i.ae = xor i32 %i.ad, 1734962241
  %i.af = getelementptr i8, ptr %i.z, i64 3
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 1684368999
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i23 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.al = load i64, ptr %i.z, align 1
  %i.am = xor i64 %i.al, 8030038418114113358
  %i.an = getelementptr i8, ptr %i.z, i64 3
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 7809649051790304628
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i32 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.at = load i128, ptr %i.z, align 1
  %i.au = xor i128 %i.at, 144103791477826624358446415731724345677
  %i.av = getelementptr i8, ptr %i.z, i64 16
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = zext i32 %i.aw to i128
  %i.ay = xor i128 %i.ax, 1701601889
  %i.az = or i128 %i.au, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i41 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.bc = load i128, ptr %i.z, align 1
  %i.bd = xor i128 %i.bc, 130811875579883403880287833906593096013
  %i.be = getelementptr i8, ptr %i.z, i64 16
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i128
  %i.bh = xor i128 %i.bg, 25964
  %i.bi = or i128 %i.bd, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not.i.i50 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %bb.b
  %i.bl = load i128, ptr %i.z, align 1
  %i.bm = xor i128 %i.bl, 134856573428330038111294604137789812558
  %i.bn = getelementptr i8, ptr %i.z, i64 16
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i128
  %i.bq = xor i128 %i.bp, 114
  %i.br = or i128 %i.bm, %i.bq
  %i.bs = icmp ne i128 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i59 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.bu = load i128, ptr %i.z, align 1
  %i.bv = xor i128 %i.bu, 102746576402344033660798311676485659713
  %i.bw = getelementptr i8, ptr %i.z, i64 3
  %i.bx = load i128, ptr %i.bw, align 1
  %i.by = xor i128 %i.bx, 142826483205622246139268470510923772769
  %i.bz = or i128 %i.bv, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %.not.i.i68 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %bb.b
  %i.cc = load i128, ptr %i.z, align 1
  %i.cd = icmp ne i128 %i.cc, 142826483205622246139272394642303315790
  %i.ce = zext i1 %i.cd to i32
  %.not.i.i77 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread254

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  %.sroa.20.7 = phi i32 [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 131072, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ]
  %i.cf = or i32 %.sroa.20.7, %.0273              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cg = getelementptr inbounds nuw i8, ptr %.016272, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.l
  br i1 %.not, label %.thread254.loopexit, label %bb.b

.thread254.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79
  %i.ch = zext i32 %i.cf to i64
  %i.ci = or disjoint i64 %i.ch, 4294967296
  br label %.thread254

.thread254:                                       ; preds = %.thread254.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread188, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70.thread234 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread188 ], [ %i.ci, %.thread254.loopexit ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.f
  br i1 %i.ck, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread254
  call void @free(ptr noundef %i.cj) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread254, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv21symbolizeMemoryAccessEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -196672
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv20stringifyMemoryModelENS0_11MemoryModelE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv20stringifyMemoryModelENS0_11MemoryModelE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv20stringifyMemoryModelENS0_11MemoryModelE.8, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.6.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir5spirv20symbolizeMemoryModelEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100 [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 7, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1886218579
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 25964
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1852141647
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = xor i32 %i.n, 19523
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.i19 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  %i.s = load i32, ptr %0, align 1
  %i.t = xor i32 %i.s, 1802270038
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = xor i32 %i.w, 28257
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %bcmp.i.i.i.i27.fr = freeze i32 %i.aa
  %.not.i.i28 = icmp eq i32 %bcmp.i.i.i.i27.fr, 0 ; 2 uses
  %spec.select94 = select i1 %.not.i.i28, i64 4294967299, i64 4294967296
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30: ; preds = %bb.a
  %i.ab = load i32, ptr %0, align 1
  %i.ac = xor i32 %i.ab, 1280527431
  %i.ad = getelementptr i8, ptr %0, i64 3
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 808793164
  %i.ag = or i32 %i.ac, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %bcmp.i.i.i.i9.fr = freeze i32 %i.ai
  %.not.i.i10 = icmp eq i32 %bcmp.i.i.i.i9.fr, 0  ; 2 uses
  %spec.select = select i1 %.not.i.i10, i64 4294967297, i64 4294967296
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30
  %.sroa.12.399 = phi i64 [ %spec.select94, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ %spec.select, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ]
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread
  %i.aj = phi i64 [ %.sroa.12.399, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30.thread ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv11MemoryModelEES5_E4CaseENS_13StringLiteralES5_.exit30 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 0, %bb.a ]
  ret i64 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir5spirv20symbolizeMemoryModelEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.5.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.5.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv24stringifyMemorySemanticsB5cxx11ENS0_15MemorySemanticsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 32 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  store i32 1701736270, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !16
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 38 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 12 uses
  store i32 2, ptr %i.g, align 4, !tbaa !20
  %i.h = and i32 %1, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.747, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 7, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 4
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.748, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 7, ptr %.sroa.3.0..sroa_idx.i30, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %i.o = and i32 %1, 8
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit31
  %.not.i32 = icmp samesign ult i32 %i.n, 2
  br i1 %.not.i32, label %bb.g, label %bb.f, !prof !21
end_hunk_3
begin_hunk_4_@_ZN4mlir5spirv24symbolizeMemorySemanticsEN4llvm9StringRefE:bb.a
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 27 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread409 [
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i84
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i93
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i102
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1970365249
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1701996917
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ai = load i32, ptr %i.z, align 1
  %i.aj = xor i32 %i.ai, 1701602642
  %i.ak = getelementptr i8, ptr %i.z, i64 3
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = xor i32 %i.al, 1702060389
  %i.an = or i32 %i.aj, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.aq = load i64, ptr %i.z, align 1
  %i.ar = xor i64 %i.aq, 5937277481025364801
  %i.as = getelementptr i8, ptr %i.z, i64 6
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 7310293708390617701
  %i.av = or i64 %i.ar, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not.i.i32 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ay = load i128, ptr %i.z, align 1
  %i.az = xor i128 %i.ay, 153434628863035812203618121632189605203
  %i.ba = getelementptr i8, ptr %i.z, i64 6
  %i.bb = load i128, ptr %i.ba, align 1
  %i.bc = xor i128 %i.bb, 154763657915044151219174935464387897716
  %i.bd = or i128 %i.az, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i41 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.bg = load i64, ptr %i.z, align 1
  %i.bh = xor i64 %i.bg, 5579241336167034453
  %i.bi = getelementptr i8, ptr %i.z, i64 5
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = xor i64 %i.bj, 8751179541575986546
  %i.bl = or i64 %i.bh, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i50 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i111

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.bo = load i64, ptr %i.z, align 1
  %i.bp = xor i64 %i.bo, 8103505641674536275
  %i.bq = getelementptr i8, ptr %i.z, i64 6
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = xor i64 %i.br, 8751179541575987317
  %i.bt = or i64 %i.bp, %i.bs
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not.i.i59 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.bw = load i64, ptr %i.z, align 1
  %i.bx = xor i64 %i.bw, 8462108013362310999
  %i.by = getelementptr i8, ptr %i.z, i64 7
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = xor i64 %i.bz, 8751179541575987317
  %i.cb = or i64 %i.bx, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i68 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %bb.b
  %i.ce = load i128, ptr %i.z, align 1
  %i.cf = xor i128 %i.ce, 134654115366445450066096969253305414211
  %i.cg = getelementptr i8, ptr %i.z, i64 16
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = zext i32 %i.ch to i128
  %i.cj = xor i128 %i.ci, 2037542765
  %i.ck = or i128 %i.cf, %i.cj
  %i.cl = icmp ne i128 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not.i.i77 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i84:          ; preds = %bb.b
  %i.cn = load i128, ptr %i.z, align 1
  %i.co = xor i128 %i.cn, 145411844332216598555384361578736350273
  %i.cp = getelementptr i8, ptr %i.z, i64 3
  %i.cq = load i128, ptr %i.cp, align 1
  %i.cr = xor i128 %i.cq, 161430769346535123862599135965080676717
  %i.cs = or i128 %i.co, %i.cr
  %i.ct = icmp ne i128 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i.i86 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i86, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i93:          ; preds = %bb.b
  %i.cv = load i64, ptr %i.z, align 1
  %i.cw = xor i64 %i.cv, 7882791820703395145
  %i.cx = getelementptr i8, ptr %i.z, i64 3
  %i.cy = load i64, ptr %i.cx, align 1
  %i.cz = xor i64 %i.cy, 8751179541575984487
  %i.da = or i64 %i.cw, %i.cz
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.i.i95 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i95, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i120

_ZN4llvmneENS_9StringRefES0_.exit.i.i102:         ; preds = %bb.b
  %i.dd = load i64, ptr %i.z, align 1
  %i.de = xor i64 %i.dd, 7299618618784118095
  %i.df = getelementptr i8, ptr %i.z, i64 8
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = xor i64 %i.dh, 2037542765
  %i.dj = or i64 %i.de, %i.di
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i104 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i111:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %i.dm = load i64, ptr %i.z, align 1
  %i.dn = xor i64 %i.dm, 7593480469969854797
  %i.do = getelementptr i8, ptr %i.z, i64 5
  %i.dp = load i64, ptr %i.do, align 1
  %i.dq = xor i64 %i.dp, 7308324465885667702
  %i.dr = or i64 %i.dn, %i.dq
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %.not.i.i113 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i113, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i93
  %i.du = load i64, ptr %i.z, align 1
  %i.dv = xor i64 %i.du, 7598532816093798733
  %i.dw = getelementptr i8, ptr %i.z, i64 3
  %i.dx = load i64, ptr %i.dw, align 1
  %i.dy = xor i64 %i.dx, 7308324500362843749
  %i.dz = or i64 %i.dv, %i.dy
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %.not.i.i122 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

_ZN4llvmneENS_9StringRefES0_.exit.i.i129:         ; preds = %bb.b
  %i.ec = load i64, ptr %i.z, align 1
  %i.ed = icmp ne i64 %i.ec, 7308332243887091542
  %i.ee = zext i1 %i.ed to i32
  %.not.i.i131 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133, label %.thread409

.thread409:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread429

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
  %.sroa.32.13 = phi i32 [ 8192, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111 ], [ 16384, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120 ], [ 2048, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93 ], [ 4096, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102 ], [ 512, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ], [ 1024, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 32768, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129 ]
  %i.ef = or i32 %.sroa.32.13, %.0507             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %.016506, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.l
  br i1 %.not, label %.thread429.loopexit, label %bb.b

.thread429.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit133
  %i.eh = zext i32 %i.ef to i64
  %i.ei = or disjoint i64 %i.eh, 4294967296
  br label %.thread429

.thread429:                                       ; preds = %.thread429.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread314, %.thread409
  %.sroa.3.3 = phi i64 [ 0, %.thread409 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread314 ], [ %i.ei, %.thread429.loopexit ]
  %i.ej = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.f
  br i1 %i.ek, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread429
  call void @free(ptr noundef %i.ej) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread429, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv24symbolizeMemorySemanticsEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -65503
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv14stringifyScopeENS0_5ScopeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv14stringifyScopeENS0_5ScopeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv14stringifyScopeENS0_5ScopeE.9, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.9.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967303) i64 @_ZN4mlir5spirv14symbolizeScopeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210 [
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 6, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i53
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 8531300331771884099
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 7305798977751118707
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i44

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.i = load i64, ptr %0, align 1
  %i.j = xor i64 %i.i, 8462108013362310999
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = xor i64 %i.m, 112
  %i.o = or i64 %i.j, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i19 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.r = load i64, ptr %0, align 1
  %i.s = icmp ne i64 %i.r, 8103505641674536275
  %i.t = zext i1 %i.s to i32
  %.not.i.i28 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvmneENS_9StringRefES0_.exit.i.i35:          ; preds = %bb.a
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 7598805550980558409
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i64
  %i.z = xor i64 %i.y, 28271
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i37 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i37, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvmneENS_9StringRefES0_.exit.i.i44:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ad = load i64, ptr %0, align 1
  %i.ae = xor i64 %i.ad, 7881658224450303313
  %i.af = getelementptr i8, ptr %0, i64 3
  %i.ag = load i64, ptr %i.af, align 1
  %i.ah = xor i64 %i.ag, 8749484094578386293
  %i.ai = or i64 %i.ae, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i46 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i46, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvmneENS_9StringRefES0_.exit.i.i53:          ; preds = %bb.a
  %i.al = load i64, ptr %0, align 1
  %i.am = xor i64 %i.al, 7008571224919992403
  %i.an = getelementptr i8, ptr %0, i64 5
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 5929071838480122738
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %bcmp.i.i.i.i54.fr = freeze i32 %i.as
  %.not.i.i55 = icmp eq i32 %bcmp.i.i.i.i54.fr, 0 ; 2 uses
  %spec.select203 = select i1 %.not.i.i55, i64 4294967302, i64 4294967296
  br i1 %.not.i.i55, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57: ; preds = %bb.a
  %i.at = load i32, ptr %0, align 1
  %i.au = xor i32 %i.at, 1769366852
  %i.av = getelementptr i8, ptr %0, i64 4
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = xor i32 %i.ax, 25955
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %bcmp.i.i.i.i9.fr = freeze i32 %i.bb
  %.not.i.i10 = icmp eq i32 %bcmp.i.i.i.i9.fr, 0  ; 2 uses
  %spec.select = select i1 %.not.i.i10, i64 4294967297, i64 4294967296
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57
  %.sroa.18.6208 = phi i64 [ %spec.select203, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53 ], [ %spec.select, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 4294967299, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967300, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35 ], [ 4294967301, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44 ]
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread210: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread
  %i.bc = phi i64 [ %.sroa.18.6208, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57.thread ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv5ScopeEES5_E4CaseENS_13StringLiteralES5_.exit57 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i53 ], [ 0, %bb.a ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i44 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ]
  ret i64 %i.bc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967303) i64 @_ZN4mlir5spirv14symbolizeScopeEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 7
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.8.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.8.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv25stringifySelectionControlB5cxx11ENS0_16SelectionControlE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  store i32 1701736270, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !16
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.g, align 4, !tbaa !20
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.767, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 7, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 2
  %.not4 = icmp eq i32 %i.j, 0
  br i1 %.not4, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.768, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 11, ptr %.sroa.3.0..sroa_idx.i6, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.o
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, ptr nonnull @.str.655, i64 1)
  %i.q = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7
  call void @free(ptr noundef %i.q) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv25symbolizeSelectionControlEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread63

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736270
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread63

_ZN4llvmeqENS_9StringRefES0_.exit.thread63:       ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !20
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.655, i64 1, i32 noundef -1, i1 noundef zeroext true) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not82 = icmp eq i32 %i.j, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread63
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25
  %.084 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25 ]
  %.01683 = phi ptr [ %i.i, %.lr.ph ], [ %i.ar, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.01683, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.656, i64 6, i64 noundef 0) #16
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread [
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1952541766
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1852142708
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %bb.b
  %i.ai = load i64, ptr %i.z, align 1
  %i.aj = xor i64 %i.ai, 8386103030997479236
  %i.ak = getelementptr i8, ptr %i.z, i64 3
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 7954892360019363444
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  %.sroa.8.1 = phi i32 [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ]
  %i.aq = or i32 %.sroa.8.1, %.084                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %.01683, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.l
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25
  %i.as = zext i32 %i.aq to i64
  %i.at = or disjoint i64 %i.as, 4294967296
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread63, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread63 ], [ %i.at, %.loopexit.loopexit ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.au) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv25symbolizeSelectionControlEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv21stringifyStorageClassENS0_12StorageClassE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.y [
    i32 0, label %bb.z
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 5328, label %bb.n
    i32 5329, label %bb.o
    i32 5338, label %bb.p
    i32 5339, label %bb.q
    i32 5342, label %bb.r
    i32 5343, label %bb.s
    i32 5349, label %bb.t
    i32 5402, label %bb.u
    i32 5605, label %bb.v
    i32 5936, label %bb.w
    i32 5937, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  br label %bb.z

bb.f:                                             ; preds = %bb.a
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  br label %bb.z

bb.h:                                             ; preds = %bb.a
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  br label %bb.z

bb.j:                                             ; preds = %bb.a
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  br label %bb.z

bb.l:                                             ; preds = %bb.a
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  br label %bb.z

bb.n:                                             ; preds = %bb.a
  br label %bb.z

bb.o:                                             ; preds = %bb.a
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  br label %bb.z

bb.q:                                             ; preds = %bb.a
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  br label %bb.z

bb.u:                                             ; preds = %bb.a
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  br label %bb.z

bb.x:                                             ; preds = %bb.a
  br label %bb.z

bb.y:                                             ; preds = %bb.a
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.26.0 = phi i64 [ 0, %bb.y ], [ 13, %bb.x ], [ 5, %bb.b ], [ 7, %bb.c ], [ 6, %bb.d ], [ 9, %bb.e ], [ 14, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 7, %bb.i ], [ 12, %bb.j ], [ 13, %bb.k ], [ 5, %bb.l ], [ 13, %bb.m ], [ 15, %bb.n ], [ 23, %bb.o ], [ 13, %bb.p ], [ 15, %bb.q ], [ 21, %bb.r ], [ 21, %bb.s ], [ 21, %bb.t ], [ 23, %bb.u ], [ 16, %bb.v ], [ 15, %bb.w ], [ 15, %bb.a ]
  %.sroa.0.0 = phi ptr [ @.str.7, %bb.y ], [ @.str.790, %bb.x ], [ @.str.770, %bb.b ], [ @.str.473, %bb.c ], [ @.str.771, %bb.d ], [ @.str.762, %bb.e ], [ @.str.772, %bb.f ], [ @.str.773, %bb.g ], [ @.str.774, %bb.h ], [ @.str.775, %bb.i ], [ @.str.776, %bb.j ], [ @.str.777, %bb.k ], [ @.str.778, %bb.l ], [ @.str.779, %bb.m ], [ @.str.780, %bb.n ], [ @.str.781, %bb.o ], [ @.str.782, %bb.p ], [ @.str.783, %bb.q ], [ @.str.784, %bb.r ], [ @.str.785, %bb.s ], [ @.str.786, %bb.t ], [ @.str.787, %bb.u ], [ @.str.788, %bb.v ], [ @.str.789, %bb.w ], [ @.str.769, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.26.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294973234) i64 @_ZN4mlir5spirv21symbolizeStorageClassEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv12StorageClassEES5_E4CaseENS_13StringLiteralES5_.exit210 [
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i44
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i62
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i80
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i89
    i64 23, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i125
    i64 21, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i152
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i188
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 4858665395787755093
  %i.c = getelementptr i8, ptr %0, i64 7
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 8389750308618530627
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv12StorageClassEES5_E4CaseENS_13StringLiteralES5_.exit210, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i116

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.i = load i32, ptr %0, align 1
  %i.j = xor i32 %i.i, 1970302537
  %i.k = getelementptr i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = xor i32 %i.m, 116
  %i.o = or i32 %i.j, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv12StorageClassEES5_E4CaseENS_13StringLiteralES5_.exit210, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i98

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.r = load i32, ptr %0, align 1
  %i.s = xor i32 %i.r, 1718185557
  %i.t = getelementptr i8, ptr %0, i64 3
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1836216166
  %i.w = or i32 %i.s, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.i19 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv12StorageClassEES5_E4CaseENS_13StringLiteralES5_.exit210, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i53

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.z = load i32, ptr %0, align 1
  %i.aa = xor i32 %i.z, 1886680399
end_hunk_4
begin_hunk_5_@_ZN4mlir5spirv37stringifyCooperativeMatrixOperandsKHRB5cxx11ENS0_28CooperativeMatrixOperandsKHRE:bb.a
  store i32 %i.y, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit16
  %.pre34 = phi i32 [ %i.y, %bb.j ], [ %.pre34.pre, %bb.i ], [ %.pre34.pre35, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit16 ] ; 3 uses
  %i.z = and i32 %1, 16
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !20
  %.not.i20 = icmp ult i32 %.pre34, %i.aa
  br i1 %.not.i20, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.812, i64 6)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !19, !noalias !65
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

bb.m:                                             ; preds = %bb.k
  %i.ab = zext i32 %.pre34 to i64
  %i.ac = load ptr, ptr %2, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr @.str.812, ptr %i.ad, align 1
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 6, ptr %.sroa.3.0..sroa_idx.i21, align 1
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !19
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22: ; preds = %bb.m, %bb.l, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19
  %i.ag = phi i32 [ %i.af, %bb.m ], [ %.pre, %bb.l ], [ %.pre34, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit19 ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !18, !noalias !65 ; 2 uses
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ah, ptr noundef %i.aj, ptr nonnull @.str.655, i64 1)
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22
  call void @free(ptr noundef %i.ak) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit22, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv37symbolizeCooperativeMatrixOperandsKHREN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread125

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736270
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread125

_ZN4llvmeqENS_9StringRefES0_.exit.thread125:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !20
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.655, i64 1, i32 noundef -1, i1 noundef zeroext true) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not172 = icmp eq i32 %i.j, 0
  br i1 %.not172, label %.thread168, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread125
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52
  %.0174 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52 ]
  %.016173 = phi ptr [ %i.i, %.lr.ph ], [ %i.br, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016173, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.656, i64 6, i64 noundef 0) #16
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 10 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread148 [
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1734955841
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1684368999
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ai = load i32, ptr %i.z, align 1
  %i.aj = xor i32 %i.ai, 1734955842
  %i.ak = getelementptr i8, ptr %i.z, i64 3
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = xor i32 %i.al, 1684368999
  %i.an = or i32 %i.aj, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  %i.aq = load i32, ptr %i.z, align 1
  %i.ar = xor i32 %i.aq, 1734955843
  %i.as = getelementptr i8, ptr %i.z, i64 3
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 1684368999
  %i.av = or i32 %i.ar, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not.i.i32 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ay = load i64, ptr %i.z, align 1
  %i.az = xor i64 %i.ay, 7589537806225204562
  %i.ba = getelementptr i8, ptr %i.z, i64 8
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = xor i64 %i.bc, 1684368999
  %i.be = or i64 %i.az, %i.bd
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i41 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.bh = load i32, ptr %i.z, align 1
  %i.bi = xor i32 %i.bh, 1399022401
  %i.bj = getelementptr i8, ptr %i.z, i64 4
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = xor i32 %i.bl, 29793
  %i.bn = or i32 %i.bi, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not.i.i50 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52, label %.thread148

.thread148:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread168

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %.sroa.14.4 = phi i32 [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ]
  %i.bq = or i32 %.sroa.14.4, %.0174              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.br = getelementptr inbounds nuw i8, ptr %.016173, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.l
  br i1 %.not, label %.thread168.loopexit, label %bb.b

.thread168.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit52
  %i.bs = zext i32 %i.bq to i64
  %i.bt = or disjoint i64 %i.bs, 4294967296
  br label %.thread168

.thread168:                                       ; preds = %.thread168.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread125, %.thread148
  %.sroa.3.3 = phi i64 [ 0, %.thread148 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread125 ], [ %i.bt, %.thread168.loopexit ]
  %i.bu = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.f
  br i1 %i.bv, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread168
  call void @free(ptr noundef %i.bu) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread168, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv37symbolizeCooperativeMatrixOperandsKHREj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 32
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv25stringifyLoadCacheControlENS0_16LoadCacheControlE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv25stringifyLoadCacheControlENS0_16LoadCacheControlE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv25stringifyLoadCacheControlENS0_16LoadCacheControlE.14, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.7.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir5spirv25symbolizeLoadCacheControlEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39 [
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 7234303152485527125
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  %i.e = xor i32 %i.d, 1751343427
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i32
  %i.i = xor i32 %i.h, 25701
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.m = load i64, ptr %0, align 1
  %i.n = xor i64 %i.m, 7956010481807946835
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = xor i64 %i.q, 103
  %i.s = or i64 %i.n, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i19 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.v = load i128, ptr %0, align 1
  %i.w = icmp ne i128 %i.v, 109590675241719422687047715372318223945
  %i.x = zext i1 %i.w to i32
  %.not.i.i28 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

.thread118:                                       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39

_ZN4llvmneENS_9StringRefES0_.exit.i.i35:          ; preds = %bb.a
  %i.y = load i64, ptr %0, align 1
  %i.z = xor i64 %i.y, 7161079049927683907
  %i.aa = getelementptr i8, ptr %0, i64 3
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 %i.ab, 7234303152483431539
  %i.ad = or i64 %i.z, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not.i.i37 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.i.i37, i64 4294967300, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv16LoadCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit39: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i35, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread118
  %.sroa.20.4 = phi i64 [ 0, %bb.a ], [ 4294967299, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ %i.ag, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35 ], [ 0, %.thread118 ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.20.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir5spirv25symbolizeLoadCacheControlEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.6.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.6.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv26stringifyStoreCacheControlENS0_17StoreCacheControlE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv26stringifyStoreCacheControlENS0_17StoreCacheControlE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv26stringifyStoreCacheControlENS0_17StoreCacheControlE.15, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.6.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir5spirv26symbolizeStoreCacheControlEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv17StoreCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit30 [
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 7234303152485527125
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv17StoreCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit21.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv17StoreCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 8243931912623190615
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, 1751610735
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv17StoreCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit21.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv17StoreCacheControlEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.m = load i64, ptr %0, align 1
  %i.n = xor i64 %i.m, 7161077886007997015
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = xor i64 %i.q, 107
  %i.s = or i64 %i.n, %i.r
  %i.t = icmp ne i64 %i.s, 0
end_hunk_5
begin_hunk_6_@_ZN4mlir5spirv23stringifyFPFastMathModeB5cxx11ENS0_14FPFastMathModeE:bb.a
  store i64 17, ptr %.sroa.3.0..sroa_idx.i31, align 1
  %i.as = load i32, ptr %i.f, align 8, !tbaa !19
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit32

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit32: ; preds = %bb.s, %bb.r, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit29
  %i.au = phi i32 [ %i.at, %bb.s ], [ %.pre, %bb.r ], [ %.pre48, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit29 ]
  %i.av = load ptr, ptr %2, align 8, !tbaa !18, !noalias !68 ; 2 uses
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.av, ptr noundef %i.ax, ptr nonnull @.str.655, i64 1)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.e
  br i1 %i.az, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit32
  call void @free(ptr noundef %i.ay) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit32, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv23symbolizeFPFastMathModeEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread167

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736270
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread167

_ZN4llvmeqENS_9StringRefES0_.exit.thread167:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !20
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.655, i64 1, i32 noundef -1, i1 noundef zeroext true) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not242 = icmp eq i32 %i.j, 0
  br i1 %.not242, label %.thread225, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread167
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70
  %.0244 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70 ]
  %.016243 = phi ptr [ %i.i, %.lr.ph ], [ %i.cf, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016243, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.656, i64 6, i64 noundef 0) #16
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.656, i64 6, i64 noundef -1) #16
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !27     ; 13 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205 [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
    i64 22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1316253518
  %i.ac = getelementptr i8, ptr %i.z, i64 4
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i32
  %i.af = xor i32 %i.ae, 20065
  %i.ag = or i32 %i.ab, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.aj = load i32, ptr %i.z, align 1
  %i.ak = xor i32 %i.aj, 1232367438
  %i.al = getelementptr i8, ptr %i.z, i64 4
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i32
  %i.ao = xor i32 %i.an, 26222
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.as = load i16, ptr %i.z, align 1
  %i.at = xor i16 %i.as, 21326
  %i.au = getelementptr i8, ptr %i.z, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.aw, 90
  %i.ay = or i16 %i.at, %i.ax
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i.i32 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.bb = load i64, ptr %i.z, align 1
  %i.bc = xor i64 %i.bb, 7162221455326604353
  %i.bd = getelementptr i8, ptr %i.z, i64 8
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i64
  %i.bg = xor i64 %i.bf, 28777
  %i.bh = or i64 %i.bc, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not.i.i41 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.bk = load i32, ptr %i.z, align 1
  %i.bl = icmp ne i32 %i.bk, 1953718598
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i50 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %bb.b
  %i.bn = load i128, ptr %i.z, align 1
  %i.bo = xor i128 %i.bn, 153366301300439133209872901005260909633
  %i.bp = getelementptr i8, ptr %i.z, i64 6
  %i.bq = load i128, ptr %i.bp, align 1
  %i.br = xor i128 %i.bq, 101381306087829078278581868803896143471
  %i.bs = or i128 %i.bo, %i.br
  %i.bt = icmp ne i128 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %.not.i.i59 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.bv = load i128, ptr %i.z, align 1
  %i.bw = xor i128 %i.bv, 92154472487654821061578551460501417025
  %i.bx = getelementptr i8, ptr %i.z, i64 16
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i128
  %i.ca = xor i128 %i.bz, 76
  %i.cb = or i128 %i.bw, %i.ca
  %i.cc = icmp ne i128 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i68 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread225

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  %.sroa.18.6 = phi i32 [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 131072, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ]
  %i.ce = or i32 %.sroa.18.6, %.0244              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %.016243, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.l
  br i1 %.not, label %.thread225.loopexit, label %bb.b

.thread225.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit70
  %i.cg = zext i32 %i.ce to i64
  %i.ch = or disjoint i64 %i.cg, 4294967296
  br label %.thread225

.thread225:                                       ; preds = %.thread225.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread167, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit61.thread205 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread167 ], [ %i.ch, %.thread225.loopexit ]
  %i.ci = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.f
  br i1 %i.cj, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread225
  call void @free(ptr noundef %i.ci) #16
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread225, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir5spirv23symbolizeFPFastMathModeEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -196640
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv23stringifyTosaExtAccTypeENS0_14TosaExtAccTypeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir5spirv23stringifyTosaExtAccTypeENS0_14TosaExtAccTypeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir5spirv23stringifyTosaExtAccTypeENS0_14TosaExtAccTypeE.17, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.6.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.7, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir5spirv23symbolizeTosaExtAccTypeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100 [
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 861163081
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 50
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = icmp ne i32 %i.j, 909201478
  %i.l = zext i1 %i.k to i32
  %.not.i.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.m = load i32, ptr %0, align 1
  %i.n = xor i32 %i.m, 877940297
  %i.o = getelementptr i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = xor i32 %i.q, 56
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %bcmp.i.i.i.i27.fr = freeze i32 %i.u
  %.not.i.i28 = icmp eq i32 %bcmp.i.i.i.i27.fr, 0 ; 2 uses
  %spec.select94 = select i1 %.not.i.i28, i64 4294967300, i64 4294967297
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.v, 842223686
  %i.x = zext i1 %i.w to i32
  %bcmp.i.i.i.i18.fr = freeze i32 %i.x
  %.not.i.i19 = icmp eq i32 %bcmp.i.i.i.i18.fr, 0 ; 2 uses
  %spec.select = select i1 %.not.i.i19, i64 4294967299, i64 4294967297
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30
  %.sroa.12.399 = phi i64 [ %spec.select94, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ %spec.select, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30 ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread100: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread
  %i.y = phi i64 [ %.sroa.12.399, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30.thread ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv14TosaExtAccTypeEES5_E4CaseENS_13StringLiteralES5_.exit30 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 0, %bb.a ]
  ret i64 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir5spirv23symbolizeTosaExtAccTypeEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  %switch.idx.cast = zext i32 %switch.tableidx to i64
  %switch.offset = add nuw nsw i64 %switch.idx.cast, 4294967297
  %.sroa.5.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.5.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir5spirv30stringifyTosaExtResizeModeTypeENS0_21TosaExtResizeModeTypeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 1, label %bb.d
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi i64 [ 0, %bb.c ], [ 8, %bb.b ], [ 15, %bb.a ]
  %.sroa.0.0 = phi ptr [ @.str.7, %bb.c ], [ @.str.1115, %bb.b ], [ @.str.1114, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4mlir5spirv30symbolizeTosaExtResizeModeTypeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread [
    i64 15, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 8241980317954238786
  %i.c = zext i1 %i.b to i32
  %bcmp.i.i.i.i9.fr = freeze i32 %i.c
  %.not.i.i10 = icmp eq i32 %bcmp.i.i.i.i9.fr, 0  ; 2 uses
  %spec.select37 = select i1 %.not.i.i10, i64 4294967298, i64 4294967297
  br i1 %.not.i.i10, label %bb.b, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12: ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 5653270311804691790
  %i.f = getelementptr i8, ptr %0, i64 7
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 8245917643289748814
  %i.i = or i64 %i.e, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %bcmp.i.i.i.i.fr = freeze i32 %i.k
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.fr, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread

bb.b:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12
  %.sroa.8.143 = phi i64 [ %spec.select37, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967297, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12 ]
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread

_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12, %bb.b
  %i.l = phi i64 [ %.sroa.8.143, %bb.b ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir5spirv21TosaExtResizeModeTypeEES5_E4CaseENS_13StringLiteralES5_.exit12 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 0, %bb.a ]
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 4294967299) i64 @_ZN4mlir5spirv30symbolizeTosaExtResizeModeTypeEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i32 %0, 2
  %switch.select = select i1 %switch.selectcmp, i64 4294967298, i64 0
  %switch.selectcmp2 = icmp eq i32 %0, 1
  %switch.select3 = select i1 %switch.selectcmp2, i64 4294967297, i64 %switch.select
  ret i64 %switch.select3
}
end_hunk_6
