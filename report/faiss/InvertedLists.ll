Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/InvertedLists?download=true
inline.NumInlined: 1329
inline.NumDeleted: 569
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIhSaIhEE17_M_default_appendEm:bb.a
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !91
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !42
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #32
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !154
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss18ArrayInvertedLists16permute_invlistsEPKl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 14 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %i.c = icmp ugt i64 %i.b, 115292150460684697
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #31
  unreachable

_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread: ; preds = %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %.loopexit.thread

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = mul nuw nsw i64 %i.b, 80
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !156
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %i.f, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ] ; 3 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ]
  store i64 1, ptr %.08.i.i.i.i.i.prol, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i8 0, i64 72, i1 false)
  %i.j = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 80 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !223

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i
  %.lcssa59.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.b, %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2EmRKS3_.exit.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %i.b, 8
  br i1 %i.l, label %.loopexit37, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i64 1, ptr %.08.i.i.i.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 72, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, i8 0, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i8 0, i64 72, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, i8 0, i64 72, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 320
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, i8 0, i64 72, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 400
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, i8 0, i64 72, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 480
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 72, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 560
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  %i.ab = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 640 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit37, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.loopexit37:                                      ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa59 = phi ptr [ %.lcssa59.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %.pre = load i64, ptr %i.a, align 8, !tbaa !59  ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %.lcssa59, ptr %i.ad, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ae = icmp ugt i64 %.pre, 115292150460684697
  br i1 %i.ae, label %bb.b, label %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %.loopexit37
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #31
          to label %.noexc34 unwind label %bb.c

.noexc34:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %.loopexit37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i.i28, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2EmRKS3_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread
  %i.af = phi ptr [ %i.d, %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.thread ], [ %i.ad, %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ag, align 8
  br label %._crit_edge

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ah = mul nuw nsw i64 %.pre, 80
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %.noexc35 unwind label %bb.c   ; 5 uses

.noexc35:                                         ; preds = %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ai, i64 %.pre ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !155
  %xtraiter60 = and i64 %.pre, 7                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i29.prol

.lr.ph.i.i.i.i.i29.prol:                          ; preds = %.noexc35, %.lr.ph.i.i.i.i.i29.prol
  %.08.i.i.i.i.i30.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i29.prol ], [ %i.ai, %.noexc35 ] ; 3 uses
  %.057.i.i.i.i.i31.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i29.prol ], [ %.pre, %.noexc35 ]
  %prol.iter62 = phi i64 [ %prol.iter62.next, %.lr.ph.i.i.i.i.i29.prol ], [ 0, %.noexc35 ]
  store i64 1, ptr %.08.i.i.i.i.i30.prol, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, i8 0, i64 72, i1 false)
  %i.am = add nsw i64 %.057.i.i.i.i.i31.prol, -1  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30.prol, i64 80 ; 3 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i29.prol, !llvm.loop !224

.lr.ph.i.i.i.i.i29.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i29.prol, %.noexc35
  %.lcssa.unr = phi ptr [ poison, %.noexc35 ], [ %i.an, %.lr.ph.i.i.i.i.i29.prol ]
  %.08.i.i.i.i.i30.unr = phi ptr [ %i.ai, %.noexc35 ], [ %i.an, %.lr.ph.i.i.i.i.i29.prol ]
  %.057.i.i.i.i.i31.unr = phi i64 [ %.pre, %.noexc35 ], [ %i.am, %.lr.ph.i.i.i.i.i29.prol ]
  %i.ao = icmp ult i64 %.pre, 8
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i29
  %.08.i.i.i.i.i30 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i29 ], [ %.08.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i29.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i31 = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i29 ], [ %.057.i.i.i.i.i31.unr, %.lr.ph.i.i.i.i.i29.prol.loopexit ]
  store i64 1, ptr %.08.i.i.i.i.i30, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i8 0, i64 72, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 80
  store i64 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i8 0, i64 72, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 160
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.at, i8 0, i64 72, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 240
  store i64 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, i8 0, i64 72, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 320
  store i64 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i8 0, i64 72, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 400
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, i8 0, i64 72, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 480
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i8 0, i64 72, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 560
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i8 0, i64 72, i1 false)
  %i.be = add nsw i64 %.057.i.i.i.i.i31, -8       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i30, i64 640 ; 2 uses
  %.not.i.i.i.i.i32.7 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i32.7, label %.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i29, %.lr.ph.i.i.i.i.i29.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i29.prol.loopexit ], [ %i.bf, %.lr.ph.i.i.i.i.i29 ] ; 2 uses
  %.pre41 = load i64, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.lcssa, ptr %i.bg, align 8, !tbaa !148
  %.not = icmp eq i64 %.pre41, 0
  %i.bh = insertelement <2 x ptr> poison, ptr %.lcssa, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.aj, i64 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre42 = load ptr, ptr %3, align 8, !tbaa !63
  %i.bl = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !226
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit.thread, %._crit_edge.loopexit, %.loopexit
  %i.bm = phi ptr [ %i.bg, %._crit_edge.loopexit ], [ %i.bg, %.loopexit ], [ %5, %.loopexit.thread ]
  %i.bn = phi ptr [ %i.ad, %._crit_edge.loopexit ], [ %i.ad, %.loopexit ], [ %i.af, %.loopexit.thread ] ; 2 uses
  %i.bo = phi ptr [ %.pre42, %._crit_edge.loopexit ], [ %i.ai, %.loopexit ], [ null, %.loopexit.thread ]
  %i.bp = phi <2 x ptr> [ %i.bl, %._crit_edge.loopexit ], [ %i.bi, %.loopexit ], [ splat (ptr null), %.loopexit.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !153
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !156
  %i.bw = load ptr, ptr %2, align 8, !tbaa !77
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !77
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !153
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !153
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !156
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !156
  store ptr %i.br, ptr %2, align 8, !tbaa !77
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !153
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !156
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !148
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !155
  store ptr %i.bo, ptr %i.ca, align 8, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x ptr> %i.bp, ptr %i.cc, align 8, !tbaa !226
  store ptr %i.cb, ptr %3, align 8, !tbaa !63
  store ptr %i.cd, ptr %i.bm, align 8, !tbaa !148
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !155
  call void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2EmRKS3_.exit.i, %bb.b
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %i.ci = phi i64 [ %.pre41, %.lr.ph ], [ %i.dl, %bb.o ]
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.o ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !29 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.ci
  br i1 %i.cl, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !41
  store i8 0, ptr %i.cm, align 8, !tbaa !42
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #12 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cr)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cs = load ptr, ptr %4, align 8, !tbaa !43
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !41
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #12 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cq)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.cw = call ptr @__cxa_allocate_exception(i64 40) #12 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss18ArrayInvertedLists16permute_invlistsEPKl, ptr noundef nonnull @.str.3, i32 noundef 346)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.s unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cw) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.h ], [ %i.cx, %bb.k ]
  %i.cy = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.da = load i64, ptr %i.cm, align 8, !tbaa !42
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.q

bb.m:                                             ; preds = %bb.d
  %i.dc = load ptr, ptr %2, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw [80 x i8], ptr %i.dc, i64 %.039
  %i.de = load ptr, ptr %i.bj, align 8, !tbaa !77
  %i.df = getelementptr inbounds nuw [80 x i8], ptr %i.de, i64 %i.ck
  invoke void @_ZSt4swapIN5faiss16MaybeOwnedVectorIhEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(80) %i.df)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dg = load ptr, ptr %3, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.dg, i64 %.039
  %i.di = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.ck
  invoke void @_ZSt4swapIN5faiss16MaybeOwnedVectorIlEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %i.dj)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = add nuw i64 %.039, 1                    ; 2 uses
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.dm = icmp ult i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !225

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23 = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.q ], [ %i.ch, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn23.pn

bb.s:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt4swapIN5faiss16MaybeOwnedVectorIhEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.faiss::MaybeOwnedVector.21", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN5faiss16MaybeOwnedVectorIhEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN5faiss16MaybeOwnedVectorIhEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.b unwind label %bb.k       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN5faiss16MaybeOwnedVectorIhEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.c unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !152
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #12, !inline_history !12
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #12, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.h, -1
end_hunk_0
