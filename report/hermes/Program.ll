inline.NumInlined: 478
inline.NumDeleted: 202
begin_hunk_0_@_ZL28toNullTerminatedCStringArrayN4llvh8ArrayRefINS_9StringRefEEERNS_11StringSaverE:bb.a
  %i.av = phi ptr [ %i.aa, %bb.f ], [ %i.at, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i15 ] ; 3 uses
  %i.aw = phi ptr [ %i.ae, %bb.f ], [ %i.as, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i15 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind
declare i32 @posix_spawn_file_actions_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @posix_spawn_file_actions_adddup2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @posix_spawn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @posix_spawn_file_actions_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvhL10RedirectIOENS_8OptionalINS_9StringRefEEEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef readonly byval(%"class.llvh::Optional.32") align 8 captures(none) %0, i32 noundef range(i32 0, 3) %1, ptr noundef captures(address) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !71, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.f, align 8, !tbaa !21
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 9) #23 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.k = load ptr, ptr %0, align 8, !tbaa !27, !noalias !146 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !17, !alias.scope !146
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.e

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !21, !alias.scope !146
  store i8 0, ptr %i.l, align 8, !tbaa !16, !alias.scope !146
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !146
  store i64 %i.h, ptr %i.a, align 8, !tbaa !30, !noalias !146
  %i.n = icmp ugt i64 %i.h, 15
  br i1 %i.n, label %._crit_edge.i.i.i.i.thread, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.e
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !31, !alias.scope !146
  %i.p = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !146
  store i64 %i.p, ptr %i.l, align 8, !tbaa !16, !alias.scope !146
  br label %bb.g

._crit_edge.i.i.i.i:                              ; preds = %bb.e
  %cond = icmp eq i64 %i.h, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !16
  store i8 %i.q, ptr %i.l, align 8, !tbaa !16
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %i.r = phi ptr [ %i.o, %._crit_edge.i.i.i.i.thread ], [ %i.l, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.h, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.f, %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !146 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !21, !alias.scope !146
  %i.u = load ptr, ptr %4, align 8, !tbaa !31, !alias.scope !146
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !146
  %.pre = load ptr, ptr %3, align 8, !tbaa !31    ; 6 uses
  %i.w = icmp eq ptr %.pre, %i.e
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.x = phi ptr [ %i.e, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ], [ %.pre, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ]
  %i.y = load ptr, ptr %4, align 8, !tbaa !31     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.ab = load ptr, ptr %4, align 8, !tbaa !31    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ah, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !16
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !21
  %i.al = load ptr, ptr %3, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.y, ptr %3, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !16
  store <2 x i64> %i.ao, ptr %i.f, align 8, !tbaa !16
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !16
  store ptr %i.ab, ptr %3, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !16
  store <2 x i64> %i.ar, ptr %i.f, align 8, !tbaa !16
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.pre, ptr %4, align 8, !tbaa !31
  store i64 %i.ap, ptr %i.ac, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  %i.as = phi ptr [ %i.z, %.thread.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ] ; 2 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.at = phi ptr [ %.pre, %bb.k ], [ %i.as, %bb.l ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !21
  store i8 0, ptr %i.at, align 1, !tbaa !16
  %i.av = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.ba = load ptr, ptr %3, align 8, !tbaa !31
  %i.bb = icmp eq i32 %1, 0                       ; 3 uses
  %i.bc = select i1 %i.bb, i32 0, i32 65
  %i.bd = call i32 (ptr, i32, ...) @open(ptr noundef %i.ba, i32 noundef %i.bc, i32 noundef 438) #23 ; 4 uses
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.bf = load ptr, ptr %3, align 8, !tbaa !31, !noalias !147
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !147 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bh, ptr %7, align 8, !tbaa !17, !alias.scope !150
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !21, !alias.scope !150
  store i8 0, ptr %i.bh, align 8, !tbaa !16, !alias.scope !150
  %i.bj = add i64 %i.bg, 18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bj) #23
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !21, !alias.scope !150
  %i.bl = add i64 %i.bk, -4611686018427387886
  %i.bm = icmp ult i64 %i.bl, 18
  br i1 %i.bm, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.n
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.20, i64 noundef 18) #23 ; 0 uses
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !21, !alias.scope !150
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bg
  br i1 %i.bq, label %bb.p, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bf, i64 noundef %i.bg) #23 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !21, !noalias !153
  %i.bt = add i64 %i.bs, -4611686018427387898
  %i.bu = icmp ult i64 %i.bt, 6
  br i1 %i.bu, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24, !noalias !153
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.21, i64 noundef 6) #23, !noalias !153 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !17, !alias.scope !153
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !21 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bx, ptr %6, align 8, !tbaa !31, !alias.scope !153
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !16
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !16, !alias.scope !153
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre.i14 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.cf = phi i64 [ %i.cb, %bb.r ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !21, !alias.scope !153
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !31
  store i64 0, ptr %i.cg, align 8, !tbaa !21
  store i8 0, ptr %i.by, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ci = select i1 %i.bb, i64 5, i64 6           ; 2 uses
  %i.cj = sub i64 4611686018427387903, %i.cf
  %i.ck = icmp ult i64 %i.cj, %i.ci
  br i1 %i.ck, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24, !noalias !156
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cl = select i1 %i.bb, ptr @.str.22, ptr @.str.23
  %i.cm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.cl, i64 noundef %i.ci) #23, !noalias !156 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.cn, ptr %5, align 8, !tbaa !17, !alias.scope !156
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 5 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw nsw i64 %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.cp, i64 %i.cu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15
  store ptr %i.co, ptr %5, align 8, !tbaa !31, !alias.scope !156
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !16
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !16, !alias.scope !156
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.pre.i18 = load i64, ptr %.phi.trans.insert.i17, align 8, !tbaa !21
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit19

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit19: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %.val11 = phi ptr [ %i.cn, %bb.t ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  %i.cw = phi i64 [ %i.cs, %bb.t ], [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !21, !alias.scope !156
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !31
  store i64 0, ptr %i.cx, align 8, !tbaa !21
  store i8 0, ptr %i.cp, align 8, !tbaa !16
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %2, ptr %.val11, i64 %i.cw, i32 noundef -1)
  %i.cz = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cn
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit19
  %i.db = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.dd = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bw
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.df = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.dh = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.dj = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.w

bb.u:                                             ; preds = %bb.m
  %i.dl = call i32 @dup2(i32 noundef %i.bd, i32 noundef %1) #23
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %._crit_edge.i.i, label %bb.v

._crit_edge.i.i:                                  ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.dn, ptr %8, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dn, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.do, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.dp, align 1, !tbaa !16
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %2, ptr nonnull %i.dn, i64 11, i32 noundef -1)
  %i.dq = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dn
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %._crit_edge.i.i
  %i.ds = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %9 = call i32 @close(i32 noundef %i.bd) #23     ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.du = call i32 @close(i32 noundef %i.bd) #23  ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ false, %bb.v ]
  %i.dv = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.e
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.w
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !16
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvhL15SetMemoryLimitsEj(i32 noundef range(i32 1, 0) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rlimit, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = zext i32 %0 to i64
  %i.b = shl nuw nsw i64 %i.a, 20                 ; 2 uses
  %i.c = call i32 @getrlimit(i32 noundef 2, ptr noundef nonnull %1) #23 ; 0 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !159
  %i.d = call i32 @setrlimit(i32 noundef 2, ptr noundef nonnull %1) #23 ; 0 uses
  %i.e = call i32 @getrlimit(i32 noundef 5, ptr noundef nonnull %1) #23 ; 0 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !159
  %i.f = call i32 @setrlimit(i32 noundef 5, ptr noundef nonnull %1) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

declare { i32, ptr } @_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare { ptr, i64 } @_ZN4llvh11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @posix_spawn_file_actions_addopen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #18

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN4llvh3sys11ProcessInfoE", !4, i64 0, !4, i64 4, !4, i64 8}
!9 = !{!8, !4, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !14, i64 16, !14, i64 17}
!14 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!15 = !{!13, !14, i64 17}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !23, i64 8, !5, i64 16}
!23 = !{!"long", !5, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!26 = distinct !{!26, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!27 = !{!28, !19, i64 0}
!28 = !{!"_ZTSN4llvh9StringRefE", !19, i64 0, !23, i64 8}
!29 = !{!28, !23, i64 8}
!30 = !{!23, !23, i64 0}
!31 = !{!22, !19, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!37 = distinct !{!37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!40, !20, i64 0}
!40 = !{!"_ZTSN4llvh15SmallVectorBaseE", !20, i64 0, !4, i64 8, !4, i64 12}
!41 = !{!40, !4, i64 8}
!42 = !{!40, !4, i64 12}
!43 = !{!44, !23, i64 88}
!44 = !{!"_ZTSN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEE", !19, i64 0, !19, i64 8, !45, i64 16, !50, i64 64, !23, i64 80, !23, i64 88, !54, i64 96}
!45 = !{!"_ZTSN4llvh11SmallVectorIPvLj4EEE", !46, i64 0, !49, i64 16}
!46 = !{!"_ZTSN4llvh15SmallVectorImplIPvEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPvLb1EEE", !48, i64 0}
!48 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPvvEE", !40, i64 0}
!49 = !{!"_ZTSN4llvh18SmallVectorStorageIPvLj4EEE", !5, i64 0}
!50 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPvmELj0EEE", !51, i64 0}
!51 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPvmEEE", !52, i64 0}
!52 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !53, i64 0}
!53 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPvmEvEE", !40, i64 0}
!54 = !{!"_ZTSN4llvh15MallocAllocatorE"}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEE", !20, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p2 omnipotent char", !60, i64 0}
end_hunk_0
