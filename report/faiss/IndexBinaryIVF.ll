Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryIVF?download=true
inline.NumInlined: 1965
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN5faiss14IndexBinaryIVF16replace_invlistsEPNS_13InvertedListsEb:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1229
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !89
  store i8 0, ptr %i.l, align 8, !tbaa !76
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #21 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.q)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %3, align 8, !tbaa !87
  %i.s = load i64, ptr %i.m, align 8, !tbaa !89
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.p)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14IndexBinaryIVF16replace_invlistsEPNS_13InvertedListsEb, ptr noundef nonnull @.str.13, i32 noundef 343)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.o unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.w, %bb.i ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.z = load i64, ptr %i.l, align 8, !tbaa !76
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !231, !range !30, !noundef !31
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(25) %i.af) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.ak = zext i1 %2 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.al, align 8, !tbaa !90
  store i8 %i.ak, ptr %i.ab, align 8, !tbaa !231
  ret void

bb.o:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_123search_knn_hamming_heapEPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %15, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %16) #27 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.h = alloca [3 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 0, ptr %i.c, align 8, !tbaa !91
  %i.i = load ptr, ptr %2, align 8, !tbaa !135    ; 2 uses
  %i.j = load i8, ptr %3, align 1, !tbaa !96, !range !30, !noundef !31
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(248) %i.i, i1 noundef zeroext %i.k)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %4, align 8, !tbaa !91     ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  %.pre171 = load i32, ptr %0, align 4, !tbaa !77 ; 5 uses
  br i1 %i.q, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i64 %i.p, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 %i.r, ptr %i.e, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i64 1, ptr %i.f, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 0, ptr %i.g, align 4, !tbaa !77
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre171, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i64 1, i64 1)
  %i.s = load i64, ptr %i.e, align 8, !tbaa !91
  %i.t = call i64 @llvm.smin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  store i64 %i.t, ptr %i.e, align 8, !tbaa !91
  %i.u = load i64, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %.not147 = icmp sgt i64 %i.u, %i.t
  br i1 %.not147, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.c, %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit
  %i.v = phi i64 [ %i.fa, %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit ], [ 0, %bb.c ]
  %i.w = phi i64 [ %i.ey, %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit ], [ 0, %bb.c ] ; 2 uses
  %i.x = phi i64 [ %i.ez, %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit ], [ 0, %bb.c ] ; 2 uses
  %.068148 = phi i64 [ %i.kl, %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit ], [ %i.u, %bb.c ] ; 6 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !136
  %i.z = load ptr, ptr %2, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !67
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %.068148, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.ae)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %.lr.ph150
  %i.ah = load ptr, ptr %6, align 8, !tbaa !137
  %i.ai = load i64, ptr %7, align 8, !tbaa !91
  %i.aj = mul nsw i64 %i.ai, %.068148
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load ptr, ptr %8, align 8, !tbaa !139
  %i.am = load i64, ptr %9, align 8, !tbaa !91    ; 10 uses
  %i.an = mul nsw i64 %i.am, %.068148             ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an ; 21 uses
  %i.ap = load ptr, ptr %10, align 8, !tbaa !137
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.an ; 21 uses
  %i.ar = load i32, ptr %11, align 4, !tbaa !253  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %.not123 = icmp eq i64 %i.am, 0                 ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not123, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %bb.e
  %min.iters.check255 = icmp ult i64 %i.am, 4
  br i1 %min.iters.check255, label %.lr.ph46.i.preheader277, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph46.i.preheader
  %n.vec257 = and i64 %i.am, -4                   ; 3 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next260, %vector.body258 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index259 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x i32> splat (i32 -2147483648), ptr %i.at, align 4, !tbaa !77
  store <2 x i32> splat (i32 -2147483648), ptr %18, align 4, !tbaa !77
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index259 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.au, align 8, !tbaa !91
  store <2 x i64> splat (i64 -1), ptr %i.av, align 8, !tbaa !91
  %index.next260 = add nuw i64 %index259, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next260, %n.vec257
  br i1 %i.aw, label %middle.block261, label %vector.body258, !llvm.loop !1230

middle.block261:                                  ; preds = %vector.body258
  %cmp.n262 = icmp eq i64 %i.am, %n.vec257
  br i1 %cmp.n262, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader277

.lr.ph46.i.preheader277:                          ; preds = %.lr.ph46.i.preheader, %middle.block261
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec257, %middle.block261 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader277, %.lr.ph46.i
  %.045.i = phi i64 [ %i.az, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader277 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.045.i
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.045.i
  store i64 -1, ptr %i.ay, align 8, !tbaa !91
  %i.az = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.az, %i.am
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i, !llvm.loop !1231

bb.f:                                             ; preds = %bb.d
  br i1 %.not123, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i74.preheader

.lr.ph46.i74.preheader:                           ; preds = %bb.f
  %min.iters.check265 = icmp ult i64 %i.am, 4
  br i1 %min.iters.check265, label %.lr.ph46.i74.preheader278, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph46.i74.preheader
  %n.vec267 = and i64 %i.am, -4                   ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next270, %vector.body268 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index269 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x i32> splat (i32 2147483647), ptr %i.ba, align 4, !tbaa !77
  store <2 x i32> splat (i32 2147483647), ptr %19, align 4, !tbaa !77
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index269 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.bb, align 8, !tbaa !91
  store <2 x i64> splat (i64 -1), ptr %i.bc, align 8, !tbaa !91
  %index.next270 = add nuw i64 %index269, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.bd, label %middle.block271, label %vector.body268, !llvm.loop !1232

middle.block271:                                  ; preds = %vector.body268
  %cmp.n272 = icmp eq i64 %i.am, %n.vec267
  br i1 %cmp.n272, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i74.preheader278

.lr.ph46.i74.preheader278:                        ; preds = %.lr.ph46.i74.preheader, %middle.block271
  %.045.i75.ph = phi i64 [ 0, %.lr.ph46.i74.preheader ], [ %n.vec267, %middle.block271 ]
  br label %.lr.ph46.i74

.lr.ph46.i74:                                     ; preds = %.lr.ph46.i74.preheader278, %.lr.ph46.i74
  %.045.i75 = phi i64 [ %i.bg, %.lr.ph46.i74 ], [ %.045.i75.ph, %.lr.ph46.i74.preheader278 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.045.i75
  store i32 2147483647, ptr %i.be, align 4, !tbaa !77
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.045.i75
  store i64 -1, ptr %i.bf, align 8, !tbaa !91
  %i.bg = add nuw i64 %.045.i75, 1                ; 2 uses
  %exitcond51.not.i76 = icmp eq i64 %i.bg, %i.am
  br i1 %exitcond51.not.i76, label %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i74, !llvm.loop !1233

_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %.lr.ph46.i74, %.lr.ph46.i, %middle.block271, %middle.block261, %bb.f, %bb.e
  %i.bh = load i64, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread
  %i.bj = phi i64 [ %i.eq, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.bh, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ] ; 2 uses
  %i.bk = phi i64 [ %i.er, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.w, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ] ; 2 uses
  %i.bl = phi i64 [ %i.es, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.x, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ] ; 2 uses
  %.065145 = phi i64 [ %i.et, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ 0, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ] ; 5 uses
  %.066144 = phi i64 [ %.167121, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ 0, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.065145
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !91 ; 10 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bp = load ptr, ptr %2, align 8, !tbaa !135
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !59 ; 2 uses
  %i.bs = icmp slt i64 %i.bn, %i.br
  br i1 %i.bs, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.bt, ptr %17, align 8, !tbaa !88
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !89
  store i8 0, ptr %i.bt, align 8, !tbaa !76
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i64 noundef %i.bn, i64 noundef %.065145, i64 noundef %i.br) #21 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bx = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.by)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %17, align 8, !tbaa !87
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !89
  %i.cb = load ptr, ptr %2, align 8, !tbaa !135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !59
  %i.ce = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i64 noundef %i.bn, i64 noundef %.065145, i64 noundef %i.cd) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.bx)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.cf = call ptr @__cxa_allocate_exception(i64 40) #21 ; 2 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_123search_knn_hamming_heapEPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE.omp_outlined, ptr noundef nonnull @.str.13, i32 noundef 416)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #33
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %12, align 8, !tbaa !139
  %i.ch = mul nsw i64 %i.bj, %.068148
  %i.ci = getelementptr [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %.065145
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !77
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.bn, i8 noundef zeroext %i.cl)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !91
  %i.cq = load ptr, ptr %2, align 8, !tbaa !135
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !90 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(25) %i.cs, i64 noundef %i.bn)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = load i64, ptr %14, align 8, !tbaa !91
  %i.cy = sub i64 %i.cx, %.066144
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cy) ; 2 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !90 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(25) %i.db, i64 noundef %i.bn)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit, !inline_history !2 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %bb.o
  %i.dg = load i8, ptr %3, align 1, !tbaa !96, !range !30, !noundef !31
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  %i.di = load ptr, ptr %2, align 8, !tbaa !135
  %i.dj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %.noexc unwind label %.loopexit ; 5 uses

.noexc:                                           ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1243, !noalias !1244 ; 3 uses
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !1246, !noalias !1244
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62, !noalias !1244
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !1244
  %i.dp = invoke noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(25) %i.dl, i64 noundef %i.bn)
          to label %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.q, !noalias !1244, !inline_history !3 ; 2 uses

bb.q:                                             ; preds = %.noexc
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 24) #31, !noalias !1244
  br label %.body

_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !1247, !noalias !1244
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.bn, ptr %i.ds, align 8, !tbaa !1248, !noalias !1244
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  %.sroa.0105.0 = phi ptr [ null, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit ], [ %i.dj, %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit ] ; 5 uses
  %.0 = phi ptr [ null, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit ], [ %i.dp, %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit ]
  %i.dt = load i64, ptr %9, align 8, !tbaa !91
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %spec.select, ptr noundef %i.df, ptr noundef %.0, ptr noundef %i.ao, ptr noundef %i.aq, i64 noundef %i.dt)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dy = add i64 %i.bk, %i.dx                    ; 3 uses
  store i64 %i.dy, ptr %i.c, align 8, !tbaa !91
  %i.dz = add i64 %spec.select, %.066144          ; 3 uses
  %i.ea = load i64, ptr %14, align 8, !tbaa !91
  %.not73 = icmp ult i64 %i.dz, %i.ea
  %.not.i77 = icmp eq ptr %.sroa.0105.0, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = load ptr, ptr %.sroa.0105.0, align 8, !tbaa !1246 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0105.0, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1248
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0105.0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1247
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(25) %i.eb, i64 noundef %i.ed, ptr noundef %i.ef)
          to label %_ZNKSt14default_deleteIN5faiss13InvertedLists9ScopedIdsEEclEPS2_.exit.i78 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #34
  unreachable

_ZNKSt14default_deleteIN5faiss13InvertedLists9ScopedIdsEEclEPS2_.exit.i78: ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit79

_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit79: ; preds = %bb.s, %_ZNKSt14default_deleteIN5faiss13InvertedLists9ScopedIdsEEclEPS2_.exit.i78
  %i.el = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(25) %i.db, i64 noundef %i.bn, ptr noundef %i.df)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit79
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #34
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIN5faiss13InvertedLists9ScopedIdsESt14default_deleteIS2_EED2Ev.exit79
  br i1 %.not73, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %.pre = load i64, ptr %7, align 8, !tbaa !91
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge, %.lr.ph
  %i.eq = phi i64 [ %i.bj, %.lr.ph ], [ %.pre, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge ] ; 2 uses
  %i.er = phi i64 [ %i.bk, %.lr.ph ], [ %i.dy, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge ] ; 2 uses
  %i.es = phi i64 [ %i.bl, %.lr.ph ], [ %i.cp, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge ] ; 2 uses
  %.167121 = phi i64 [ %.066144, %.lr.ph ], [ %i.dz, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread_crit_edge ] ; 2 uses
  %i.et = add nuw nsw i64 %.065145, 1             ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.eq
  br i1 %i.eu, label %.lr.ph, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit, !llvm.loop !1236

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread
  %i.ev = phi i64 [ %i.er, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.dy, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.ew = phi i64 [ %i.es, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.cp, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %.2.ph = phi i64 [ %.167121, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread ], [ %i.dz, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %.pre170 = load i32, ptr %11, align 4, !tbaa !253
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ex = phi i32 [ %i.ar, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ %.pre170, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit ]
  %i.ey = phi i64 [ %i.w, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ %i.ev, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit ]
  %i.ez = phi i64 [ %i.x, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ %i.ew, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit ]
  %.2 = phi i64 [ 0, %_ZN5faiss12heap_heapifyINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ %.2.ph, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge.loopexit ]
  %i.fa = add i64 %i.v, %.2                       ; 2 uses
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !91
  %i.fb = icmp eq i32 %i.ex, 0
  %i.fc = load i64, ptr %9, align 8, !tbaa !91    ; 17 uses
  %.not46.i = icmp eq i64 %i.fc, 0                ; 2 uses
  br i1 %i.fb, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.fd = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 5 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hb, %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.ff = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.fg = load i64, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %i.fh = sub nuw i64 %i.fc, %.03740.i            ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fh ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !77 ; 5 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fh ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !91 ; 3 uses
  %i.fm = icmp ult i64 %i.fh, 2
  br i1 %i.fm, label %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.aa
  %i.fn = phi i64 [ %i.gq, %bb.aa ], [ 3, %bb.x ]
  %i.fo = phi i64 [ %i.gp, %bb.aa ], [ 2, %bb.x ] ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.aa ], [ 1, %bb.x ] ; 6 uses
  %i.fp = icmp eq i64 %i.fo, %i.fh
  br i1 %i.fp, label %.lr.ph._ZN5faiss4CMinIilE4cmp2Eiill.exit.thread_crit_edge.i.i, label %bb.y

.lr.ph._ZN5faiss4CMinIilE4cmp2Eiill.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load i32, ptr %i.fi, align 4, !tbaa !77
  br label %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fo
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !77 ; 4 uses
  %i.fs = getelementptr [4 x i8], ptr %i.ao, i64 %i.fo
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !77 ; 5 uses
  %i.fu = getelementptr [8 x i8], ptr %i.aq, i64 %i.fo
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !91 ; 3 uses
  %i.fw = icmp slt i32 %i.fr, %i.ft
  br i1 %i.fw, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit.i.i

_ZN5faiss4CMinIilE4cmp2Eiill.exit.i.i:            ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fo
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !91
  %i.fz = icmp eq i32 %i.fr, %i.ft
  %i.ga = icmp slt i64 %i.fy, %i.fv
  %i.gb = and i1 %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i, label %bb.z

_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i:     ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit.i.i, %bb.y, %.lr.ph._ZN5faiss4CMinIilE4cmp2Eiill.exit.thread_crit_edge.i.i
  %i.gc = phi i32 [ %.pre.i.i, %.lr.ph._ZN5faiss4CMinIilE4cmp2Eiill.exit.thread_crit_edge.i.i ], [ %i.fr, %bb.y ], [ %i.fr, %_ZN5faiss4CMinIilE4cmp2Eiill.exit.i.i ] ; 3 uses
  %i.gd = icmp slt i32 %i.fj, %i.gc
  br i1 %i.gd, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i

_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i:          ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fo
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !91 ; 2 uses
  %i.gg = icmp eq i32 %i.fj, %i.gc
  %i.gh = icmp slt i64 %i.fl, %i.gf
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.aa

bb.z:                                             ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit.i.i
  %i.gj = icmp slt i32 %i.fj, %i.ft
  br i1 %i.gj, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i

_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i:          ; preds = %bb.z
  %i.gk = icmp eq i32 %i.fj, %i.ft
  %i.gl = icmp slt i64 %i.fl, %i.fv
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i
  %.sink79.i.i = phi i32 [ %i.gc, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.ft, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.gf, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.fv, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.fo, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.fn, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.062.i.i
  store i32 %.sink79.i.i, ptr %i.gn, align 4, !tbaa !77
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.go, align 8, !tbaa !91
  %i.gp = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.gq = or disjoint i64 %i.gp, 1
  %i.gr = icmp ugt i64 %i.gp, %i.fh
  br i1 %i.gr, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1237

_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i: ; preds = %bb.aa, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i, %bb.z, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.aa ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i ], [ %.062.i.i, %bb.z ]
  %.pre68.i.i = load i32, ptr %i.fi, align 4, !tbaa !77
  %.pre69.i.i = load i64, ptr %i.fk, align 8, !tbaa !91
  br label %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, %bb.x
  %i.gs = phi i64 [ %i.fl, %bb.x ], [ %.pre69.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %i.gt = phi i32 [ %i.fj, %bb.x ], [ %.pre68.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.x ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.0.lcssa.i.i
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !77
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.0.lcssa.i.i
  store i64 %i.gs, ptr %i.gv, align 8, !tbaa !91
  %i.gw = xor i64 %.041.i, -1
  %i.gx = add i64 %i.fc, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.gx
  store i32 %i.ff, ptr %i.gy, align 4, !tbaa !77
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.gx
  store i64 %i.fg, ptr %i.gz, align 8, !tbaa !91
  %.not.i80 = icmp ne i64 %i.fg, -1
  %i.ha = zext i1 %.not.i80 to i64
  %spec.select.i = add i64 %.041.i, %i.ha         ; 2 uses
  %i.hb = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hb, %i.fc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !1238

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.w
  %.0.lcssa.i = phi i64 [ 0, %bb.w ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.fc
  %i.hd = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.he, i64 %i.hf, i1 false)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.fc
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hd
  %i.hi = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %i.hh, i64 %i.hi, i1 false)
  %i.hj = icmp ult i64 %.0.lcssa.i, %i.fc
  br i1 %i.hj, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.hk = sub nuw i64 %i.fc, %.0.lcssa.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.hk, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader274, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.hk, -4                      ; 3 uses
  %i.hl = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hm = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.hm ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store <2 x i32> splat (i32 -2147483648), ptr %i.hn, align 4, !tbaa !77
  store <2 x i32> splat (i32 -2147483648), ptr %20, align 4, !tbaa !77
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.hm ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ho, align 8, !tbaa !91
  store <2 x i64> splat (i64 -1), ptr %i.hp, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !1239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hk, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader274

.lr.ph44.i.preheader274:                          ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.hl, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader274, %.lr.ph44.i
  %.242.i = phi i64 [ %i.ht, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader274 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.242.i
  store i32 -2147483648, ptr %i.hr, align 4, !tbaa !77
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.242.i
  store i64 -1, ptr %i.hs, align 8, !tbaa !91
  %i.ht = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.ht, %i.fc
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !1240

bb.ab:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit._crit_edge
  br i1 %.not46.i, label %._crit_edge.i97, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %bb.ab
  %i.hu = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 4 uses
  %i.hv = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i82
  %.041.i83 = phi i64 [ 0, %.lr.ph.i82 ], [ %spec.select.i95, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i84 = phi i64 [ 0, %.lr.ph.i82 ], [ %i.js, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.hw = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.hx = load i64, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %i.hy = sub nuw i64 %i.fc, %.03740.i84          ; 5 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hy ; 3 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !77 ; 5 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hy ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !91 ; 3 uses
  %i.id = icmp ult i64 %i.hy, 2
  br i1 %i.id, label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %bb.ac, %bb.af
  %i.ie = phi i64 [ %i.jh, %bb.af ], [ 3, %bb.ac ]
  %i.if = phi i64 [ %i.jg, %bb.af ], [ 2, %bb.ac ] ; 7 uses
  %.062.i.i86 = phi i64 [ %.1.i.i89, %bb.af ], [ 1, %bb.ac ] ; 6 uses
  %i.ig = icmp eq i64 %i.if, %i.hy
  br i1 %i.ig, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i, label %bb.ad

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i85
  %.pre.i.i102 = load i32, ptr %i.hz, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i85
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.if
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !77 ; 4 uses
  %i.ij = getelementptr [4 x i8], ptr %i.ao, i64 %i.if
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !77 ; 5 uses
  %i.il = getelementptr [8 x i8], ptr %i.aq, i64 %i.if
  %i.im = load i64, ptr %i.il, align 8, !tbaa !91 ; 3 uses
  %i.in = icmp sgt i32 %i.ii, %i.ik
  br i1 %i.in, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i:            ; preds = %bb.ad
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.if
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !91
  %i.iq = icmp eq i32 %i.ii, %i.ik
  %i.ir = icmp sgt i64 %i.ip, %i.im
  %i.is = and i1 %i.iq, %i.ir
  br i1 %i.is, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i, label %bb.ae

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i, %bb.ad, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i
  %i.it = phi i32 [ %.pre.i.i102, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i ], [ %i.ii, %bb.ad ], [ %i.ii, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i ] ; 3 uses
  %i.iu = icmp sgt i32 %i.ia, %i.it
  br i1 %i.iu, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i:          ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.if
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !91 ; 2 uses
  %i.ix = icmp eq i32 %i.ia, %i.it
  %i.iy = icmp sgt i64 %i.ic, %i.iw
  %i.iz = and i1 %i.ix, %i.iy
  br i1 %i.iz, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.af

bb.ae:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i
  %i.ja = icmp sgt i32 %i.ia, %i.ik
  br i1 %i.ja, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i:          ; preds = %bb.ae
  %i.jb = icmp eq i32 %i.ia, %i.ik
  %i.jc = icmp sgt i64 %i.ic, %i.im
  %i.jd = and i1 %i.jb, %i.jc
  br i1 %i.jd, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i
  %.sink79.i.i87 = phi i32 [ %i.it, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.ik, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ]
  %.sink.i.i88 = phi i64 [ %i.iw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.im, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ]
  %.1.i.i89 = phi i64 [ %i.if, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.ie, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ] ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.062.i.i86
  store i32 %.sink79.i.i87, ptr %i.je, align 4, !tbaa !77
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.062.i.i86
  store i64 %.sink.i.i88, ptr %i.jf, align 8, !tbaa !91
  %i.jg = shl i64 %.1.i.i89, 1                    ; 3 uses
  %i.jh = or disjoint i64 %i.jg, 1
  %i.ji = icmp ugt i64 %i.jg, %i.hy
  br i1 %i.ji, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %.lr.ph.i.i85, !llvm.loop !4

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i: ; preds = %bb.af, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i, %bb.ae, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i
  %.0.lcssa.ph.i.i90 = phi i64 [ %.1.i.i89, %bb.af ], [ %.062.i.i86, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %.062.i.i86, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ], [ %.062.i.i86, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i ], [ %.062.i.i86, %bb.ae ]
  %.pre68.i.i91 = load i32, ptr %i.hz, align 4, !tbaa !77
  %.pre69.i.i92 = load i64, ptr %i.ib, align 8, !tbaa !91
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, %bb.ac
  %i.jj = phi i64 [ %i.ic, %bb.ac ], [ %.pre69.i.i92, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %i.jk = phi i32 [ %i.ia, %bb.ac ], [ %.pre68.i.i91, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i93 = phi i64 [ 1, %bb.ac ], [ %.0.lcssa.ph.i.i90, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.0.lcssa.i.i93
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !77
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.0.lcssa.i.i93
  store i64 %i.jj, ptr %i.jm, align 8, !tbaa !91
  %i.jn = xor i64 %.041.i83, -1
  %i.jo = add i64 %i.fc, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.jo
  store i32 %i.hw, ptr %i.jp, align 4, !tbaa !77
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.jo
  store i64 %i.hx, ptr %i.jq, align 8, !tbaa !91
  %.not.i94 = icmp ne i64 %i.hx, -1
  %i.jr = zext i1 %.not.i94 to i64
  %spec.select.i95 = add i64 %.041.i83, %i.jr     ; 2 uses
  %i.js = add nuw i64 %.03740.i84, 1              ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %i.js, %i.fc
  br i1 %exitcond.not.i96, label %._crit_edge.i97, label %bb.ac, !llvm.loop !5

._crit_edge.i97:                                  ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.ab
  %.0.lcssa.i98 = phi i64 [ 0, %bb.ab ], [ %spec.select.i95, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.fc
  %i.ju = sub i64 0, %.0.lcssa.i98                ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = shl i64 %.0.lcssa.i98, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.jv, i64 %i.jw, i1 false)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.fc
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.ju
  %i.jz = shl i64 %.0.lcssa.i98, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %i.jy, i64 %i.jz, i1 false)
  %i.ka = icmp ult i64 %.0.lcssa.i98, %i.fc
  br i1 %i.ka, label %.lr.ph44.i99.preheader, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i99.preheader:                           ; preds = %._crit_edge.i97
  %i.kb = sub nuw i64 %i.fc, %.0.lcssa.i98        ; 3 uses
  %min.iters.check245 = icmp ult i64 %i.kb, 4
  br i1 %min.iters.check245, label %.lr.ph44.i99.preheader275, label %vector.ph246

vector.ph246:                                     ; preds = %.lr.ph44.i99.preheader
  %n.vec247 = and i64 %i.kb, -4                   ; 3 uses
  %i.kc = add i64 %.0.lcssa.i98, %n.vec247
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next250, %vector.body248 ] ; 2 uses
  %i.kd = add nuw i64 %.0.lcssa.i98, %index249    ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.kd ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store <2 x i32> splat (i32 2147483647), ptr %i.ke, align 4, !tbaa !77
  store <2 x i32> splat (i32 2147483647), ptr %21, align 4, !tbaa !77
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.kd ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.kf, align 8, !tbaa !91
  store <2 x i64> splat (i64 -1), ptr %i.kg, align 8, !tbaa !91
  %index.next250 = add nuw i64 %index249, 4       ; 2 uses
  %i.kh = icmp eq i64 %index.next250, %n.vec247
  br i1 %i.kh, label %middle.block251, label %vector.body248, !llvm.loop !1241

middle.block251:                                  ; preds = %vector.body248
  %cmp.n252 = icmp eq i64 %i.kb, %n.vec247
  br i1 %cmp.n252, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i99.preheader275

.lr.ph44.i99.preheader275:                        ; preds = %.lr.ph44.i99.preheader, %middle.block251
  %.242.i100.ph = phi i64 [ %.0.lcssa.i98, %.lr.ph44.i99.preheader ], [ %i.kc, %middle.block251 ]
  br label %.lr.ph44.i99

.lr.ph44.i99:                                     ; preds = %.lr.ph44.i99.preheader275, %.lr.ph44.i99
  %.242.i100 = phi i64 [ %i.kk, %.lr.ph44.i99 ], [ %.242.i100.ph, %.lr.ph44.i99.preheader275 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.242.i100
  store i32 2147483647, ptr %i.ki, align 4, !tbaa !77
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.242.i100
  store i64 -1, ptr %i.kj, align 8, !tbaa !91
  %i.kk = add nuw i64 %.242.i100, 1               ; 2 uses
  %exitcond47.not.i101 = icmp eq i64 %i.kk, %i.fc
  br i1 %exitcond47.not.i101, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i99, !llvm.loop !1242

_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i99, %.lr.ph44.i, %middle.block251, %middle.block, %._crit_edge.i97, %._crit_edge.i
  %i.kl = add nsw i64 %.068148, 1
  %i.km = load i64, ptr %i.e, align 8, !tbaa !91
  %.not.not = icmp slt i64 %.068148, %i.km
  br i1 %.not.not, label %.lr.ph150, label %._crit_edge151

._crit_edge151:                                   ; preds = %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre171)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge151, %bb.b
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre171)
  %.not.i103 = icmp eq ptr %i.o, null
  br i1 %.not.i103, label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss25BinaryInvertedListScannerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss25BinaryInvertedListScannerEEclEPS1_.exit.i: ; preds = %bb.ag
  %i.kn = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #21, !inline_history !15
  br label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ag, %_ZNKSt14default_deleteIN5faiss25BinaryInvertedListScannerEEclEPS1_.exit.i
  store ptr %i.a, ptr %i.h, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.b, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.c, ptr %i.kr, align 8
  %i.ks = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %.pre171, i32 3, i64 24, ptr nonnull %i.h, ptr nonnull @_ZN5faiss12_GLOBAL__N_123search_knn_hamming_heapEPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.ks, label %bb.aj [
    i32 1, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit
  %i.kt = load i64, ptr %13, align 8, !tbaa !91
  %i.ku = load i64, ptr %i.a, align 8, !tbaa !91
  %i.kv = add i64 %i.ku, %i.kt
  store i64 %i.kv, ptr %13, align 8, !tbaa !91
  %i.kw = load i64, ptr %16, align 8, !tbaa !91
  %i.kx = load i64, ptr %i.b, align 8, !tbaa !91
  %i.ky = add i64 %i.kx, %i.kw
  store i64 %i.ky, ptr %16, align 8, !tbaa !91
  %i.kz = load i64, ptr %15, align 8, !tbaa !91
  %i.la = load i64, ptr %i.c, align 8, !tbaa !91
  %i.lb = add i64 %i.la, %i.kz
  store i64 %i.lb, ptr %15, align 8, !tbaa !91
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %.pre171, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit
  %i.lc = load i64, ptr %i.a, align 8, !tbaa !91
  %i.ld = atomicrmw add ptr %13, i64 %i.lc monotonic, align 8 ; 0 uses
  %i.le = load i64, ptr %i.b, align 8, !tbaa !91
  %i.lf = atomicrmw add ptr %16, i64 %i.le monotonic, align 8 ; 0 uses
  %i.lg = load i64, ptr %i.c, align 8, !tbaa !91
  %i.lh = atomicrmw add ptr %15, i64 %i.lg monotonic, align 8 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.r, %bb.o, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph150
  %lpad.loopexit126 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.dq, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit126, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp ]
  %i.li = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.li) #34
  unreachable

bb.ak:                                            ; preds = %bb.l
  unreachable
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN5faiss12_GLOBAL__N_123search_knn_hamming_heapEPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !91
  %i.l = load i64, ptr %i.a, align 8, !tbaa !91
  %i.m = add i64 %i.l, %i.k
  store i64 %i.m, ptr %i.b, align 8, !tbaa !91
  %i.n = load i64, ptr %i.f, align 8, !tbaa !91
  %i.o = load i64, ptr %i.d, align 8, !tbaa !91
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %i.f, align 8, !tbaa !91
  %i.q = load i64, ptr %i.j, align 8, !tbaa !91
  %i.r = load i64, ptr %i.h, align 8, !tbaa !91
  %i.s = add i64 %i.r, %i.q
  store i64 %i.s, ptr %i.j, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14IndexBinaryIVF24range_search_preassignedElPKhiPKlPKiPNS_17RangeSearchResultE(ptr noundef nonnull align 8 dereferenceable(248) %0, i64 noundef %1, ptr noalias noundef %2, i32 noundef %3, ptr noalias noundef %4, ptr noalias nofree readnone captures(none) %5, ptr noalias noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::vector.168", align 8   ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !91
  store ptr %2, ptr %i.b, align 8, !tbaa !136
  store i32 %3, ptr %i.c, align 4, !tbaa !77
  store ptr %4, ptr %i.d, align 8, !tbaa !137
  store ptr %6, ptr %i.e, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91
  %i.m = load i64, ptr %i.j, align 8, !tbaa !91
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  store i64 %i.n, ptr %i.f, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i8 0, ptr %i.g, align 1, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i64 0, ptr %i.h, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  store i64 0, ptr %i.i, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.o = tail call i32 @omp_get_max_threads()     ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIPN5faiss24RangeSearchPartialResultESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33
  unreachable
end_hunk_0
