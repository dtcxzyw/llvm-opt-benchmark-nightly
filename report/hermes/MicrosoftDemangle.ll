inline.NumInlined: 804
inline.NumDeleted: 199
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler5parseER10StringView:bb.a

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store ptr %i.lb, ptr %1, align 8, !tbaa !40
  %i.lc = load i8, ptr %i.kz, align 1, !tbaa !9   ; 2 uses
  %switch.tableidx.i = add i8 %i.lc, -48
  %i.ld = icmp ult i8 %switch.tableidx.i, 5
  br i1 %i.ld, label %switch.lookup.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.kg, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

switch.lookup.i:                                  ; preds = %bb.an
  %switch.offset.i = add nsw i8 %i.lc, -47
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit: ; preds = %bb.ao, %switch.lookup.i
  %.0.i25 = phi i8 [ 0, %bb.ao ], [ %switch.offset.i, %switch.lookup.i ]
  %i.le = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %.0.i25), !inline_history !91
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit
  %i.lf = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !91 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !79 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !81
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !85
  %i.lm = getelementptr [8 x i8], ptr %i.lj, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 -8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !86 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !60
  %i.lr = icmp eq i32 %i.lq, 9
  br i1 %i.lr, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread138, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread138: ; preds = %bb.ap
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !92
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !95
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !102
  br label %bb.aq

_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit, %bb.ap
  %.0.i22 = phi ptr [ %i.lf, %bb.ap ], [ %i.le, %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit ] ; 2 uses
  %.not19 = icmp eq ptr %.0.i22, null
  br i1 %.not19, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread138, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  %.0.i22141 = phi ptr [ %i.lf, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread138 ], [ %.0.i22, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i22141, i64 16
  store ptr %i.kj, ptr %i.lx, align 8, !tbaa !63
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread

_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread: ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, %bb.aq, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  %.0.i22137 = phi ptr [ null, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit ], [ %.0.i22141, %bb.aq ], [ null, %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit ]
  %i.ly = load i8, ptr %i.kg, align 8, !tbaa !20, !range !55, !noundef !56
  %i.lz = trunc nuw i8 %i.ly to i1
  %. = select i1 %i.lz, ptr null, ptr %.0.i22137
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132: ; preds = %bb.ak, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread, %_ZNK10StringView10startsWithEc.exit.thread, %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %.3 = phi ptr [ %.sink14.i, %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit ], [ null, %_ZNK10StringView10startsWithEc.exit.thread ], [ %.1.i, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit ], [ %., %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit.thread ], [ %.sink13.i22.i, %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit.i ], [ %.sink13.i22.i, %_ZN10StringView12consumeFrontEc.exit.i ], [ null, %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread ], [ null, %bb.ak ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19DemanglerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(200) dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_19DemanglerE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not4.i = icmp eq ptr %.pr.i, null
  br i1 %.not4.i, label %_ZN4llvh11ms_demangle14ArenaAllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.g, %bb.c ], [ %.pr.i, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #25
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 32) #25
  store ptr %i.g, ptr %i.a, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN4llvh11ms_demangle14ArenaAllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !59

_ZN4llvh11ms_demangle14ArenaAllocatorD2Ev.exit:   ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19DemanglerD0Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_19DemanglerE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not4.i.i, label %_ZN12_GLOBAL__N_19DemanglerD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.g, %bb.c ], [ %.pr.i.i, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #25, !inline_history !58
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.e = phi ptr [ %.pre.i.i, %bb.b ], [ %i.b, %.lr.ph.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 32) #25, !inline_history !58
  store ptr %i.g, ptr %i.a, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_19DemanglerD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !59

_ZN12_GLOBAL__N_19DemanglerD2Ev.exit:             ; preds = %bb.c, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #25
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.c, 7                          ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 24                 ; 3 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !32
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 24, ptr %i.r, align 8, !tbaa !34
  %.pre = ptrtoint ptr %i.o to i64                ; 2 uses
  %.pre11 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi12 = phi i64 [ %i.f, %bb.b ], [ %.pre11, %bb.c ]
  %.pre-phi = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.s = phi i64 [ %i.k, %bb.b ], [ 4096, %bb.c ]
  %i.t = phi i64 [ %i.i, %bb.b ], [ 24, %bb.c ]
  %i.u = phi ptr [ %i.a, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sink11.i = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 20, ptr %i.v, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle17QualifiedNameNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = add i64 %.pre-phi12, %i.t
  %i.z = and i64 %i.y, -8                         ; 2 uses
  %reass.sub.i9 = sub i64 %i.z, %.pre-phi
  %i.aa = add i64 %reass.sub.i9, 32               ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !34
  %i.ab = icmp ult i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ac = inttoptr i64 %i.z to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %i.ad = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ae = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.u, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 4096, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.ad, ptr %0, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 32, ptr %i.ah, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink11.i10 = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 8
  store i32 19, ptr %i.ai, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i10, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 16
  store i64 0, ptr %i.aj, align 8
  store ptr %.sink11.i10, ptr %i.w, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink11.i10, i64 24
  store i64 1, ptr %i.ak, align 8, !tbaa !85
  %i.al = load ptr, ptr %0, align 8, !tbaa !33    ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.aq = add i64 %i.an, 7
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %reass.sub = sub i64 %i.as, %i.an
  %i.at = add i64 %reass.sub, 8                   ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ax = inttoptr i64 %i.as to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ay = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.al, ptr %i.ba, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 4096, ptr %i.bb, align 8, !tbaa !32
  store ptr %i.ay, ptr %0, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 8, ptr %i.bc, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.az, %bb.g ], [ %i.ax, %bb.f ] ; 3 uses
  store i64 0, ptr %.sink.i, align 8
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sink.i, ptr %i.be, align 8, !tbaa !81
  store ptr %1, ptr %.sink.i, align 8, !tbaa !86
  ret ptr %.sink11.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.OutputStream, align 8        ; 12 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %i.j = add i64 %i.g, 7
  %i.k = add i64 %i.j, %i.i
  %i.l = and i64 %i.k, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.l, %i.g
  %i.m = add i64 %reass.sub.i, 48                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = inttoptr i64 %i.l to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.e, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4096, ptr %i.u, align 8, !tbaa !32
  store ptr %i.r, ptr %i.d, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 48, ptr %i.v, align 8, !tbaa !34
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink15.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %bb.b ] ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 8
  store i32 22, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24EncodedStringLiteralNodeE, i64 16), ptr %.sink15.i, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 44 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.y, i8 0, i64 17, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 8 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit
  %i.ah = load i16, ptr %i.ac, align 1
  %i.ai = icmp ne i16 24384, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.d, label %_ZN10StringView12consumeFrontES_.exit.thread

bb.d:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 3 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !69
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 5 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !40
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !9
  switch i8 %i.an, label %_ZN10StringView12consumeFrontES_.exit.thread [
    i8 49, label %bb.f
    i8 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  %i.ao = icmp eq ptr %i.am, %i.ab
  br i1 %i.ao, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.g
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 63
  br i1 %i.aq, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.h ], [ %i.am, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.am, %bb.g ] ; 7 uses
  %i.at = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.g ] ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.ab
  br i1 %i.au, label %.thread43.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.av = load i8, ptr %i.as, align 1, !tbaa !9   ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %isdigittmp.i.i = add nsw i32 %i.aw, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
end_hunk_0
