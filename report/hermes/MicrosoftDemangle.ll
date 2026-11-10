Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.t, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.v, align 4, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.x, align 4, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.y, align 2, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !113
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !115
  %.pre = load ptr, ptr %1, align 8, !tbaa !59    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 4 uses
  %i.af = icmp eq ptr %.pre, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %.pre, align 1, !tbaa !34
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !74
  %i.ap = or disjoint i8 %i.ak, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.ar = phi i8 [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ae
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !34
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !74
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ay, ptr %i.v, align 4, !tbaa !110
  %i.az = icmp eq ptr %i.ax, %i.ae
  br i1 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !34
  switch i8 %i.ba, label %_ZL28demangleFunctionRefQualifierR10StringView.exit [
    i8 71, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
    i8 72, label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  ]

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18
  br label %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i

_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split
  %.0.ph.i = phi i32 [ 1, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 2, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i.fold.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  br label %_ZL28demangleFunctionRefQualifierR10StringView.exit

_ZL28demangleFunctionRefQualifierR10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.i.i18, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i
  %i.bc = phi ptr [ %i.ax, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ %i.ax, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %i.bb, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZNK10StringView10startsWithEc.exit.i.i18 ], [ 0, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit ], [ %.0.ph.i, %_ZN10StringView12consumeFrontEc.exit3.thread.sink.split.i ]
  store i32 %.0.i, ptr %i.z, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !59
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !34
  %switch.tableidx = add i8 %i.be, -65            ; 3 uses
  %i.bf = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bf, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.bh
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bi = or i8 %switch.load, %i.ay
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.h ], [ %i.bi, %switch.lookup ]
  store i8 %.sroa.0.0.i, ptr %i.v, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bj = phi ptr [ %i.bd, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 3 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !59
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !34
  %switch.tableidx33 = add i8 %i.bl, -65          ; 2 uses
  %i.bm = icmp ult i8 %switch.tableidx33, 17
  br i1 %i.bm, label %switch.lookup34, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup34:                                  ; preds = %bb.i
  %i.bn = zext nneg i8 %switch.tableidx33 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.bn
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.i, %switch.lookup34
  %.0.i19 = phi i8 [ %switch.load36, %switch.lookup34 ], [ 0, %bb.i ]
  store i8 %.0.i19, ptr %i.x, align 4, !tbaa !112
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.bq = icmp eq ptr %i.bk, %i.bp
  br i1 %i.bq, label %bb.j, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bs = icmp eq i8 %i.br, 64
  br i1 %i.bs, label %_ZN10StringView12consumeFrontEc.exit, label %bb.j

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store ptr %i.bt, ptr %1, align 8, !tbaa !74
  br label %bb.k

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.bu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !107
  br label %bb.k

bb.k:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit, %bb.j
  %i.bv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr %i.bv, ptr %i.ac, align 8, !tbaa !115
  %i.bw = load ptr, ptr %1, align 8, !tbaa !59    ; 3 uses
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.l, label %_ZNK10StringView10startsWithEc.exit.i.i20

_ZNK10StringView10startsWithEc.exit.i.i20:        ; preds = %bb.k
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !34
  %i.ca = icmp eq i8 %i.bz, 90
  br i1 %i.ca, label %_ZN10StringView12consumeFrontEc.exit.i, label %bb.l

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.cb, ptr %1, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

bb.l:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cc, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit.i, %bb.l
  ret ptr %.sink19.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 !guid !250 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !34
  %i.g = icmp eq i8 %i.f, 88
  br i1 %i.g, label %_ZN10StringView12consumeFrontEc.exit, label %bb.b

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !74
  br label %bb.p

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54
  %i.o = add i64 %i.l, 7
  %i.p = add i64 %i.o, %i.n
  %i.q = and i64 %i.p, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.q, %i.l
  %i.r = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !52
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = inttoptr i64 %i.q to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !50
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 4096, ptr %i.aa, align 8, !tbaa !52
  store ptr %i.w, ptr %i.i, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %i.ab, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.x, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !47, !range !70, !noundef !71
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %.03259 = phi ptr [ %i.a, %.lr.ph ], [ %.032.be, %.backedge ] ; 3 uses
  %.03558 = phi i64 [ 0, %.lr.ph ], [ %.035.be, %.backedge ] ; 3 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !59    ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !60  ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.e
  %i.ak = add i64 %.03558, 1
  br label %bb.k

_ZNK10StringView10startsWithEc.exit:              ; preds = %bb.e
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !34  ; 3 uses
  switch i8 %i.al, label %_ZL15startsWithDigit10StringView.exit [
    i8 64, label %bb.o
    i8 90, label %bb.o
  ]

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.am = add i64 %.03558, 1                      ; 2 uses
  %i.an = sext i8 %i.al to i32
  %isdigittmp.i = add nsw i32 %i.an, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.ao = sext i8 %i.al to i64
  %i.ap = add nsw i64 %i.ao, -48                  ; 2 uses
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !61
  %.not = icmp ult i64 %i.ap, %i.aq
  br i1 %.not, label %bb.g, label %.thread50

.thread50:                                        ; preds = %bb.f
  store i8 1, ptr %i.ac, align 8, !tbaa !47
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ar, ptr %1, align 8, !tbaa !74
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !53  ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !54
  %i.ax = add i64 %i.au, 7
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %reass.sub.i39 = sub i64 %i.az, %i.au
  %i.ba = add i64 %reass.sub.i39, 16              ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !52
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = inttoptr i64 %i.az to ptr
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bg = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !50
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 4096, ptr %i.bj, align 8, !tbaa !52
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 16, ptr %i.bk, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i40 = phi ptr [ %i.bg, %bb.i ], [ %i.be, %bb.h ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i40, i8 0, i64 16, i1 false)
  store ptr %.sink.i40, ptr %.03259, align 8, !tbaa !135
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ap
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66
  store ptr %i.bm, ptr %.sink.i40, align 8, !tbaa !125
  br label %.backedge

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZL15startsWithDigit10StringView.exit
  %i.bn = phi i64 [ %i.ak, %_ZL15startsWithDigit10StringView.exit.thread ], [ %i.am, %_ZL15startsWithDigit10StringView.exit ] ; 2 uses
  %i.bo = ptrtoint ptr %i.ai to i64
  %i.bp = ptrtoint ptr %i.ah to i64
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !53  ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !54
  %i.bv = add i64 %i.bs, 7
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, -8                       ; 2 uses
  %reass.sub.i42 = sub i64 %i.bx, %i.bs
  %i.by = add i64 %reass.sub.i42, 16              ; 2 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !52
  %i.cb = icmp ult i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = inttoptr i64 %i.bx to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44

bb.m:                                             ; preds = %bb.k
  %i.cd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ce = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !50
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 4096, ptr %i.ch, align 8, !tbaa !52
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 16, ptr %i.ci, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44: ; preds = %bb.l, %bb.m
  %.sink.i43 = phi ptr [ %i.ce, %bb.m ], [ %i.cc, %bb.l ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i43, i8 0, i64 16, i1 false)
  store ptr %.sink.i43, ptr %.03259, align 8, !tbaa !135
  %i.cj = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 2 uses
  %i.ck = load ptr, ptr %.03259, align 8, !tbaa !135 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !125
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.cm = load ptr, ptr %1, align 8, !tbaa !59
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = add i64 %i.bp, %i.cn
  %i.cq = sub i64 %i.bo, %i.cp
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = load i64, ptr %i.af, align 8, !tbaa !61 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 10
  %i.cu = icmp ugt i64 %i.cr, 1
  %or.cond = and i1 %i.ct, %i.cu
  br i1 %or.cond, label %bb.n, label %.backedge

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44
  %i.cv = add nuw nsw i64 %i.cs, 1
  store i64 %i.cv, ptr %i.af, align 8, !tbaa !61
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !66
  br label %.backedge

.backedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44, %bb.n, %bb.j
  %.035.be = phi i64 [ %i.am, %bb.j ], [ %i.bn, %bb.n ], [ %i.bn, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44 ]
  %.sink.i40.pn = phi ptr [ %.sink.i40, %bb.j ], [ %i.ck, %bb.n ], [ %i.ck, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44 ]
  %.032.be = getelementptr inbounds nuw i8, ptr %.sink.i40.pn, i64 8
  %i.cx = load i8, ptr %i.ac, align 8, !tbaa !47, !range !70, !noundef !71
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.critedge, label %bb.e, !llvm.loop !249

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit, %_ZNK10StringView10startsWithEc.exit
  %.0..0..0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.cz = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %.0..0..0..0..0..0., i64 noundef %.03558) ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !59    ; 4 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %.thread, label %_ZNK10StringView10startsWithEc.exit.i45

_ZNK10StringView10startsWithEc.exit.i45:          ; preds = %bb.o
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !34
  switch i8 %i.dd, label %.thread [
    i8 64, label %_ZN10StringView12consumeFrontEc.exit46
    i8 90, label %_ZN10StringView12consumeFrontEc.exit48
  ]

_ZN10StringView12consumeFrontEc.exit46:           ; preds = %_ZNK10StringView10startsWithEc.exit.i45
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.de, ptr %1, align 8, !tbaa !74
  br label %.critedge

_ZN10StringView12consumeFrontEc.exit48:           ; preds = %_ZNK10StringView10startsWithEc.exit.i45
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.df, ptr %1, align 8, !tbaa !74
  br label %.critedge

.thread:                                          ; preds = %_ZNK10StringView10startsWithEc.exit.i45, %bb.o
  store i8 1, ptr %i.ac, align 8, !tbaa !47
  br label %.critedge

.critedge:                                        ; preds = %.backedge, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit, %_ZN10StringView12consumeFrontEc.exit48, %_ZN10StringView12consumeFrontEc.exit46, %.thread50, %.thread
  %.3 = phi ptr [ null, %.thread50 ], [ %i.cz, %_ZN10StringView12consumeFrontEc.exit48 ], [ null, %.thread ], [ %i.cz, %_ZN10StringView12consumeFrontEc.exit46 ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ null, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit, %.critedge
  %.4 = phi ptr [ %.3, %.critedge ], [ null, %_ZN10StringView12consumeFrontEc.exit ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 !guid !251 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = add i64 %i.e, %i.c
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 24                   ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !50
  %i.p = load ptr, ptr %0, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !52
  store ptr %i.n, ptr %0, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 24, ptr %i.s, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink17 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %.sink17, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %.sink17, i64 12
  store i8 0, ptr %i.v, align 4, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle17PrimitiveTypeNodeE, i64 16), ptr %.sink17, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %.sink17, i64 16
  store i32 %i.t, ptr %i.w, align 8, !tbaa !130
  ret ptr %.sink17
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 !guid !252 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %_ZN10StringView12consumeFrontES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 1
  %i.i = icmp ne i32 810165284, %i.h
  %i.j = zext i1 %i.i to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.j, 0        ; 2 uses
  %spec.select.idx = select i1 %.not9.i.i.i.i.i.i, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.idx
  %spec.select188 = select i1 %.not9.i.i.i.i.i.i, i16 128, i16 0
  br label %_ZN10StringView12consumeFrontES_.exit.thread

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %_ZNK10StringView10startsWithES_.exit.i, %bb.a
  %i.k = phi ptr [ %i.c, %bb.a ], [ %spec.select, %_ZNK10StringView10startsWithES_.exit.i ] ; 3 uses
  %i.l = phi i16 [ 0, %bb.a ], [ %spec.select188, %_ZNK10StringView10startsWithES_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 5 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !59
  %i.n = load i8, ptr %i.k, align 1, !tbaa !34
  switch i8 %i.n, label %bb.ag [
    i8 57, label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
    i8 65, label %bb.b
    i8 66, label %bb.c
    i8 67, label %bb.d
    i8 68, label %bb.d
    i8 69, label %bb.e
    i8 70, label %bb.e
    i8 71, label %bb.f
    i8 72, label %bb.g
    i8 73, label %bb.h
    i8 74, label %bb.i
    i8 75, label %bb.j
    i8 76, label %bb.k
    i8 77, label %bb.l
    i8 78, label %bb.m
    i8 79, label %bb.n
    i8 80, label %bb.o
    i8 81, label %bb.p
    i8 82, label %bb.q
    i8 83, label %bb.r
    i8 84, label %bb.s
    i8 85, label %bb.t
    i8 86, label %bb.u
    i8 87, label %bb.v
    i8 88, label %bb.w
    i8 89, label %bb.x
    i8 90, label %bb.y
    i8 36, label %bb.z
  ]

bb.b:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.c:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.d:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.e:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.f:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.h:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.i:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.j:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.k:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.n:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.o:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.p:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.q:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.r:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.s:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.t:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.u:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.v:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.w:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.x:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.y:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.z:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.thread
  %i.o = icmp eq ptr %i.m, %i.b
  br i1 %i.o, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.z
  %i.p = load i8, ptr %i.m, align 1, !tbaa !34
  %i.q = icmp eq i8 %i.p, 82                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %spec.select.i = select i1 %i.q, ptr %i.r, ptr %i.m
  %spec.select17.i = select i1 %i.q, i16 1536, i16 512
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithEc.exit.i.i, %bb.z
  %i.s = phi ptr [ %i.m, %bb.z ], [ %spec.select.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 2 uses
  %i.t = phi i16 [ 512, %bb.z ], [ %spec.select17.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !tbaa !59
  %i.v = load i8, ptr %i.s, align 1, !tbaa !34
  switch i8 %i.v, label %bb.ag [
    i8 48, label %bb.aa
    i8 49, label %bb.ab
    i8 50, label %bb.ac
    i8 51, label %bb.ad
    i8 52, label %bb.ae
    i8 53, label %bb.af
  ]

bb.aa:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.w = or disjoint i16 %i.t, 36
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ab:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.x = or disjoint i16 %i.t, 100
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ac:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.y = or disjoint i16 %i.t, 34
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ad:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.z = or disjoint i16 %i.t, 98
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ae:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aa = or disjoint i16 %i.t, 33
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.af:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ab = or disjoint i16 %i.t, 97
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i, %_ZN10StringView12consumeFrontES_.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.1.i = phi i16 [ 1, %bb.ag ], [ 8, %bb.x ], [ 4, %bb.b ], [ 68, %bb.c ], [ 20, %bb.d ], [ 384, %_ZN10StringView12consumeFrontES_.exit.thread ], [ 36, %bb.e ], [ 72, %bb.y ], [ 2052, %bb.f ], [ 2116, %bb.g ], [ 2, %bb.h ], [ 66, %bb.i ], [ 18, %bb.j ], [ 82, %bb.k ], [ 34, %bb.l ], [ 98, %bb.m ], [ 2082, %bb.n ], [ 2146, %bb.o ], [ 1, %bb.p ], [ 65, %bb.q ], [ 17, %bb.r ], [ 81, %bb.s ], [ 33, %bb.t ], [ 97, %bb.u ], [ 2081, %bb.v ], [ 2145, %bb.w ], [ %i.aa, %bb.ae ], [ %i.z, %bb.ad ], [ %i.y, %bb.ac ], [ %i.x, %bb.ab ], [ %i.w, %bb.aa ], [ %i.ab, %bb.af ]
  %i.ad = or i16 %.1.i, %i.l                      ; 2 uses
  %i.ae = zext nneg i16 %i.ad to i32              ; 5 uses
  %i.af = and i32 %i.ae, 2048
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !54
  %i.am = add i64 %i.aj, 7
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ao, %i.aj
  %i.ap = add i64 %reass.sub.i, 72                ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !52
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.au = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.av = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !50
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ay, align 8, !tbaa !52
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 72, ptr %i.az, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.ai, %bb.aj
  %.sink27.i = phi ptr [ %i.av, %bb.aj ], [ %i.at, %bb.ai ] ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.ba, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bb, align 4, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bc, align 8, !tbaa !111
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.bd, align 4, !tbaa !112
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  store i16 8, ptr %i.be, align 2, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !113
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bg, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bh, align 8, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bi, align 8, !tbaa !115
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !59    ; 5 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !60  ; 3 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bo = icmp eq i8 %i.bn, 63
  br i1 %i.bo, label %bb.ak, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.ak:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store ptr %i.bp, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.ak, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bq = phi ptr [ %i.bp, %bb.ak ], [ %i.bk, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.bk, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 6 uses
  %i.br = phi i1 [ true, %bb.ak ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.bl
  br i1 %i.bs, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !34  ; 2 uses
  %i.bu = sext i8 %i.bt to i32
  %isdigittmp.i.i.i = add nsw i32 %i.bu, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.al, label %.lr.ph.preheader.i.i

bb.al:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bv = sext i8 %i.bt to i64
  %i.bw = add nsw i64 %i.bv, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bx = ptrtoint ptr %i.bl to i64
  %i.by = ptrtoint ptr %i.bq to i64
  %i.bz = sub i64 %i.bx, %i.by
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.ch, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.cg, %bb.an ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.02557.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 64
  br i1 %i.cc, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.cd = add i8 %i.cb, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cd, 16
  br i1 %or.cond.i.i, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  %i.ce = shl i64 %.03656.i.i, 4
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = or disjoint i64 %i.ce, %i.cf
  %i.ch = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ch, %i.bz
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !4

.thread.i:                                        ; preds = %bb.an, %bb.am, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ci, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.al
  %.pn.i = phi ptr [ %i.bq, %bb.al ], [ %i.cj, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i64 [ %i.bw, %bb.al ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !74
  %i.ck = icmp slt i64 %.sroa.0.4.i.i, 0
  br i1 %i.ck, label %.split.i, label %bb.ao

.split.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cl, align 8, !tbaa !47
  br i1 %i.br, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  br i1 %i.br, label %bb.ap, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

bb.ap:                                            ; preds = %bb.ao, %.split.i
  %i.cm = sub nsw i64 0, %.sroa.0.4.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit: ; preds = %.thread.i, %.split.i, %bb.ao, %bb.ap
  %i.cn = phi i64 [ %i.cm, %bb.ap ], [ %.sroa.0.4.i.i, %bb.ao ], [ 0, %.thread.i ], [ %.sroa.0.4.i.i, %.split.i ]
  %i.co = trunc i64 %i.cn to i32
  store i32 %i.co, ptr %i.bj, align 8, !tbaa !255
  br label %bb.bu

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
  %i.cp = and i32 %i.ae, 512
  %.not32 = icmp eq i32 %i.cp, 0
  br i1 %.not32, label %bb.bu, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !54
  %i.cw = add i64 %i.ct, 7
  %i.cx = add i64 %i.cw, %i.cv
  %i.cy = and i64 %i.cx, -8                       ; 2 uses
  %reass.sub.i37 = sub i64 %i.cy, %i.ct
  %i.cz = add i64 %reass.sub.i37, 72              ; 2 uses
  store i64 %i.cz, ptr %i.cu, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !52
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dd = inttoptr i64 %i.cy to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

bb.at:                                            ; preds = %bb.ar
  %i.de = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.df = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !50
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 4096, ptr %i.di, align 8, !tbaa !52
  store ptr %i.de, ptr %i.cq, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 72, ptr %i.dj, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39: ; preds = %bb.as, %bb.at
  %.sink27.i38 = phi ptr [ %i.df, %bb.at ], [ %i.dd, %bb.as ] ; 15 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 8
  store i32 13, ptr %i.dk, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 12
  store i8 0, ptr %i.dl, align 4, !tbaa !110
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !111
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 20
  store i8 0, ptr %i.dn, align 4, !tbaa !112
  %i.do = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 22
  store i16 8, ptr %i.do, align 2, !tbaa !116
  %i.dp = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 24
  store i32 0, ptr %i.dp, align 8, !tbaa !113
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 32
  store ptr null, ptr %i.dq, align 8, !tbaa !107
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 40
  store i8 0, ptr %i.dr, align 8, !tbaa !114
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 48
  store ptr null, ptr %i.ds, align 8, !tbaa !115
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i38, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  %i.du = and i32 %i.ae, 1024
  %.not33 = icmp eq i32 %i.du, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !59    ; 6 uses
  %.pre143 = load ptr, ptr %i.a, align 8, !tbaa !60 ; 12 uses
  br i1 %.not33, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.dv = icmp eq ptr %.pre, %.pre143
  br i1 %i.dv, label %_ZN10StringView12consumeFrontEc.exit.i.i41, label %_ZNK10StringView10startsWithEc.exit.i.i.i40

_ZNK10StringView10startsWithEc.exit.i.i.i40:      ; preds = %bb.au
  %i.dw = load i8, ptr %.pre, align 1, !tbaa !34
  %i.dx = icmp eq i8 %i.dw, 63
  br i1 %i.dx, label %bb.av, label %_ZN10StringView12consumeFrontEc.exit.i.i41

bb.av:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i40
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.dy, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.i.i41

_ZN10StringView12consumeFrontEc.exit.i.i41:       ; preds = %bb.av, %_ZNK10StringView10startsWithEc.exit.i.i.i40, %bb.au
  %i.dz = phi ptr [ %i.dy, %bb.av ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ %.pre, %bb.au ] ; 7 uses
  %i.ea = phi i1 [ true, %bb.av ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i40 ], [ false, %bb.au ] ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %.pre143
  br i1 %i.eb, label %.thread.i50, label %_ZL15startsWithDigit10StringView.exit.i.i42

_ZL15startsWithDigit10StringView.exit.i.i42:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !34  ; 2 uses
  %i.ed = sext i8 %i.ec to i32
  %isdigittmp.i.i.i43 = add nsw i32 %i.ed, -48
  %isdigit.i.i.i44 = icmp ult i32 %isdigittmp.i.i.i43, 10
  br i1 %isdigit.i.i.i44, label %bb.aw, label %.lr.ph.preheader.i.i45

bb.aw:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %i.ee = sext i8 %i.ec to i64
  %i.ef = add nsw i64 %i.ee, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

.lr.ph.preheader.i.i45:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i42
  %i.eg = ptrtoint ptr %.pre143 to i64
  %i.eh = ptrtoint ptr %i.dz to i64
  %i.ei = sub i64 %i.eg, %i.eh
  br label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.ay, %.lr.ph.preheader.i.i45
  %.02557.i.i47 = phi i64 [ %i.eq, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 3 uses
  %.03656.i.i48 = phi i64 [ %i.ep, %bb.ay ], [ 0, %.lr.ph.preheader.i.i45 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.02557.i.i47
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34  ; 2 uses
  %i.el = icmp eq i8 %i.ek, 64
  br i1 %i.el, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i46
  %i.em = add i8 %i.ek, -65                       ; 2 uses
  %or.cond.i.i49 = icmp ult i8 %i.em, 16
  br i1 %or.cond.i.i49, label %bb.ay, label %.thread.i50

bb.ay:                                            ; preds = %bb.ax
  %i.en = shl i64 %.03656.i.i48, 4
  %i.eo = zext nneg i8 %i.em to i64
  %i.ep = or disjoint i64 %i.en, %i.eo
  %i.eq = add nuw i64 %.02557.i.i47, 1            ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.eq, %i.ei
  br i1 %exitcond.not.i.i51, label %.thread.i50, label %.lr.ph.i.i46, !llvm.loop !4

.thread.i50:                                      ; preds = %bb.ay, %bb.ax, %_ZN10StringView12consumeFrontEc.exit.i.i41
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.er, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit: ; preds = %.lr.ph.i.i46
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.02557.i.i47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit, %bb.aw
  %.pn.i54 = phi ptr [ %i.dz, %bb.aw ], [ %i.es, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ]
  %.sroa.0.4.i.i55 = phi i64 [ %i.ef, %bb.aw ], [ %.03656.i.i48, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53.loopexit ] ; 4 uses
  %storemerge.i56 = getelementptr inbounds nuw i8, ptr %.pn.i54, i64 1 ; 4 uses
  store ptr %storemerge.i56, ptr %1, align 8, !tbaa !74
  %i.et = icmp slt i64 %.sroa.0.4.i.i55, 0
  br i1 %i.et, label %.split.i57, label %bb.az

.split.i57:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eu, align 8, !tbaa !47
  br i1 %i.ea, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i53
  br i1 %i.ea, label %bb.ba, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

bb.ba:                                            ; preds = %bb.az, %.split.i57
  %i.ev = sub nsw i64 0, %.sroa.0.4.i.i55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58: ; preds = %.thread.i50, %.split.i57, %bb.az, %bb.ba
  %i.ew = phi ptr [ %storemerge.i56, %bb.ba ], [ %storemerge.i56, %bb.az ], [ %i.dz, %.thread.i50 ], [ %storemerge.i56, %.split.i57 ] ; 5 uses
  %i.ex = phi i64 [ %i.ev, %bb.ba ], [ %.sroa.0.4.i.i55, %bb.az ], [ 0, %.thread.i50 ], [ %.sroa.0.4.i.i55, %.split.i57 ]
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 60
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !256
  %i.fa = icmp eq ptr %i.ew, %.pre143
  br i1 %i.fa, label %_ZN10StringView12consumeFrontEc.exit.i.i60, label %_ZNK10StringView10startsWithEc.exit.i.i.i59

_ZNK10StringView10startsWithEc.exit.i.i.i59:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.fb = load i8, ptr %i.ew, align 1, !tbaa !34
  %i.fc = icmp eq i8 %i.fb, 63
  br i1 %i.fc, label %bb.bb, label %_ZN10StringView12consumeFrontEc.exit.i.i60

bb.bb:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i59
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 1 ; 2 uses
  store ptr %i.fd, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.i.i60

_ZN10StringView12consumeFrontEc.exit.i.i60:       ; preds = %bb.bb, %_ZNK10StringView10startsWithEc.exit.i.i.i59, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58
  %i.fe = phi ptr [ %i.fd, %bb.bb ], [ %i.ew, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ %i.ew, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 7 uses
  %i.ff = phi i1 [ true, %bb.bb ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i59 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit58 ] ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %.pre143
  br i1 %i.fg, label %.thread.i69, label %_ZL15startsWithDigit10StringView.exit.i.i61

_ZL15startsWithDigit10StringView.exit.i.i61:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !34  ; 2 uses
  %i.fi = sext i8 %i.fh to i32
  %isdigittmp.i.i.i62 = add nsw i32 %i.fi, -48
  %isdigit.i.i.i63 = icmp ult i32 %isdigittmp.i.i.i62, 10
  br i1 %isdigit.i.i.i63, label %bb.bc, label %.lr.ph.preheader.i.i64

bb.bc:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %i.fj = sext i8 %i.fh to i64
  %i.fk = add nsw i64 %i.fj, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

.lr.ph.preheader.i.i64:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i61
  %i.fl = ptrtoint ptr %.pre143 to i64
  %i.fm = ptrtoint ptr %i.fe to i64
  %i.fn = sub i64 %i.fl, %i.fm
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.be, %.lr.ph.preheader.i.i64
  %.02557.i.i66 = phi i64 [ %i.fv, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 3 uses
  %.03656.i.i67 = phi i64 [ %i.fu, %bb.be ], [ 0, %.lr.ph.preheader.i.i64 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.02557.i.i66
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !34  ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 64
  br i1 %i.fq, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i65
  %i.fr = add i8 %i.fp, -65                       ; 2 uses
  %or.cond.i.i68 = icmp ult i8 %i.fr, 16
  br i1 %or.cond.i.i68, label %bb.be, label %.thread.i69

bb.be:                                            ; preds = %bb.bd
  %i.fs = shl i64 %.03656.i.i67, 4
  %i.ft = zext nneg i8 %i.fr to i64
  %i.fu = or disjoint i64 %i.fs, %i.ft
  %i.fv = add nuw i64 %.02557.i.i66, 1            ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.fv, %i.fn
  br i1 %exitcond.not.i.i70, label %.thread.i69, label %.lr.ph.i.i65, !llvm.loop !4

.thread.i69:                                      ; preds = %bb.be, %bb.bd, %_ZN10StringView12consumeFrontEc.exit.i.i60
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fw, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit: ; preds = %.lr.ph.i.i65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.02557.i.i66
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit, %bb.bc
  %.pn.i73 = phi ptr [ %i.fe, %bb.bc ], [ %i.fx, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ]
  %.sroa.0.4.i.i74 = phi i64 [ %i.fk, %bb.bc ], [ %.03656.i.i67, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72.loopexit ] ; 4 uses
  %storemerge.i75 = getelementptr inbounds nuw i8, ptr %.pn.i73, i64 1 ; 4 uses
  store ptr %storemerge.i75, ptr %1, align 8, !tbaa !74
  %i.fy = icmp slt i64 %.sroa.0.4.i.i74, 0
  br i1 %i.fy, label %.split.i76, label %bb.bf

.split.i76:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fz, align 8, !tbaa !47
  br i1 %i.ff, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i72
  br i1 %i.ff, label %bb.bg, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

bb.bg:                                            ; preds = %bb.bf, %.split.i76
  %i.ga = sub nsw i64 0, %.sroa.0.4.i.i74
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77: ; preds = %.thread.i69, %.split.i76, %bb.bf, %bb.bg
  %i.gb = phi ptr [ %storemerge.i75, %bb.bg ], [ %storemerge.i75, %bb.bf ], [ %i.fe, %.thread.i69 ], [ %storemerge.i75, %.split.i76 ]
  %i.gc = phi i64 [ %i.ga, %bb.bg ], [ %.sroa.0.4.i.i74, %bb.bf ], [ 0, %.thread.i69 ], [ %.sroa.0.4.i.i74, %.split.i76 ]
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 64
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !257
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39
  %i.gf = phi ptr [ %i.gb, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit77 ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit39 ] ; 5 uses
  %i.gg = icmp eq ptr %i.gf, %.pre143
  br i1 %i.gg, label %_ZN10StringView12consumeFrontEc.exit.i.i79, label %_ZNK10StringView10startsWithEc.exit.i.i.i78

_ZNK10StringView10startsWithEc.exit.i.i.i78:      ; preds = %bb.bh
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !34
  %i.gi = icmp eq i8 %i.gh, 63
  br i1 %i.gi, label %bb.bi, label %_ZN10StringView12consumeFrontEc.exit.i.i79

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i78
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  store ptr %i.gj, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.i.i79

_ZN10StringView12consumeFrontEc.exit.i.i79:       ; preds = %bb.bi, %_ZNK10StringView10startsWithEc.exit.i.i.i78, %bb.bh
  %i.gk = phi ptr [ %i.gj, %bb.bi ], [ %i.gf, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ %i.gf, %bb.bh ] ; 7 uses
  %i.gl = phi i1 [ true, %bb.bi ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i78 ], [ false, %bb.bh ] ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %.pre143
  br i1 %i.gm, label %.thread.i88, label %_ZL15startsWithDigit10StringView.exit.i.i80

_ZL15startsWithDigit10StringView.exit.i.i80:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.gn = load i8, ptr %i.gk, align 1, !tbaa !34  ; 2 uses
  %i.go = sext i8 %i.gn to i32
  %isdigittmp.i.i.i81 = add nsw i32 %i.go, -48
  %isdigit.i.i.i82 = icmp ult i32 %isdigittmp.i.i.i81, 10
  br i1 %isdigit.i.i.i82, label %bb.bj, label %.lr.ph.preheader.i.i83

bb.bj:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %i.gp = sext i8 %i.gn to i64
  %i.gq = add nsw i64 %i.gp, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

.lr.ph.preheader.i.i83:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i80
  %i.gr = ptrtoint ptr %.pre143 to i64
  %i.gs = ptrtoint ptr %i.gk to i64
  %i.gt = sub i64 %i.gr, %i.gs
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %bb.bl, %.lr.ph.preheader.i.i83
  %.02557.i.i85 = phi i64 [ %i.hb, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 3 uses
  %.03656.i.i86 = phi i64 [ %i.ha, %bb.bl ], [ 0, %.lr.ph.preheader.i.i83 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.02557.i.i85
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !34  ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 64
  br i1 %i.gw, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i84
  %i.gx = add i8 %i.gv, -65                       ; 2 uses
  %or.cond.i.i87 = icmp ult i8 %i.gx, 16
  br i1 %or.cond.i.i87, label %bb.bl, label %.thread.i88

bb.bl:                                            ; preds = %bb.bk
  %i.gy = shl i64 %.03656.i.i86, 4
  %i.gz = zext nneg i8 %i.gx to i64
  %i.ha = or disjoint i64 %i.gy, %i.gz
  %i.hb = add nuw i64 %.02557.i.i85, 1            ; 2 uses
  %exitcond.not.i.i89 = icmp eq i64 %i.hb, %i.gt
  br i1 %exitcond.not.i.i89, label %.thread.i88, label %.lr.ph.i.i84, !llvm.loop !4

.thread.i88:                                      ; preds = %bb.bl, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i.i79
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hc, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit: ; preds = %.lr.ph.i.i84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.02557.i.i85
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit, %bb.bj
  %.pn.i92 = phi ptr [ %i.gk, %bb.bj ], [ %i.hd, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ]
  %.sroa.0.4.i.i93 = phi i64 [ %i.gq, %bb.bj ], [ %.03656.i.i86, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91.loopexit ] ; 4 uses
  %storemerge.i94 = getelementptr inbounds nuw i8, ptr %.pn.i92, i64 1 ; 4 uses
  store ptr %storemerge.i94, ptr %1, align 8, !tbaa !74
  %i.he = icmp slt i64 %.sroa.0.4.i.i93, 0
  br i1 %i.he, label %.split.i95, label %bb.bm

.split.i95:                                       ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hf, align 8, !tbaa !47
  br i1 %i.gl, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i91
  br i1 %i.gl, label %bb.bn, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

bb.bn:                                            ; preds = %bb.bm, %.split.i95
  %i.hg = sub nsw i64 0, %.sroa.0.4.i.i93
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96: ; preds = %.thread.i88, %.split.i95, %bb.bm, %bb.bn
  %i.hh = phi ptr [ %storemerge.i94, %bb.bn ], [ %storemerge.i94, %bb.bm ], [ %i.gk, %.thread.i88 ], [ %storemerge.i94, %.split.i95 ] ; 5 uses
  %i.hi = phi i64 [ %i.hg, %bb.bn ], [ %.sroa.0.4.i.i93, %bb.bm ], [ 0, %.thread.i88 ], [ %.sroa.0.4.i.i93, %.split.i95 ]
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink27.i38, i64 68
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !258
  %i.hl = icmp eq ptr %i.hh, %.pre143
  br i1 %i.hl, label %_ZN10StringView12consumeFrontEc.exit.i.i98, label %_ZNK10StringView10startsWithEc.exit.i.i.i97

_ZNK10StringView10startsWithEc.exit.i.i.i97:      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hm = load i8, ptr %i.hh, align 1, !tbaa !34
  %i.hn = icmp eq i8 %i.hm, 63
  br i1 %i.hn, label %bb.bo, label %_ZN10StringView12consumeFrontEc.exit.i.i98

bb.bo:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i97
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  store ptr %i.ho, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.i.i98

_ZN10StringView12consumeFrontEc.exit.i.i98:       ; preds = %bb.bo, %_ZNK10StringView10startsWithEc.exit.i.i.i97, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96
  %i.hp = phi ptr [ %i.ho, %bb.bo ], [ %i.hh, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ %i.hh, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 6 uses
  %i.hq = phi i1 [ true, %bb.bo ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i97 ], [ false, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit96 ] ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %.pre143
  br i1 %i.hr, label %.thread.i107, label %_ZL15startsWithDigit10StringView.exit.i.i99

_ZL15startsWithDigit10StringView.exit.i.i99:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.hs = load i8, ptr %i.hp, align 1, !tbaa !34  ; 2 uses
  %i.ht = sext i8 %i.hs to i32
  %isdigittmp.i.i.i100 = add nsw i32 %i.ht, -48
  %isdigit.i.i.i101 = icmp ult i32 %isdigittmp.i.i.i100, 10
  br i1 %isdigit.i.i.i101, label %bb.bp, label %.lr.ph.preheader.i.i102

bb.bp:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %i.hu = sext i8 %i.hs to i64
  %i.hv = add nsw i64 %i.hu, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

.lr.ph.preheader.i.i102:                          ; preds = %_ZL15startsWithDigit10StringView.exit.i.i99
  %i.hw = ptrtoint ptr %.pre143 to i64
  %i.hx = ptrtoint ptr %i.hp to i64
  %i.hy = sub i64 %i.hw, %i.hx
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.br, %.lr.ph.preheader.i.i102
  %.02557.i.i104 = phi i64 [ %i.ig, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 3 uses
  %.03656.i.i105 = phi i64 [ %i.if, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.02557.i.i104
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !34  ; 2 uses
  %i.ib = icmp eq i8 %i.ia, 64
  br i1 %i.ib, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i103
  %i.ic = add i8 %i.ia, -65                       ; 2 uses
  %or.cond.i.i106 = icmp ult i8 %i.ic, 16
  br i1 %or.cond.i.i106, label %bb.br, label %.thread.i107

bb.br:                                            ; preds = %bb.bq
  %i.id = shl i64 %.03656.i.i105, 4
  %i.ie = zext nneg i8 %i.ic to i64
  %i.if = or disjoint i64 %i.id, %i.ie
  %i.ig = add nuw i64 %.02557.i.i104, 1           ; 2 uses
  %exitcond.not.i.i108 = icmp eq i64 %i.ig, %i.hy
  br i1 %exitcond.not.i.i108, label %.thread.i107, label %.lr.ph.i.i103, !llvm.loop !4

.thread.i107:                                     ; preds = %bb.br, %bb.bq, %_ZN10StringView12consumeFrontEc.exit.i.i98
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ih, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit: ; preds = %.lr.ph.i.i103
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.02557.i.i104
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, %bb.bp
  %.pn.i111 = phi ptr [ %i.hp, %bb.bp ], [ %i.ii, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ]
  %.sroa.0.4.i.i112 = phi i64 [ %i.hv, %bb.bp ], [ %.03656.i.i105, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ] ; 4 uses
  %storemerge.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1
  store ptr %storemerge.i113, ptr %1, align 8, !tbaa !74
  %i.ij = icmp slt i64 %.sroa.0.4.i.i112, 0
  br i1 %i.ij, label %.split.i114, label %bb.bs

.split.i114:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ik, align 8, !tbaa !47
  br i1 %i.hq, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  br i1 %i.hq, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bt:                                            ; preds = %bb.bs, %.split.i114
  %i.il = sub nsw i64 0, %.sroa.0.4.i.i112
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115: ; preds = %.thread.i107, %.split.i114, %bb.bs, %bb.bt
  %i.im = phi i64 [ %i.il, %bb.bt ], [ %.sroa.0.4.i.i112, %bb.bs ], [ 0, %.thread.i107 ], [ %.sroa.0.4.i.i112, %.split.i114 ]
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.dt, align 8, !tbaa !255
  br label %bb.bu

bb.bu:                                            ; preds = %bb.aq, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %.030 = phi ptr [ %.sink27.i, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ], [ %.sink27.i38, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115 ], [ null, %bb.aq ] ; 5 uses
  %i.io = and i32 %i.ae, 256
  %.not34 = icmp eq i32 %i.io, 0
  br i1 %.not34, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !53 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !50
  %i.is = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !54
  %i.iv = add i64 %i.is, 7
  %i.iw = add i64 %i.iv, %i.iu
  %i.ix = and i64 %i.iw, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.ix, %i.is
  %i.iy = add i64 %reass.sub.i116, 56             ; 2 uses
  store i64 %i.iy, ptr %i.it, align 8, !tbaa !54
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !52
  %i.jb = icmp ult i64 %i.iy, %i.ja
  br i1 %i.jb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jc = inttoptr i64 %i.ix to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.jd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.je = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !50
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !53
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !51
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 4096, ptr %i.jh, align 8, !tbaa !52
  store ptr %i.jd, ptr %i.ip, align 8, !tbaa !53
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 56, ptr %i.ji, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bw, %bb.bx
  %.sink19.i = phi ptr [ %i.je, %bb.bx ], [ %i.jc, %bb.bw ] ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.jj, align 8, !tbaa !77
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12
  store i8 0, ptr %i.jk, align 4, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.jl, align 8, !tbaa !111
  %i.jm = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20
  store i8 0, ptr %i.jm, align 4, !tbaa !112
  %i.jn = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.jn, align 2, !tbaa !116
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24
  store i32 0, ptr %i.jo, align 8, !tbaa !113
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32
  store ptr null, ptr %i.jp, align 8, !tbaa !107
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.jq, align 8, !tbaa !114
  %i.jr = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48
  store ptr null, ptr %i.jr, align 8, !tbaa !115
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.js = and i32 %i.ae, 24
  %.not35 = icmp eq i32 %i.js, 0
  %i.jt = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %.not35)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %.031 = phi ptr [ %.sink19.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ], [ %i.jt, %bb.by ] ; 4 uses
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ju = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !77
  %i.jw = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i32 %i.jv, ptr %i.jw, align 8, !tbaa !77
  %i.jx = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.jy = load i8, ptr %i.jx, align 4, !tbaa !110
  %i.jz = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store i8 %i.jy, ptr %i.jz, align 4, !tbaa !110
  %i.ka = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %.031, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ka, ptr noundef nonnull align 8 dereferenceable(40) %i.kb, i64 40, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1 = phi ptr [ %.030, %bb.ca ], [ %.031, %bb.bz ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.1, i64 22
  store i16 %i.ad, ptr %i.kc, align 2, !tbaa !116
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !53 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !50
  %i.kg = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !54
  %i.kj = add i64 %i.kg, 7
  %i.kk = add i64 %i.kj, %i.ki
  %i.kl = and i64 %i.kk, -8                       ; 2 uses
  %reass.sub.i117 = sub i64 %i.kl, %i.kg
  %i.km = add i64 %reass.sub.i117, 32             ; 2 uses
  store i64 %i.km, ptr %i.kh, align 8, !tbaa !54
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !52
  %i.kp = icmp ult i64 %i.km, %i.ko
  br i1 %i.kp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kq = inttoptr i64 %i.kl to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.kr = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ks = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ks, ptr %i.kr, align 8, !tbaa !50
  %i.kt = load ptr, ptr %i.kd, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !51
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i64 4096, ptr %i.kv, align 8, !tbaa !52
  store ptr %i.kr, ptr %i.kd, align 8, !tbaa !53
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 32, ptr %i.kw, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.cc, %bb.cd
  %.sink13.i = phi ptr [ %i.ks, %bb.cd ], [ %i.kq, %bb.cc ] ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.kx, align 8, !tbaa !77
  %i.ky = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ky, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !39
  %i.kz = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %.1, ptr %i.kz, align 8, !tbaa !100
  ret ptr %.sink13.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 0, 6) %2) unnamed_addr #3 align 2 !guid !260 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !50
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !52
  store ptr %i.o, ptr %i.a, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 40, ptr %i.t, align 8, !tbaa !54
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !134
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 6 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !134
  store i8 %2, ptr %i.w, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !77
  %cond = icmp eq i32 %i.aa, 14
  br i1 %cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !110
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 5 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !34
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !74
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ %i.ad, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ad, %bb.d ] ; 5 uses
  %i.al = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.af
  br i1 %i.am, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !34
  %i.ao = icmp eq i8 %i.an, 73
  br i1 %i.ao, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !74
  %i.aq = or disjoint i8 %i.al, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.as = phi i8 [ %i.aq, %bb.f ], [ %i.al, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.al, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.at = icmp eq ptr %i.ar, %i.af
  br i1 %i.at, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !34
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ax = or i8 %i.as, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ay = phi ptr [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  %i.az = phi i8 [ %i.ax, %bb.g ], [ %i.as, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.as, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.ba = or i8 %i.az, %i.ac
  store i8 %i.ba, ptr %i.ab, align 4, !tbaa !110
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 5 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !59
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !34
  %switch.tableidx = add i8 %i.bc, -65            ; 3 uses
  %i.bd = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bd, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

switch.hole_check:                                ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit: ; preds = %switch.lookup, %bb.h
  %.sroa.0.0.i = phi i8 [ 0, %bb.h ], [ %switch.load, %switch.lookup ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !118
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %bb.i
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !34  ; 2 uses
  %i.bk = sext i8 %i.bj to i32
  %isdigittmp.i.i = add nsw i32 %i.bk, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.j, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.bl = sext i8 %i.bj to i64
  %i.bm = add nsw i64 %i.bl, -48                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !67
  %.not.i.i = icmp ult i64 %i.bm, %i.bo
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store ptr %i.bq, ptr %1, align 8, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread.i:   ; preds = %_ZL15startsWithDigit10StringView.exit.i, %bb.i
  %i.bu = ptrtoint ptr %i.af to i64
  %i.bv = ptrtoint ptr %i.bb to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ult i64 %i.bw, 2
  br i1 %i.bx, label %_ZNK10StringView10startsWithES_.exit.thread9.i, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.by = load i16, ptr %i.bb, align 1
  %i.bz = icmp ne i16 9279, %i.by
  %i.ca = zext i1 %i.bz to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZNK10StringView10startsWithES_.exit.thread9.i

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.cb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !259
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.cc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.k, %bb.l, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.cc, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.cb, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.k ], [ %i.bt, %bb.l ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !47, !range !70, !noundef !71
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.cg = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i), !inline_history !261 ; 0 uses
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit: ; preds = %bb.m, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !119
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !110
  %i.cl = or i8 %i.ck, %.sroa.0.0.i
  store i8 %i.cl, ptr %i.cj, align 4, !tbaa !110
  br label %bb.p

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cn, ptr %1, align 8, !tbaa !59
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !34
  %switch.tableidx31 = add i8 %i.co, -65          ; 3 uses
  %i.cp = icmp ult i8 %switch.tableidx31, 20
  br i1 %i.cp, label %switch.hole_check33, label %bb.o

bb.o:                                             ; preds = %switch.hole_check33, %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cq, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

switch.hole_check33:                              ; preds = %bb.n
  %switch.maskindex35 = zext nneg i8 %switch.tableidx31 to i32
  %switch.shifted36 = lshr i32 983055, %switch.maskindex35
  %switch.lobit37 = trunc i32 %switch.shifted36 to i1
  br i1 %switch.lobit37, label %switch.lookup34, label %bb.o

switch.lookup34:                                  ; preds = %switch.hole_check33
  %i.cr = zext nneg i8 %switch.tableidx31 to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.cr
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  br label %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18

_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18: ; preds = %switch.lookup34, %bb.o
  %.sroa.0.0.i17 = phi i8 [ 0, %bb.o ], [ %switch.load39, %switch.lookup34 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 %.sroa.0.0.i17, ptr %i.cs, align 4, !tbaa !110
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit18, %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit
  ret ptr %.sink14.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !35}
!5 = distinct !{!5, !35}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i64 2336501918330967258}
!14 = !{i64 2848101521735468257}
!15 = !{i64 -6938842799854748633}
!16 = !{i64 -1554913232496132925}
!17 = !{i64 -2446789030117771834}
!18 = !{i64 -7097741602753608742}
!19 = !{i64 7351147499656660752}
!20 = !{i64 3510712169051170272}
!21 = !{i64 -5712306452497114071}
!22 = !{i64 2529964006646664405}
!23 = !{i64 4592033913389462240}
!24 = !{i64 5248070990961917334}
!25 = !{i64 5698811063941749079}
!26 = !{i64 94411463992210504}
!27 = !{i64 -2060093433256730435}
!28 = !{i64 6512557819525689683}
!29 = !{i64 4625216420295030172}
!30 = !{i64 1052281779934448031}
!31 = !{i64 2972999952111894335}
!32 = !{!"_ZTSN4llvh11ms_demangle21IntrinsicFunctionKindE", !10, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!10, !10, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"vtable pointer", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"bool", !10, i64 0}
!41 = !{!"any pointer", !10, i64 0}
!42 = !{!"p1 _ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !41, i64 0}
!43 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocatorE", !42, i64 0}
!44 = !{!"long", !10, i64 0}
!45 = !{!"_ZTSN12_GLOBAL__N_114BackrefContextE", !10, i64 0, !44, i64 80, !10, i64 88, !44, i64 168}
!46 = !{!"_ZTSN12_GLOBAL__N_19DemanglerE", !40, i64 8, !43, i64 16, !45, i64 24}
!47 = !{!46, !40, i64 8}
!48 = !{!"p1 omnipotent char", !41, i64 0}
!49 = !{!"_ZTSN4llvh11ms_demangle14ArenaAllocator13AllocatorNodeE", !48, i64 0, !44, i64 8, !44, i64 16, !42, i64 24}
!50 = !{!49, !48, i64 0}
!51 = !{!49, !42, i64 24}
!52 = !{!49, !44, i64 16}
!53 = !{!43, !42, i64 0}
!54 = !{!49, !44, i64 8}
!55 = !{!"_ZTS12OutputStream", !48, i64 0, !44, i64 8, !44, i64 16, !11, i64 24, !11, i64 28}
!56 = !{!55, !11, i64 24}
!57 = !{!55, !11, i64 28}
!58 = !{!"_ZTS10StringView", !48, i64 0, !48, i64 8}
!59 = !{!58, !48, i64 0}
!60 = !{!58, !48, i64 8}
!61 = !{!46, !44, i64 104}
!62 = !{!55, !44, i64 8}
!63 = !{!55, !48, i64 0}
!64 = !{!55, !44, i64 16}
!65 = !{!"p1 _ZTSN4llvh11ms_demangle8TypeNodeE", !41, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!46, !44, i64 192}
!68 = !{!"p1 _ZTSN4llvh11ms_demangle19NamedIdentifierNodeE", !41, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!44, !44, i64 0}
!73 = !{ptr @_ZN12_GLOBAL__N_19DemanglerD2Ev}
!74 = !{!48, !48, i64 0}
!75 = !{!"_ZTSN4llvh11ms_demangle8NodeKindE", !10, i64 0}
!76 = !{!"_ZTSN4llvh11ms_demangle4NodeE", !75, i64 8}
!77 = !{!76, !75, i64 8}
!78 = !{!"p1 _ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !41, i64 0}
!79 = !{!"_ZTSN4llvh11ms_demangle10SymbolNodeE", !76, i64 0, !78, i64 16}
!80 = !{!79, !78, i64 16}
!81 = !{!"p1 _ZTSN4llvh11ms_demangle13NodeArrayNodeE", !41, i64 0}
!82 = !{!"_ZTSN4llvh11ms_demangle14IdentifierNodeE", !76, i64 0, !81, i64 16}
!83 = !{!82, !81, i64 16}
!84 = !{!"_ZTSN4llvh11ms_demangle10QualifiersE", !10, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"_ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !76, i64 0, !81, i64 16}
!87 = !{!86, !81, i64 16}
!88 = !{!"any p2 pointer", !41, i64 0}
!89 = !{!"p2 _ZTSN4llvh11ms_demangle4NodeE", !88, i64 0}
!90 = !{!"_ZTSN4llvh11ms_demangle13NodeArrayNodeE", !76, i64 0, !89, i64 16, !44, i64 24}
!91 = !{!90, !89, i64 16}
!92 = !{!90, !44, i64 24}
!93 = !{!"p1 _ZTSN4llvh11ms_demangle4NodeE", !41, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"p1 _ZTSN4llvh11ms_demangle14IdentifierNodeE", !41, i64 0}
!96 = !{!"_ZTSN4llvh11ms_demangle22StructorIdentifierNodeE", !82, i64 0, !95, i64 24, !40, i64 32}
!97 = !{!96, !95, i64 24}
!98 = !{!"p1 _ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !41, i64 0}
!99 = !{!"_ZTSN4llvh11ms_demangle18FunctionSymbolNodeE", !79, i64 0, !98, i64 24}
!100 = !{!99, !98, i64 24}
!101 = !{!"_ZTSN4llvh11ms_demangle8TypeNodeE", !76, i64 0, !84, i64 12}
!102 = !{!"_ZTSN4llvh11ms_demangle15PointerAffinityE", !10, i64 0}
!103 = !{!"_ZTSN4llvh11ms_demangle11CallingConvE", !10, i64 0}
!104 = !{!"_ZTSN4llvh11ms_demangle9FuncClassE", !10, i64 0}
!105 = !{!"_ZTSN4llvh11ms_demangle20FunctionRefQualifierE", !10, i64 0}
!106 = !{!"_ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !101, i64 0, !102, i64 16, !103, i64 20, !104, i64 22, !105, i64 24, !65, i64 32, !40, i64 40, !81, i64 48}
!107 = !{!106, !65, i64 32}
!108 = !{!"_ZTSN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE", !82, i64 0, !65, i64 24}
!109 = !{!108, !65, i64 24}
!110 = !{!101, !84, i64 12}
!111 = !{!106, !102, i64 16}
!112 = !{!106, !103, i64 20}
!113 = !{!106, !105, i64 24}
!114 = !{!106, !40, i64 40}
!115 = !{!106, !81, i64 48}
!116 = !{!106, !104, i64 22}
!117 = !{!"_ZTSN4llvh11ms_demangle15PointerTypeNodeE", !101, i64 0, !102, i64 16, !78, i64 24, !65, i64 32}
!118 = !{!117, !78, i64 24}
!119 = !{!117, !65, i64 32}
!120 = !{!"_ZTSN4llvh11ms_demangle18IntegerLiteralNodeE", !76, i64 0, !44, i64 16, !40, i64 24}
!121 = !{!120, !44, i64 16}
!122 = !{!120, !40, i64 24}
!123 = !{!"p1 _ZTS8NodeList", !41, i64 0}
!124 = !{!"_ZTS8NodeList", !93, i64 0, !123, i64 8}
!125 = !{!124, !93, i64 0}
!126 = !{!124, !123, i64 8}
!127 = !{!"_ZTSN4llvh11ms_demangle13PrimitiveKindE", !10, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"_ZTSN4llvh11ms_demangle17PrimitiveTypeNodeE", !101, i64 0, !127, i64 16}
!130 = !{!129, !127, i64 16}
!131 = !{!"_ZTSN4llvh11ms_demangle12StorageClassE", !10, i64 0}
!132 = !{!"_ZTSN4llvh11ms_demangle18VariableSymbolNodeE", !79, i64 0, !131, i64 24, !65, i64 32}
!133 = !{!132, !131, i64 24}
!134 = !{!132, !65, i64 32}
!135 = !{!123, !123, i64 0}
!136 = !{!40, !40, i64 0}
!137 = !{!"_ZTSN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE", !82, i64 0, !32, i64 24}
!138 = !{!137, !32, i64 24}
!139 = !{i64 -7179003696717348769}
!140 = !{i64 4816084953073151250}
!141 = distinct !{!141, !35, !36, !37}
!142 = distinct !{!142, !35, !37, !36}
!143 = !{i64 -7350949843736991027}
!144 = distinct !{!144, !35, !36, !37}
!145 = distinct !{!145, !35, !37, !36}
!146 = !{i64 8155182843743850830}
!147 = distinct !{null}
!148 = distinct !{!148, !35}
!149 = distinct !{!149, !35}
!150 = !{i64 1842680044547664229}
!151 = !{!45, !44, i64 80}
!152 = !{!45, !44, i64 168}
!153 = distinct !{null}
!154 = distinct !{null, null}
!155 = distinct !{null, null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!156 = distinct !{null, null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!157 = !{i64 -489220629597675642}
!158 = !{!"_ZTSN4llvh11ms_demangle22SpecialTableSymbolNodeE", !79, i64 0, !78, i64 24, !84, i64 32}
!159 = !{!158, !78, i64 24}
!160 = !{i64 618276221332017163}
!161 = !{i64 6896562998249440968}
!162 = !{i64 -6607201394500980593}
!163 = distinct !{!163, !35}
!164 = !{i64 7769801679153404111}
!165 = !{!"_ZTSN4llvh11ms_demangle8CharKindE", !10, i64 0}
!166 = !{!"_ZTSN4llvh11ms_demangle24EncodedStringLiteralNodeE", !79, i64 0, !58, i64 24, !40, i64 40, !165, i64 44}
!167 = !{!166, !165, i64 44}
!168 = !{!166, !40, i64 40}
!169 = !{i64 -8112755905457230173}
!170 = !{!"_ZTSN4llvh11ms_demangle24VcallThunkIdentifierNodeE", !82, i64 0, !44, i64 24}
!171 = !{!170, !44, i64 24}
!172 = !{i64 3782990620879515340}
!173 = !{!"_ZTSN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE", !82, i64 0, !11, i64 24}
!174 = !{!173, !11, i64 24}
!175 = !{!"_ZTSN4llvh11ms_demangle28LocalStaticGuardVariableNodeE", !79, i64 0, !40, i64 24}
!176 = !{!175, !40, i64 24}
!177 = distinct !{null}
!178 = distinct !{null}
!179 = distinct !{null}
!180 = distinct !{!180, !35}
!181 = distinct !{null}
!182 = !{i64 -5938175811960497532}
!183 = !{!"_ZTSN4llvh11ms_demangle7TagKindE", !10, i64 0}
!184 = !{!"_ZTSN4llvh11ms_demangle11TagTypeNodeE", !101, i64 0, !78, i64 16, !183, i64 24}
!185 = !{!184, !78, i64 16}
!186 = !{!184, !183, i64 24}
!187 = !{!117, !102, i64 16}
!188 = !{!102, !102, i64 0}
!189 = !{!"_ZTSN4llvh11ms_demangle13ArrayTypeNodeE", !101, i64 0, !81, i64 16, !65, i64 24}
!190 = !{!189, !81, i64 16}
!191 = !{!189, !65, i64 24}
!192 = !{ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb}
!193 = !{!"_ZTSN4llvh11ms_demangle14CustomTypeNodeE", !101, i64 0, !95, i64 16}
!194 = !{!193, !95, i64 16}
!195 = !{i64 -4929064513790781073}
!196 = !{i64 8786076042749782579}
!197 = !{i64 3423295262872928897}
!198 = !{!"_ZTSN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE", !82, i64 0, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!199 = !{!198, !11, i64 24}
!200 = !{!198, !11, i64 28}
!201 = !{!198, !11, i64 32}
!202 = !{!198, !11, i64 36}
!203 = !{i64 1205754912301138118}
!204 = !{!"p1 _ZTSN4llvh11ms_demangle18VariableSymbolNodeE", !41, i64 0}
!205 = !{!"_ZTSN4llvh11ms_demangle29DynamicStructorIdentifierNodeE", !82, i64 0, !204, i64 24, !78, i64 32, !40, i64 40}
!206 = !{!205, !40, i64 40}
!207 = !{!205, !204, i64 24}
!208 = !{!205, !78, i64 32}
!209 = !{i64 -4131435900390855395}
!210 = distinct !{!210, !35}
!211 = !{i64 -2984047925291950100}
!212 = !{i64 -3068250980500509044}
!213 = !{i64 4439093246354305426}
!214 = distinct !{null}
!215 = distinct !{!215, !35}
!216 = distinct !{null, null}
!217 = !{i64 -7640391249112855235}
!218 = distinct !{null}
!219 = !{i64 2994987859999312377}
!220 = distinct !{!220, !223}
!221 = distinct !{!221, !35}
!222 = !{i64 -8047941101084968432}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = distinct !{null}
!225 = distinct !{!225, !35}
!226 = !{i64 3667610599236551824}
!227 = !{i64 0, i64 80, !34, i64 80, i64 8, !72, i64 88, i64 80, !34, i64 168, i64 8, !72}
!228 = !{i64 0, i64 80, !34, i64 80, i64 8, !72}
!229 = !{!"p1 _ZTSN4llvh11ms_demangle10SymbolNodeE", !41, i64 0}
!230 = !{!"_ZTSSt5arrayIlLm3EE", !10, i64 0}
!231 = !{!"_ZTSN4llvh11ms_demangle30TemplateParameterReferenceNodeE", !76, i64 0, !229, i64 16, !11, i64 24, !230, i64 32, !102, i64 56, !40, i64 60}
!232 = !{!231, !229, i64 16}
!233 = !{!231, !11, i64 24}
!234 = !{!231, !102, i64 56}
!235 = !{!231, !40, i64 60}
!236 = !{i64 -3284221413242041250}
!237 = !{i64 -89999055333708788}
!238 = !{i64 8248774488096212588}
!239 = !{i64 -8257321949293187236}
!240 = !{!96, !40, i64 32}
!241 = distinct !{!241, !35}
!242 = !{i64 7022775807902690218}
!243 = !{i64 623236367590287103}
!244 = !{i64 1334865698795919736}
!245 = distinct !{!245, !35}
!246 = !{i64 3905517530860816136}
!247 = !{i64 9118186260596337862}
!248 = !{i64 6083616991378047019}
!249 = distinct !{!249, !35}
!250 = !{i64 -4578388260683620112}
!251 = !{i64 -3622272129717677005}
!252 = !{i64 5255898074521787025}
!253 = !{!"_ZTSN4llvh11ms_demangle18ThunkSignatureNode12ThisAdjustorE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!254 = !{!"_ZTSN4llvh11ms_demangle18ThunkSignatureNodeE", !106, i64 0, !253, i64 56}
!255 = !{!254, !11, i64 56}
!256 = !{!254, !11, i64 60}
!257 = !{!254, !11, i64 64}
!258 = !{!254, !11, i64 68}
!259 = distinct !{null, ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
!260 = !{i64 4204669199933604604}
!261 = !{ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView}
end_hunk_0
