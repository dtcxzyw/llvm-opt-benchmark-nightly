Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh17microsoftDemangleEPKcPcPmPiNS_15MSDemangleFlagsE:bb.a

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #23
  unreachable

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.w, %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i ]
  call void @free(ptr noundef %i.ab) #19
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !42
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph.i:                                         ; preds = %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i, %.lr.ph.i
  %.01015.i = phi i64 [ %i.an, %.lr.ph.i ], [ 0, %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i ] ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01015.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(13) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0) #19, !inline_history !124
  %i.ai = trunc i64 %.01015.i to i32
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ak = trunc i64 %i.aj to i32
  %i.al = load ptr, ptr %5, align 8, !tbaa !44
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.al) ; 0 uses
  %i.an = add nuw nsw i64 %.01015.i, 1            ; 2 uses
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !42
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !125

bb.d:                                             ; preds = %._crit_edge.i
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !48
  %i.ar = trunc i64 %i.aq to i32
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ar) ; 0 uses
  %i.at = load i64, ptr %i.i, align 8, !tbaa !48
  %.not21.i = icmp eq i64 %i.at, 0
  br i1 %.not21.i, label %_ZN12_GLOBAL__N_19Demangler18dumpBackReferencesEv.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 112
  br label %bb.f

._crit_edge19.i:                                  ; preds = %bb.f
  %i.av = icmp eq i64 %i.bj, 0
  br i1 %i.av, label %_ZN12_GLOBAL__N_19Demangler18dumpBackReferencesEv.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph18.i
  %.016.i = phi i64 [ 0, %.lr.ph18.i ], [ %i.bi, %bb.f ] ; 3 uses
  %i.aw = trunc i64 %.016.i to i32
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.016.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %i.aw, i32 noundef %i.bg, ptr noundef %i.bc) ; 0 uses
  %i.bi = add nuw nsw i64 %.016.i, 1              ; 2 uses
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %._crit_edge19.i, !llvm.loop !126

bb.g:                                             ; preds = %._crit_edge19.i
  %putchar13.i = call i32 @putchar(i32 10)        ; 0 uses
  br label %_ZN12_GLOBAL__N_19Demangler18dumpBackReferencesEv.exit

_ZN12_GLOBAL__N_19Demangler18dumpBackReferencesEv.exit: ; preds = %bb.e, %._crit_edge19.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18dumpBackReferencesEv.exit, %bb.a
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !28, !range !51, !noundef !52
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = icmp eq ptr %1, null
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = load i64, ptr %2, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.09.i = phi ptr [ %1, %bb.k ], [ %i.bo, %bb.j ]
  %.0.i = phi i64 [ %i.bq, %bb.k ], [ 1024, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %i.br, align 8, !tbaa !43
  store ptr %.09.i, ptr %7, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.0.i, ptr %i.bs, align 8, !tbaa !45
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0) #19
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp ult i64 %i.bx, %i.by
  %.pre.i16 = load ptr, ptr %7, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = shl i64 %i.by, 1
  %spec.store.select.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.bx) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.bs, align 8, !tbaa !45
  %i.ca = call ptr @realloc(ptr noundef %.pre.i16, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  store ptr %i.ca, ptr %7, align 8, !tbaa !44
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.n, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.m
  %.pre1.i = load i64, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.l, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.bx, %bb.l ]
  %i.cc = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.bw, %bb.l ]
  %i.cd = phi ptr [ %i.ca, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i16, %bb.l ]
  store i64 %.pre-phi.i, ptr %i.br, align 8, !tbaa !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !15
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN12OutputStreampLEc.exit
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !43
  store i64 %i.cf, ptr %2, align 8, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN12OutputStreampLEc.exit
  %i.cg = load ptr, ptr %7, align 8, !tbaa !44
  br label %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread

_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread: ; preds = %bb.j, %bb.h, %bb.p
  %i.ch = phi ptr [ %i.cg, %bb.p ], [ null, %bb.h ], [ null, %bb.j ]
  %.0 = phi i32 [ 0, %bb.p ], [ -2, %bb.h ], [ -1, %bb.j ]
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread
  store i32 %.0, ptr %3, align 4, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_19DemanglerE, i64 16), ptr %6, align 8, !tbaa !20
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not4.i.i, label %_ZN12_GLOBAL__N_19DemanglerD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.t
  %i.ci = phi ptr [ %i.cn, %bb.t ], [ %.pr.i.i, %bb.r ] ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #25, !inline_history !54
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i
  %i.cl = phi ptr [ %.pre.i.i, %bb.s ], [ %i.ci, %.lr.ph.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32 ; 3 uses
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef 32) #25, !inline_history !54
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !34
  %.not.i.i17 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i17, label %_ZN12_GLOBAL__N_19DemanglerD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN12_GLOBAL__N_19DemanglerD2Ev.exit:             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 18 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %_ZNK10StringView10startsWithES_.exit.thread91, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %bb.a
  %i.h = load i16, ptr %i.c, align 1
  %i.i = xor i16 16191, %i.h
  %i.j = getelementptr i8, ptr %i.c, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %i.m = xor i16 64, %i.l
  %i.n = or i16 %i.i, %i.m
  %i.o = icmp ne i16 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread91

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !35
  %i.w = add i64 %i.t, 7                          ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.y, %i.t
  %i.z = add i64 %reass.sub.i, 24                 ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.thread
  %i.ad = inttoptr i64 %i.y to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_10SymbolNodeEJNS0_8NodeKindEEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.thread
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !31
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 4096, ptr %i.ai, align 8, !tbaa !33
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 24, ptr %i.aj, align 8, !tbaa !35
  %.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !55
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !55
  %.pre146 = ptrtoint ptr %i.af to i64            ; 2 uses
  %.pre148 = add i64 %.pre146, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_10SymbolNodeEJNS0_8NodeKindEEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_10SymbolNodeEJNS0_8NodeKindEEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi149 = phi i64 [ %i.w, %bb.b ], [ %.pre148, %bb.c ]
  %.pre-phi147 = phi i64 [ %i.t, %bb.b ], [ %.pre146, %bb.c ]
  %i.ak = phi i64 [ %i.ab, %bb.b ], [ 4096, %bb.c ]
  %i.al = phi i64 [ %i.z, %bb.b ], [ 24, %bb.c ]
  %i.am = phi ptr [ %i.r, %bb.b ], [ %i.ae, %bb.c ]
  %.sroa.2.0.copyload = phi ptr [ %i.b, %bb.b ], [ %.sroa.2.0.copyload.pre, %bb.c ]
  %.sroa.0.0.copyload = phi ptr [ %i.c, %bb.b ], [ %.sroa.0.0.copyload.pre, %bb.c ]
  %.sink14.i = phi ptr [ %i.ad, %bb.b ], [ %i.af, %bb.c ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle10SymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = add i64 %i.al, %.pre-phi149
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %reass.sub.i.i.i = sub i64 %i.ar, %.pre-phi147
  %i.as = add i64 %reass.sub.i.i.i, 40            ; 2 uses
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !35
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_10SymbolNodeEJNS0_8NodeKindEEEEPT_DpOT0_.exit
  %i.au = inttoptr i64 %i.ar to ptr
  br label %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_10SymbolNodeEJNS0_8NodeKindEEEEPT_DpOT0_.exit
  %i.av = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.aw = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !31
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 4096, ptr %i.az, align 8, !tbaa !33
  store ptr %i.av, ptr %i.q, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 40, ptr %i.ba, align 8, !tbaa !35
  br label %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit: ; preds = %bb.d, %bb.e
  %.sink13.i.i.i = phi ptr [ %i.aw, %bb.e ], [ %i.au, %bb.d ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 8
  store i32 5, ptr %i.bb, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i.i, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 32
  store ptr %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !55
  %i.be = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %.sink13.i.i.i)
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !61
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZNK10StringView10startsWithES_.exit.thread91:    ; preds = %bb.a, %_ZNK10StringView10startsWithES_.exit
  %i.bf = icmp eq ptr %i.c, %i.b
  br i1 %i.bf, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZNK10StringView10startsWithES_.exit.thread91
  %i.bg = load i8, ptr %i.c, align 1, !tbaa !15
  %i.bh = icmp eq i8 %i.bg, 63
  br i1 %i.bh, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.thread

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread91, %_ZNK10StringView10startsWithEc.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bi, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread132

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 28 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !55
  %.pre = ptrtoint ptr %i.bj to i64
  %.pre144 = sub i64 %i.d, %.pre                  ; 2 uses
  %i.bk = icmp ult i64 %.pre144, 3
  br i1 %i.bk, label %_ZN12_GLOBAL__N_19Demangler24demangleSpecialIntrinsicER10StringView.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i.i

_ZNK10StringView10startsWithES_.exit.i.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.bl = load i16, ptr %i.bj, align 1
  %i.bm = xor i16 24383, %i.bl
  %i.bn = getelementptr i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = xor i16 55, %i.bp
  %i.br = or i16 %i.bm, %i.bq
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithES_.exit.i17.i

_ZNK10StringView10startsWithES_.exit.i17.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i.i
  %i.bu = load i16, ptr %i.bj, align 1
  %i.bv = xor i16 24383, %i.bu
  %i.bw = getelementptr i8, ptr %i.bj, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = xor i16 56, %i.by
  %i.ca = or i16 %i.bv, %i.bz
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not9.i.i.i.i.i.i19.i = icmp eq i32 %i.cc, 0
  br i1 %.not9.i.i.i.i.i.i19.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithES_.exit.i24.i

_ZNK10StringView10startsWithES_.exit.i24.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i17.i
  %i.cd = load i16, ptr %i.bj, align 1
  %i.ce = xor i16 24383, %i.cd
  %i.cf = getelementptr i8, ptr %i.bj, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i16
  %i.ci = xor i16 57, %i.ch
  %i.cj = or i16 %i.ce, %i.ci
  %i.ck = icmp ne i16 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not9.i.i.i.i.i.i26.i = icmp eq i32 %i.cl, 0
  br i1 %.not9.i.i.i.i.i.i26.i, label %bb.y, label %_ZNK10StringView10startsWithES_.exit.i31.i

_ZNK10StringView10startsWithES_.exit.i31.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i24.i
  %i.cm = load i16, ptr %i.bj, align 1
  %i.cn = xor i16 24383, %i.cm
  %i.co = getelementptr i8, ptr %i.bj, i64 2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = xor i16 65, %i.cq
  %i.cs = or i16 %i.cn, %i.cr
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not9.i.i.i.i.i.i33.i = icmp eq i32 %i.cu, 0
  br i1 %.not9.i.i.i.i.i.i33.i, label %_ZL27consumeSpecialIntrinsicKindR10StringView.exit.thread107.sink.split, label %_ZNK10StringView10startsWithES_.exit.i38.i

_ZNK10StringView10startsWithES_.exit.i38.i:       ; preds = %_ZNK10StringView10startsWithES_.exit.i31.i
  %i.cv = load i16, ptr %i.bj, align 1
  %i.cw = xor i16 24383, %i.cv
  %i.cx = getelementptr i8, ptr %i.bj, i64 2
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i16
  %i.da = xor i16 66, %i.cz
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView:bb.a
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.ae, %i.gs
  %i.gu = icmp ult i64 %i.gt, 2
  br i1 %i.gu, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gw = add i8 %i.gv, -65                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 16
  br i1 %i.gx, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gf, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %i.ha = add i8 %i.gz, -65                       ; 2 uses
  %i.hb = icmp ult i8 %i.ha, 16
  br i1 %i.hb, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store ptr %i.hc, ptr %1, align 8, !tbaa !55
  %i.hd = shl nuw i8 %i.gw, 4
  %i.he = or disjoint i8 %i.ha, %i.hd
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZL15startsWithDigit10StringView.exit.i70:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.hf = sext i8 %i.gp to i32
  %isdigittmp.i.i71 = add nsw i32 %i.hf, -48
  %isdigit.i.i72 = icmp ult i32 %isdigittmp.i.i71, 10
  br i1 %isdigit.i.i72, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hg = sext i8 %i.gp to i64
  %i.hh = getelementptr i8, ptr @.str.33, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -48
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hk, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bf:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hl = icmp sgt i8 %i.gp, 96
  br i1 %i.hl, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hm = icmp samesign ult i8 %i.gp, 123
  br i1 %i.hm, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.hn = zext nneg i8 %i.gp to i64
  %i.ho = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 -97
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hr, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bi:                                            ; preds = %bb.bf
  %i.hs = add i8 %i.gp, -65
  %or.cond.i73 = icmp ult i8 %i.hs, 26
  br i1 %or.cond.i73, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.ht = zext nneg i8 %i.gp to i64
  %i.hu = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -65
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hx, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

.thread.i:                                        ; preds = %bb.bi, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.hy = phi ptr [ %i.gn, %bb.bi ], [ %i.gn, %bb.bg ], [ %i.gr, %bb.bc ], [ %i.gr, %bb.bb ], [ %i.gr, %bb.ba ], [ %i.gn, %bb.az ]
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.thread.i, %bb.bd, %bb.be, %bb.bh, %bb.bj, %.thread.i
  %i.hz = phi ptr [ %i.hy, %.thread.i ], [ %i.hc, %bb.bd ], [ %i.hk, %bb.be ], [ %i.hr, %bb.bh ], [ %i.hx, %bb.bj ], [ %i.gl, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %.1.i68 = phi i8 [ 0, %.thread.i ], [ %i.he, %bb.bd ], [ %i.hj, %bb.be ], [ %i.hq, %bb.bh ], [ %i.hw, %bb.bj ], [ %i.gm, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.1.i68, ptr %i.ia, align 1, !tbaa !15
  br label %bb.ay, !llvm.loop !135

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.ib = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store ptr %i.ic, ptr %1, align 8, !tbaa !55
  %i.id = icmp ugt i64 %.sroa.0.4.i, %indvars.iv
  br i1 %i.id, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.ie = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.ie, align 8, !tbaa !139
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.if = trunc i64 %.sroa.0.4.i to i32
  %i.ig = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %i.ib, i32 noundef %i.if) ; 7 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.ih
  %switch.gep = getelementptr i8, ptr %i.ii, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.aa, align 4, !tbaa !138
  %.not98 = icmp ugt i32 %i.ig, %i.ib
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ij = udiv i32 %i.ib, %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %i.il = zext i32 %i.ij to i64
  %exitcond.not.i74 = icmp eq i32 %i.ig, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.ig, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.ig, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bq, %.thread146, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bs

bb.bm:                                            ; preds = %bb.br, %.lr.ph
  %indvars.iv105 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next106, %bb.br ] ; 2 uses
  %i.im = trunc nuw i64 %indvars.iv105 to i32
  %i.in = mul i32 %i.ig, %i.im
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.io ; 4 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !15
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !15
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = or disjoint i32 %i.iv, %i.ir            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !15
  %i.iz = zext i8 %i.iy to i32
  %i.ja = shl nuw nsw i32 %i.iz, 16
  %i.jb = or disjoint i32 %i.ja, %i.iw            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw i32 %i.je, 24
  %i.jg = or disjoint i32 %i.jf, %i.jb
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa159 = phi i32 [ %i.ir, %bb.bm ], [ %i.iw, %bb.bn ], [ %i.jb, %bb.bo ], [ %i.jg, %bb.bp ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next106, %i.il
  br i1 %i.jh, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.ji = load i8, ptr %i.ik, align 8, !tbaa !139, !range !51, !noundef !52
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %.thread146, label %._crit_edge

.thread146:                                       ; preds = %bb.bq
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa159)
  br label %._crit_edge

bb.br:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa159)
  br label %bb.bm

bb.bs:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.jk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.jl = load ptr, ptr %2, align 8, !tbaa !44    ; 4 uses
  %i.jm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jl) #21
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  %i.jo = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.jl, ptr nonnull %i.jn) ; 2 uses
  %i.jp = extractvalue { ptr, ptr } %i.jo, 0
  %i.jq = extractvalue { ptr, ptr } %i.jo, 1
  store ptr %i.jp, ptr %i.z, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  call void @free(ptr noundef %i.jl) #19
  br label %bb.bt

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZNK10StringView4findEcm.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jr, align 8, !tbaa !28
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bs
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7                          ; 2 uses
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.t, align 8, !tbaa !35
  %.pre = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre20 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi21 = phi i64 [ %i.g, %bb.b ], [ %.pre20, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.l, %bb.b ], [ 4096, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.j, %bb.b ], [ 32, %bb.c ]
  %i.w = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sink13.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.x, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = add i64 %i.v, %.pre-phi21
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %reass.sub.i13 = sub i64 %i.ac, %.pre-phi
  %i.ad = add i64 %reass.sub.i13, 32              ; 3 uses
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !35
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = inttoptr i64 %i.ac to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ag = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !31
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4096, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 32, ptr %i.al, align 8, !tbaa !35
  %.pre22 = ptrtoint ptr %i.ah to i64             ; 2 uses
  %.pre24 = add i64 %.pre22, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi25 = phi i64 [ %.pre-phi21, %bb.d ], [ %.pre24, %bb.e ]
  %.pre-phi23 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre22, %bb.e ]
  %i.am = phi i64 [ %i.u, %bb.d ], [ 4096, %bb.e ]
  %i.an = phi i64 [ %i.ad, %bb.d ], [ 32, %bb.e ]
  %i.ao = phi ptr [ %i.w, %bb.d ], [ %i.ag, %bb.e ]
  %.sink13.i14 = phi ptr [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 8
  store i32 6, ptr %i.ap, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE, i64 16), ptr %.sink13.i14, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 24 ; 3 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = add i64 %i.an, %.pre-phi25
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %reass.sub.i15 = sub i64 %i.au, %.pre-phi23
  %i.av = add i64 %reass.sub.i15, 72              ; 2 uses
  store i64 %i.av, ptr %i.as, align 8, !tbaa !35
  %i.aw = icmp ult i64 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ax = inttoptr i64 %i.au to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ay = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !31
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 4096, ptr %i.bc, align 8, !tbaa !33
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 72, ptr %i.bd, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink27.i = phi ptr [ %i.az, %bb.g ], [ %i.ax, %bb.f ] ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 8
  store i32 13, ptr %i.be, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 12
  store i8 0, ptr %i.bf, align 4, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 20
  store i8 0, ptr %i.bh, align 4, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 22
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 24
  store i32 0, ptr %i.bj, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 32
  store ptr null, ptr %i.bk, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 48
  store ptr null, ptr %i.bm, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle18ThunkSignatureNodeE, i64 16), ptr %.sink27.i, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink27.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store ptr %.sink27.i, ptr %i.z, align 8, !tbaa !81
  store i16 256, ptr %i.bi, align 2, !tbaa !97
  %i.bo = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i14)
  store ptr %i.bo, ptr %i.y, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !28, !range !51, !noundef !52
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.thread42, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41 ; 4 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %.thread36, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.h
  %i.bz = load i16, ptr %i.bu, align 1
  %i.ca = icmp ne i16 16932, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.i, label %.thread36

.thread36:                                        ; preds = %_ZNK10StringView10startsWithES_.exit.i, %bb.h
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  br label %.thread42

bb.i:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 5 uses
  store ptr %i.cc, ptr %1, align 8, !tbaa !55
  store i8 0, ptr %i.bp, align 8, !tbaa !28
  %i.cd = icmp eq ptr %i.cc, %i.bt
  br i1 %i.cd, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.i
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !15
  %i.cf = icmp eq i8 %i.ce, 63
  br i1 %i.cf, label %bb.j, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 2 uses
  store ptr %i.cg, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.j, %_ZNK10StringView10startsWithEc.exit.i.i.i, %bb.i
  %i.ch = phi ptr [ %i.cg, %bb.j ], [ %i.cc, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.cc, %bb.i ] ; 6 uses
  %i.ci = phi i1 [ true, %bb.j ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %bb.i ]
  %i.cj = icmp eq ptr %i.ch, %i.bt
  br i1 %i.cj, label %.thread39, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !15  ; 2 uses
  %i.cl = sext i8 %i.ck to i32
  %isdigittmp.i.i.i = add nsw i32 %i.cl, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.cm = sext i8 %i.ck to i64
  %i.cn = add nsw i64 %i.cm, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = sub i64 %i.bv, %i.co
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cx, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.cw, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 64
  br i1 %i.cs, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ct = add i8 %i.cr, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ct, 16
  br i1 %or.cond.i.i, label %bb.m, label %.thread39

bb.m:                                             ; preds = %bb.l
  %i.cu = shl i64 %.03656.i.i, 4
  %i.cv = zext nneg i8 %i.ct to i64
  %i.cw = or disjoint i64 %i.cu, %i.cv
  %i.cx = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cx, %i.cp
  br i1 %exitcond.not.i.i, label %.thread39, label %.lr.ph.i.i, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.k
  %.pn.i = phi ptr [ %i.ch, %bb.k ], [ %i.cy, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.cn, %bb.k ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !55
  br i1 %i.ci, label %.thread39, label %bb.n

.thread39:                                        ; preds = %bb.l, %bb.m, %_ZN10StringView12consumeFrontEc.exit.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %.sroa.0.4.i9.ph.i = phi i64 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  store i64 %.sroa.0.4.i9.ph.i, ptr %i.ar, align 8, !tbaa !141
  br label %.thread42

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  store i64 %.sroa.0.4.i.i, ptr %i.ar, align 8, !tbaa !141
  %i.cz = icmp eq ptr %storemerge.i, %i.bt
  br i1 %i.cz, label %.thread44, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.n
  %i.da = load i8, ptr %storemerge.i, align 1, !tbaa !15
  %i.db = icmp eq i8 %i.da, 65
  br i1 %i.db, label %bb.o, label %.thread44

.thread44:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.n
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  br label %.thread42

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  store i8 0, ptr %i.bp, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store ptr %i.dd, ptr %1, align 8, !tbaa !40
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.de, -65            ; 2 uses
  %i.df = icmp ult i8 %switch.tableidx, 17
  br i1 %i.df, label %switch.lookup, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup:                                    ; preds = %bb.o
  %i.dg = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.dg
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.o, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i8 %.0.i, ptr %i.di, align 4, !tbaa !93
  br label %.thread42

.thread42:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit, %.thread36, %.thread39, %.thread44, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.dj = phi ptr [ %.sink13.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit ], [ null, %.thread44 ], [ null, %.thread39 ], [ null, %.thread36 ], [ null, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ]
  ret ptr %i.dj
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleLocalStaticGuardER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 7, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle30LocalStaticGuardIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  store i32 0, ptr %i.w, align 8, !tbaa !143
  %i.x = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink13.i)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35
  %i.ad = add i64 %i.aa, 7
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %reass.sub.i14 = sub i64 %i.af, %i.aa
  %i.ag = add i64 %reass.sub.i14, 32              ; 2 uses
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ak = inttoptr i64 %i.af to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30LocalStaticGuardIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 4096, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.al, ptr %i.a, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 32, ptr %i.aq, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i15 = phi ptr [ %i.am, %bb.e ], [ %i.ak, %bb.d ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 8
  store i32 25, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle28LocalStaticGuardVariableNodeE, i64 16), ptr %.sink13.i15, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.sink13.i15, i64 24 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !145
  store ptr %i.x, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41 ; 4 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 3
  br i1 %i.ba, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bb = load i16, ptr %i.aw, align 1
  %i.bc = xor i16 18740, %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 65, %i.bf
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_28LocalStaticGuardVariableNodeEJEEEPT_DpOT0_.exit
  %i.bk = icmp eq ptr %i.av, %i.aw
  br i1 %i.bk, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i17

_ZNK10StringView10startsWithES_.exit.i17:         ; preds = %bb.f
  %rhsc = load i8, ptr %i.aw, align 1
  %.not9.i.i.i.i.i.i19 = icmp eq i8 %rhsc, 53
  br i1 %.not9.i.i.i.i.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !28
  br label %bb.m

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i17, %_ZNK10StringView10startsWithES_.exit.i
  %.sink = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %storemerge = phi i8 [ 0, %_ZNK10StringView10startsWithES_.exit.i ], [ 1, %_ZNK10StringView10startsWithES_.exit.i17 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink ; 5 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !55
  store i8 %storemerge, ptr %i.at, align 8, !tbaa !145
  %i.bn = icmp eq ptr %i.bm, %i.av
  br i1 %i.bn, label %bb.m, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %bb.h
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bp = icmp eq i8 %i.bo, 63                    ; 2 uses
  br i1 %i.bp, label %bb.i, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.i:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bq, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.i, %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.br = phi ptr [ %i.bq, %bb.i ], [ %i.bm, %_ZNK10StringView10startsWithEc.exit.i.i.i ] ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.av
  br i1 %i.bs, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bu = sext i8 %i.bt to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.bu, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bv = add nsw i32 %i.bu, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.ax, %i.bw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.cf, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.ce, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 %.02557.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15  ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 64
  br i1 %i.ca, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cb = add i8 %i.bz, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cb, 16
  br i1 %or.cond.i.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.cc = shl i32 %.03656.i.i, 4
  %i.cd = zext nneg i8 %i.cb to i32
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bx
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.j
  %.pn.i = phi ptr [ %i.br, %bb.j ], [ %i.cg, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.bv, %bb.j ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !55
  br i1 %i.bp, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ch, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.w, align 8, !tbaa !143
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %.sink13.i15, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ], [ %.sink13.i15, %bb.h ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  switch i32 %2, label %_ZN10StringView12consumeFrontEc.exit.thread [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !40
  %i.i = load i8, ptr %i.g, align 1, !tbaa !15
  %switch.tableidx359 = add i8 %i.i, -65          ; 3 uses
  %i.j = icmp ult i8 %switch.tableidx359, 20
  br i1 %i.j, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.k, align 8, !tbaa !28
  br label %_ZN10StringView12consumeFrontEc.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZN10StringView12consumeFrontEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 1, !tbaa !15
  %i.q = icmp eq i8 %i.p, 63
  br i1 %i.q, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.s, ptr %1, align 8, !tbaa !40
  %i.t = load i8, ptr %i.r, align 1, !tbaa !15
  %switch.tableidx360 = add i8 %i.t, -65          ; 3 uses
  %i.u = icmp ult i8 %switch.tableidx360, 20
  br i1 %i.u, label %switch.hole_check362, label %bb.f

bb.f:                                             ; preds = %switch.hole_check362, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.v, align 8, !tbaa !28
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx359 to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.w = zext nneg i8 %switch.tableidx359 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

switch.hole_check362:                             ; preds = %bb.e
  %switch.maskindex364 = zext nneg i8 %switch.tableidx360 to i32
  %switch.shifted365 = lshr i32 983055, %switch.maskindex364
  %switch.lobit366 = trunc i32 %switch.shifted365 to i1
  br i1 %switch.lobit366, label %switch.lookup363, label %bb.f

switch.lookup363:                                 ; preds = %switch.hole_check362
  %i.x = zext nneg i8 %switch.tableidx360 to i64
  %switch.gep367 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE.11, i64 %i.x
  %switch.load368 = load i8, ptr %switch.gep367, align 1
  br label %_ZN10StringView12consumeFrontEc.exit.thread

_ZN10StringView12consumeFrontEc.exit.thread:      ; preds = %switch.lookup363, %switch.lookup, %bb.f, %bb.c, %bb.d, %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  %.0209 = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ %switch.load, %switch.lookup ], [ 0, %_ZNK10StringView10startsWithEc.exit.i ], [ 0, %bb.c ], [ 0, %bb.f ], [ %switch.load368, %switch.lookup363 ]
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8, !tbaa !55 ; 25 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.y = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !15 ; 4 uses
  %i.z = and i8 %i.y, -4
  %switch.i = icmp eq i8 %i.z, 84
  br i1 %switch.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !40
  %i.ab = load i8, ptr %.sroa.09.0.copyload, align 1, !tbaa !15
  switch i8 %i.ab, label %bb.t [
    i8 84, label %bb.h
    i8 85, label %bb.k
    i8 86, label %bb.n
    i8 87, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.ai = add i64 %i.af, 7
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %reass.sub.i67 = sub i64 %i.ak, %i.af
  %i.al = add i64 %reass.sub.i67, 32              ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ar = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !31
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 4096, ptr %i.au, align 8, !tbaa !33
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 32, ptr %i.av, align 8, !tbaa !35
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.bc = add i64 %i.az, 7
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %reass.sub.i64 = sub i64 %i.be, %i.az
  %i.bf = add i64 %reass.sub.i64, 32              ; 2 uses
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = inttoptr i64 %i.be to ptr
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bk = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bl = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 4096, ptr %i.bo, align 8, !tbaa !33
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 32, ptr %i.bp, align 8, !tbaa !35
  br label %.sink.split

bb.n:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !35
  %i.bw = add i64 %i.bt, 7
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %reass.sub.i61 = sub i64 %i.by, %i.bt
  %i.bz = add i64 %reass.sub.i61, 32              ; 2 uses
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !33
  %i.cc = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = inttoptr i64 %i.by to ptr
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.ce = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cf = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !31
  %i.cg = load ptr, ptr %i.bq, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 4096, ptr %i.ci, align 8, !tbaa !33
  store ptr %i.ce, ptr %i.bq, align 8, !tbaa !34
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  store ptr %i.afm, ptr %1, align 8, !tbaa !40
  %i.afn = load i8, ptr %i.vi, align 1, !tbaa !15
  switch i8 %i.afn, label %bb.ee [
    i8 78, label %bb.dy
    i8 74, label %bb.dz
    i8 75, label %bb.ea
    i8 87, label %bb.eb
    i8 83, label %bb.ec
    i8 85, label %bb.ed
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 1, ptr %i.a, align 4, !tbaa !109
  %i.afp = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afo, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.dz:                                            ; preds = %bb.dx
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 13, ptr %i.b, align 4, !tbaa !109
  %i.afr = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.ea:                                            ; preds = %bb.dx
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 14, ptr %i.c, align 4, !tbaa !109
  %i.aft = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afs, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.eb:                                            ; preds = %bb.dx
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 15, ptr %i.d, align 4, !tbaa !109
  %i.afv = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afu, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.ec:                                            ; preds = %bb.dx
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 5, ptr %i.e, align 4, !tbaa !109
  %i.afx = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afw, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.ed:                                            ; preds = %bb.dx
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 6, ptr %i.f, align 4, !tbaa !109
  %i.afz = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.afy, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit

bb.ee:                                            ; preds = %bb.dx, %bb.ch
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aga, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread238

_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit: ; preds = %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed
  %.0.i60 = phi ptr [ %i.afx, %bb.ec ], [ %i.afz, %bb.ed ], [ %i.afp, %bb.dy ], [ %i.afr, %bb.dz ], [ %i.aft, %bb.ea ], [ %i.afv, %bb.eb ] ; 2 uses
  %.not = icmp eq ptr %.0.i60, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread238, label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread

_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread.sink.split: ; preds = %bb.dt, %bb.du, %bb.dq, %bb.dr, %bb.dn, %bb.do, %bb.dk, %bb.dl, %bb.dh, %bb.di, %bb.de, %bb.df, %bb.db, %bb.dc, %bb.cy, %bb.cz, %bb.cv, %bb.cw, %bb.cs, %bb.ct, %bb.cp, %bb.cq, %bb.cm, %bb.cn, %bb.cj, %bb.ck, %bb.cf, %bb.cg
  %.sink17.i43.i.sink312 = phi ptr [ %i.aej, %bb.dq ], [ %i.adp, %bb.dn ], [ %i.acv, %bb.dk ], [ %i.acb, %bb.dh ], [ %i.abh, %bb.de ], [ %i.aan, %bb.db ], [ %i.zt, %bb.cy ], [ %i.yz, %bb.cv ], [ %i.yf, %bb.cs ], [ %i.xl, %bb.cp ], [ %i.wr, %bb.cm ], [ %i.vx, %bb.cj ], [ %i.vb, %bb.cf ], [ %i.vd, %bb.cg ], [ %i.vz, %bb.ck ], [ %i.wt, %bb.cn ], [ %i.xn, %bb.cq ], [ %i.yh, %bb.ct ], [ %i.zb, %bb.cw ], [ %i.zv, %bb.cz ], [ %i.aap, %bb.dc ], [ %i.abj, %bb.df ], [ %i.acd, %bb.di ], [ %i.acx, %bb.dl ], [ %i.adr, %bb.do ], [ %i.ael, %bb.dr ], [ %i.aff, %bb.du ], [ %i.afd, %bb.dt ] ; 5 uses
  %.sink306 = phi i32 [ 17, %bb.dq ], [ 16, %bb.dn ], [ 12, %bb.dk ], [ 11, %bb.dh ], [ 10, %bb.de ], [ 9, %bb.db ], [ 8, %bb.cy ], [ 7, %bb.cv ], [ 4, %bb.cs ], [ 3, %bb.cp ], [ 2, %bb.cm ], [ 0, %bb.cj ], [ 19, %bb.cf ], [ 19, %bb.cg ], [ 0, %bb.ck ], [ 2, %bb.cn ], [ 3, %bb.cq ], [ 4, %bb.ct ], [ 7, %bb.cw ], [ 8, %bb.cz ], [ 9, %bb.dc ], [ 10, %bb.df ], [ 11, %bb.di ], [ 12, %bb.dl ], [ 16, %bb.do ], [ 17, %bb.dr ], [ 18, %bb.du ], [ 18, %bb.dt ]
  %i.agb = getelementptr inbounds nuw i8, ptr %.sink17.i43.i.sink312, i64 8
  store i32 2, ptr %i.agb, align 8, !tbaa !58
  %i.agc = getelementptr inbounds nuw i8, ptr %.sink17.i43.i.sink312, i64 12
  store i8 0, ptr %i.agc, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle17PrimitiveTypeNodeE, i64 16), ptr %.sink17.i43.i.sink312, align 8, !tbaa !20
  %i.agd = getelementptr inbounds nuw i8, ptr %.sink17.i43.i.sink312, i64 16
  store i32 %.sink306, ptr %i.agd, align 8, !tbaa !111
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread

_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread: ; preds = %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread.sink.split, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit
  %.0.i60236 = phi ptr [ %.0.i60, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit ], [ %.sink17.i43.i.sink312, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread.sink.split ] ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agf = load i8, ptr %i.age, align 8, !tbaa !28, !range !51, !noundef !52
  %i.agg = trunc nuw i8 %i.agf to i1
  br i1 %i.agg, label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread238, label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit: ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit, %bb.bz, %_ZN10StringView12consumeFrontEc.exit.i145, %_ZN10StringView12consumeFrontES_.exit114.thread, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90, %bb.au, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit71, %bb.aj, %bb.t, %bb.bv, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread
  %.037 = phi ptr [ %.0.i60236, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread ], [ %.sink19.i150, %bb.bz ], [ %.sink14.i, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit71 ], [ %.sink14.i104, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90 ], [ %i.qx, %bb.bv ], [ %.sink19.i150, %_ZN10StringView12consumeFrontEc.exit.i145 ], [ %.sink13.i, %_ZN10StringView12consumeFrontES_.exit114.thread ], [ %.0.i, %bb.t ], [ %.sink14.i, %bb.aj ], [ %.sink14.i104, %bb.au ], [ %i.ud, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.037, i64 12 ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 4, !tbaa !91
  %i.agj = or i8 %i.agi, %.0209
  store i8 %i.agj, ptr %i.agh, align 4, !tbaa !91
  br label %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread238

_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread238: ; preds = %bb.ee, %bb.dw, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread, %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit
  %.0 = phi ptr [ %.037, %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit ], [ %.0.i60236, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit.thread ], [ null, %_ZN12_GLOBAL__N_19Demangler21demanglePrimitiveTypeER10StringView.exit ], [ null, %bb.dw ], [ null, %bb.ee ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL18synthesizeVariableRN4llvh11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.c, 7                          ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 40                 ; 3 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !35
  %.pre = ptrtoint ptr %i.o to i64                ; 2 uses
  %.pre8 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi9 = phi i64 [ %i.f, %bb.b ], [ %.pre8, %bb.c ]
  %.pre-phi = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.t = phi i64 [ %i.k, %bb.b ], [ 4096, %bb.c ]
  %i.u = phi i64 [ %i.i, %bb.b ], [ 40, %bb.c ]
  %i.v = phi ptr [ %i.a, %bb.b ], [ %i.n, %bb.c ]
  %.sink14.i = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.y, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr %1, ptr %i.z, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = add i64 %.pre-phi9, %i.u
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %reass.sub.i.i.i = sub i64 %i.ac, %.pre-phi
  %i.ad = add i64 %reass.sub.i.i.i, 40            ; 2 uses
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !35
  %i.ae = icmp ult i64 %i.ad, %i.t
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = inttoptr i64 %i.ac to ptr
  br label %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ag = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !31
  %i.ai = load ptr, ptr %0, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4096, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.ag, ptr %0, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 40, ptr %i.al, align 8, !tbaa !35
  br label %_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit: ; preds = %bb.d, %bb.e
  %.sink13.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.af, %bb.d ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 8
  store i32 5, ptr %i.am, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i.i, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 24
  store ptr %2, ptr %i.ao, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 32
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !55
  %i.ap = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink13.i.i.i)
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !61
  ret ptr %.sink14.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler23demangleUntypedVariableERN4llvh11ms_demangle14ArenaAllocatorER10StringViewS5_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr %3, ptr %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i.i, 40               ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %1, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %1, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !35
  br label %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit

_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit: ; preds = %bb.b, %bb.c
  %.sink13.i.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.t, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr %3, ptr %i.v, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !55
  %i.w = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i.i)
  %i.x = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ae, %i.z
  %i.af = add i64 %reass.sub.i, 40                ; 2 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZL25synthesizeNamedIdentifierRN4llvh11ms_demangle14ArenaAllocatorE10StringView.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %1, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 4096, ptr %i.ao, align 8, !tbaa !33
  store ptr %i.ak, ptr %1, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 40, ptr %i.ap, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink14.i = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.at, align 8, !tbaa !115
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %rhsc = load i8, ptr %i.aw, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 56
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit, label %bb.f

_ZN10StringView12consumeFrontES_.exit:            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ay, ptr %2, align 8, !tbaa !55
  br label %bb.g

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.az, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %.sink14.i, %_ZN10StringView12consumeFrontES_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %1, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %1, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 40, ptr %i.s, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 24, ptr %i.t, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %2, align 8, !tbaa !40     ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 12 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !15
  %i.ab = icmp eq i8 %i.aa, 63
  br i1 %i.ab, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.d, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.w, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.w, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ] ; 9 uses
  %i.ae = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_27RttiBaseClassDescriptorNodeEJEEEPT_DpOT0_.exit ]
  %i.af = icmp eq ptr %i.ad, %i.y
  br i1 %i.af, label %.sink.split.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %isdigittmp.i.i.i = add nsw i32 %i.ah, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.e, label %.lr.ph.preheader.i.i

bb.e:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.ai = add nsw i32 %i.ah, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.at, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i32 [ %i.as, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.02557.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 64
  br i1 %i.ao, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i8 %i.an, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.ap, 16
  br i1 %or.cond.i.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.aq = shl i32 %.03656.i.i, 4
  %i.ar = zext nneg i8 %i.ap to i32
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.al
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.02557.i.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit, %bb.e
  %.pn.i = phi ptr [ %i.ad, %bb.e ], [ %i.au, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ]
  %.sroa.0.4.i.i = phi i32 [ %i.ai, %bb.e ], [ %.03656.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i.loopexit ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !55
  br i1 %i.ae, label %.sink.split.i, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.av = phi ptr [ %i.ad, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ]
  %.sroa.0.4.i9.ph.i = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i ], [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aw, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i, %.sink.split.i
  %i.ax = phi ptr [ %storemerge.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %i.av, %.sink.split.i ] ; 5 uses
  %.sroa.0.4.i9.i = phi i32 [ %.sroa.0.4.i.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i ], [ %.sroa.0.4.i9.ph.i, %.sink.split.i ]
  store i32 %.sroa.0.4.i9.i, ptr %i.v, align 8, !tbaa !164
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %_ZN10StringView12consumeFrontEc.exit.i.i18, label %_ZNK10StringView10startsWithEc.exit.i.i.i17

_ZNK10StringView10startsWithEc.exit.i.i.i17:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.ba = icmp eq i8 %i.az, 63
  br i1 %i.ba, label %bb.h, label %_ZN10StringView12consumeFrontEc.exit.i.i18

bb.h:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i18

_ZN10StringView12consumeFrontEc.exit.i.i18:       ; preds = %bb.h, %_ZNK10StringView10startsWithEc.exit.i.i.i17, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit
  %i.bc = phi ptr [ %i.bb, %bb.h ], [ %i.ax, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ %i.ax, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 7 uses
  %i.bd = phi i1 [ true, %bb.h ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i17 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit ] ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.y
  br i1 %i.be, label %.thread.i, label %_ZL15startsWithDigit10StringView.exit.i.i19

_ZL15startsWithDigit10StringView.exit.i.i19:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !15  ; 2 uses
  %i.bg = sext i8 %i.bf to i32
  %isdigittmp.i.i.i20 = add nsw i32 %i.bg, -48
  %isdigit.i.i.i21 = icmp ult i32 %isdigittmp.i.i.i20, 10
  br i1 %isdigit.i.i.i21, label %bb.i, label %.lr.ph.preheader.i.i22

bb.i:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %i.bh = sext i8 %i.bf to i64
  %i.bi = add nsw i64 %i.bh, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

.lr.ph.preheader.i.i22:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i19
  %i.bj = ptrtoint ptr %i.y to i64
  %i.bk = ptrtoint ptr %i.bc to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i22
  %.02557.i.i24 = phi i64 [ %i.bt, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 3 uses
  %.03656.i.i25 = phi i64 [ %i.bs, %bb.k ], [ 0, %.lr.ph.preheader.i.i22 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02557.i.i24
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15  ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 64
  br i1 %i.bo, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i23
  %i.bp = add i8 %i.bn, -65                       ; 2 uses
  %or.cond.i.i26 = icmp ult i8 %i.bp, 16
  br i1 %or.cond.i.i26, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bq = shl i64 %.03656.i.i25, 4
  %i.br = zext nneg i8 %i.bp to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = add nuw i64 %.02557.i.i24, 1            ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %i.bt, %i.bl
  br i1 %exitcond.not.i.i27, label %.thread.i, label %.lr.ph.i.i23, !llvm.loop !4

.thread.i:                                        ; preds = %bb.k, %bb.j, %_ZN10StringView12consumeFrontEc.exit.i.i18
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bu, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit: ; preds = %.lr.ph.i.i23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02557.i.i24
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit, %bb.i
  %.pn.i30 = phi ptr [ %i.bc, %bb.i ], [ %i.bv, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ]
  %.sroa.0.4.i.i31 = phi i64 [ %i.bi, %bb.i ], [ %.03656.i.i25, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i29.loopexit ] ; 4 uses
  %storemerge.i32 = getelementptr inbounds nuw i8, ptr %.pn.i30, i64 1 ; 4 uses
  store ptr %storemerge.i32, ptr %2, align 8, !tbaa !55
  %i.bw = icmp slt i64 %.sroa.0.4.i.i31, 0
  br i1 %i.bw, label %.split.i, label %bb.l
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19Demangler35demangleRttiBaseClassDescriptorNodeERN4llvh11ms_demangle14ArenaAllocatorER10StringView:bb.a
  %i.cp = sub i64 %i.cn, %i.co
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.q, %.lr.ph.preheader.i.i38
  %.02557.i.i40 = phi i64 [ %i.cx, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 3 uses
  %.03656.i.i41 = phi i32 [ %i.cw, %bb.q ], [ 0, %.lr.ph.preheader.i.i38 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i40
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 64
  br i1 %i.cs, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i39
  %i.ct = add i8 %i.cr, -65                       ; 2 uses
  %or.cond.i.i42 = icmp ult i8 %i.ct, 16
  br i1 %or.cond.i.i42, label %bb.q, label %.sink.split.i43

bb.q:                                             ; preds = %bb.p
  %i.cu = shl i32 %.03656.i.i41, 4
  %i.cv = zext nneg i8 %i.ct to i32
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = add nuw i64 %.02557.i.i40, 1            ; 2 uses
  %exitcond.not.i.i46 = icmp eq i64 %i.cx, %i.cp
  br i1 %exitcond.not.i.i46, label %.sink.split.i43, label %.lr.ph.i.i39, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit: ; preds = %.lr.ph.i.i39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.02557.i.i40
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit, %bb.o
  %.pn.i49 = phi ptr [ %i.ch, %bb.o ], [ %i.cy, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ]
  %.sroa.0.4.i.i50 = phi i32 [ %i.cm, %bb.o ], [ %.03656.i.i41, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48.loopexit ] ; 2 uses
  %storemerge.i51 = getelementptr inbounds nuw i8, ptr %.pn.i49, i64 1 ; 3 uses
  store ptr %storemerge.i51, ptr %2, align 8, !tbaa !55
  br i1 %i.ci, label %.sink.split.i43, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

.sink.split.i43:                                  ; preds = %bb.q, %bb.p, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %_ZN10StringView12consumeFrontEc.exit.i.i34
  %i.cz = phi ptr [ %i.ch, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ]
  %.sroa.0.4.i9.ph.i44 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i34 ], [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.da, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48, %.sink.split.i43
  %i.db = phi ptr [ %storemerge.i51, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %i.cz, %.sink.split.i43 ] ; 5 uses
  %.sroa.0.4.i9.i45 = phi i32 [ %.sroa.0.4.i.i50, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i48 ], [ %.sroa.0.4.i9.ph.i44, %.sink.split.i43 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store i32 %.sroa.0.4.i9.i45, ptr %i.dc, align 8, !tbaa !166
  %i.dd = icmp eq ptr %i.db, %i.y
  br i1 %i.dd, label %_ZN10StringView12consumeFrontEc.exit.i.i54, label %_ZNK10StringView10startsWithEc.exit.i.i.i53

_ZNK10StringView10startsWithEc.exit.i.i.i53:      ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.de = load i8, ptr %i.db, align 1, !tbaa !15
  %i.df = icmp eq i8 %i.de, 63
  br i1 %i.df, label %bb.r, label %_ZN10StringView12consumeFrontEc.exit.i.i54

bb.r:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.dg, ptr %2, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i54

_ZN10StringView12consumeFrontEc.exit.i.i54:       ; preds = %bb.r, %_ZNK10StringView10startsWithEc.exit.i.i.i53, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52
  %i.dh = phi ptr [ %i.dg, %bb.r ], [ %i.db, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ %i.db, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ] ; 6 uses
  %i.di = phi i1 [ true, %bb.r ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i.i53 ], [ false, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit52 ]
  %i.dj = icmp eq ptr %i.dh, %i.y
  br i1 %i.dj, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZL15startsWithDigit10StringView.exit.i.i55

_ZL15startsWithDigit10StringView.exit.i.i55:      ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i54
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dl = sext i8 %i.dk to i32                    ; 2 uses
  %isdigittmp.i.i.i56 = add nsw i32 %i.dl, -48
  %isdigit.i.i.i57 = icmp ult i32 %isdigittmp.i.i.i56, 10
  br i1 %isdigit.i.i.i57, label %bb.s, label %.lr.ph.preheader.i.i58

bb.s:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dm = add nsw i32 %i.dl, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

.lr.ph.preheader.i.i58:                           ; preds = %_ZL15startsWithDigit10StringView.exit.i.i55
  %i.dn = ptrtoint ptr %i.y to i64
  %i.do = ptrtoint ptr %i.dh to i64
  %i.dp = sub i64 %i.dn, %i.do
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %bb.u, %.lr.ph.preheader.i.i58
  %.02557.i.i60 = phi i64 [ %i.dx, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 3 uses
  %.03656.i.i61 = phi i32 [ %i.dw, %bb.u ], [ 0, %.lr.ph.preheader.i.i58 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.02557.i.i60
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15  ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 64
  br i1 %i.ds, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i59
  %i.dt = add i8 %i.dr, -65                       ; 2 uses
  %or.cond.i.i62 = icmp ult i8 %i.dt, 16
  br i1 %or.cond.i.i62, label %bb.u, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread

bb.u:                                             ; preds = %bb.t
  %i.du = shl i32 %.03656.i.i61, 4
  %i.dv = zext nneg i8 %i.dt to i32
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = add nuw i64 %.02557.i.i60, 1            ; 2 uses
  %exitcond.not.i.i66 = icmp eq i64 %i.dx, %i.dp
  br i1 %exitcond.not.i.i66, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %.lr.ph.i.i59, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit: ; preds = %.lr.ph.i.i59
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.02557.i.i60
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit, %bb.s
  %.pn.i69 = phi ptr [ %i.dh, %bb.s ], [ %i.dy, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ]
  %.sroa.0.4.i.i70 = phi i32 [ %i.dm, %bb.s ], [ %.03656.i.i61, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68.loopexit ] ; 2 uses
  %storemerge.i71 = getelementptr inbounds nuw i8, ptr %.pn.i69, i64 1
  store ptr %storemerge.i71, ptr %2, align 8, !tbaa !55
  br i1 %i.di, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, label %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread: ; preds = %bb.t, %bb.u, %_ZN10StringView12consumeFrontEc.exit.i.i54, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.sroa.0.4.i9.ph.i64 = phi i32 [ 0, %_ZN10StringView12consumeFrontEc.exit.i.i54 ], [ %.sroa.0.4.i.i70, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68 ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dz, align 8, !tbaa !28
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i9.ph.i64, ptr %i.ea, align 4, !tbaa !167
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !28, !range !51
  %i.eb = trunc nuw i8 %.pre to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 36
  store i32 %.sroa.0.4.i.i70, ptr %i.ec, align 4, !tbaa !167
  br i1 %i.eb, label %_ZN10StringView12consumeFrontEc.exit, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %i.ed = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !31
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !35
  %i.ei = add i64 %i.ef, 7
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = and i64 %i.ej, -8                       ; 2 uses
  %reass.sub.i73 = sub i64 %i.ek, %i.ef
  %i.el = add i64 %reass.sub.i73, 40              ; 2 uses
  store i64 %i.el, ptr %i.eg, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !33
  %i.eo = icmp ult i64 %i.el, %i.en
  br i1 %i.eo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ep = inttoptr i64 %i.ek to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.x:                                             ; preds = %bb.v
  %i.eq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.er = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !31
  %i.es = load ptr, ptr %1, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.es, ptr %i.et, align 8, !tbaa !32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 4096, ptr %i.eu, align 8, !tbaa !33
  store ptr %i.eq, ptr %1, align 8, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 40, ptr %i.ev, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.w, %bb.x
  %.sink14.i = phi ptr [ %i.er, %bb.x ], [ %i.ep, %bb.w ] ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.ew, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16 ; 2 uses
  store ptr null, ptr %i.ex, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24
  store i8 0, ptr %i.ey, align 8, !tbaa !114
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr null, ptr %i.ez, align 8, !tbaa !115
  %i.fa = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.sink13.i)
  store ptr %i.fa, ptr %i.ex, align 8, !tbaa !61
  %i.fb = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %i.fc = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.fe = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.ff = icmp eq i8 %i.fe, 56
  br i1 %i.ff, label %bb.y, label %_ZN10StringView12consumeFrontEc.exit

bb.y:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.fg, ptr %2, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread, %bb.y, %_ZNK10StringView10startsWithEc.exit.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72
  %.0 = phi ptr [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72 ], [ %.sink14.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit ], [ %.sink14.i, %_ZNK10StringView10startsWithEc.exit.i ], [ %.sink14.i, %bb.y ], [ null, %_ZN12_GLOBAL__N_19Demangler16demangleUnsignedER10StringView.exit72.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = add i64 %i.e, 7
  %i.i = add i64 %i.h, %i.g
  %i.j = and i64 %i.i, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.j, %i.e
  %i.k = add i64 %reass.sub.i, 48                 ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !31
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4096, ptr %i.t, align 8, !tbaa !33
  store ptr %i.p, ptr %i.b, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 48, ptr %i.u, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 10, ptr %i.v, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle29DynamicStructorIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 40
  store i8 %i.a, ptr %i.y, align 8, !tbaa !170
  %i.z = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ae = icmp eq i8 %i.ad, 63
  br i1 %i.ae, label %bb.d, label %_ZN10StringView12consumeFrontEc.exit

bb.d:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithEc.exit.i, %bb.d
  %i.ag = phi i1 [ true, %bb.d ], [ false, %_ZNK10StringView10startsWithEc.exit.i ], [ false, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_29DynamicStructorIdentifierNodeEJEEEPT_DpOT0_.exit ] ; 2 uses
  %i.ah = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !28, !range !51, !noundef !52
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.al = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ah), !inline_history !2 ; 3 uses
  %i.am = load i8, ptr %i.ai, align 8, !tbaa !28, !range !51, !noundef !52
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i32 %i.ap, 11
  br i1 %i.aq, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !73
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !78
  br label %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit, %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ null, %_ZN10StringView12consumeFrontEc.exit ], [ null, %bb.e ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !15
  %.off = add i8 %i.bc, -48
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %1, align 8, !tbaa !40
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !15  ; 2 uses
  %switch.tableidx.i = add i8 %i.be, -48
  %i.bf = icmp ult i8 %switch.tableidx.i, 5
  br i1 %i.bf, label %switch.lookup.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ai, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

switch.lookup.i:                                  ; preds = %bb.h
  %switch.offset.i = add nsw i8 %i.be, -47
  br label %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit: ; preds = %bb.i, %switch.lookup.i
  %.0.i40 = phi i8 [ 0, %bb.i ], [ %switch.offset.i, %switch.lookup.i ]
  %i.bg = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %.0.i40), !inline_history !3
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler32demangleFullyQualifiedSymbolNameER10StringView.exit
  %i.bh = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !3 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !73
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !75 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !58
  %i.bt = icmp eq i32 %i.bs, 9
  br i1 %i.bt, label %bb.k, label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit

_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.bh, %bb.j ], [ %i.bg, %_ZN12_GLOBAL__N_19Demangler28demangleVariableStorageClassER10StringView.exit ], [ %i.bh, %bb.k ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr %.1.i, ptr %i.bz, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !58
  %i.cc = icmp eq i32 %i.cb, 27
  br i1 %i.cc, label %.peel.begin, label %bb.m

.peel.begin:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  store ptr %.0.i, ptr %i.x, align 8, !tbaa !171
  %i.cd = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !tbaa !55 ; 4 uses
  %i.ce = icmp eq ptr %.promoted, %i.cd
  br i1 %i.ce, label %.loopexit, label %_ZNK10StringView10startsWithEc.exit.i38.peel

_ZNK10StringView10startsWithEc.exit.i38.peel:     ; preds = %.peel.begin
  %i.cf = load i8, ptr %.promoted, align 1, !tbaa !15
  %i.cg = icmp eq i8 %i.cf, 64
  br i1 %i.cg, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i38.peel
  %i.ch = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.ch, ptr %1, align 8, !tbaa !55
  br i1 %i.ag, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %bb.l
  %i.ci = icmp eq ptr %i.ch, %i.cd
  br i1 %i.ci, label %.loopexit, label %_ZNK10StringView10startsWithEc.exit.i38

_ZNK10StringView10startsWithEc.exit.i38:          ; preds = %.peel.next
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.ck = icmp eq i8 %i.cj, 64
  br i1 %i.ck, label %.critedge.loopexit, label %.loopexit

.loopexit:                                        ; preds = %_ZNK10StringView10startsWithEc.exit.i38, %.peel.next, %_ZNK10StringView10startsWithEc.exit.i38.peel, %.peel.begin
  store i8 1, ptr %i.ai, align 8, !tbaa !28
  br label %.critedge37

.critedge.loopexit:                               ; preds = %_ZNK10StringView10startsWithEc.exit.i38
  %i.cl = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  store ptr %i.cl, ptr %1, align 8, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
  %i.cm = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.cn = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %.sink13.i)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
end_hunk_3
begin_hunk_4_@_ZL17outputEscapedCharR12OutputStreamj:bb.a
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i, %bb.ak
  %i.ex = phi i64 [ %i.eq, %bb.ak ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.ak ], [ %i.ev, %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i32 808482908, ptr %i.ez, align 1
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.fb = add i64 %i.fa, 4
  store i64 %i.fb, ptr %i.ep, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.i ], [ 14, %bb.an ] ; 3 uses
  %.01226.i = phi i32 [ %i.fq, %.preheader.i ], [ %1, %bb.an ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fd = trunc i32 %.01226.i to i8               ; 3 uses
  %i.fe = and i8 %i.fd, 15                        ; 3 uses
  %i.ff = icmp samesign ult i8 %i.fe, 10
  %i.fg = or disjoint i8 %i.fe, 48
  %i.fh = add nuw nsw i8 %i.fe, 55
  %i.fi = select i1 %i.ff, i8 %i.fg, i8 %i.fh
  store i8 %i.fi, ptr %i.fc, align 2, !tbaa !15
  %i.fj = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %i.fl = lshr i8 %i.fd, 4                        ; 2 uses
  %i.fm = icmp ult i8 %i.fd, -96
  %i.fn = or disjoint i8 %i.fl, 48
  %i.fo = add nuw nsw i8 %i.fl, 55
  %i.fp = select i1 %i.fm, i8 %i.fn, i8 %i.fo
  store i8 %i.fp, ptr %i.fk, align 1, !tbaa !15
  %i.fq = lshr i32 %.01226.i, 8                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fc, i64 -2
  store i8 120, ptr %i.fr, align 2, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fc, i64 -3
  store i8 92, ptr %i.fs, align 1, !tbaa !15
  %.not.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i, label %bb.ao, label %.preheader.i, !llvm.loop !173

bb.ao:                                            ; preds = %.preheader.i
  %i.ft = shl i64 %indvars.iv.next, 32
  %i.fu = ashr exact i64 %i.ft, 32
  %i.fv = getelementptr i8, ptr %i.a, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 1      ; 2 uses
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #21 ; 4 uses
  %i.fy = icmp samesign eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZN12OutputStreamlsE10StringView.exit21.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !43 ; 2 uses
  %i.gb = add i64 %i.ga, %i.fx                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i15.i = icmp ult i64 %i.gb, %i.gd
  %.pre.i.i16.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i15.i, label %_ZN12OutputStream4growEm.exit.i.i20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = shl i64 %i.gd, 1
  %spec.store.select.i.i.i17.i = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gb) ; 2 uses
  store i64 %spec.store.select.i.i.i17.i, ptr %i.gc, align 8, !tbaa !45
  %i.gf = tail call ptr @realloc(ptr noundef %.pre.i.i16.i, i64 noundef %spec.store.select.i.i.i17.i) #24 ; 3 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !44
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ar, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i: ; preds = %bb.aq
  %.pre6.i.i19.i = load i64, ptr %i.fz, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i20.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i20.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i, %bb.ap
  %i.gh = phi i64 [ %i.ga, %bb.ap ], [ %.pre6.i.i19.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gi = phi ptr [ %.pre.i.i16.i, %bb.ap ], [ %i.gf, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr nonnull align 1 %i.fw, i64 %i.fx, i1 false)
  %i.gk = load i64, ptr %i.fz, align 8, !tbaa !43
  %i.gl = add i64 %i.gk, %i.fx
  store i64 %i.gl, ptr %i.fz, align 8, !tbaa !43
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.e, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !45
  %i.g = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #24 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !44
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.b
  %.pre1.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %.pre2.i = add i64 %.pre1.i, 1
  br label %_ZN12OutputStreampLEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreampLEc.exit:                       ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.c, %bb.a ]
  %i.i = phi i64 [ %.pre1.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ], [ %.pre.i, %bb.a ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 %1, ptr %i.k, align 1, !tbaa !15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr %1, ptr %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = add i64 %i.i, %i.e                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4096) ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.speculated.i, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.e, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit

_ZN4llvh11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) %1) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.d
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.v, 1
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i64 0, ptr %i.u, align 8
  store ptr %2, ptr %.sink.i, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %.020 = phi ptr [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %.sink.i22, %bb.ar ] ; 2 uses
  %.019 = phi i64 [ 1, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ], [ %i.ah, %bb.ar ] ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.ae = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %_ZNK10StringView10startsWithES_.exit.i

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %bb.e

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.d
  %rhsc = load i8, ptr %i.ae, align 1
  %.not9.i.i.i.i.i.i = icmp eq i8 %rhsc, 64
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 4 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.as, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZNK10StringView10startsWithES_.exit.i
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ %.pre111, %_ZNK10StringView10startsWithES_.exit.i ] ; 3 uses
  %i.ah = add i64 %.019, 1
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.am = add i64 %i.aj, 7
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %reass.sub.i21 = sub i64 %i.ao, %i.aj
  %i.ap = add i64 %reass.sub.i21, 16              ; 2 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

bb.g:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.av = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 4096, ptr %i.ay, align 8, !tbaa !33
  store ptr %i.au, ptr %i.a, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 16, ptr %i.az, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23: ; preds = %bb.f, %bb.g
  %.sink.i22 = phi ptr [ %i.av, %bb.g ], [ %i.at, %bb.f ] ; 4 uses
  store i64 0, ptr %.sink.i22, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink.i22, i64 8
  store ptr %.020, ptr %i.ba, align 8, !tbaa !107
  %i.bb = load ptr, ptr %1, align 8, !tbaa !40    ; 9 uses
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.critedge, label %_ZL15startsWithDigit10StringView.exit

.critedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %.thread

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit23
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !15  ; 3 uses
  %i.bf = sext i8 %i.be to i32
  %isdigittmp.i = add nsw i32 %i.bf, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bg = sext i8 %i.be to i64
  %i.bh = add nsw i64 %i.bg, -48                  ; 2 uses
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !48
  %.not.i41 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bj, ptr %1, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.bm = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bb to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %_ZNK10StringView10startsWithEc.exit.i.i26, label %_ZNK10StringView10startsWithES_.exit40

_ZNK10StringView10startsWithES_.exit40:           ; preds = %bb.k
  %i.bq = load i16, ptr %i.bb, align 1
  %i.br = icmp ne i16 9279, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.bs, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZNK10StringView10startsWithES_.exit40.thread, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit40.thread:    ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bt = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !174
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit40
  %i.bu = load i16, ptr %i.bb, align 1
  %i.bv = icmp ne i16 16703, %i.bu
  %i.bw = zext i1 %i.bv to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN10StringView12consumeFrontES_.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i26

_ZN10StringView12consumeFrontES_.exit.i:          ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bx, ptr %1, align 8, !tbaa !55
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.cd = add i64 %i.ca, 7
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = and i64 %i.ce, -8                       ; 2 uses
  %reass.sub.i.i27 = sub i64 %i.cf, %i.ca
  %i.cg = add i64 %reass.sub.i.i27, 40            ; 2 uses
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !33
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.ck = inttoptr i64 %i.cf to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i28

bb.m:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit.i
  %i.cl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.cm = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !31
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !32
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE:bb.a
  %.pre.i.i25.i = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i24.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN12OutputStreamlsEc.exit23.i
  %i.hl = shl i64 %i.hk, 1
  %spec.store.select.i.i.i26.i = call i64 @llvm.umax.i64(i64 %i.hl, i64 %i.hj) ; 2 uses
  store i64 %spec.store.select.i.i.i26.i, ptr %i.aa, align 8, !tbaa !45
  %i.hm = call ptr @realloc(ptr noundef %.pre.i.i25.i, i64 noundef %spec.store.select.i.i.i26.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.hm, ptr %3, align 8, !tbaa !44
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.al, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i: ; preds = %bb.ak
  %.pre6.i.i.i = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStream4growEm.exit.i.i.i:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i, %_ZN12OutputStreamlsEc.exit23.i
  %i.ho = phi i64 [ %i.hi, %_ZN12OutputStreamlsEc.exit23.i ], [ %.pre6.i.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.hp = phi ptr [ %.pre.i.i25.i, %_ZN12OutputStreamlsEc.exit23.i ], [ %i.hm, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hq, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false)
  %i.hr = load i64, ptr %i.z, align 8, !tbaa !43
  %i.hs = add i64 %i.hr, 3
  store i64 %i.hs, ptr %i.z, align 8, !tbaa !43
  call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sroa.0.4.i.i, i1 noundef zeroext false), !inline_history !176
  %i.ht = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.hu = add i64 %i.ht, 1                        ; 2 uses
  %i.hv = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i28.i = icmp ult i64 %i.hu, %i.hv
  %.pre.i.i29.i = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i28.i, label %_ZN12OutputStream4growEm.exit.i.i33.i, label %bb.am

bb.am:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i.i
  %i.hw = shl i64 %i.hv, 1
  %spec.store.select.i.i.i30.i = call i64 @llvm.umax.i64(i64 %i.hw, i64 %i.hu) ; 2 uses
  store i64 %spec.store.select.i.i.i30.i, ptr %i.aa, align 8, !tbaa !45
  %i.hx = call ptr @realloc(ptr noundef %.pre.i.i29.i, i64 noundef %spec.store.select.i.i.i30.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.hx, ptr %3, align 8, !tbaa !44
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.an, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i: ; preds = %bb.am
  %.pre6.i.i32.i = load i64, ptr %i.z, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i33.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStream4growEm.exit.i.i33.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i, %_ZN12OutputStream4growEm.exit.i.i.i
  %i.hz = phi i64 [ %i.ht, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %.pre6.i.i32.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.ia = phi ptr [ %.pre.i.i29.i, %_ZN12OutputStream4growEm.exit.i.i.i ], [ %i.hx, %._ZN12OutputStream4growEm.exit_crit_edge.i.i31.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hz
  store i8 39, ptr %i.ib, align 1
  %i.ic = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.id = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.id, ptr %i.z, align 8, !tbaa !43
  %i.ie = add i64 %i.ic, 2                        ; 3 uses
  %i.if = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i35.i = icmp ult i64 %i.ie, %i.if
  %.pre.i.i36.i = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i35.i, label %_ZN12OutputStreamlsEc.exit42.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN12OutputStream4growEm.exit.i.i33.i
  %i.ig = shl i64 %i.if, 1
  %spec.store.select.i.i.i37.i = call i64 @llvm.umax.i64(i64 %i.ig, i64 %i.ie) ; 2 uses
  store i64 %spec.store.select.i.i.i37.i, ptr %i.aa, align 8, !tbaa !45
  %i.ih = call ptr @realloc(ptr noundef %.pre.i.i36.i, i64 noundef %spec.store.select.i.i.i37.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.ih, ptr %3, align 8, !tbaa !44
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.ap, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i: ; preds = %bb.ao
  %.pre1.i.i39.i = load i64, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i40.i = add i64 %.pre1.i.i39.i, 1
  br label %_ZN12OutputStreamlsEc.exit42.i

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit42.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i, %_ZN12OutputStream4growEm.exit.i.i33.i
  %.pre-phi.i.i41.i = phi i64 [ %.pre2.i.i40.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.ie, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ij = phi i64 [ %.pre1.i.i39.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %i.id, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  %i.ik = phi ptr [ %i.ih, %._ZN12OutputStream4growEm.exit_crit_edge.i.i38.i ], [ %.pre.i.i36.i, %_ZN12OutputStream4growEm.exit.i.i33.i ]
  store i64 %.pre-phi.i.i41.i, ptr %i.z, align 8, !tbaa !43
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  store i8 0, ptr %i.il, align 1, !tbaa !15
  %i.im = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.in = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.im) #21, !inline_history !176 ; 2 uses
  %i.io = add i64 %i.in, 1                        ; 3 uses
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !35 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.is
  %i.iu = add i64 %i.is, %i.io                    ; 2 uses
  store i64 %i.iu, ptr %i.ir, align 8, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !33
  %i.ix = icmp ugt i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

bb.aq:                                            ; preds = %_ZN12OutputStreamlsEc.exit42.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.io, i64 4096) ; 2 uses
  %i.iy = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !176 ; 5 uses
  %i.iz = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i.i) #20, !inline_history !176 ; 2 uses
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !31
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 %.sroa.speculated.i.i.i, ptr %i.jc, align 8, !tbaa !33
  store ptr %i.iy, ptr %i.a, align 8, !tbaa !34
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.io, ptr %i.jd, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i: ; preds = %bb.aq, %_ZN12OutputStreamlsEc.exit42.i
  %.0.i.i.i = phi ptr [ %i.iz, %bb.aq ], [ %i.it, %_ZN12OutputStreamlsEc.exit42.i ] ; 3 uses
  %i.je = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %i.im) #19, !inline_history !176 ; 0 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.in
  store ptr %.0.i.i.i, ptr %i.fg, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55
  call void @free(ptr noundef nonnull %i.im) #19, !inline_history !176
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZL27startsWithLocalScopePattern10StringView.exit.thread: ; preds = %.lr.ph.i, %bb.s, %bb.u, %bb.t, %bb.q, %bb.r, %_ZNK10StringView4findEcm.exit.i, %bb.p, %_ZNK10StringView10startsWithEc.exit.i.i26
  %i.jg = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit

_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i, %_ZN10StringView12consumeFrontEc.exit15.i, %bb.o, %_ZNK10StringView4findEcm.exit.thread.i, %bb.j, %bb.i, %_ZNK10StringView10startsWithES_.exit40.thread, %_ZL27startsWithLocalScopePattern10StringView.exit.thread
  %.0.i = phi ptr [ %i.jg, %_ZL27startsWithLocalScopePattern10StringView.exit.thread ], [ %i.bt, %_ZNK10StringView10startsWithES_.exit40.thread ], [ %i.bl, %bb.j ], [ %.sink13.i.i29, %bb.o ], [ null, %bb.i ], [ null, %_ZNK10StringView4findEcm.exit.thread.i ], [ %.sink13.i.i, %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit.i ], [ null, %_ZN10StringView12consumeFrontEc.exit15.i ]
  %i.jh = load i8, ptr %i.w, align 8, !tbaa !28, !range !51, !noundef !52
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit
  store ptr %.0.i, ptr %.sink.i22, align 8, !tbaa !106
  br label %bb.d

bb.as:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.jj, ptr %1, align 8, !tbaa !55
  %i.jk = load ptr, ptr %.pre111, align 8, !tbaa !31
  %i.jl = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre111, i64 8 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !35
  %i.jo = add i64 %i.jl, 7
  %i.jp = add i64 %i.jo, %i.jn
  %i.jq = and i64 %i.jp, -8                       ; 2 uses
  %reass.sub.i24 = sub i64 %i.jq, %i.jl
  %i.jr = add i64 %reass.sub.i24, 24              ; 2 uses
  store i64 %i.jr, ptr %i.jm, align 8, !tbaa !35
  %i.js = getelementptr inbounds nuw i8, ptr %.pre111, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !33
  %i.ju = icmp ult i64 %i.jr, %i.jt
  br i1 %i.ju, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jv = inttoptr i64 %i.jq to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

bb.au:                                            ; preds = %bb.as
  %i.jw = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.jx = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !31
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i64 4096, ptr %i.ka, align 8, !tbaa !33
  store ptr %i.jw, ptr %i.a, align 8, !tbaa !34
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i64 24, ptr %i.kb, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.at, %bb.au
  %.sink11.i = phi ptr [ %i.jx, %bb.au ], [ %i.jv, %bb.at ] ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 20, ptr %i.kc, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle17QualifiedNameNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store ptr null, ptr %i.kd, align 8, !tbaa !68
  %i.ke = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.020, i64 noundef %.019)
  store ptr %i.ke, ptr %i.kd, align 8, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, %.critedge, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit
  %.3 = phi ptr [ null, %.critedge ], [ %.sink11.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17QualifiedNameNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !55 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload.i, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !177
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.u = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread9
  %.0.i = phi ptr [ %i.u, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.l, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28, !range !51, !noundef !52
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.0.i)
  %i.z = load i8, ptr %i.v, align 8, !tbaa !28, !range !51, !noundef !52
  %i.aa = trunc nuw i8 %i.z to i1
  %. = select i1 %i.aa, ptr null, ptr %i.y
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit, %bb.e
  %.1 = phi ptr [ %., %bb.e ], [ null, %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 32                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink11.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 19, ptr %i.t, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle13NodeArrayNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 24
  store i64 %2, ptr %i.v, align 8, !tbaa !73
  %i.w = shl i64 %2, 3                            ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %i.af = sub i64 %i.w, %i.z
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.ak = inttoptr i64 %i.ae to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13NodeArrayNodeEJEEEPT_DpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %0, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 4096, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.al, ptr %0, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.w, ptr %i.aq, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit

_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.am, %bb.e ], [ %i.ak, %bb.d ] ; 7 uses
  %i.ar = icmp ugt i64 %2, 2305843009213693951
  %i.as = select i1 %i.ar, i64 -1, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %i.as, i1 false)
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !72
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.at = icmp ult i64 %2, 4
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.015.epil = phi i64 [ %i.ay, %.lr.ph.epil ], [ %.015.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01314.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.01314.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.au = load ptr, ptr %.01314.epil, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015.epil
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %.01314.epil, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.ay = add nuw i64 %.015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !178

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4llvh11ms_demangle14ArenaAllocator10allocArrayIPNS0_4NodeEJEEEPT_m.exit
  ret ptr %.sink11.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.015 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 5 uses
  %.01314 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.az = load ptr, ptr %.01314, align 8, !tbaa !106
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %.01314, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !107 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !75
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %.015
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !107 ; 2 uses
  %i.bs = add nuw i64 %.015, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !179
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 1, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.0 = alloca [10 x ptr], align 8           ; 6 uses
  %.sroa.7 = alloca [10 x ptr], align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %_ZN10StringView12consumeFrontES_.exit, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.a
  %i.k = load i16, ptr %i.f, align 1
  %i.l = icmp ne i16 9279, %i.k
  %i.m = zext i1 %i.l to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread.i, label %_ZN10StringView12consumeFrontES_.exit

_ZNK10StringView10startsWithES_.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.n, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontES_.exit

_ZN10StringView12consumeFrontES_.exit:            ; preds = %bb.a, %_ZNK10StringView10startsWithES_.exit.i, %_ZNK10StringView10startsWithES_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !tbaa.struct !183
  %.sroa.6.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %.sroa.6.0.copyload87 = load i64, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53 ; 3 uses
  %.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, i64 80, i1 false), !tbaa.struct !184
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.sroa.795.0.copyload97 = load i64, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53 ; 3 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  store i64 0, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  %i.p = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28, !range !51, !noundef !52
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.bk
  %.081.i.ph = phi i64 [ %i.be, %bb.bk ], [ 0, %bb.b ] ; 2 uses
  %.079.i.ph = phi ptr [ %i.pj, %bb.bk ], [ %i.a, %bb.b ]
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %.promoted = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %_ZN10StringView12consumeFrontES_.exit84, %.lr.ph
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bd, %_ZN10StringView12consumeFrontES_.exit84 ] ; 11 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_ZNK10StringView10startsWithEc.exit85.thread, label %_ZNK10StringView10startsWithEc.exit85

_ZNK10StringView10startsWithEc.exit85:            ; preds = %bb.c
  %i.y = load i8, ptr %i.w, align 1, !tbaa !15
  %i.z = icmp eq i8 %i.y, 64
  br i1 %i.z, label %_ZNK10StringView10startsWithEc.exit.i, label %_ZNK10StringView10startsWithEc.exit85.thread

_ZNK10StringView10startsWithEc.exit85.thread:     ; preds = %bb.c, %_ZNK10StringView10startsWithEc.exit85
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.v, %i.aa                     ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %.thread, label %_ZNK10StringView10startsWithES_.exit.i79

_ZNK10StringView10startsWithES_.exit.i79:         ; preds = %_ZNK10StringView10startsWithEc.exit85.thread
  %i.ad = load i16, ptr %i.w, align 1
  %i.ae = icmp ne i16 21284, %i.ad
  %i.af = zext i1 %i.ae to i32
  %.not9.i.i.i.i.i.i81 = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i.i.i.i81, label %_ZN10StringView12consumeFrontES_.exit84, label %bb.d

bb.d:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i79
  %i.ag = icmp eq i64 %i.ab, 2
  br i1 %i.ag, label %.thread, label %_ZNK10StringView10startsWithES_.exit.i72

_ZNK10StringView10startsWithES_.exit.i72:         ; preds = %bb.d
  %i.ah = load i16, ptr %i.w, align 1
  %i.ai = xor i16 9252, %i.ah
  %i.aj = getelementptr i8, ptr %i.w, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 86, %i.al
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.i.i.i.i.i74 = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.i.i.i.i.i74, label %_ZN10StringView12consumeFrontES_.exit84, label %bb.e

bb.e:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i72
  %i.aq = icmp ult i64 %i.ab, 4
  br i1 %i.aq, label %_ZNK10StringView10startsWithES_.exit.i58, label %_ZNK10StringView10startsWithES_.exit.i65

_ZNK10StringView10startsWithES_.exit.i65:         ; preds = %bb.e
  %i.ar = load i32, ptr %i.w, align 1
  %i.as = icmp ne i32 1445209124, %i.ar
  %i.at = zext i1 %i.as to i32
  %.not9.i.i.i.i.i.i67 = icmp eq i32 %i.at, 0
  br i1 %.not9.i.i.i.i.i.i67, label %_ZN10StringView12consumeFrontES_.exit84, label %_ZNK10StringView10startsWithES_.exit.i58

_ZNK10StringView10startsWithES_.exit.i58:         ; preds = %_ZNK10StringView10startsWithES_.exit.i65, %bb.e
  %i.au = load i16, ptr %i.w, align 1
  %i.av = xor i16 9252, %i.au
  %i.aw = getelementptr i8, ptr %i.w, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  %i.az = xor i16 90, %i.ay
  %i.ba = or i16 %i.av, %i.az
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not9.i.i.i.i.i.i60 = icmp eq i32 %i.bc, 0
  br i1 %.not9.i.i.i.i.i.i60, label %_ZN10StringView12consumeFrontES_.exit84, label %.thread

_ZN10StringView12consumeFrontES_.exit84:          ; preds = %_ZNK10StringView10startsWithES_.exit.i58, %_ZNK10StringView10startsWithES_.exit.i65, %_ZNK10StringView10startsWithES_.exit.i72, %_ZNK10StringView10startsWithES_.exit.i79
  %.sink207 = phi i64 [ 4, %_ZNK10StringView10startsWithES_.exit.i65 ], [ 3, %_ZNK10StringView10startsWithES_.exit.i72 ], [ 2, %_ZNK10StringView10startsWithES_.exit.i79 ], [ 3, %_ZNK10StringView10startsWithES_.exit.i58 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink207 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !55
  br label %bb.c

.thread:                                          ; preds = %_ZNK10StringView10startsWithEc.exit85.thread, %bb.d, %_ZNK10StringView10startsWithES_.exit.i58
  %i.be = add i64 %.081.i.ph, 1
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !34  ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = add i64 %i.bh, 7
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %reass.sub.i56 = sub i64 %i.bm, %i.bh
  %i.bn = add i64 %reass.sub.i56, 16              ; 2 uses
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.br = inttoptr i64 %i.bm to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %.thread
  %i.bs = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bt = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 4096, ptr %i.bw, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.t, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 16, ptr %i.bx, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.bt, %bb.g ], [ %i.br, %bb.f ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  store ptr %.sink.i, ptr %.079.i.ph, align 8, !tbaa !116
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !40    ; 23 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 3                   ; 2 uses
  br i1 %i.cd, label %bb.k, label %_ZNK10StringView10startsWithES_.exit.i50

_ZNK10StringView10startsWithES_.exit.i50:         ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %i.ce = load i16, ptr %i.bz, align 1
  %i.cf = xor i16 9252, %i.ce
  %i.cg = getelementptr i8, ptr %i.bz, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i16
  %i.cj = xor i16 89, %i.ci
  %i.ck = or i16 %i.cf, %i.cj
  %i.cl = icmp ne i16 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not9.i.i.i.i.i.i52 = icmp eq i32 %i.cm, 0
  br i1 %.not9.i.i.i.i.i.i52, label %bb.h, label %_ZNK10StringView10startsWithES_.exit.i43

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.cn, ptr %1, align 8, !tbaa !55
  %i.co = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !181
  store ptr %i.co, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

_ZNK10StringView10startsWithES_.exit.i43:         ; preds = %_ZNK10StringView10startsWithES_.exit.i50
  %i.cp = load i16, ptr %i.bz, align 1
  %i.cq = xor i16 9252, %i.cp
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior:bb.a
bb.bf:                                            ; preds = %bb.be, %.split.i293
  %i.ov = sub nsw i64 0, %.sroa.0.4.i.i291
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294: ; preds = %.thread.i286, %.split.i293, %bb.be, %bb.bf
  %i.ow = phi i64 [ %i.ov, %bb.bf ], [ %.sroa.0.4.i.i291, %bb.be ], [ 0, %.thread.i286 ], [ %.sroa.0.4.i.i291, %.split.i293 ]
  %i.ox = add nsw i32 %i.mp, 2
  store i32 %i.ox, ptr %i.mb, align 8, !tbaa !189
  %i.oy = sext i32 %i.nu to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.oy
  store i64 %i.ow, ptr %i.oz, align 8, !tbaa !53
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.q, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit294, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit256
  store i8 1, ptr %i.md, align 4, !tbaa !191
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK10StringView10startsWithES_.exit253
  %i.pa = load i16, ptr %i.bz, align 1
  %i.pb = icmp ne i16 12324, %i.pa
  %i.pc = zext i1 %i.pb to i32
  %.not9.i.i.i.i.i.i297 = icmp eq i32 %i.pc, 0
  br i1 %.not9.i.i.i.i.i.i297, label %bb.bj, label %.thread311

bb.bj:                                            ; preds = %bb.bi
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.pd, ptr %1, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !53
  %i.pe = call fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !181 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.pe, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.pe, 1
  store i64 %.fca.0.extract.i, ptr %i.c, align 8, !tbaa !53
  store i8 %.fca.1.extract.i, ptr %i.b, align 1, !tbaa !117
  %i.pf = call noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !181
  store ptr %i.pf, ptr %.sink.i, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bk

.thread311:                                       ; preds = %bb.k, %bb.bi
  %i.pg = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !181
  store ptr %i.pg, ptr %.sink.i, align 8, !tbaa !106
  br label %bb.bk

bb.bk:                                            ; preds = %.thread311, %bb.bj, %bb.bh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_30TemplateParameterReferenceNodeEJEEEPT_DpOT0_.exit245, %bb.ak, %bb.j, %bb.i, %bb.h
  %i.ph = load i8, ptr %i.q, align 8, !tbaa !28, !range !51, !noundef !52
  %i.pi = trunc nuw i8 %i.ph to i1
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  br i1 %i.pi, label %.critedge418, label %.lr.ph, !llvm.loop !182

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZNK10StringView10startsWithEc.exit85
  %i.pk = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.pk, ptr %1, align 8, !tbaa !55
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.pl = call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.081.i.ph), !inline_history !181
  %.pre174.pre = load i8, ptr %i.q, align 8, !tbaa !28, !range !51
  %i.pm = trunc nuw i8 %.pre174.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br i1 %i.pm, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.po = and i8 %2, 1
  %.not = icmp eq i8 %i.po, 0
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.p)
  br label %bb.bn

.critedge:                                        ; preds = %_ZN10StringView12consumeFrontES_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br label %bb.bn

.critedge418:                                     ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.pp, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false)
  store i64 %.sroa.6.0.copyload87, ptr %.sroa.6.0..sroa_idx86, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  store i64 %.sroa.795.0.copyload97, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !53
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge418, %.critedge, %bb.bl, %bb.bm, %_ZNK10StringView10startsWithEc.exit.i
  %.0 = phi ptr [ null, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.p, %bb.bm ], [ %i.p, %bb.bl ], [ null, %.critedge ], [ null, %.critedge418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not1625.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not1625.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.h, 64
  br i1 %.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.026.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, label %.lr.ph.i, !llvm.loop !5

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.j, align 8, !tbaa !28
  br label %bb.f

_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit: ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.026.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %1, align 8, !tbaa !55
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.c, ptr nonnull %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !28, !range !51
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %i.t = add i64 %i.q, 7
  %i.u = add i64 %i.t, %i.s
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.v, %i.q
  %i.w = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = inttoptr i64 %i.v to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !31
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4096, ptr %i.af, align 8, !tbaa !33
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 40, ptr %i.ag, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink13.i = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  %.0 = phi ptr [ %.sink13.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit ], [ null, %_ZN12_GLOBAL__N_19Demangler20demangleSimpleStringER10StringViewb.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !55 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload ; 2 uses
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload to i64  ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread14, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread14

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 2)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread14:    ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  br i1 %i.a, label %_ZNK10StringView10startsWithEc.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZNK10StringView10startsWithEc.exit:              ; preds = %_ZNK10StringView10startsWithES_.exit.thread14
  %i.u = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15
  %i.v = icmp eq i8 %i.u, 63
  br i1 %i.v, label %bb.e, label %_ZNK10StringView10startsWithEc.exit.thread

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1 ; 5 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !55
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.m, %i.x
  %i.z = icmp ult i64 %i.y, 2
  br i1 %i.z, label %bb.g, label %_ZNK10StringView10startsWithES_.exit.i.i

_ZNK10StringView10startsWithES_.exit.i.i:         ; preds = %bb.e
  %i.aa = load i16, ptr %i.w, align 1
  %i.ab = icmp ne i16 24415, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  store ptr %i.ad, ptr %1, align 8, !tbaa !55
  %i.ae = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i.i, %bb.e
  %i.af = icmp eq ptr %.sroa.2.0.copyload, %i.w
  br i1 %i.af, label %bb.k, label %_ZNK10StringView10startsWithES_.exit.i10.i

_ZNK10StringView10startsWithES_.exit.i10.i:       ; preds = %bb.g
  %rhsc.i = load i8, ptr %i.w, align 1
  %.not9.i.i.i.i.i.i12.i = icmp eq i8 %rhsc.i, 95
  br i1 %.not9.i.i.i.i.i.i12.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  store ptr %i.ai, ptr %1, align 8, !tbaa !40
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond.i20.i.i = icmp ult i8 %i.ak, 10
  %.v.i21.i.i = select i1 %or.cond.i20.i.i, i64 -48, i64 -55
  %i.al = sext i8 %i.aj to i64
  %i.am = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Under, i64 %.v.i21.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %.0.i22.i.i = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35
  %i.at = add i64 %i.aq, 7
  %i.au = add i64 %i.at, %i.as
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %reass.sub.i23.i.i = sub i64 %i.av, %i.aq
  %i.aw = add i64 %reass.sub.i23.i.i, 32          ; 2 uses
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !33
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = inttoptr i64 %i.av to ptr
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bb = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bc = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 4096, ptr %i.bf, align 8, !tbaa !33
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 32, ptr %i.bg, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i

_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i: ; preds = %bb.j, %bb.i
  %.sink17.i24.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.ba, %bb.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 8
  store i32 8, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 16
  store ptr null, ptr %i.bi, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle31IntrinsicFunctionIdentifierNodeE, i64 16), ptr %.sink17.i24.i.i, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink17.i24.i.i, i64 24
  store i8 %.0.i22.i.i, ptr %i.bj, align 8, !tbaa !119
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.k:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i10.i, %bb.g
  %i.bk = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithEc.exit.thread:       ; preds = %_ZNK10StringView10startsWithES_.exit.thread14, %_ZNK10StringView10startsWithEc.exit
  %i.bl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.k, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i, %bb.f, %bb.d, %bb.c, %_ZNK10StringView10startsWithEc.exit.thread, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.bl, %_ZNK10StringView10startsWithEc.exit.thread ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ %i.l, %bb.d ], [ null, %bb.c ], [ %i.ae, %bb.f ], [ %.sink17.i24.i.i, %_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup.exit.i ], [ %i.bk, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler18memorizeIdentifierEPN4llvh11ms_demangle14IdentifierNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.OutputStream, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.b, align 4, !tbaa !38
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr %i.c, ptr %2, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 1024, ptr %i.f, align 8, !tbaa !45
  %i.g = load ptr, ptr %1, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0) #19
  %i.j = load i64, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.l
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStreamlsEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl i64 %i.l, 1
  %spec.store.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.k) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.f, align 8, !tbaa !45
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView:bb.a

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.c
  %.pn = phi ptr [ %i.h, %bb.c ], [ %i.aa, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.n, %bb.c ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !55
  %i.ab = icmp slt i64 %.sroa.0.4.i, 0
  br i1 %i.ab, label %.split, label %bb.f

.split:                                           ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !28
  br i1 %i.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %bb.f
  %i.ad = sub nsw i64 0, %.sroa.0.4.i
  br label %bb.h

bb.h:                                             ; preds = %.split, %.thread, %bb.f, %bb.g
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ %.sroa.0.4.i, %bb.f ], [ 0, %.thread ], [ %.sroa.0.4.i, %.split ]
  ret i64 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.e, %i.c
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 32                   ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 32, ptr %i.s, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !53
  %i.u = load i8, ptr %2, align 1, !tbaa !117, !range !51, !noundef !52
  %i.v = getelementptr inbounds nuw i8, ptr %.sink20, i64 8
  store i32 23, ptr %i.v, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink20, i64 16
  store i64 %i.t, ptr %i.w, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %.sink20, i64 24
  store i8 %i.u, ptr %i.x, align 8, !tbaa !103
  ret ptr %.sink20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.e, %i.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStreamlsEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl i64 %i.g, 1
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.e) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.f, align 8, !tbaa !45
  %i.i = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !44
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.c
  %.pre1.i.i = load i64, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.b, %._ZN12OutputStream4growEm.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.e, %bb.b ]
  %i.k = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.d, %bb.b ]
  %i.l = phi ptr [ %i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.b ]
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 48, ptr %i.m, align 1, !tbaa !15
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.0.idx18 = phi i64 [ 21, %bb.e ], [ %.0.add14, %bb.f ] ; 2 uses
  %.0817 = phi i64 [ %1, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %i.n = urem i64 %.0817, 10
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = or disjoint i8 %i.o, 48
  %.0.add14 = add nsw i64 %.0.idx18, -1           ; 3 uses
  %.ptr15 = getelementptr inbounds i8, ptr %i.a, i64 %.0.add14
  store i8 %i.p, ptr %.ptr15, align 1, !tbaa !15
  %i.q = udiv i64 %.0817, 10
  %.not = icmp ult i64 %.0817, 10
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !194

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.add = add nsw i64 %.0.idx18, -2             ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.add
  store i8 45, ptr %.ptr, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.idx = phi i64 [ %.0.add, %bb.h ], [ %.0.add14, %bb.g ] ; 3 uses
  %.1.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.1.idx
  %gepdiff = sub nsw i64 21, %.1.idx              ; 3 uses
  %i.r = icmp eq i64 %.1.idx, 21
  br i1 %i.r, label %_ZN12OutputStreamlsE10StringView.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43   ; 2 uses
  %i.u = add i64 %i.t, %gepdiff                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i10 = icmp ult i64 %i.u, %i.w
  %.pre.i.i11 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i10, label %_ZN12OutputStream4growEm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = shl i64 %i.w, 1
  %spec.store.select.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.u) ; 2 uses
  store i64 %spec.store.select.i.i.i12, ptr %i.v, align 8, !tbaa !45
  %i.y = tail call ptr @realloc(ptr noundef %.pre.i.i11, i64 noundef %spec.store.select.i.i.i12) #24 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !44
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i13

._ZN12OutputStream4growEm.exit_crit_edge.i.i13:   ; preds = %bb.k
  %.pre6.i.i = load i64, ptr %i.s, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i13, %bb.j
  %i.aa = phi i64 [ %i.t, %bb.j ], [ %.pre6.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13 ]
  %i.ab = phi ptr [ %.pre.i.i11, %bb.j ], [ %i.y, %._ZN12OutputStream4growEm.exit_crit_edge.i.i13 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %.1.ptr, i64 %gepdiff, i1 false)
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !43
  %i.ae = add i64 %i.ad, %gepdiff
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %bb.i, %_ZN12OutputStream4growEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZN12OutputStreamlsE10StringView.exit, %_ZN12OutputStreamlsEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload
  br i1 %i.a, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigit10StringView.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.a, %_ZL15startsWithDigit10StringView.exit
  %i.m = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.n = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %_ZNK10StringView10startsWithES_.exit.thread9, label %_ZNK10StringView10startsWithES_.exit

_ZNK10StringView10startsWithES_.exit:             ; preds = %_ZL15startsWithDigit10StringView.exit.thread
  %i.q = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.r = icmp ne i16 9279, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK10StringView10startsWithES_.exit.thread, label %_ZNK10StringView10startsWithES_.exit.thread9

_ZNK10StringView10startsWithES_.exit.thread:      ; preds = %_ZNK10StringView10startsWithES_.exit
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZNK10StringView10startsWithES_.exit.thread9:     ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZNK10StringView10startsWithES_.exit
  %i.u = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleBackRefNameER10StringView.exit: ; preds = %bb.d, %bb.c, %_ZNK10StringView10startsWithES_.exit.thread9, %_ZNK10StringView10startsWithES_.exit.thread
  %.0 = phi ptr [ %i.u, %_ZNK10StringView10startsWithES_.exit.thread9 ], [ %i.t, %_ZNK10StringView10startsWithES_.exit.thread ], [ null, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 56                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 56, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink19.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12 ; 3 uses
  store i8 0, ptr %i.v, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20 ; 2 uses
  store i8 0, ptr %i.x, align 4, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.y, align 2, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !96
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  br i1 %2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 4 uses
  %i.af = icmp eq ptr %.pre, %i.ae
  br i1 %i.af, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ag = load i8, ptr %.pre, align 1, !tbaa !15
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.an = icmp eq i8 %i.am, 73
  br i1 %i.an, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !55
  %i.ap = or disjoint i8 %i.ak, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.aj, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.ar = phi i8 [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ae
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

bb.g:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !55
  %i.aw = or i8 %i.ar, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.g
  %i.ax = phi ptr [ %i.av, %bb.g ], [ %i.aq, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.aq, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 5 uses
  %i.ay = phi i8 [ %i.aw, %bb.g ], [ %i.ar, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.ar, %_ZN10StringView12consumeFrontEc.exit7.thread.i ] ; 3 uses
  store i8 %i.ay, ptr %i.v, align 4, !tbaa !91
  %i.az = icmp eq ptr %i.ax, %i.ae
  br i1 %i.az, label %_ZL28demangleFunctionRefQualifierR10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i.i18

_ZNK10StringView10startsWithEc.exit.i.i18:        ; preds = %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !15
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
  store i32 %.0.i, ptr %i.z, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !40
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.be, -65            ; 3 uses
  %i.bf = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bf, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZL28demangleFunctionRefQualifierR10StringView.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !28
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
  store i8 %.sroa.0.0.i, ptr %i.v, align 4, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bj = phi ptr [ %i.bd, %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit ], [ %.pre, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 3 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !40
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !15
  %switch.tableidx27 = add i8 %i.bl, -65          ; 2 uses
  %i.bm = icmp ult i8 %switch.tableidx27, 17
  br i1 %i.bm, label %switch.lookup28, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup28:                                  ; preds = %bb.i
  %i.bn = zext nneg i8 %switch.tableidx27 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.bn
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %bb.i, %switch.lookup28
  %.0.i19 = phi i8 [ %switch.load30, %switch.lookup28 ], [ 0, %bb.i ]
  store i8 %.0.i19, ptr %i.x, align 4, !tbaa !93
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bq = icmp eq ptr %i.bk, %i.bp
  br i1 %i.bq, label %bb.j, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bs = icmp eq i8 %i.br, 64
  br i1 %i.bs, label %_ZN10StringView12consumeFrontEc.exit, label %bb.j

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store ptr %i.bt, ptr %1, align 8, !tbaa !55
  br label %bb.k

bb.j:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.bu = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %_ZN10StringView12consumeFrontEc.exit, %bb.j
  %i.bv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr %i.bv, ptr %i.ac, align 8, !tbaa !96
  %i.bw = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.l, label %_ZNK10StringView10startsWithEc.exit.i.i20

_ZNK10StringView10startsWithEc.exit.i.i20:        ; preds = %bb.k
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.ca = icmp eq i8 %i.bz, 90
  br i1 %i.ca, label %_ZN10StringView12consumeFrontEc.exit.i, label %bb.l

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.cb, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

bb.l:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i20, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cc, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit

_ZN12_GLOBAL__N_19Demangler26demangleThrowSpecificationER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit.i, %bb.l
  ret ptr %.sink19.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 88
  br i1 %i.g, label %_ZN10StringView12consumeFrontEc.exit, label %bb.b

_ZN10StringView12consumeFrontEc.exit:             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !55
  br label %bb.p

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  %i.o = add i64 %i.l, 7
  %i.p = add i64 %i.o, %i.n
  %i.q = and i64 %i.p, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.q, %i.l
  %i.r = add i64 %reass.sub.i, 16                 ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = inttoptr i64 %i.q to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !31
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 4096, ptr %i.aa, align 8, !tbaa !33
  store ptr %i.w, ptr %i.i, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %i.ab, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.x, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !28, !range !51, !noundef !52
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %.03259 = phi ptr [ %i.a, %.lr.ph ], [ %.032.be, %.backedge ] ; 3 uses
  %.03558 = phi i64 [ 0, %.lr.ph ], [ %.035.be, %.backedge ] ; 3 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !40    ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZL15startsWithDigit10StringView.exit.thread, label %_ZNK10StringView10startsWithEc.exit

_ZL15startsWithDigit10StringView.exit.thread:     ; preds = %bb.e
  %i.ak = add i64 %.03558, 1
  br label %bb.k

_ZNK10StringView10startsWithEc.exit:              ; preds = %bb.e
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !15  ; 3 uses
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
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !42
  %.not = icmp ult i64 %i.ap, %i.aq
  br i1 %.not, label %bb.g, label %.thread50

.thread50:                                        ; preds = %bb.f
  store i8 1, ptr %i.ac, align 8, !tbaa !28
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ar, ptr %1, align 8, !tbaa !55
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !34  ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ax = add i64 %i.au, 7
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %reass.sub.i39 = sub i64 %i.az, %i.au
  %i.ba = add i64 %reass.sub.i39, 16              ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !33
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = inttoptr i64 %i.az to ptr
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.bg = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 4096, ptr %i.bj, align 8, !tbaa !33
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 16, ptr %i.bk, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i40 = phi ptr [ %i.bg, %bb.i ], [ %i.be, %bb.h ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i40, i8 0, i64 16, i1 false)
  store ptr %.sink.i40, ptr %.03259, align 8, !tbaa !116
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ap
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  store ptr %i.bm, ptr %.sink.i40, align 8, !tbaa !106
  br label %.backedge

bb.k:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.thread, %_ZL15startsWithDigit10StringView.exit
  %i.bn = phi i64 [ %i.ak, %_ZL15startsWithDigit10StringView.exit.thread ], [ %i.am, %_ZL15startsWithDigit10StringView.exit ] ; 2 uses
  %i.bo = ptrtoint ptr %i.ai to i64
  %i.bp = ptrtoint ptr %i.ah to i64
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !34  ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !35
  %i.bv = add i64 %i.bs, 7
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, -8                       ; 2 uses
  %reass.sub.i42 = sub i64 %i.bx, %i.bs
  %i.by = add i64 %reass.sub.i42, 16              ; 2 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33
  %i.cb = icmp ult i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = inttoptr i64 %i.bx to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44

bb.m:                                             ; preds = %bb.k
  %i.cd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ce = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !31
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 4096, ptr %i.ch, align 8, !tbaa !33
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 16, ptr %i.ci, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44: ; preds = %bb.l, %bb.m
  %.sink.i43 = phi ptr [ %i.ce, %bb.m ], [ %i.cc, %bb.l ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i43, i8 0, i64 16, i1 false)
  store ptr %.sink.i43, ptr %.03259, align 8, !tbaa !116
  %i.cj = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 2 uses
  %i.ck = load ptr, ptr %.03259, align 8, !tbaa !116 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !106
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.cm = load ptr, ptr %1, align 8, !tbaa !40
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = add i64 %i.bp, %i.cn
  %i.cq = sub i64 %i.bo, %i.cp
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = load i64, ptr %i.af, align 8, !tbaa !42 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 10
  %i.cu = icmp ugt i64 %i.cr, 1
  %or.cond = and i1 %i.ct, %i.cu
  br i1 %or.cond, label %bb.n, label %.backedge

bb.n:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44
  %i.cv = add nuw nsw i64 %i.cs, 1
  store i64 %i.cv, ptr %i.af, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !47
  br label %.backedge

.backedge:                                        ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44, %bb.n, %bb.j
  %.035.be = phi i64 [ %i.am, %bb.j ], [ %i.bn, %bb.n ], [ %i.bn, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44 ]
  %.sink.i40.pn = phi ptr [ %.sink.i40, %bb.j ], [ %i.ck, %bb.n ], [ %i.ck, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit44 ]
  %.032.be = getelementptr inbounds nuw i8, ptr %.sink.i40.pn, i64 8
  %i.cx = load i8, ptr %i.ac, align 8, !tbaa !28, !range !51, !noundef !52
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.critedge, label %bb.e, !llvm.loop !195

bb.o:                                             ; preds = %_ZNK10StringView10startsWithEc.exit, %_ZNK10StringView10startsWithEc.exit
  %.0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.cz = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %.0..0..0..0., i64 noundef %.03558) ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %.thread, label %_ZNK10StringView10startsWithEc.exit.i45

_ZNK10StringView10startsWithEc.exit.i45:          ; preds = %bb.o
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !15
  %2 = icmp eq i8 %i.dd, 64
  br i1 %2, label %_ZN10StringView12consumeFrontEc.exit46, label %_ZNK10StringView10startsWithEc.exit.i47

_ZN10StringView12consumeFrontEc.exit46:           ; preds = %_ZNK10StringView10startsWithEc.exit.i45
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.de, ptr %1, align 8, !tbaa !55
  br label %.critedge

_ZNK10StringView10startsWithEc.exit.i47:          ; preds = %_ZNK10StringView10startsWithEc.exit.i45
  %3 = load i8, ptr %i.da, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 90
  br i1 %4, label %_ZN10StringView12consumeFrontEc.exit48, label %.thread

_ZN10StringView12consumeFrontEc.exit48:           ; preds = %_ZNK10StringView10startsWithEc.exit.i47
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.df, ptr %1, align 8, !tbaa !55
  br label %.critedge

.thread:                                          ; preds = %bb.o, %_ZNK10StringView10startsWithEc.exit.i47
  store i8 1, ptr %i.ac, align 8, !tbaa !28
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
define linkonce_odr hidden noundef ptr @_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_17PrimitiveTypeNodeEJNS0_13PrimitiveKindEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = add i64 %i.e, %i.c
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 24                   ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 4096, ptr %i.r, align 8, !tbaa !33
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 24, ptr %i.s, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink17 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %.sink17, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %.sink17, i64 12
  store i8 0, ptr %i.v, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle17PrimitiveTypeNodeE, i64 16), ptr %.sink17, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink17, i64 16
  store i32 %i.t, ptr %i.w, align 8, !tbaa !111
  ret ptr %.sink17
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
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
  store ptr %i.m, ptr %1, align 8, !tbaa !40
  %i.n = load i8, ptr %i.k, align 1, !tbaa !15
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
  %i.p = load i8, ptr %i.m, align 1, !tbaa !15
  %i.q = icmp eq i8 %i.p, 82                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %spec.select.i = select i1 %i.q, ptr %i.r, ptr %i.m
  %spec.select17.i = select i1 %i.q, i16 1536, i16 512
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %_ZNK10StringView10startsWithEc.exit.i.i, %bb.z
  %i.s = phi ptr [ %i.m, %bb.z ], [ %spec.select.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 2 uses
  %i.t = phi i16 [ 512, %bb.z ], [ %spec.select17.i, %_ZNK10StringView10startsWithEc.exit.i.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !tbaa !40
  %i.v = load i8, ptr %i.s, align 1, !tbaa !15
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
  store i8 1, ptr %i.ac, align 8, !tbaa !28
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.br, %.lr.ph.preheader.i.i102
  %.02557.i.i104 = phi i64 [ %i.ig, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 3 uses
  %.03656.i.i105 = phi i64 [ %i.if, %bb.br ], [ 0, %.lr.ph.preheader.i.i102 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.02557.i.i104
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !15  ; 2 uses
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
  store i8 1, ptr %i.ih, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit: ; preds = %.lr.ph.i.i103
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.02557.i.i104
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit, %bb.bp
  %.pn.i111 = phi ptr [ %i.hp, %bb.bp ], [ %i.ii, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ]
  %.sroa.0.4.i.i112 = phi i64 [ %i.hv, %bb.bp ], [ %.03656.i.i105, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110.loopexit ] ; 4 uses
  %storemerge.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1
  store ptr %storemerge.i113, ptr %1, align 8, !tbaa !55
  %i.ij = icmp slt i64 %.sroa.0.4.i.i112, 0
  br i1 %i.ij, label %.split.i114, label %bb.bs

.split.i114:                                      ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ik, align 8, !tbaa !28
  br i1 %i.hq, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i110
  br i1 %i.hq, label %bb.bt, label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

bb.bt:                                            ; preds = %bb.bs, %.split.i114
  %i.il = sub nsw i64 0, %.sroa.0.4.i.i112
  br label %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115

_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115: ; preds = %.thread.i107, %.split.i114, %bb.bs, %bb.bt
  %i.im = phi i64 [ %i.il, %bb.bt ], [ %.sroa.0.4.i.i112, %bb.bs ], [ 0, %.thread.i107 ], [ %.sroa.0.4.i.i112, %.split.i114 ]
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.dt, align 8, !tbaa !198
  br label %bb.bu

bb.bu:                                            ; preds = %bb.aq, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit
  %.030 = phi ptr [ %.sink27.i, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit ], [ %.sink27.i38, %_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView.exit115 ], [ null, %bb.aq ] ; 5 uses
  %i.io = and i32 %i.ae, 256
  %.not34 = icmp eq i32 %i.io, 0
  br i1 %.not34, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !34 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !31
  %i.is = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !35
  %i.iv = add i64 %i.is, 7
  %i.iw = add i64 %i.iv, %i.iu
  %i.ix = and i64 %i.iw, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.ix, %i.is
  %i.iy = add i64 %reass.sub.i116, 56             ; 2 uses
  store i64 %i.iy, ptr %i.it, align 8, !tbaa !35
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !33
  %i.jb = icmp ult i64 %i.iy, %i.ja
  br i1 %i.jb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jc = inttoptr i64 %i.ix to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.jd = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.je = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !31
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !34
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 4096, ptr %i.jh, align 8, !tbaa !33
  store ptr %i.jd, ptr %i.ip, align 8, !tbaa !34
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 56, ptr %i.ji, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bw, %bb.bx
  %.sink19.i = phi ptr [ %i.je, %bb.bx ], [ %i.jc, %bb.bw ] ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 8
  store i32 3, ptr %i.jj, align 8, !tbaa !58
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 12
  store i8 0, ptr %i.jk, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i, align 8, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 16
  store i32 0, ptr %i.jl, align 8, !tbaa !92
  %i.jm = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 20
  store i8 0, ptr %i.jm, align 4, !tbaa !93
  %i.jn = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 22
  store i16 8, ptr %i.jn, align 2, !tbaa !97
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 24
  store i32 0, ptr %i.jo, align 8, !tbaa !94
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 32
  store ptr null, ptr %i.jp, align 8, !tbaa !88
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 40
  store i8 0, ptr %i.jq, align 8, !tbaa !95
  %i.jr = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 48
  store ptr null, ptr %i.jr, align 8, !tbaa !96
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
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store i32 %i.jv, ptr %i.jw, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.jy = load i8, ptr %i.jx, align 4, !tbaa !91
  %i.jz = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store i8 %i.jy, ptr %i.jz, align 4, !tbaa !91
  %i.ka = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %.031, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ka, ptr noundef nonnull align 8 dereferenceable(40) %i.kb, i64 40, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1 = phi ptr [ %.030, %bb.ca ], [ %.031, %bb.bz ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.1, i64 22
  store i16 %i.ad, ptr %i.kc, align 2, !tbaa !97
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !34 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !31
  %i.kg = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !35
  %i.kj = add i64 %i.kg, 7
  %i.kk = add i64 %i.kj, %i.ki
  %i.kl = and i64 %i.kk, -8                       ; 2 uses
  %reass.sub.i117 = sub i64 %i.kl, %i.kg
  %i.km = add i64 %reass.sub.i117, 32             ; 2 uses
  store i64 %i.km, ptr %i.kh, align 8, !tbaa !35
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !33
  %i.kp = icmp ult i64 %i.km, %i.ko
  br i1 %i.kp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kq = inttoptr i64 %i.kl to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.kr = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ks = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ks, ptr %i.kr, align 8, !tbaa !31
  %i.kt = load ptr, ptr %i.kd, align 8, !tbaa !34
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i64 4096, ptr %i.kv, align 8, !tbaa !33
  store ptr %i.kr, ptr %i.kd, align 8, !tbaa !34
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 32, ptr %i.kw, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.cc, %bb.cd
  %.sink13.i = phi ptr [ %i.ks, %bb.cd ], [ %i.kq, %bb.cc ] ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.kx, align 8, !tbaa !58
  %i.ky = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ky, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %.1, ptr %i.kz, align 8, !tbaa !81
  ret ptr %.sink13.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext range(i8 0, 6) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = add i64 %i.d, 7
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !33
  store ptr %i.o, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 40, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store i32 27, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18VariableSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 24 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !115
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 6 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !115
  store i8 %2, ptr %i.w, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !58
  %cond = icmp eq i32 %i.aa, 14
  br i1 %cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18VariableSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !91
  %i.ad = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 5 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.d
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.e, label %_ZN10StringView12consumeFrontEc.exit.thread.i

bb.e:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ %i.ad, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ad, %bb.d ] ; 5 uses
  %i.al = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.af
  br i1 %i.am, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

_ZNK10StringView10startsWithEc.exit.i6.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.ao = icmp eq i8 %i.an, 73
  br i1 %i.ao, label %bb.f, label %_ZN10StringView12consumeFrontEc.exit7.thread.i

bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !55
  %i.aq = or disjoint i8 %i.al, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %i.ak, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.ak, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 5 uses
  %i.as = phi i8 [ %i.aq, %bb.f ], [ %i.al, %_ZNK10StringView10startsWithEc.exit.i6.i ], [ %i.al, %_ZN10StringView12consumeFrontEc.exit.thread.i ] ; 3 uses
  %i.at = icmp eq ptr %i.ar, %i.af
  br i1 %i.at, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit, label %_ZNK10StringView10startsWithEc.exit.i8.i

_ZNK10StringView10startsWithEc.exit.i8.i:         ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !15
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
  store i8 %i.ba, ptr %i.ab, align 4, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 5 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !40
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.bc, -65            ; 3 uses
  %i.bd = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bd, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8, !tbaa !28
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !99
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %_ZN12_GLOBAL__N_19Demangler30demangleFullyQualifiedTypeNameER10StringView.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18demangleQualifiersER10StringView.exit
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %_ZL15startsWithDigit10StringView.exit.thread.i, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %bb.i
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !15  ; 2 uses
  %i.bk = sext i8 %i.bj to i32
  %isdigittmp.i.i = add nsw i32 %i.bk, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.j, label %_ZL15startsWithDigit10StringView.exit.thread.i

bb.j:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.bl = sext i8 %i.bj to i64
  %i.bm = add nsw i64 %i.bl, -48                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !48
  %.not.i.i = icmp ult i64 %i.bm, %i.bo
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store ptr %i.bq, ptr %1, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
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
  %i.cb = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler33demangleTemplateInstantiationNameER10StringView19NameBackrefBehavior(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !202
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZNK10StringView10startsWithES_.exit.thread9.i:   ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZL15startsWithDigit10StringView.exit.thread.i
  %i.cc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler18demangleSimpleNameER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler27demangleUnqualifiedTypeNameER10StringViewb.exit: ; preds = %bb.k, %bb.l, %_ZNK10StringView10startsWithES_.exit.thread.i, %_ZNK10StringView10startsWithES_.exit.thread9.i
  %.0.i = phi ptr [ %i.cc, %_ZNK10StringView10startsWithES_.exit.thread9.i ], [ %i.cb, %_ZNK10StringView10startsWithES_.exit.thread.i ], [ null, %bb.k ], [ %i.bt, %bb.l ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_8
