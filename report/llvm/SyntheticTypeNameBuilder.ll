Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SyntheticTypeNameBuilder?download=true
inline.NumInlined: 1184
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder20addReferencedODRDiesENS1_15UnitEntryPairTyEbNS_8ArrayRefINS_5dwarf9AttributeEEE:bb.a
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  %i.am = load i64, ptr %i.m, align 8, !tbaa !163
  %i.an = icmp ult i64 %i.am, %i.al
  br i1 %i.an, label %bb.h, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull %i.n, i64 noundef %i.al, i64 noundef 1) #21
  %.pre8.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.g, %bb.h
  %.pre8.i.i = phi i64 [ %i.ak, %bb.g ], [ %.pre8.pre.i.i, %bb.h ]
  %i.ao = load ptr, ptr %1, align 8, !tbaa !160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.pre8.i.i
  store i8 44, ptr %i.ap, align 1
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !138
  %i.aq = add i64 %.pre.i.i, 1
  store i64 %i.aq, ptr %i.l, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %bb.f
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !147
  %i.as = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.as, ptr %i.o, align 8, !tbaa !147
  %i.at = icmp ugt i64 %i.as, 1000
  br i1 %i.at, label %._crit_edge.i.i.i.i28, label %bb.j

._crit_edge.i.i.i.i28:                            ; preds = %bb.i
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !268
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !182, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !268
  store i64 47, ptr %i.a, align 8, !tbaa !194, !noalias !268
  %i.aw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21, !noalias !268 ; 3 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !183, !noalias !268
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !194, !noalias !268 ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !185, !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.aw, ptr noundef nonnull align 1 dereferenceable(47) @.str.8, i64 47, i1 false), !noalias !268
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !184, !noalias !268
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !185, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !268
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 22, ptr nonnull %i.au) #21
  %i.ba = load ptr, ptr %6, align 8, !tbaa !183, !noalias !268 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.av
  br i1 %i.bb, label %_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %._crit_edge.i.i.i.i28
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !185, !noalias !268
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #22
  br label %_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_.exit32

_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_.exit32: ; preds = %._crit_edge.i.i.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !268
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8, !tbaa !157
  %.sroa.2.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !158
  store i8 0, ptr %i.p, align 8, !tbaa !156
  call void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder14addDIETypeNameENS1_15UnitEntryPairTyESt8optionalISt4pairImmEEb(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.std::optional") align 8 %10, i1 noundef zeroext %4)
  %i.be = load ptr, ptr %0, align 8, !tbaa !137
  %.not47 = icmp eq ptr %i.be, null
  br i1 %.not47, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !147
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.o, align 8, !tbaa !147
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.k
  %.343.ph = phi i1 [ false, %bb.k ], [ %.050, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c, %.preheader
  %.343 = phi i1 [ %.050, %bb.c ], [ %.050, %.preheader ], [ %.050, %bb.b ], [ %.343.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %.02449, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.f
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit33, label %bb.b

.loopexit:                                        ; preds = %bb.j, %_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_.exit, %_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.l

_ZN4llvm5ErrorD2Ev.exit33:                        ; preds = %.thread, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !137
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_ZN4llvm5ErrorD2Ev.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder13addParamNamesERNS1_11CompileUnitERNS_11SmallVectorIPKNS_19DWARFDebugInfoEntryELj20EEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(1192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.74", align 8  ; 6 uses
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163
  %.not.i.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !189

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(1024) %1, i8 noundef signext 40)
  br label %_ZN4llvm11SmallStringILj1000EEpLEc.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 40, ptr %i.f, align 1
  %i.g = load i64, ptr %i.a, align 8, !tbaa !138
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !138
  br label %_ZN4llvm11SmallStringILj1000EEpLEc.exit

_ZN4llvm11SmallStringILj1000EEpLEc.exit:          ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %3, align 8, !tbaa !134    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !190  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallStringILj1000EEpLEc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.01741, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.01741 = phi ptr [ %i.i, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %.01741, align 8, !tbaa !158 ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !185
  %.not18 = icmp eq i8 %i.x, 40
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.u, 2                          ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !163
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.g, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef 1) #21
  %.pre8.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !138
  %.pre = load ptr, ptr %1, align 8, !tbaa !160
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.f, %bb.g
  %i.ab = phi ptr [ %i.t, %bb.f ], [ %.pre, %bb.g ]
  %.pre8.i.i = phi i64 [ %i.u, %bb.f ], [ %.pre8.pre.i.i, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.pre8.i.i
  store i16 8236, ptr %i.ac, align 1
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !138
  %i.ad = add i64 %.pre.i.i, 2
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !166, !noalias !271 ; 2 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !178, !noalias !271
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !130, !noalias !271
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.af, i64 noundef %i.ag, i16 noundef zeroext 52, ptr noundef nonnull align 8 dereferenceable(448) %i.ah) #21
  %i.ai = load i8, ptr %i.p, align 8, !tbaa !180, !range !150, !alias.scope !271, !noundef !151
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread

bb.j:                                             ; preds = %.preheader
  %i.ak = call { i64, i8 } @_ZNK4llvm14DWARFFormValue21getAsUnsignedConstantEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #21 ; 2 uses
  %i.al = extractvalue { i64, i8 } %i.ak, 1
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread

_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread: ; preds = %.preheader, %bb.i, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit: ; preds = %bb.j
  %i.an = extractvalue { i64, i8 } %i.ak, 0
  %.not19 = icmp eq i64 %i.an, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.not19, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !163
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.l, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i20

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull %i.n, i64 noundef %i.ap, i64 noundef 1) #21
  %.pre8.pre.i.i24 = load i64, ptr %i.a, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i20

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i20: ; preds = %bb.k, %bb.l
  %.pre8.i.i21 = phi i64 [ %i.ao, %bb.k ], [ %.pre8.pre.i.i24, %bb.l ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !160
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre8.i.i21
  store i8 94, ptr %i.at, align 1
  %.pre.i.i23 = load i64, ptr %i.a, align 8, !tbaa !138
  %i.au = add i64 %.pre.i.i23, 1
  store i64 %i.au, ptr %i.a, align 8, !tbaa !138
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit.thread, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i20, %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEEm.exit
  store ptr @_ZL8TypeAttr, ptr %5, align 8, !tbaa !187
  store i64 1, ptr %i.q, align 8, !tbaa !188
  call void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder20addReferencedODRDiesENS1_15UnitEntryPairTyEbNS_8ArrayRefINS_5dwarf9AttributeEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr nonnull %2, ptr %i.s, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5)
  %i.av = load ptr, ptr %0, align 8, !tbaa !137
  %.not39 = icmp eq ptr %i.av, null
  br i1 %.not39, label %bb.d, label %.critedge

._crit_edge:                                      ; preds = %bb.d, %_ZN4llvm11SmallStringILj1000EEpLEc.exit
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !163
  %.not.i.i26 = icmp ult i64 %i.aw, %i.ax
  br i1 %.not.i.i26, label %bb.n, label %bb.m, !prof !189

bb.m:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(1024) %1, i8 noundef signext 41)
  br label %_ZN4llvm5ErrorD2Ev.exit28

bb.n:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %1, align 8, !tbaa !160
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 41, ptr %i.az, align 1
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !138
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !138
  br label %_ZN4llvm5ErrorD2Ev.exit28

_ZN4llvm5ErrorD2Ev.exit28:                        ; preds = %bb.n, %bb.m
  store ptr null, ptr %0, align 8, !tbaa !137
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder21addTemplateParamNamesERNS1_11CompileUnitERNS_11SmallVectorIPKNS_19DWARFDebugInfoEntryELj10EEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(1192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.74", align 8  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !190
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163
  %.not.i.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !189

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(1024) %1, i8 noundef signext 60)
  br label %_ZN4llvm11SmallStringILj1000EEpLEc.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  store i8 60, ptr %i.h, align 1
  %i.i = load i64, ptr %i.c, align 8, !tbaa !138
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !138
  br label %_ZN4llvm11SmallStringILj1000EEpLEc.exit

_ZN4llvm11SmallStringILj1000EEpLEc.exit:          ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !134    ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not76 = icmp eq i32 %i.l, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallStringILj1000EEpLEc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.01977, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.n
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.01977 = phi ptr [ %i.k, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %.01977, align 8, !tbaa !158 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !138  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !185
  %.not20 = icmp eq i8 %i.ac, 60
  br i1 %.not20, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.z, 2                         ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !163
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull %i.o, i64 noundef %i.ad, i64 noundef 1) #21
  %.pre8.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !138
  %.pre = load ptr, ptr %1, align 8, !tbaa !160
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.g, %bb.h
  %i.ag = phi ptr [ %i.y, %bb.g ], [ %.pre, %bb.h ]
  %.pre8.i.i = phi i64 [ %i.z, %bb.g ], [ %.pre8.pre.i.i, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre8.i.i
  store i16 8236, ptr %i.ah, align 1
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !138
  %i.ai = add i64 %.pre.i.i, 2
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !166 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ak, null
  br i1 %.not.i21, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit

_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit:     ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !177
  %i.an = icmp eq i16 %i.am, 48
  br i1 %i.an, label %bb.j, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !166, !noalias !278 ; 2 uses
  %.not18.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !178, !noalias !278
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !130, !noalias !278
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.ao, i64 noundef %i.ap, i16 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(448) %i.aq) #21
  %i.ar = load i8, ptr %i.q, align 8, !tbaa !180, !range !150, !alias.scope !278, !noundef !151
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit

bb.k:                                             ; preds = %.preheader
  %i.at = call { i64, i8 } @_ZNK4llvm14DWARFFormValue21getAsUnsignedConstantEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #21 ; 2 uses
  %i.au = extractvalue { i64, i8 } %i.at, 0       ; 5 uses
  %i.av = extractvalue { i64, i8 } %i.at, 1
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ax = icmp ult i64 %i.au, 10
  br i1 %i.ax, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.r
  %.029.i.i = phi i32 [ %i.bf, %bb.r ], [ 1, %bb.l ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.be, %bb.r ], [ %i.au, %bb.l ] ; 5 uses
  %i.ay = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.az = add i32 %.029.i.i, 1
end_hunk_0
