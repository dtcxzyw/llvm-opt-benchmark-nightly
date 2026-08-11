inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb:bb.a

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ah, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

switch.lookup.i:                                  ; preds = %bb.h
  %switch.offset.i = add nsw i8 %i.bd, -47
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit: ; preds = %bb.i, %switch.lookup.i
  %.0.i40 = phi i8 [ 0, %bb.i ], [ %switch.offset.i, %switch.lookup.i ]
  %i.bf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %.0.i40), !inline_history !91
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit
  %i.bg = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !91 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !79 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !85
  %i.bn = getelementptr [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !60
  %i.bs = icmp eq i32 %i.br, 9
  br i1 %i.bs, label %bb.k, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !102
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.bg, %bb.j ], [ %i.bf, %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit ], [ %i.bg, %bb.k ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr %.1.i, ptr %i.by, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !60
  %i.cb = icmp eq i32 %i.ca, 27
  br i1 %i.cb, label %.peel.begin, label %bb.m

.peel.begin:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  store ptr %.0.i, ptr %i.w, align 8, !tbaa !166
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !tbaa !69 ; 4 uses
  %i.cd = icmp eq ptr %.promoted, %i.cc
  br i1 %i.cd, label %.loopexit, label %_ZNK10StringView10startsWithEc.exit.i38.peel

_ZNK10StringView10startsWithEc.exit.i38.peel:     ; preds = %.peel.begin
  %i.ce = load i8, ptr %.promoted, align 1, !tbaa !9
  %i.cf = icmp eq i8 %i.ce, 64
  br i1 %i.cf, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i38.peel
  %i.cg = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.cg, ptr %1, align 8, !tbaa !69
  br i1 %i.af, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %bb.l
  %i.ch = icmp eq ptr %i.cg, %i.cc
  br i1 %i.ch, label %.loopexit, label %_ZNK10StringView10startsWithEc.exit.i38

_ZNK10StringView10startsWithEc.exit.i38:          ; preds = %.peel.next
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.cj = icmp eq i8 %i.ci, 64
  br i1 %i.cj, label %.critedge.loopexit, label %.loopexit

.loopexit:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i38, %.peel.next, %_ZNK10StringView10startsWithEc.exit.i38.peel, %.peel.begin
  store i8 1, ptr %i.ah, align 8, !tbaa !20
  br label %.critedge37

.critedge.loopexit:                               ; preds = %_ZNK10StringView10startsWithEc.exit.i38
  %i.ck = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  store ptr %i.ck, ptr %1, align 8, !tbaa !69
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
  %i.cl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.cm = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %.sink13.i)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !63
  br label %.critedge37

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.ah, align 8, !tbaa !20
  br label %.critedge37

bb.o:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %.1.i, ptr %i.co, align 8, !tbaa !167
  %i.cp = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %.sink13.i)
  store ptr %i.cp, ptr %i.by, align 8, !tbaa !63
  br label %.critedge37

.critedge37:                                      ; preds = %.loopexit, %.critedge, %bb.o, %bb.n
  %.132 = phi ptr [ null, %.loopexit ], [ %i.cl, %.critedge ], [ null, %bb.n ], [ %.0.i, %bb.o ]
  ret ptr %.132
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !9
  %i.f = icmp eq i8 %i.e, 63
  br i1 %i.f, label %bb.b, label %_ZN10StringView12consumeFrontEc.exit

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %bb.a, %_ZNK10StringView10startsWithEc.exit.i, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.a, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK10StringView10startsWithEc.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.thread43, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.k = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp.i = add nsw i32 %i.l, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.m = sext i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -47
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.o, ptr %1, align 8, !tbaa !69
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.02557 = phi i64 [ %i.z, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.03656 = phi i64 [ %i.y, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %i.u = icmp eq i8 %i.t, 64
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = add i8 %i.t, -65                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 16
  br i1 %or.cond, label %bb.e, label %.thread43

bb.e:                                             ; preds = %bb.d
  %i.w = shl i64 %.03656, 4
  %i.x = zext nneg i8 %i.v to i64
  %i.y = or disjoint i64 %i.w, %i.x
  %i.z = add nuw i64 %.02557, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.r
  br i1 %exitcond.not, label %.thread43, label %.lr.ph, !llvm.loop !107

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %1, align 8, !tbaa !69
  br label %bb.g

.thread43:                                        ; preds = %bb.e, %bb.d, %_ZN10StringView12consumeFrontEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %.thread43, %bb.f, %bb.c
  %.sroa.0.4 = phi i64 [ %i.n, %bb.c ], [ 0, %.thread43 ], [ %.03656, %bb.f ]
  %.sroa.4.4 = phi i8 [ %i.i, %bb.c ], [ 0, %.thread43 ], [ %i.i, %bb.f ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.4.4, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 5 uses
  switch i32 %1, label %bb.af [
    i32 39, label %bb.b
    i32 34, label %bb.e
    i32 92, label %bb.h
    i32 7, label %bb.k
    i32 8, label %bb.n
    i32 12, label %bb.q
    i32 10, label %bb.t
    i32 13, label %bb.w
    i32 9, label %bb.z
    i32 11, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = add i64 %i.c, 2                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.d, %i.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStream4growEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %i.f, 1
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.d) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.e, align 8
  %i.h = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !45
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.c
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i, %bb.b
  %i.j = phi i64 [ %i.c, %bb.b ], [ %.pre6.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ]
  %i.k = phi ptr [ %.pre.i.i, %bb.b ], [ %i.h, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i16 10076, ptr %i.l, align 1
  %i.m = load i64, ptr %i.b, align 8, !tbaa !44
  %i.n = add i64 %i.m, 2
  store i64 %i.n, ptr %i.b, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i17 = icmp ult i64 %i.q, %i.s
  %.pre.i.i18 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i17, label %_ZN12OutputStream4growEm.exit.i.i22, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.s, 1
  %spec.store.select.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.q) ; 2 uses
  store i64 %spec.store.select.i.i.i19, ptr %i.r, align 8
  %i.u = tail call ptr @realloc(ptr noundef %.pre.i.i18, i64 noundef %spec.store.select.i.i.i19) #24 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !45
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i20

._ZN12OutputStream4growEm.exit_crit_edge.i.i20:   ; preds = %bb.f
  %.pre6.i.i21 = load i64, ptr %i.o, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i22

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i22:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i20, %bb.e
  %i.w = phi i64 [ %i.p, %bb.e ], [ %.pre6.i.i21, %._ZN12OutputStream4growEm.exit_crit_edge.i.i20 ]
  %i.x = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.u, %._ZN12OutputStream4growEm.exit_crit_edge.i.i20 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i16 8796, ptr %i.y, align 1
  %i.z = load i64, ptr %i.o, align 8, !tbaa !44
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i24 = icmp ult i64 %i.ad, %i.af
  %.pre.i.i25 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i24, label %_ZN12OutputStream4growEm.exit.i.i29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %i.af, 1
  %spec.store.select.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ad) ; 2 uses
  store i64 %spec.store.select.i.i.i26, ptr %i.ae, align 8
  %i.ah = tail call ptr @realloc(ptr noundef %.pre.i.i25, i64 noundef %spec.store.select.i.i.i26) #24 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !45
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27

._ZN12OutputStream4growEm.exit_crit_edge.i.i27:   ; preds = %bb.i
  %.pre6.i.i28 = load i64, ptr %i.ab, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i29

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i29:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27, %bb.h
  %i.aj = phi i64 [ %i.ac, %bb.h ], [ %.pre6.i.i28, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27 ]
  %i.ak = phi ptr [ %.pre.i.i25, %bb.h ], [ %i.ah, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i16 23644, ptr %i.al, align 1
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.an = add i64 %i.am, 2
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.k:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44 ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i31 = icmp ult i64 %i.aq, %i.as
  %.pre.i.i32 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i31, label %_ZN12OutputStream4growEm.exit.i.i36, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = shl i64 %i.as, 1
  %spec.store.select.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  store i64 %spec.store.select.i.i.i33, ptr %i.ar, align 8
  %i.au = tail call ptr @realloc(ptr noundef %.pre.i.i32, i64 noundef %spec.store.select.i.i.i33) #24 ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !45
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i34

._ZN12OutputStream4growEm.exit_crit_edge.i.i34:   ; preds = %bb.l
  %.pre6.i.i35 = load i64, ptr %i.ao, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i36

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i36:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i34, %bb.k
  %i.aw = phi i64 [ %i.ap, %bb.k ], [ %.pre6.i.i35, %._ZN12OutputStream4growEm.exit_crit_edge.i.i34 ]
  %i.ax = phi ptr [ %.pre.i.i32, %bb.k ], [ %i.au, %._ZN12OutputStream4growEm.exit_crit_edge.i.i34 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i16 24924, ptr %i.ay, align 1
  %i.az = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ba = add i64 %i.az, 2
  store i64 %i.ba, ptr %i.ao, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !44 ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i38 = icmp ult i64 %i.bd, %i.bf
  %.pre.i.i39 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i38, label %_ZN12OutputStream4growEm.exit.i.i43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = shl i64 %i.bf, 1
  %spec.store.select.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bd) ; 2 uses
  store i64 %spec.store.select.i.i.i40, ptr %i.be, align 8
  %i.bh = tail call ptr @realloc(ptr noundef %.pre.i.i39, i64 noundef %spec.store.select.i.i.i40) #24 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !45
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.p, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i41

._ZN12OutputStream4growEm.exit_crit_edge.i.i41:   ; preds = %bb.o
  %.pre6.i.i42 = load i64, ptr %i.bb, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i43

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i43:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i41, %bb.n
  %i.bj = phi i64 [ %i.bc, %bb.n ], [ %.pre6.i.i42, %._ZN12OutputStream4growEm.exit_crit_edge.i.i41 ]
  %i.bk = phi ptr [ %.pre.i.i39, %bb.n ], [ %i.bh, %._ZN12OutputStream4growEm.exit_crit_edge.i.i41 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i16 25180, ptr %i.bl, align 1
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !44
  %i.bn = add i64 %i.bm, 2
  store i64 %i.bn, ptr %i.bb, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.q:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZL17outputEscapedCharR12OutputStreamj:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !44 ; 2 uses
  %i.cq = add i64 %i.cp, 2                        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i59 = icmp ult i64 %i.cq, %i.cs
  %.pre.i.i60 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i59, label %_ZN12OutputStream4growEm.exit.i.i64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = shl i64 %i.cs, 1
  %spec.store.select.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cq) ; 2 uses
  store i64 %spec.store.select.i.i.i61, ptr %i.cr, align 8
  %i.cu = tail call ptr @realloc(ptr noundef %.pre.i.i60, i64 noundef %spec.store.select.i.i.i61) #24 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !45
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.y, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i62

._ZN12OutputStream4growEm.exit_crit_edge.i.i62:   ; preds = %bb.x
  %.pre6.i.i63 = load i64, ptr %i.co, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i64

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i64:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i62, %bb.w
  %i.cw = phi i64 [ %i.cp, %bb.w ], [ %.pre6.i.i63, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cx = phi ptr [ %.pre.i.i60, %bb.w ], [ %i.cu, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i16 29276, ptr %i.cy, align 1
  %i.cz = load i64, ptr %i.co, align 8, !tbaa !44
  %i.da = add i64 %i.cz, 2
  store i64 %i.da, ptr %i.co, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.z:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !44 ; 2 uses
  %i.dd = add i64 %i.dc, 2                        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i66 = icmp ult i64 %i.dd, %i.df
  %.pre.i.i67 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i66, label %_ZN12OutputStream4growEm.exit.i.i71, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = shl i64 %i.df, 1
  %spec.store.select.i.i.i68 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dd) ; 2 uses
  store i64 %spec.store.select.i.i.i68, ptr %i.de, align 8
  %i.dh = tail call ptr @realloc(ptr noundef %.pre.i.i67, i64 noundef %spec.store.select.i.i.i68) #24 ; 3 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !45
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ab, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i69

._ZN12OutputStream4growEm.exit_crit_edge.i.i69:   ; preds = %bb.aa
  %.pre6.i.i70 = load i64, ptr %i.db, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i71

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i71:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i69, %bb.z
  %i.dj = phi i64 [ %i.dc, %bb.z ], [ %.pre6.i.i70, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dk = phi ptr [ %.pre.i.i67, %bb.z ], [ %i.dh, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i16 29788, ptr %i.dl, align 1
  %i.dm = load i64, ptr %i.db, align 8, !tbaa !44
  %i.dn = add i64 %i.dm, 2
  store i64 %i.dn, ptr %i.db, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.ac:                                            ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !44 ; 2 uses
  %i.dq = add i64 %i.dp, 2                        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i73 = icmp ult i64 %i.dq, %i.ds
  %.pre.i.i74 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i73, label %_ZN12OutputStream4growEm.exit.i.i78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = shl i64 %i.ds, 1
  %spec.store.select.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.dq) ; 2 uses
  store i64 %spec.store.select.i.i.i75, ptr %i.dr, align 8
  %i.du = tail call ptr @realloc(ptr noundef %.pre.i.i74, i64 noundef %spec.store.select.i.i.i75) #24 ; 3 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !45
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ae, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i76

._ZN12OutputStream4growEm.exit_crit_edge.i.i76:   ; preds = %bb.ad
  %.pre6.i.i77 = load i64, ptr %i.do, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i78

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i78:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i76, %bb.ac
  %i.dw = phi i64 [ %i.dp, %bb.ac ], [ %.pre6.i.i77, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dx = phi ptr [ %.pre.i.i74, %bb.ac ], [ %i.du, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i16 30300, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.do, align 8, !tbaa !44
  %i.ea = add i64 %i.dz, 2
  store i64 %i.ea, ptr %i.do, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.af:                                            ; preds = %bb.a
  %i.eb = add i32 %1, -32
  %or.cond = icmp ult i32 %i.eb, 95
  br i1 %or.cond, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ec = trunc nuw nsw i32 %1 to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !44 ; 2 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i80 = icmp ult i64 %i.ef, %i.eh
  %.pre.i.i81 = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i80, label %_ZN12OutputStreamlsEc.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = shl i64 %i.eh, 1
  %spec.store.select.i.i.i82 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.ef) ; 2 uses
  store i64 %spec.store.select.i.i.i82, ptr %i.eg, align 8
  %i.ej = tail call ptr @realloc(ptr noundef %.pre.i.i81, i64 noundef %spec.store.select.i.i.i82) #24 ; 3 uses
  store ptr %i.ej, ptr %0, align 8, !tbaa !45
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ai, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i83

._ZN12OutputStream4growEm.exit_crit_edge.i.i83:   ; preds = %bb.ah
  %.pre1.i.i = load i64, ptr %i.ed, align 8, !tbaa !44 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.ag, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ef, %bb.ag ]
  %i.el = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ee, %bb.ag ]
  %i.em = phi ptr [ %i.ej, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %.pre.i.i81, %bb.ag ]
  store i64 %.pre-phi.i.i, ptr %i.ed, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 %i.ec, ptr %i.en, align 1, !tbaa !9
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.aj:                                            ; preds = %bb.af
  %i.eo = icmp eq i32 %1, 0
  br i1 %i.eo, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !44 ; 2 uses
  %i.er = add i64 %i.eq, 4                        ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.er, %i.et
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = shl i64 %i.et, 1
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.er) ; 2 uses
  store i64 %spec.store.select.i.i.i.i, ptr %i.es, align 8
  %i.ev = tail call ptr @realloc(ptr noundef %.pre.i.i.i, i64 noundef %spec.store.select.i.i.i.i) #24 ; 3 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !45
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.am, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i.i:   ; preds = %bb.al
  %.pre6.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i, %bb.ak
  %i.ex = phi i64 [ %i.eq, %bb.ak ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.ak ], [ %i.ev, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i32 808482908, ptr %i.ez, align 1
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !44
  %i.fb = add i64 %i.fa, 4
  store i64 %i.fb, ptr %i.ep, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.i ], [ 12, %bb.an ] ; 3 uses
  %.01226.i = phi i32 [ %i.fp, %.preheader.i ], [ %1, %bb.an ] ; 2 uses
  %2 = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.fc = getelementptr i8, ptr %2, i64 2
  %i.fd = trunc i32 %.01226.i to i8               ; 3 uses
  %i.fe = and i8 %i.fd, 15                        ; 3 uses
  %i.ff = icmp samesign ult i8 %i.fe, 10
  %i.fg = or disjoint i8 %i.fe, 48
  %i.fh = add nuw nsw i8 %i.fe, 55
  %i.fi = select i1 %i.ff, i8 %i.fg, i8 %i.fh
  store i8 %i.fi, ptr %i.fc, align 2, !tbaa !9
  %i.fj = getelementptr i8, ptr %2, i64 1
  %i.fk = lshr i8 %i.fd, 4                        ; 2 uses
  %i.fl = icmp ult i8 %i.fd, -96
  %i.fm = or disjoint i8 %i.fk, 48
  %i.fn = add nuw nsw i8 %i.fk, 55
  %i.fo = select i1 %i.fl, i8 %i.fm, i8 %i.fn
  store i8 %i.fo, ptr %i.fj, align 1, !tbaa !9
  %i.fp = lshr i32 %.01226.i, 8                   ; 2 uses
  store i8 120, ptr %2, align 4, !tbaa !9
  %i.fq = getelementptr i8, ptr %2, i64 -1
  store i8 92, ptr %i.fq, align 1, !tbaa !9
  %.not.i = icmp eq i32 %i.fp, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  br i1 %.not.i, label %bb.ao, label %.preheader.i, !llvm.loop !168

bb.ao:                                            ; preds = %.preheader.i
  %sext = shl nsw i64 %indvars.iv, 32
  %sext.i = add i64 %sext, -8589934592
  %i.fr = ashr exact i64 %sext.i, 32
  %i.fs = getelementptr i8, ptr %i.a, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 1      ; 2 uses
  %i.fu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #21 ; 4 uses
  %i.fv = icmp samesign eq i64 %i.fu, 0
  br i1 %i.fv, label %_ZN12OutputStreamlsE10StringView.exit21.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !44 ; 2 uses
  %i.fy = add i64 %i.fx, %i.fu                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i15.i = icmp ult i64 %i.fy, %i.ga
  %.pre.i.i16.i = load ptr, ptr %0, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i15.i, label %_ZN12OutputStream4growEm.exit.i.i20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = shl i64 %i.ga, 1
  %spec.store.select.i.i.i17.i = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %i.fy) ; 2 uses
  store i64 %spec.store.select.i.i.i17.i, ptr %i.fz, align 8
  %i.gc = tail call ptr @realloc(ptr noundef %.pre.i.i16.i, i64 noundef %spec.store.select.i.i.i17.i) #24 ; 3 uses
  store ptr %i.gc, ptr %0, align 8, !tbaa !45
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.ar, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i: ; preds = %bb.aq
  %.pre6.i.i19.i = load i64, ptr %i.fw, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i.i20.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i20.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i, %bb.ap
  %i.ge = phi i64 [ %i.fx, %bb.ap ], [ %.pre6.i.i19.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gf = phi ptr [ %.pre.i.i16.i, %bb.ap ], [ %i.gc, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 1 %i.ft, i64 %i.fu, i1 false)
  %i.gh = load i64, ptr %i.fw, align 8, !tbaa !44
  %i.gi = add i64 %i.gh, %i.fu
  store i64 %i.gi, ptr %i.fw, align 8, !tbaa !44
  br label %_ZN12OutputStreamlsE10StringView.exit21.i

_ZN12OutputStreamlsE10StringView.exit21.i:        ; preds = %_ZN12OutputStream4growEm.exit.i.i20.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN12OutputStreamlsE10StringView.exit

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %_ZN12OutputStreamlsE10StringView.exit21.i, %_ZN12OutputStream4growEm.exit.i.i.i, %_ZN12OutputStream4growEm.exit.i.i78, %_ZN12OutputStream4growEm.exit.i.i71, %_ZN12OutputStream4growEm.exit.i.i64, %_ZN12OutputStream4growEm.exit.i.i57, %_ZN12OutputStream4growEm.exit.i.i50, %_ZN12OutputStream4growEm.exit.i.i43, %_ZN12OutputStream4growEm.exit.i.i36, %_ZN12OutputStream4growEm.exit.i.i29, %_ZN12OutputStream4growEm.exit.i.i22, %_ZN12OutputStream4growEm.exit.i.i, %_ZN12OutputStreamlsEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.e, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8
  %i.g = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !45
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.b
  %.pre1.i = load i64, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.c, %bb.a ]
  %i.i = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i, %bb.a ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 %1, ptr %i.k, align 1, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = add i64 %i.i, %i.e                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4096) ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.f, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.t = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.u, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.OutputStream, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.b, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !32
  store ptr %i.o, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.s, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %2, ptr %.sink.i, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
end_hunk_1
