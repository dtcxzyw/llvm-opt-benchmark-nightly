Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Intrinsics?download=true
inline.NumInlined: 2203
inline.NumDeleted: 889
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL20getIntrinsicNameImplB5cxx11jN4llvm8ArrayRefIPNS_4TypeEEEPNS_6ModuleEPNS_12FunctionTypeEb:bb.a
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %6, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.idx = shl nuw nsw i64 %3, 3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not29 = icmp eq i64 %3, 0
  br i1 %.not29, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pre = load i8, ptr %i.b, align 1, !tbaa !13, !range !24
  %i.w = trunc nuw i8 %.pre to i1
  br i1 %i.w, label %bb.h, label %._crit_edge.thread

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.01330 = phi ptr [ %2, %.lr.ph ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ] ; 2 uses
  %i.x = load ptr, ptr %.01330, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call fastcc void @_ZL17getMangledTypeStrB5cxx11PN4llvm4TypeERb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.40, i64 noundef 1) #19, !noalias !209 ; 6 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !17, !alias.scope !209
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.z, ptr %7, align 8, !tbaa !21, !alias.scope !209
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !22
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !22, !alias.scope !209
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !23, !alias.scope !209
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !21
  store i64 0, ptr %i.ai, align 8, !tbaa !23
  store i8 0, ptr %i.aa, align 8, !tbaa !22
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !23  ; 2 uses
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !23
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.an = load ptr, ptr %7, align 8, !tbaa !21
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.an, i64 noundef %i.aj) #19 ; 0 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.at = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.v, align 8, !tbaa !22
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %.01330, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.s
  br i1 %.not, label %._crit_edge, label %bb.e

bb.h:                                             ; preds = %._crit_edge
  %.not15 = icmp eq ptr %5, null
  br i1 %.not15, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %4, align 8, !tbaa !131, !nonnull !132, !align !133
  %i.az = call noundef ptr @_ZN4llvm9Intrinsic7getTypeERNS_11LLVMContextEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %1, ptr %2, i64 poison)
  br label %bb.k

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !17
  %i.bb = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.i
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.j:                                             ; preds = %._crit_edge.thread
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !23  ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.bf, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge.thread
  store ptr %i.bb, ptr %0, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !22
  %.pre31 = load i64, ptr %i.p, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.j
  %i.bh = phi i64 [ %i.bd, %bb.j ], [ %.pre31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !23
  store i64 0, ptr %i.p, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.k:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %5, %bb.h ], [ %i.az, %bb.i ]
  %i.bj = load ptr, ptr %6, align 8, !tbaa !21
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !23
  call void @_ZN4llvm6Module22getUniqueIntrinsicNameB5cxx11ENS_9StringRefEjPKNS_12FunctionTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1288) %4, ptr %i.bj, i64 %i.bk, i32 noundef %1, ptr noundef %.0) #19
  %.pre32 = load ptr, ptr %6, align 8, !tbaa !21  ; 2 uses
  %i.bl = icmp eq ptr %.pre32, %i.i
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.pre32, i64 noundef %i.bn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9Intrinsic21getNameNoUnnamedTypesB5cxx11EjNS_8ArrayRefIPNS_4TypeEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZL20getIntrinsicNameImplB5cxx11jN4llvm8ArrayRefIPNS_4TypeEEEPNS_6ModuleEPNS_12FunctionTypeEb(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9Intrinsic28getIntrinsicInfoTableEntriesEjRNS_15SmallVectorImplINS0_13IITDescriptorEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple") align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZL9IIT_Table, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !135  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp sgt i16 %i.f, -1
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i16 %i.f, 32767
  %i.h = zext nneg i16 %i.g to i32
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %3 = phi i32 [ %4, %.preheader ], [ 0, %bb.a ]  ; 2 uses
  %.0 = phi i16 [ %i.l, %.preheader ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = trunc i16 %.0 to i8
  %i.j = and i8 %i.i, 15
  %4 = add i32 %3, 1
  %5 = zext i32 %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  store i8 %i.j, ptr %i.k, align 1, !tbaa !22
  %i.l = lshr i16 %.0, 4                          ; 2 uses
  %.not10 = icmp eq i16 %i.l, 0
  br i1 %.not10, label %.loopexit, label %.preheader, !llvm.loop !0

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.sroa.022.0 = phi ptr [ @_ZL21IIT_LongEncodingTable, %bb.b ], [ %i.a, %.preheader ] ; 4 uses
  %storemerge = phi i32 [ %i.h, %bb.b ], [ 0, %.preheader ]
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !11
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !11
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %.not1226 = icmp eq i8 %i.p, 0
  br i1 %.not1226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %storemerge1127 = phi i32 [ %i.q, %.lr.ph ], [ 0, %.loopexit ]
  call fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr nonnull %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.q = add i32 %storemerge1127, 1               ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !11
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %.not12 = icmp eq i8 %i.u, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %storemerge11.lcssa = phi i32 [ 0, %.loopexit ], [ %i.q, %.lr.ph ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !137    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !138
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr [12 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !141
  %i.ac = icmp eq i32 %i.ab, 1                    ; 3 uses
  %i.ad = sext i1 %i.ac to i32
  %.025 = add i32 %storemerge11.lcssa, %i.ad
  %i.ae = sext i1 %i.ac to i64
  %.sroa.6.0 = add nsw i64 %i.ae, %i.y
  %.024 = zext i1 %i.ac to i8
  store i8 %.024, ptr %0, align 8, !tbaa !143
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.025, ptr %i.af, align 4, !tbaa !145
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !147
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13DecodeIITTypeRjN4llvm8ArrayRefIhEERNS0_15SmallVectorImplINS0_9Intrinsic13IITDescriptorEEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr nofree readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %.sroa.03.i898 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i889 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i880 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i871 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i862 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i853 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i844 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i835 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i826 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i817 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i808 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i799 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i790 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i781 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i772 = alloca [9 x i8], align 8       ; 5 uses
  %.sroa.03.i = alloca [9 x i8], align 8          ; 5 uses
  %.sroa.03.i898.4.i898.4.i898.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i898, i64 4
  %.sroa.03.i889.4.i889.4.i889.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i889, i64 4
  %.sroa.03.i880.4.i880.4.i880.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i880, i64 4
  %.sroa.03.i871.4.i871.4.i871.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i871, i64 4
  %.sroa.03.i862.4.i862.4.i862.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i862, i64 4
  %.sroa.03.i853.4.i853.4.i853.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i853, i64 4
  %.sroa.03.i844.4.i844.4.i844.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i844, i64 4
  %.sroa.03.i835.4.i835.4.i835.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i835, i64 4
  %.sroa.03.i826.4.i826.4.i826.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i826, i64 4
  %.sroa.03.i817.4.i817.4.i817.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i817, i64 4
  %.sroa.03.i808.4.i808.4.i808.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i808, i64 4
  %.sroa.03.i799.4.i799.4.i799.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i799, i64 4
  %.sroa.03.i790.4.i790.4.i790.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i790, i64 4
  %.sroa.03.i781.4.i781.4.i781.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i781, i64 4
  %.sroa.03.i772.4.i772.4.i772.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i772, i64 4
  %.sroa.03.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 34 uses
  %i.b = add i32 %i.a, 1                          ; 30 uses
  store i32 %i.b, ptr %0, align 4, !tbaa !11
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  switch i8 %i.e, label %bb.bq [
    i8 0, label %.loopexit.sink.split.loopexit
    i8 26, label %.loopexit.sink.split.loopexit74
    i8 17, label %.loopexit.sink.split
    i8 42, label %bb.b
    i8 18, label %bb.c
    i8 19, label %bb.d
    i8 6, label %bb.e
    i8 40, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 33, label %bb.i
    i8 43, label %bb.j
    i8 1, label %bb.k
    i8 47, label %bb.l
    i8 48, label %bb.m
    i8 49, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 30, label %bb.s
    i8 25, label %bb.t
    i8 9, label %bb.v
    i8 44, label %bb.x
    i8 10, label %bb.z
    i8 50, label %bb.ab
    i8 11, label %bb.ad
    i8 51, label %bb.af
    i8 12, label %bb.ah
    i8 13, label %bb.aj
    i8 16, label %bb.al
    i8 39, label %bb.an
    i8 41, label %bb.ap
    i8 31, label %bb.ar
    i8 32, label %bb.at
    i8 52, label %bb.av
    i8 53, label %bb.ax
    i8 45, label %bb.az
    i8 46, label %bb.ba
    i8 14, label %bb.bb
    i8 24, label %bb.bc
    i8 15, label %bb.bd
    i8 20, label %bb.be
    i8 22, label %bb.bf
    i8 23, label %bb.bg
    i8 27, label %bb.bh
    i8 28, label %bb.bi
    i8 29, label %bb.bj
    i8 21, label %bb.bk
    i8 36, label %bb.bm
    i8 37, label %bb.bn
    i8 34, label %bb.bo
    i8 38, label %bb.bp
  ]

bb.b:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %tailrecurse
  br label %.loopexit.sink.split

end_hunk_0
begin_hunk_1_@_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %.critedge

bb.w:                                             ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, 255
  %i.eq = icmp eq i32 %i.ep, 21
  br i1 %i.eq, label %bb.x, label %_ZN4llvmeqENS_9StringRefES0_.exit

bb.x:                                             ; preds = %bb.w
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i, 15
  br i1 %.not.i, label %bb.y, label %_ZN4llvmeqENS_9StringRefES0_.exit

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.er, align 8, !tbaa !162 ; 2 uses
  %i.es = load i64, ptr %.sroa.0.0.copyload.i, align 1
  %i.et = xor i64 %i.es, 3329345846506578273
  %i.eu = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 7
  %i.ev = load i64, ptr %i.eu, align 1
  %i.ew = xor i64 %i.ev, 8389772277108339502
  %i.ex = or i64 %i.et, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.y, %bb.x, %bb.w
  %i.fb = phi i1 [ false, %bb.w ], [ %i.fa, %bb.y ], [ false, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.fc = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.fd, align 1, !tbaa !176
  store ptr @.str.68, ptr %27, align 8, !tbaa !22
  store i8 3, ptr %i.fc, align 8, !tbaa !175
  %i.fe = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.fb, ptr noundef nonnull align 8 dereferenceable(34) %27, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.critedge

bb.z:                                             ; preds = %bb.g
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, 255
  %i.fi = icmp eq i32 %i.fh, 21
  br i1 %i.fi, label %bb.aa, label %_ZN4llvmeqENS_9StringRefES0_.exit260

bb.aa:                                            ; preds = %bb.z
  %.sroa.2.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i254 = load i64, ptr %.sroa.2.0..sroa_idx.i253, align 8, !tbaa !19
  %.not.i257 = icmp eq i64 %.sroa.2.0.copyload.i254, 14
  br i1 %.not.i257, label %bb.ab, label %_ZN4llvmeqENS_9StringRefES0_.exit260

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i252 = load ptr, ptr %i.fj, align 8, !tbaa !162 ; 2 uses
  %i.fk = load i64, ptr %.sroa.0.0.copyload.i252, align 1
  %i.fl = xor i64 %i.fk, 8392569155684098423
  %i.fm = getelementptr i8, ptr %.sroa.0.0.copyload.i252, i64 6
  %i.fn = load i64, ptr %i.fm, align 1
  %i.fo = xor i64 %i.fn, 7378429383207646328
  %i.fp = or i64 %i.fl, %i.fo
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit260

_ZN4llvmeqENS_9StringRefES0_.exit260:             ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ft = phi i1 [ false, %bb.z ], [ %i.fs, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.fu = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.fv, align 1, !tbaa !176
  store ptr @.str.69, ptr %28, align 8, !tbaa !22
  store i8 3, ptr %i.fu, align 8, !tbaa !175
  %i.fw = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.ft, ptr noundef nonnull align 8 dereferenceable(34) %28, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %.critedge

bb.ac:                                            ; preds = %bb.g
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = and i32 %i.fy, 255
  %i.ga = icmp eq i32 %i.fz, 21
  br i1 %i.ga, label %bb.ad, label %_ZN4llvmeqENS_9StringRefES0_.exit269

bb.ad:                                            ; preds = %bb.ac
  %.sroa.2.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i263 = load i64, ptr %.sroa.2.0..sroa_idx.i262, align 8, !tbaa !19
  %.not.i266 = icmp eq i64 %.sroa.2.0.copyload.i263, 12
  br i1 %.not.i266, label %bb.ae, label %_ZN4llvmeqENS_9StringRefES0_.exit269

bb.ae:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i261 = load ptr, ptr %i.gb, align 8, !tbaa !162 ; 2 uses
  %i.gc = load i64, ptr %.sroa.0.0.copyload.i261, align 1
  %i.gd = xor i64 %i.gc, 7959380266038026615
  %i.ge = getelementptr i8, ptr %.sroa.0.0.copyload.i261, i64 8
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = zext i32 %i.gf to i64
  %i.gh = xor i64 %i.gg, 1717924451
  %i.gi = or i64 %i.gd, %i.gh
  %i.gj = icmp ne i64 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit269

_ZN4llvmeqENS_9StringRefES0_.exit269:             ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gm = phi i1 [ false, %bb.ac ], [ %i.gl, %bb.ae ], [ false, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.gn = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 1, ptr %i.go, align 1, !tbaa !176
  store ptr @.str.70, ptr %29, align 8, !tbaa !22
  store i8 3, ptr %i.gn, align 8, !tbaa !175
  %i.gp = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.gm, ptr noundef nonnull align 8 dereferenceable(34) %29, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %.critedge

bb.af:                                            ; preds = %bb.g
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gr = load i32, ptr %i.gq, align 8            ; 2 uses
  %i.gs = and i32 %i.gr, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.gs, 18
  %i.gt = trunc nuw i8 %.sroa.23.0.copyload to i1 ; 2 uses
  %i.gu = select i1 %i.gt, ptr @.str.96, ptr @.str.71
  %i.gv = select i1 %i.gt, i64 7, i64 0
  %.not243569 = icmp eq ptr %0, null
  %.not243 = or i1 %.not243569, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not243, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !160
  %i.gy = and i32 %i.gr, 19
  %i.gz = icmp eq i32 %i.gy, 19
  %i.ha = icmp eq i32 %i.gx, %.sroa.6492.0.copyload
  %.sroa.0434.4.extract.trunc = zext i1 %i.gz to i8
  %i.hb = icmp eq i8 %.sroa.23.0.copyload, %.sroa.0434.4.extract.trunc
  %i.hc = select i1 %i.ha, i1 %i.hb, i1 false
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hd = phi i1 [ false, %bb.af ], [ %i.hc, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.he = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 5, ptr %i.he, align 8, !tbaa !175
  %i.hf = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.hf, align 1, !tbaa !176
  store ptr %i.gu, ptr %33, align 8, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.gv, ptr %i.hg, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.hh = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 1, ptr %i.hi, align 1, !tbaa !176
  store ptr @.str.97, ptr %34, align 8, !tbaa !22
  store i8 3, ptr %i.hh, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %32, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef nonnull align 8 dereferenceable(34) %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.hj = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 9, ptr %i.hj, align 8, !tbaa !175
  %i.hk = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.hk, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %35, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %31, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr noundef nonnull align 8 dereferenceable(34) %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.hl = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 1, ptr %i.hm, align 1, !tbaa !176
  store ptr @.str.98, ptr %36, align 8, !tbaa !22
  store i8 3, ptr %i.hl, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %30, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr noundef nonnull align 8 dereferenceable(34) %36)
  %i.hn = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.hd, ptr noundef nonnull align 8 dereferenceable(34) %30, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br i1 %i.hn, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 3 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !198
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hr ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = and i16 %i.ht, -2
  store i16 %i.hu, ptr %i.hs, align 2
  %i.hv = load i16, ptr %i.hp, align 2, !tbaa !198 ; 2 uses
  %i.hw = add i16 %i.hv, 1
  store i16 %i.hw, ptr %i.hp, align 2, !tbaa !198
  %i.hx = zext i16 %i.hv to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2
  %i.ia = and i16 %i.hz, 1
  store i16 %i.ia, ptr %i.hy, align 2
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !158
  %.sroa.0128.0.copyload = load i64, ptr %7, align 8
  %i.id = call fastcc noundef zeroext i1 @_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE(ptr noundef %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0128.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %.critedge

bb.aj:                                            ; preds = %bb.g
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.if = load i32, ptr %i.ie, align 8            ; 2 uses
  %i.ig = and i32 %i.if, 255
  %i.ih = icmp ne i32 %i.ig, 15
  %.not242568 = icmp eq ptr %0, null
  %.not242 = or i1 %.not242568, %i.ih
  br i1 %.not242, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = lshr i32 %i.if, 8
  %i.ij = icmp eq i32 %i.ii, %.sroa.6492.0.copyload
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ik = phi i1 [ false, %bb.aj ], [ %i.ij, %bb.ak ] ; 2 uses
  %i.il = icmp eq i32 %.sroa.6492.0.copyload, 0
  br i1 %i.il, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.im = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %37, i64 33
  store i8 1, ptr %i.in, align 1, !tbaa !176
  store ptr @.str.99, ptr %37, align 8, !tbaa !22
  store i8 3, ptr %i.im, align 8, !tbaa !175
  %i.io = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.ik, ptr noundef nonnull align 8 dereferenceable(34) %37, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.ip = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 1, ptr %i.iq, align 1, !tbaa !176
  store ptr @.str.100, ptr %40, align 8, !tbaa !22
  store i8 3, ptr %i.ip, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.ir = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i8 9, ptr %i.ir, align 8, !tbaa !175
  %i.is = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 1, ptr %i.is, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %41, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %39, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef nonnull align 8 dereferenceable(34) %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.it = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.iu, align 1, !tbaa !176
  store ptr @.str.101, ptr %42, align 8, !tbaa !22
  store i8 3, ptr %i.it, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %38, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(34) %42)
  %i.iv = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.ik, ptr noundef nonnull align 8 dereferenceable(34) %38, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %.critedge

bb.ao:                                            ; preds = %bb.g
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ix = load i32, ptr %i.iw, align 8
  %.not241566 = icmp ne ptr %0, null
  %i.iy = and i32 %i.ix, 1791
  %i.iz = icmp eq i32 %i.iy, 1040
  %or.cond596 = and i1 %.not241566, %i.iz
  br i1 %or.cond596, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !177
  %i.jc = icmp eq i32 %i.jb, %.sroa.6492.0.copyload
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jd = phi i1 [ %i.jc, %bb.ap ], [ false, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.je = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 1, ptr %i.jf, align 1, !tbaa !176
  store ptr @.str.102, ptr %45, align 8, !tbaa !22
  store i8 3, ptr %i.je, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.jg = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i8 9, ptr %i.jg, align 8, !tbaa !175
  %i.jh = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 1, ptr %i.jh, align 1, !tbaa !176
  store i32 %.sroa.6492.0.copyload, ptr %46, align 8, !tbaa !22
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %44, ptr noundef nonnull align 8 dereferenceable(34) %45, ptr noundef nonnull align 8 dereferenceable(34) %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.ji = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %47, i64 33
  store i8 1, ptr %i.jj, align 1, !tbaa !176
  store ptr @.str.98, ptr %47, align 8, !tbaa !22
  store i8 3, ptr %i.ji, align 8, !tbaa !175
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %43, ptr noundef nonnull align 8 dereferenceable(34) %44, ptr noundef nonnull align 8 dereferenceable(34) %47)
  %i.jk = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext %i.jd, ptr noundef nonnull align 8 dereferenceable(34) %43, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br i1 %i.jk, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !161 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !177 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %.idx = shl nuw nsw i64 %i.jp, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx
  %.not567571 = icmp eq i32 %i.jo, 0
  br i1 %.not567571, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 5 uses
  %.pre = load i16, ptr %i.js, align 2, !tbaa !198
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.at
  %i.jt = phi i16 [ %.pre, %.lr.ph ], [ %i.kj, %bb.at ]
  %.sroa.7.0573 = phi i16 [ 0, %.lr.ph ], [ %i.kk, %bb.at ] ; 2 uses
  %.sroa.0414.0572 = phi ptr [ %i.jm, %.lr.ph ], [ %i.kl, %bb.at ] ; 2 uses
  %i.ju = zext i16 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ju ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = or i16 %i.jw, 1
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = load i16, ptr %i.js, align 2, !tbaa !198 ; 2 uses
  %i.jz = add i16 %i.jy, 1
  store i16 %i.jz, ptr %i.js, align 2, !tbaa !198
  %i.ka = zext i16 %i.jy to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ka ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = shl i16 %.sroa.7.0573, 1
  %i.ke = and i16 %i.kc, 1
  %i.kf = or disjoint i16 %i.ke, %i.kd
  store i16 %i.kf, ptr %i.kb, align 2
  %i.kg = load ptr, ptr %.sroa.0414.0572, align 8, !tbaa !26
  %.sroa.0106.0.copyload = load i64, ptr %7, align 8
  %i.kh = call fastcc noundef zeroext i1 @_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE(ptr noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0106.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(48) %6) ; 3 uses
  br i1 %i.kh, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ki = load i16, ptr %i.js, align 2, !tbaa !198
  %i.kj = add i16 %i.ki, -1                       ; 2 uses
  store i16 %i.kj, ptr %i.js, align 2, !tbaa !198
  %i.kk = add i16 %.sroa.7.0573, 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0414.0572, i64 8 ; 2 uses
  %.not567 = icmp eq ptr %i.kl, %i.jq
  br i1 %.not567, label %.critedge, label %bb.as

bb.au:                                            ; preds = %bb.g
  %i.km = and i32 %.sroa.6492.0.copyload, 15      ; 4 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.kn = lshr i32 %.sroa.6492.0.copyload, 8
  %i.ko = lshr i32 %.sroa.6492.0.copyload, 12
  %i.kp = and i32 %i.ko, 15                       ; 3 uses
  %i.kq = and i32 %i.kn, 15                       ; 3 uses
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.kq to i64
  store i32 %i.kq, ptr %i.a, align 4, !tbaa !200
  switch i32 %i.kp, label %bb.ax [
    i32 0, label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = and i32 %i.ks, 254
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kt, 18
  br label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"

bb.aw:                                            ; preds = %bb.au
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kv = load i32, ptr %i.ku, align 8
  %i.kw = and i32 %i.kv, 254
  %spec.select.i.i.i.i.i.i.i.i2.i = icmp ne i32 %i.kw, 18
  br label %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"

bb.ax:                                            ; preds = %bb.au
  unreachable

"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit": ; preds = %bb.au, %bb.av, %bb.aw
  %.0.i276 = phi i1 [ %spec.select.i.i.i.i.i.i.i.i2.i, %bb.aw ], [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.av ], [ true, %bb.au ]
  %i.kx = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_5clEv"(ptr %0, ptr nonnull %i.a)
  %i.ky = and i1 %.0.i276, %i.kx
  br i1 %i.ky, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_4clEv.exit"
  %i.kz = icmp eq i32 %i.kq, 0
  br i1 %i.kz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.la = zext nneg i32 %i.kp to i64
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr @_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEE11VectorKinds, i64 %i.la
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 16 dereferenceable(16) %i.lb, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.lc = ptrtoint ptr %48 to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 2 uses
  store ptr @.str.108, ptr %50, align 8, !tbaa !162, !alias.scope !390
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 11, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !390
  %i.le = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !392, !alias.scope !390
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !19, !alias.scope !390
  %i.lf = getelementptr inbounds nuw i8, ptr %50, i64 32
  store i8 1, ptr %i.lf, align 8, !tbaa !395, !alias.scope !390
  %i.lg = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  store i64 %i.lc, ptr %i.lg, align 8, !tbaa !396, !alias.scope !390
  %i.lh = ptrtoint ptr %i.lg to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.ld, align 8, !alias.scope !390
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 56
  store i64 %i.lh, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !22, !alias.scope !390
  %i.li = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 7, ptr %i.li, align 8, !tbaa !175
  %i.lj = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 1, ptr %i.lj, align 1, !tbaa !176
  store ptr %50, ptr %49, align 8, !tbaa !22
  %.sroa.0389.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0389.0.insert.insert = or disjoint i64 %.sroa.0389.0.insert.ext, 4294967296
  %i.lk = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %49, i64 %.sroa.0389.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr @_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEE12ElementKinds, i64 %.sroa.2.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 16 dereferenceable(16) %i.ll, i64 16, i1 false)
  %i.lm = ptrtoint ptr %51 to i64                 ; 3 uses
  switch i32 %i.kp, label %bb.be [
    i32 0, label %bb.bb
    i32 1, label %bb.bc
    i32 2, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  %i.ln = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  store ptr @.str.109, ptr %53, align 8, !tbaa !162, !alias.scope !397
  %.sroa.22.0..sroa_idx.i.i.i.i277 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 21, ptr %.sroa.22.0..sroa_idx.i.i.i.i277, align 8, !tbaa !19, !alias.scope !397
  %i.lo = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !392, !alias.scope !397
  %.sroa.2.0..sroa_idx.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i278, align 8, !tbaa !19, !alias.scope !397
  %i.lp = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 1, ptr %i.lp, align 8, !tbaa !395, !alias.scope !397
  %i.lq = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.lq, align 8, !tbaa !396, !alias.scope !397
  %i.lr = ptrtoint ptr %i.lq to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.ln, align 8, !alias.scope !397
  %.sroa.4.0..sroa_idx.i.i.i279 = getelementptr inbounds nuw i8, ptr %53, i64 56
  store i64 %i.lr, ptr %.sroa.4.0..sroa_idx.i.i.i279, align 8, !tbaa !22, !alias.scope !397
  %i.ls = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 7, ptr %i.ls, align 8, !tbaa !175
  %i.lt = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.lt, align 1, !tbaa !176
  store ptr %53, ptr %52, align 8, !tbaa !22
  %.sroa.0380.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0380.0.insert.insert = or disjoint i64 %.sroa.0380.0.insert.ext, 4294967296
  %i.lu = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %52, i64 %.sroa.0380.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %i.lv = getelementptr inbounds nuw i8, ptr %55, i64 48 ; 2 uses
  store ptr @.str.110, ptr %55, align 8, !tbaa !162, !alias.scope !398
  %.sroa.22.0..sroa_idx.i.i.i.i280 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 13, ptr %.sroa.22.0..sroa_idx.i.i.i.i280, align 8, !tbaa !19, !alias.scope !398
  %i.lw = getelementptr inbounds nuw i8, ptr %55, i64 16
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !392, !alias.scope !398
  %.sroa.2.0..sroa_idx.i.i.i.i281 = getelementptr inbounds nuw i8, ptr %55, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i281, align 8, !tbaa !19, !alias.scope !398
  %i.lx = getelementptr inbounds nuw i8, ptr %55, i64 32
  store i8 1, ptr %i.lx, align 8, !tbaa !395, !alias.scope !398
  %i.ly = getelementptr inbounds nuw i8, ptr %55, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.ly, align 8, !tbaa !396, !alias.scope !398
  %i.lz = ptrtoint ptr %i.ly to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.lv, align 8, !alias.scope !398
  %.sroa.4.0..sroa_idx.i.i.i282 = getelementptr inbounds nuw i8, ptr %55, i64 56
  store i64 %i.lz, ptr %.sroa.4.0..sroa_idx.i.i.i282, align 8, !tbaa !22, !alias.scope !398
  %i.ma = getelementptr inbounds nuw i8, ptr %54, i64 32
  store i8 7, ptr %i.ma, align 8, !tbaa !175
  %i.mb = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 1, ptr %i.mb, align 1, !tbaa !176
  store ptr %55, ptr %54, align 8, !tbaa !22
  %.sroa.0373.0.insert.ext = zext nneg i32 %i.km to i64
  %.sroa.0373.0.insert.insert = or disjoint i64 %.sroa.0373.0.insert.ext, 4294967296
  %i.mc = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_1clEbRKNS_5TwineESt8optionalIjE"(ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %54, i64 %.sroa.0373.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.md = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 2 uses
  store ptr @.str.108, ptr %57, align 8, !tbaa !162, !alias.scope !399
  %.sroa.22.0..sroa_idx.i.i.i.i283 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 11, ptr %.sroa.22.0..sroa_idx.i.i.i.i283, align 8, !tbaa !19, !alias.scope !399
  %i.me = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %i.md, ptr %i.me, align 8, !tbaa !392, !alias.scope !399
  %.sroa.2.0..sroa_idx.i.i.i.i284 = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i284, align 8, !tbaa !19, !alias.scope !399
  %i.mf = getelementptr inbounds nuw i8, ptr %57, i64 32
  store i8 1, ptr %i.mf, align 8, !tbaa !395, !alias.scope !399
  %i.mg = getelementptr inbounds nuw i8, ptr %57, i64 40 ; 2 uses
  store i64 %i.lm, ptr %i.mg, align 8, !tbaa !396, !alias.scope !399
  %i.mh = ptrtoint ptr %i.mg to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_13StringLiteralEEEEEvlS2_S3_, ptr %i.md, align 8, !alias.scope !399
  %.sroa.4.0..sroa_idx.i.i.i285 = getelementptr inbounds nuw i8, ptr %57, i64 56
  store i64 %i.mh, ptr %.sroa.4.0..sroa_idx.i.i.i285, align 8, !tbaa !22, !alias.scope !399
  %i.mi = getelementptr inbounds nuw i8, ptr %56, i64 32
  store i8 7, ptr %i.mi, align 8, !tbaa !175
  %i.mj = getelementptr inbounds nuw i8, ptr %56, i64 33
  store i8 1, ptr %i.mj, align 1, !tbaa !176
  store ptr %57, ptr %56, align 8, !tbaa !22
  %.sroa.0372.0.insert.ext = zext nneg i32 %i.km to i64
end_hunk_1
begin_hunk_2_@_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE:bb.a
  %i.qd = getelementptr inbounds nuw i8, ptr %72, i64 33
  store i8 1, ptr %i.qd, align 1, !tbaa !176
  store ptr %66, ptr %72, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19
  %i.qe = ptrtoint ptr %i.qa to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %74, i64 48 ; 2 uses
  store ptr @.str.112, ptr %74, align 8, !tbaa !162, !alias.scope !405
  %.sroa.22.0..sroa_idx.i.i.i.i305 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 2, ptr %.sroa.22.0..sroa_idx.i.i.i.i305, align 8, !tbaa !19, !alias.scope !405
  %i.qg = getelementptr inbounds nuw i8, ptr %74, i64 16
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !392, !alias.scope !405
  %.sroa.2.0..sroa_idx.i.i.i.i306 = getelementptr inbounds nuw i8, ptr %74, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i306, align 8, !tbaa !19, !alias.scope !405
  %i.qh = getelementptr inbounds nuw i8, ptr %74, i64 32
  store i8 1, ptr %i.qh, align 8, !tbaa !395, !alias.scope !405
  %i.qi = getelementptr inbounds nuw i8, ptr %74, i64 40 ; 2 uses
  store i64 %i.qe, ptr %i.qi, align 8, !tbaa !26, !alias.scope !405
  %i.qj = ptrtoint ptr %i.qi to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_4TypeEEEEEvlS2_S3_, ptr %i.qf, align 8, !alias.scope !405
  %.sroa.4.0..sroa_idx.i.i.i307 = getelementptr inbounds nuw i8, ptr %74, i64 56
  store i64 %i.qj, ptr %.sroa.4.0..sroa_idx.i.i.i307, align 8, !tbaa !22, !alias.scope !405
  %i.qk = getelementptr inbounds nuw i8, ptr %73, i64 32
  store i8 7, ptr %i.qk, align 8, !tbaa !175
  %i.ql = getelementptr inbounds nuw i8, ptr %73, i64 33
  store i8 1, ptr %i.ql, align 1, !tbaa !176
  store ptr %74, ptr %73, align 8, !tbaa !22
  %i.qm = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext %i.qb, ptr noundef nonnull align 8 dereferenceable(34) %72, ptr noundef nonnull align 8 dereferenceable(34) %73, i32 noundef %i.os)
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, %bb.bz
  %.11 = phi i1 [ true, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread ], [ %i.qm, %bb.cb ], [ true, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bw, %bb.bx, %bb.cc
  %.12 = phi i1 [ %.11, %bb.cc ], [ false, %bb.bx ], [ true, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.critedge

bb.ce:                                            ; preds = %bb.g
  %i.qn = and i32 %.sroa.6492.0.copyload, 15      ; 5 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !138
  %.not236 = icmp ugt i32 %i.qp, %i.qn
  br i1 %.not236, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qq = add i64 %i.d, -2
  %i.qr = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.qr, ptr %1, align 8, !tbaa !147
  store i64 %i.qq, ptr %i.c, align 8, !tbaa !19
  br i1 %5, label %.critedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_0clES1_"(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %0)
  br label %.critedge

bb.ch:                                            ; preds = %bb.ce
  %i.qs = zext nneg i32 %i.qn to i64
  %i.qt = load ptr, ptr %3, align 8, !tbaa !137
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.qs
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !26 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load i32, ptr %i.qw, align 8            ; 2 uses
  %i.qy = and i32 %i.qx, 254
  %spec.select.i.i.i.i.i.i.i.i308 = icmp ne i32 %i.qy, 18
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ra = load i32, ptr %i.qz, align 8            ; 2 uses
  %i.rb = and i32 %i.ra, 254
  %spec.select.i.i.i.i.i.i.i.i310 = icmp eq i32 %i.rb, 18
  %i.rc = icmp eq ptr %i.qv, null
  %i.rd = or i1 %i.rc, %spec.select.i.i.i.i.i.i.i.i308 ; 2 uses
  %i.re = icmp ne ptr %0, null
  %i.rf = and i1 %i.re, %spec.select.i.i.i.i.i.i.i.i310 ; 3 uses
  %or.cond = or i1 %i.rd, %i.rf
  br i1 %or.cond, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  %i.rg = getelementptr inbounds nuw i8, ptr %75, i64 32
  store i8 5, ptr %i.rg, align 8, !tbaa !175
  %i.rh = getelementptr inbounds nuw i8, ptr %75, i64 33
  store i8 1, ptr %i.rh, align 1, !tbaa !176
  store ptr @.str.118, ptr %75, align 8, !tbaa !22
  %i.ri = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 20, ptr %i.ri, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  %i.rj = getelementptr inbounds nuw i8, ptr %76, i64 32
  %i.rk = getelementptr inbounds nuw i8, ptr %76, i64 33
  store i8 1, ptr %i.rk, align 1, !tbaa !176
  store ptr @.str.103, ptr %76, align 8, !tbaa !22
  store i8 3, ptr %i.rj, align 8, !tbaa !175
  %i.rl = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %75, ptr noundef nonnull align 8 dereferenceable(34) %76, i32 noundef %i.qn)
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %.critedge

bb.cj:                                            ; preds = %bb.ch
  %or.cond5 = and i1 %i.rd, %i.rf
  br i1 %or.cond5, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19
  %i.rm = getelementptr inbounds nuw i8, ptr %77, i64 32
  store i8 5, ptr %i.rm, align 8, !tbaa !175
  %i.rn = getelementptr inbounds nuw i8, ptr %77, i64 33
  store i8 1, ptr %i.rn, align 1, !tbaa !176
  store ptr @.str.118, ptr %77, align 8, !tbaa !22
  %i.ro = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 20, ptr %i.ro, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19
  %i.rp = getelementptr inbounds nuw i8, ptr %78, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %78, i64 33
  store i8 1, ptr %i.rq, align 1, !tbaa !176
  store ptr @.str.104, ptr %78, align 8, !tbaa !22
  store i8 3, ptr %i.rp, align 8, !tbaa !175
  %i.rr = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %77, ptr noundef nonnull align 8 dereferenceable(34) %78, i32 noundef %i.qn)
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  br label %.critedge

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.rf, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !160 ; 2 uses
  %i.ru = and i32 %i.qx, 255
  %i.rv = icmp eq i32 %i.ru, 19
  %.sroa.2.0.insert.shift.i.i312 = select i1 %i.rv, i64 4294967296, i64 0 ; 2 uses
  %.sroa.0.0.insert.ext.i.i313 = zext i32 %i.rt to i64
  %.sroa.0.0.insert.insert.i.i314 = or disjoint i64 %.sroa.2.0.insert.shift.i.i312, %.sroa.0.0.insert.ext.i.i313
  %i.rw = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.i314 to i40
  store i40 %i.rw, ptr %79, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !160
  %i.rz = and i32 %i.ra, 19
  %i.sa = icmp eq i32 %i.rz, 19
  %.not.i318 = icmp ne i32 %i.rt, %i.ry
  %i.sb = lshr exact i64 %.sroa.2.0.insert.shift.i.i312, 32
  %i.sc = zext i1 %i.sa to i64
  %i.sd = icmp ne i64 %i.sb, %i.sc
  %i.se = select i1 %.not.i318, i1 true, i1 %i.sd
  br i1 %i.se, label %.thread, label %bb.cn

.thread:                                          ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19
  %i.sf = getelementptr inbounds nuw i8, ptr %80, i64 32
  store i8 5, ptr %i.sf, align 8, !tbaa !175
  %i.sg = getelementptr inbounds nuw i8, ptr %80, i64 33
  store i8 1, ptr %i.sg, align 1, !tbaa !176
  store ptr @.str.118, ptr %80, align 8, !tbaa !22
  %i.sh = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 20, ptr %i.sh, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19
  %i.si = ptrtoint ptr %79 to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %82, i64 48 ; 2 uses
  store ptr @.str.119, ptr %82, align 8, !tbaa !162, !alias.scope !406
  %.sroa.22.0..sroa_idx.i.i.i.i319 = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 23, ptr %.sroa.22.0..sroa_idx.i.i.i.i319, align 8, !tbaa !19, !alias.scope !406
  %i.sk = getelementptr inbounds nuw i8, ptr %82, i64 16
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !392, !alias.scope !406
  %.sroa.2.0..sroa_idx.i.i.i.i320 = getelementptr inbounds nuw i8, ptr %82, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i320, align 8, !tbaa !19, !alias.scope !406
  %i.sl = getelementptr inbounds nuw i8, ptr %82, i64 32
  store i8 1, ptr %i.sl, align 8, !tbaa !395, !alias.scope !406
  %i.sm = getelementptr inbounds nuw i8, ptr %82, i64 40 ; 2 uses
  store i64 %i.si, ptr %i.sm, align 8, !tbaa !407, !alias.scope !406
  %i.sn = ptrtoint ptr %i.sm to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_12ElementCountEEEEEvlS2_S3_, ptr %i.sj, align 8, !alias.scope !406
  %.sroa.4.0..sroa_idx.i.i.i321 = getelementptr inbounds nuw i8, ptr %82, i64 56
  store i64 %i.sn, ptr %.sroa.4.0..sroa_idx.i.i.i321, align 8, !tbaa !22, !alias.scope !406
  %i.so = getelementptr inbounds nuw i8, ptr %81, i64 32
  store i8 7, ptr %i.so, align 8, !tbaa !175
  %i.sp = getelementptr inbounds nuw i8, ptr %81, i64 33
  store i8 1, ptr %i.sp, align 1, !tbaa !176
  store ptr %82, ptr %81, align 8, !tbaa !22
  %i.sq = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %80, ptr noundef nonnull align 8 dereferenceable(34) %81, i32 noundef %i.qn)
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  br label %.critedge

bb.cn:                                            ; preds = %bb.cm
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !158
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 2 uses
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.st, i64 %i.f ; 2 uses
  %i.sw = load i16, ptr %i.sv, align 2
  %i.sx = and i16 %i.sw, -2
  store i16 %i.sx, ptr %i.sv, align 2
  %i.sy = load i16, ptr %i.su, align 2, !tbaa !198 ; 2 uses
  %i.sz = add i16 %i.sy, 1
  store i16 %i.sz, ptr %i.su, align 2, !tbaa !198
  %i.ta = zext i16 %i.sy to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.st, i64 %i.ta ; 2 uses
  %i.tc = load i16, ptr %i.tb, align 2
  %i.td = and i16 %i.tc, 1
  store i16 %i.td, ptr %i.tb, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  %.sroa.053.0.copyload.pre = load i64, ptr %7, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %.sroa.053.0.copyload = phi i64 [ %.sroa.053.0.copyload.pre, %bb.cn ], [ %2, %bb.cl ]
  %.1207 = phi ptr [ %i.ss, %bb.cn ], [ %0, %bb.cl ]
  %i.te = call fastcc noundef zeroext i1 @_ZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamE(ptr noundef %.1207, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.053.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %.critedge

bb.cp:                                            ; preds = %bb.g
  %i.tf = lshr i32 %.sroa.6492.0.copyload, 16     ; 5 uses
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !138
  %.not233 = icmp ugt i32 %i.ti, %i.tf
  br i1 %.not233, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  br i1 %5, label %.critedge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0)
  call fastcc void @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_0clES1_"(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %0)
  br label %.critedge

bb.cs:                                            ; preds = %bb.cp
  br i1 %5, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.tj = load ptr, ptr %3, align 8, !tbaa !137
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.tg
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !26 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load i32, ptr %i.tm, align 8            ; 2 uses
  %i.to = and i32 %i.tn, 254
  %spec.select.i.i.i.i.i.i.i.i322 = icmp ne i32 %i.to, 18
  %.not234563 = icmp eq ptr %i.tl, null
  %.not234 = or i1 %.not234563, %spec.select.i.i.i.i.i.i.i.i322
  br i1 %.not234, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19
  %i.tp = getelementptr inbounds nuw i8, ptr %83, i64 32
  store i8 5, ptr %i.tp, align 8, !tbaa !175
  %i.tq = getelementptr inbounds nuw i8, ptr %83, i64 33
  store i8 1, ptr %i.tq, align 1, !tbaa !176
  store ptr @.str.120, ptr %83, align 8, !tbaa !22
  %i.tr = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 33, ptr %i.tr, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #19
  %i.ts = getelementptr inbounds nuw i8, ptr %84, i64 32
  %i.tt = getelementptr inbounds nuw i8, ptr %84, i64 33
  store i8 1, ptr %i.tt, align 1, !tbaa !176
  store ptr @.str.103, ptr %84, align 8, !tbaa !22
  store i8 3, ptr %i.ts, align 8, !tbaa !175
  call fastcc void @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_2clERKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(34) %83, ptr noundef nonnull align 8 dereferenceable(34) %84, i32 noundef %i.tf)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  br label %.critedge

bb.cw:                                            ; preds = %bb.cu
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tv = load i32, ptr %i.tu, align 8            ; 2 uses
  %i.tw = and i32 %i.tv, 254
  %spec.select.i.i.i.i.i.i.i.i324 = icmp ne i32 %i.tw, 18
  %.not235564 = icmp eq ptr %0, null
  %.not235 = or i1 %.not235564, %spec.select.i.i.i.i.i.i.i.i324
  br i1 %.not235, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #19
  %i.tx = getelementptr inbounds nuw i8, ptr %85, i64 32
  store i8 5, ptr %i.tx, align 8, !tbaa !175
  %i.ty = getelementptr inbounds nuw i8, ptr %85, i64 33
  store i8 1, ptr %i.ty, align 1, !tbaa !176
  store ptr @.str.120, ptr %85, align 8, !tbaa !22
  %i.tz = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 33, ptr %i.tz, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #19
  %i.ua = getelementptr inbounds nuw i8, ptr %86, i64 32
  %i.ub = getelementptr inbounds nuw i8, ptr %86, i64 33
  store i8 1, ptr %i.ub, align 1, !tbaa !176
  store ptr @.str.103, ptr %86, align 8, !tbaa !22
  store i8 3, ptr %i.ua, align 8, !tbaa !175
  %i.uc = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %85, ptr noundef nonnull align 8 dereferenceable(34) %86, i32 noundef %i.tf)
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  br label %.critedge

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #19
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !160 ; 2 uses
  %i.uf = and i32 %i.tn, 19
  %i.ug = icmp eq i32 %i.uf, 19
  %.sroa.2.0.insert.shift.i.i326 = select i1 %i.ug, i64 4294967296, i64 0 ; 2 uses
  %.sroa.0.0.insert.ext.i.i327 = zext i32 %i.ue to i64
  %.sroa.0.0.insert.insert.i.i328 = or disjoint i64 %.sroa.2.0.insert.shift.i.i326, %.sroa.0.0.insert.ext.i.i327
  %i.uh = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.i328 to i40
  store i40 %i.uh, ptr %87, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #19
  %i.ui = ptrtoint ptr %87 to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %88, i64 48 ; 2 uses
  store ptr @.str.121, ptr %88, align 8, !tbaa !162, !alias.scope !408
  %.sroa.22.0..sroa_idx.i.i.i.i329 = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 35, ptr %.sroa.22.0..sroa_idx.i.i.i.i329, align 8, !tbaa !19, !alias.scope !408
  %i.uk = getelementptr inbounds nuw i8, ptr %88, i64 16
  store ptr %i.uj, ptr %i.uk, align 8, !tbaa !392, !alias.scope !408
  %.sroa.2.0..sroa_idx.i.i.i.i330 = getelementptr inbounds nuw i8, ptr %88, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i330, align 8, !tbaa !19, !alias.scope !408
  %i.ul = getelementptr inbounds nuw i8, ptr %88, i64 32
  store i8 1, ptr %i.ul, align 8, !tbaa !395, !alias.scope !408
  %i.um = getelementptr inbounds nuw i8, ptr %88, i64 40 ; 2 uses
  store i64 %i.ui, ptr %i.um, align 8, !tbaa !407, !alias.scope !408
  %i.un = ptrtoint ptr %i.um to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_12ElementCountEEEEEvlS2_S3_, ptr %i.uj, align 8, !alias.scope !408
  %.sroa.4.0..sroa_idx.i.i.i331 = getelementptr inbounds nuw i8, ptr %88, i64 56
  store i64 %i.un, ptr %.sroa.4.0..sroa_idx.i.i.i331, align 8, !tbaa !22, !alias.scope !408
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !160
  %i.uq = and i32 %i.tv, 19
  %i.ur = icmp eq i32 %i.uq, 19
  %i.us = icmp eq i32 %i.up, %i.ue
  %i.ut = lshr exact i64 %.sroa.2.0.insert.shift.i.i326, 32
  %i.uu = zext i1 %i.ur to i64
  %i.uv = icmp eq i64 %i.ut, %i.uu
  %i.uw = select i1 %i.us, i1 %i.uv, i1 false
  br i1 %i.uw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !158
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i32, ptr %i.uz, align 8
  %i.vb = and i32 %i.va, 255
  %i.vc = icmp eq i32 %i.vb, 15
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.vd = phi i1 [ false, %bb.cy ], [ %i.vc, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #19
  %i.ve = getelementptr inbounds nuw i8, ptr %89, i64 32
  store i8 5, ptr %i.ve, align 8, !tbaa !175
  %i.vf = getelementptr inbounds nuw i8, ptr %89, i64 33
  store i8 1, ptr %i.vf, align 1, !tbaa !176
  store ptr @.str.120, ptr %89, align 8, !tbaa !22
  %i.vg = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 33, ptr %i.vg, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #19
  %i.vh = getelementptr inbounds nuw i8, ptr %90, i64 32
  store i8 7, ptr %i.vh, align 8, !tbaa !175
  %i.vi = getelementptr inbounds nuw i8, ptr %90, i64 33
  store i8 1, ptr %i.vi, align 1, !tbaa !176
  store ptr %88, ptr %90, align 8, !tbaa !22
  %i.vj = call fastcc noundef zeroext i1 @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_3clEbRKNS_5TwineESL_j"(ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext %i.vd, ptr noundef nonnull align 8 dereferenceable(34) %89, ptr noundef nonnull align 8 dereferenceable(34) %90, i32 noundef %i.tf)
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  br label %.critedge

bb.db:                                            ; preds = %bb.g
  %i.vk = and i32 %.sroa.6492.0.copyload, 15      ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !138
  %.not231 = icmp ugt i32 %i.vm, %i.vk
  br i1 %.not231, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %5, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call fastcc void @"_ZZL18matchIntrinsicTypePN4llvm4TypeERNS_8ArrayRefINS_9Intrinsic13IITDescriptorEEEN12_GLOBAL__N_113MatchPositionERNS_15SmallVectorImplIS1_EERNS9_ISt5tupleIJS1_S5_S8_EEEEbRNS_11raw_ostreamEENK3$_0clES1_"(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %0)
  br label %.critedge

bb.de:                                            ; preds = %bb.db
  %i.vn = zext nneg i32 %i.vk to i64
  %i.vo = load ptr, ptr %3, align 8, !tbaa !137
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vn
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !26 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load i32, ptr %i.vr, align 8
  %i.vt = and i32 %i.vs, 254
  %spec.select.i.i.i.i.i.i.i.i335 = icmp ne i32 %i.vt, 18
  %.not232562 = icmp eq ptr %i.vq, null
  %.not232 = or i1 %.not232562, %spec.select.i.i.i.i.i.i.i.i335
  br i1 %.not232, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
end_hunk_2
