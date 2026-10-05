Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z17guessCharByteSizePKhjj:bb.a
  br i1 %.not14, label %bb.f, label %.thread

bb.f:                                             ; preds = %_Z18countEmbeddedNullsPKhj.exit
  %i.ac = udiv i32 %1, 3
  %.not15 = icmp samesign ult i32 %.05.lcssa.i, %i.ac
  %.16 = select i1 %.not15, i32 1, i32 2
  br label %.thread

.thread:                                          ; preds = %_Z22countTrailingNullBytesPKhi.exit, %bb.c, %_Z18countEmbeddedNullsPKhj.exit, %bb.f, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ %.16, %bb.f ], [ 4, %_Z18countEmbeddedNullsPKhj.exit ], [ %spec.select, %_Z22countTrailingNullBytesPKhi.exit ], [ 1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4llvh17microsoftDemangleEPKcPcPmPiNS_15MSDemangleFlagsE(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %class.OutputStream, align 8        ; 10 uses
  %6 = alloca %"class.(anonymous namespace)::Demangler", align 8 ; 11 uses
  %7 = alloca %class.OutputStream, align 8        ; 11 uses
  %8 = alloca %class.StringView, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_19DemanglerE, i64 16), ptr %6, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20
  store ptr %i.d, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 4096, ptr %i.f, align 8, !tbaa !33
  store ptr %i.c, ptr %i.b, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 5 uses
  store i64 0, ptr %i.h, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 -1, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 -1, ptr %i.k, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %0, ptr %8, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store ptr %i.n, ptr %i.l, align 8, !tbaa !41
  %i.o = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.p = and i32 %4, 1
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = load i64, ptr %i.h, align 8, !tbaa !42
  %i.s = trunc i64 %i.r to i32
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %i.s) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 -1, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 -1, ptr %i.v, align 4, !tbaa !38
  %i.w = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i

_Z22initializeOutputStreamPcPmR12OutputStreamm.exit.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !43
  store ptr %i.w, ptr %5, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1024, ptr %i.z, align 8, !tbaa !45
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !42
  %.not20.i = icmp eq i64 %i.aa, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

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
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler20demangleInitFiniStubER10StringViewb:bb.a
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
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !61
  br label %.critedge37

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler21demangleEncodedSymbolER10StringViewPN4llvh11ms_demangle17QualifiedNameNodeE.exit
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.ai, align 8, !tbaa !28
  br label %.critedge37

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %.1.i, ptr %i.cp, align 8, !tbaa !172
  %i.cq = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvh11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %.sink13.i)
  store ptr %i.cq, ptr %i.bz, align 8, !tbaa !61
  br label %.critedge37

.critedge37:                                      ; preds = %.loopexit, %.critedge, %bb.o, %bb.n
  %.135 = phi ptr [ null, %.loopexit ], [ %i.cm, %.critedge ], [ null, %bb.n ], [ %.0.i, %bb.o ]
  ret ptr %.135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i8 } @_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN10StringView12consumeFrontEc.exit, label %_ZNK10StringView10startsWithEc.exit.i

_ZNK10StringView10startsWithEc.exit.i:            ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !15
  %i.f = icmp eq i8 %i.e, 63
  br i1 %i.f, label %bb.b, label %_ZN10StringView12consumeFrontEc.exit

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit

_ZN10StringView12consumeFrontEc.exit:             ; preds = %bb.a, %_ZNK10StringView10startsWithEc.exit.i, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.a, %_ZNK10StringView10startsWithEc.exit.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK10StringView10startsWithEc.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.thread43, label %_ZL15startsWithDigit10StringView.exit

_ZL15startsWithDigit10StringView.exit:            ; preds = %_ZN10StringView12consumeFrontEc.exit
  %i.k = load i8, ptr %i.h, align 1, !tbaa !15    ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp.i = add nsw i32 %i.l, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZL15startsWithDigit10StringView.exit
  %i.m = sext i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -47
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.o, ptr %1, align 8, !tbaa !55
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
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15    ; 2 uses
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
  br i1 %exitcond.not, label %.thread43, label %.lr.ph, !llvm.loop !4

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %1, align 8, !tbaa !55
  br label %bb.g

.thread43:                                        ; preds = %bb.e, %bb.d, %_ZN10StringView12consumeFrontEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ac, align 8, !tbaa !28
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
define internal fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 6 uses
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = add i64 %i.c, 2                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.d, %i.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN12OutputStream4growEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %i.f, 1
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.d) ; 2 uses
  store i64 %spec.store.select.i.i.i, ptr %i.e, align 8, !tbaa !45
  %i.h = tail call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.c
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i, %bb.b
  %i.j = phi i64 [ %i.c, %bb.b ], [ %.pre6.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ]
  %i.k = phi ptr [ %.pre.i.i, %bb.b ], [ %i.h, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i16 10076, ptr %i.l, align 1
  %i.m = load i64, ptr %i.b, align 8, !tbaa !43
  %i.n = add i64 %i.m, 2
  store i64 %i.n, ptr %i.b, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i17 = icmp ult i64 %i.q, %i.s
  %.pre.i.i18 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i17, label %_ZN12OutputStream4growEm.exit.i.i22, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.s, 1
  %spec.store.select.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.q) ; 2 uses
  store i64 %spec.store.select.i.i.i19, ptr %i.r, align 8, !tbaa !45
  %i.u = tail call ptr @realloc(ptr noundef %.pre.i.i18, i64 noundef %spec.store.select.i.i.i19) #24 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !44
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i20

._ZN12OutputStream4growEm.exit_crit_edge.i.i20:   ; preds = %bb.f
  %.pre6.i.i21 = load i64, ptr %i.o, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i22

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i22:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i20, %bb.e
  %i.w = phi i64 [ %i.p, %bb.e ], [ %.pre6.i.i21, %._ZN12OutputStream4growEm.exit_crit_edge.i.i20 ]
  %i.x = phi ptr [ %.pre.i.i18, %bb.e ], [ %i.u, %._ZN12OutputStream4growEm.exit_crit_edge.i.i20 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i16 8796, ptr %i.y, align 1
  %i.z = load i64, ptr %i.o, align 8, !tbaa !43
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i24 = icmp ult i64 %i.ad, %i.af
  %.pre.i.i25 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i24, label %_ZN12OutputStream4growEm.exit.i.i29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %i.af, 1
  %spec.store.select.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ad) ; 2 uses
  store i64 %spec.store.select.i.i.i26, ptr %i.ae, align 8, !tbaa !45
  %i.ah = tail call ptr @realloc(ptr noundef %.pre.i.i25, i64 noundef %spec.store.select.i.i.i26) #24 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !44
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i27

._ZN12OutputStream4growEm.exit_crit_edge.i.i27:   ; preds = %bb.i
  %.pre6.i.i28 = load i64, ptr %i.ab, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i29

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i29:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i27, %bb.h
  %i.aj = phi i64 [ %i.ac, %bb.h ], [ %.pre6.i.i28, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27 ]
  %i.ak = phi ptr [ %.pre.i.i25, %bb.h ], [ %i.ah, %._ZN12OutputStream4growEm.exit_crit_edge.i.i27 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i16 23644, ptr %i.al, align 1
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.an = add i64 %i.am, 2
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.k:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i31 = icmp ult i64 %i.aq, %i.as
  %.pre.i.i32 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i31, label %_ZN12OutputStream4growEm.exit.i.i36, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = shl i64 %i.as, 1
  %spec.store.select.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  store i64 %spec.store.select.i.i.i33, ptr %i.ar, align 8, !tbaa !45
  %i.au = tail call ptr @realloc(ptr noundef %.pre.i.i32, i64 noundef %spec.store.select.i.i.i33) #24 ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !44
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i34

._ZN12OutputStream4growEm.exit_crit_edge.i.i34:   ; preds = %bb.l
  %.pre6.i.i35 = load i64, ptr %i.ao, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i36

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i36:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i34, %bb.k
  %i.aw = phi i64 [ %i.ap, %bb.k ], [ %.pre6.i.i35, %._ZN12OutputStream4growEm.exit_crit_edge.i.i34 ]
  %i.ax = phi ptr [ %.pre.i.i32, %bb.k ], [ %i.au, %._ZN12OutputStream4growEm.exit_crit_edge.i.i34 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i16 24924, ptr %i.ay, align 1
  %i.az = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.ba = add i64 %i.az, 2
  store i64 %i.ba, ptr %i.ao, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i38 = icmp ult i64 %i.bd, %i.bf
  %.pre.i.i39 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i38, label %_ZN12OutputStream4growEm.exit.i.i43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = shl i64 %i.bf, 1
  %spec.store.select.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bd) ; 2 uses
  store i64 %spec.store.select.i.i.i40, ptr %i.be, align 8, !tbaa !45
  %i.bh = tail call ptr @realloc(ptr noundef %.pre.i.i39, i64 noundef %spec.store.select.i.i.i40) #24 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !44
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.p, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i41

._ZN12OutputStream4growEm.exit_crit_edge.i.i41:   ; preds = %bb.o
  %.pre6.i.i42 = load i64, ptr %i.bb, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i43

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i43:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i41, %bb.n
  %i.bj = phi i64 [ %i.bc, %bb.n ], [ %.pre6.i.i42, %._ZN12OutputStream4growEm.exit_crit_edge.i.i41 ]
  %i.bk = phi ptr [ %.pre.i.i39, %bb.n ], [ %i.bh, %._ZN12OutputStream4growEm.exit_crit_edge.i.i41 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i16 25180, ptr %i.bl, align 1
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 2
  store i64 %i.bn, ptr %i.bb, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.q:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.bq = add i64 %i.bp, 2                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i45 = icmp ult i64 %i.bq, %i.bs
  %.pre.i.i46 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i45, label %_ZN12OutputStream4growEm.exit.i.i50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = shl i64 %i.bs, 1
  %spec.store.select.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bq) ; 2 uses
  store i64 %spec.store.select.i.i.i47, ptr %i.br, align 8, !tbaa !45
  %i.bu = tail call ptr @realloc(ptr noundef %.pre.i.i46, i64 noundef %spec.store.select.i.i.i47) #24 ; 3 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !44
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.s, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i48

._ZN12OutputStream4growEm.exit_crit_edge.i.i48:   ; preds = %bb.r
  %.pre6.i.i49 = load i64, ptr %i.bo, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i50

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i50:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i48, %bb.q
  %i.bw = phi i64 [ %i.bp, %bb.q ], [ %.pre6.i.i49, %._ZN12OutputStream4growEm.exit_crit_edge.i.i48 ]
  %i.bx = phi ptr [ %.pre.i.i46, %bb.q ], [ %i.bu, %._ZN12OutputStream4growEm.exit_crit_edge.i.i48 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i16 26204, ptr %i.by, align 1
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !43
  %i.ca = add i64 %i.bz, 2
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.t:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !43 ; 2 uses
  %i.cd = add i64 %i.cc, 2                        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i52 = icmp ult i64 %i.cd, %i.cf
  %.pre.i.i53 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i52, label %_ZN12OutputStream4growEm.exit.i.i57, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = shl i64 %i.cf, 1
  %spec.store.select.i.i.i54 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.cd) ; 2 uses
  store i64 %spec.store.select.i.i.i54, ptr %i.ce, align 8, !tbaa !45
  %i.ch = tail call ptr @realloc(ptr noundef %.pre.i.i53, i64 noundef %spec.store.select.i.i.i54) #24 ; 3 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !44
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.v, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i55

._ZN12OutputStream4growEm.exit_crit_edge.i.i55:   ; preds = %bb.u
  %.pre6.i.i56 = load i64, ptr %i.cb, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i57

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i57:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i55, %bb.t
  %i.cj = phi i64 [ %i.cc, %bb.t ], [ %.pre6.i.i56, %._ZN12OutputStream4growEm.exit_crit_edge.i.i55 ]
  %i.ck = phi ptr [ %.pre.i.i53, %bb.t ], [ %i.ch, %._ZN12OutputStream4growEm.exit_crit_edge.i.i55 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i16 28252, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.cn = add i64 %i.cm, 2
  store i64 %i.cn, ptr %i.cb, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.w:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !43 ; 2 uses
  %i.cq = add i64 %i.cp, 2                        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i59 = icmp ult i64 %i.cq, %i.cs
  %.pre.i.i60 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i59, label %_ZN12OutputStream4growEm.exit.i.i64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = shl i64 %i.cs, 1
  %spec.store.select.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cq) ; 2 uses
  store i64 %spec.store.select.i.i.i61, ptr %i.cr, align 8, !tbaa !45
  %i.cu = tail call ptr @realloc(ptr noundef %.pre.i.i60, i64 noundef %spec.store.select.i.i.i61) #24 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !44
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.y, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i62

._ZN12OutputStream4growEm.exit_crit_edge.i.i62:   ; preds = %bb.x
  %.pre6.i.i63 = load i64, ptr %i.co, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i64

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i64:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i62, %bb.w
  %i.cw = phi i64 [ %i.cp, %bb.w ], [ %.pre6.i.i63, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cx = phi ptr [ %.pre.i.i60, %bb.w ], [ %i.cu, %._ZN12OutputStream4growEm.exit_crit_edge.i.i62 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i16 29276, ptr %i.cy, align 1
  %i.cz = load i64, ptr %i.co, align 8, !tbaa !43
  %i.da = add i64 %i.cz, 2
  store i64 %i.da, ptr %i.co, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.z:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !43 ; 2 uses
  %i.dd = add i64 %i.dc, 2                        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i66 = icmp ult i64 %i.dd, %i.df
  %.pre.i.i67 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i66, label %_ZN12OutputStream4growEm.exit.i.i71, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = shl i64 %i.df, 1
  %spec.store.select.i.i.i68 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dd) ; 2 uses
  store i64 %spec.store.select.i.i.i68, ptr %i.de, align 8, !tbaa !45
  %i.dh = tail call ptr @realloc(ptr noundef %.pre.i.i67, i64 noundef %spec.store.select.i.i.i68) #24 ; 3 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !44
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ab, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i69

._ZN12OutputStream4growEm.exit_crit_edge.i.i69:   ; preds = %bb.aa
  %.pre6.i.i70 = load i64, ptr %i.db, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i71

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i71:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i69, %bb.z
  %i.dj = phi i64 [ %i.dc, %bb.z ], [ %.pre6.i.i70, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dk = phi ptr [ %.pre.i.i67, %bb.z ], [ %i.dh, %._ZN12OutputStream4growEm.exit_crit_edge.i.i69 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i16 29788, ptr %i.dl, align 1
  %i.dm = load i64, ptr %i.db, align 8, !tbaa !43
  %i.dn = add i64 %i.dm, 2
  store i64 %i.dn, ptr %i.db, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.ac:                                            ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43 ; 2 uses
  %i.dq = add i64 %i.dp, 2                        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i73 = icmp ult i64 %i.dq, %i.ds
  %.pre.i.i74 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i73, label %_ZN12OutputStream4growEm.exit.i.i78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = shl i64 %i.ds, 1
  %spec.store.select.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.dq) ; 2 uses
  store i64 %spec.store.select.i.i.i75, ptr %i.dr, align 8, !tbaa !45
  %i.du = tail call ptr @realloc(ptr noundef %.pre.i.i74, i64 noundef %spec.store.select.i.i.i75) #24 ; 3 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !44
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ae, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i76

._ZN12OutputStream4growEm.exit_crit_edge.i.i76:   ; preds = %bb.ad
  %.pre6.i.i77 = load i64, ptr %i.do, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i78

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i78:              ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i76, %bb.ac
  %i.dw = phi i64 [ %i.dp, %bb.ac ], [ %.pre6.i.i77, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dx = phi ptr [ %.pre.i.i74, %bb.ac ], [ %i.du, %._ZN12OutputStream4growEm.exit_crit_edge.i.i76 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i16 30300, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.do, align 8, !tbaa !43
  %i.ea = add i64 %i.dz, 2
  store i64 %i.ea, ptr %i.do, align 8, !tbaa !43
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.af:                                            ; preds = %bb.a
  %i.eb = add i32 %1, -32
  %or.cond = icmp ult i32 %i.eb, 95
  br i1 %or.cond, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ec = trunc nuw nsw i32 %1 to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !43 ; 2 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i80 = icmp ult i64 %i.ef, %i.eh
  %.pre.i.i81 = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i80, label %_ZN12OutputStreamlsEc.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = shl i64 %i.eh, 1
  %spec.store.select.i.i.i82 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.ef) ; 2 uses
  store i64 %spec.store.select.i.i.i82, ptr %i.eg, align 8, !tbaa !45
  %i.ej = tail call ptr @realloc(ptr noundef %.pre.i.i81, i64 noundef %spec.store.select.i.i.i82) #24 ; 3 uses
  store ptr %i.ej, ptr %0, align 8, !tbaa !44
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ai, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i83

._ZN12OutputStream4growEm.exit_crit_edge.i.i83:   ; preds = %bb.ah
  %.pre1.i.i = load i64, ptr %i.ed, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.ag, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ef, %bb.ag ]
  %i.el = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %i.ee, %bb.ag ]
  %i.em = phi ptr [ %i.ej, %._ZN12OutputStream4growEm.exit_crit_edge.i.i83 ], [ %.pre.i.i81, %bb.ag ]
  store i64 %.pre-phi.i.i, ptr %i.ed, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 %i.ec, ptr %i.en, align 1, !tbaa !15
  br label %_ZN12OutputStreamlsE10StringView.exit

bb.aj:                                            ; preds = %bb.af
  %i.eo = icmp eq i32 %1, 0
  br i1 %i.eo, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !43 ; 2 uses
  %i.er = add i64 %i.eq, 4                        ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.er, %i.et
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN12OutputStream4growEm.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = shl i64 %i.et, 1
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.er) ; 2 uses
  store i64 %spec.store.select.i.i.i.i, ptr %i.es, align 8, !tbaa !45
  %i.ev = tail call ptr @realloc(ptr noundef %.pre.i.i.i, i64 noundef %spec.store.select.i.i.i.i) #24 ; 3 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !44
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.am, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i.i:   ; preds = %bb.al
  %.pre6.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !43
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
  %sext = shl i64 %indvars.iv.next, 32
  %i.ft = ashr exact i64 %sext, 32
  %i.fu = getelementptr i8, ptr %i.a, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 1      ; 2 uses
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #21 ; 4 uses
  %i.fx = icmp samesign eq i64 %i.fw, 0
  br i1 %i.fx, label %_ZN12OutputStreamlsE10StringView.exit21.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !43 ; 2 uses
  %i.ga = add i64 %i.fz, %i.fw                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i15.i = icmp ult i64 %i.ga, %i.gc
  %.pre.i.i16.i = load ptr, ptr %0, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i15.i, label %_ZN12OutputStream4growEm.exit.i.i20.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = shl i64 %i.gc, 1
  %spec.store.select.i.i.i17.i = tail call i64 @llvm.umax.i64(i64 %i.gd, i64 %i.ga) ; 2 uses
  store i64 %spec.store.select.i.i.i17.i, ptr %i.gb, align 8, !tbaa !45
  %i.ge = tail call ptr @realloc(ptr noundef %.pre.i.i16.i, i64 noundef %spec.store.select.i.i.i17.i) #24 ; 3 uses
  store ptr %i.ge, ptr %0, align 8, !tbaa !44
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ar, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i: ; preds = %bb.aq
  %.pre6.i.i19.i = load i64, ptr %i.fy, align 8, !tbaa !43
  br label %_ZN12OutputStream4growEm.exit.i.i20.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i.i20.i:            ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i, %bb.ap
  %i.gg = phi i64 [ %i.fz, %bb.ap ], [ %.pre6.i.i19.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gh = phi ptr [ %.pre.i.i16.i, %bb.ap ], [ %i.ge, %._ZN12OutputStream4growEm.exit_crit_edge.i.i18.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr nonnull align 1 %i.fv, i64 %i.fw, i1 false)
  %i.gj = load i64, ptr %i.fy, align 8, !tbaa !43
  %i.gk = add i64 %i.gj, %i.fw
  store i64 %i.gk, ptr %i.fy, align 8, !tbaa !43
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
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler22demangleNameScopeChainER10StringViewPN4llvh11ms_demangle14IdentifierNodeE:bb.a

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  br label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn4950.i, i64 1 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.eb
  br i1 %i.ei, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread61, label %.lr.ph.i, !llvm.loop !175

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.pn4950.i = phi ptr [ %i.eh, %bb.w ], [ %i.eg, %.lr.ph.preheader.i ] ; 2 uses
  %i.ej = load i8, ptr %.pn4950.i, align 1, !tbaa !15
  %i.ek = add i8 %i.ej, -65
  %or.cond46.i = icmp ult i8 %i.ek, 16
  br i1 %or.cond46.i, label %bb.w, label %_ZL27startsWithLocalScopePattern10StringView.exit.thread

_ZL27startsWithLocalScopePattern10StringView.exit.thread61: ; preds = %bb.w, %bb.v, %bb.s
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !35
  %i.eq = add i64 %i.en, 7
  %i.er = add i64 %i.eq, %i.ep
  %i.es = and i64 %i.er, -8                       ; 2 uses
  %reass.sub.i.i = sub i64 %i.es, %i.en
  %i.et = add i64 %reass.sub.i.i, 40              ; 2 uses
  store i64 %i.et, ptr %i.eo, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !33
  %i.ew = icmp ult i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ex = inttoptr i64 %i.es to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

bb.y:                                             ; preds = %_ZL27startsWithLocalScopePattern10StringView.exit.thread61
  %i.ey = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20, !inline_history !176 ; 5 uses
  %i.ez = call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20, !inline_history !176 ; 2 uses
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !31
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 4096, ptr %i.fc, align 8, !tbaa !33
  store ptr %i.ey, ptr %i.a, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 40, ptr %i.fd, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i: ; preds = %bb.y, %bb.x
  %.sink13.i.i = phi ptr [ %i.ez, %bb.y ], [ %i.ex, %bb.x ] ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 5, ptr %i.fe, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  %i.fh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !41  ; 5 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !15
  %i.fl = icmp eq i8 %i.fk, 63
  br i1 %i.fl, label %bb.z, label %_ZN10StringView12consumeFrontEc.exit.i

bb.z:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store ptr %i.fm, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.z, %_ZNK10StringView10startsWithEc.exit.i.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i
  %i.fn = phi ptr [ %i.fm, %bb.z ], [ %i.fh, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.fh, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit.i ] ; 5 uses
  %i.fo = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fo, label %_ZN10StringView12consumeFrontEc.exit.i.i, label %_ZNK10StringView10startsWithEc.exit.i.i.i

_ZNK10StringView10startsWithEc.exit.i.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !15
  %i.fq = icmp eq i8 %i.fp, 63
  br i1 %i.fq, label %bb.aa, label %_ZN10StringView12consumeFrontEc.exit.i.i

bb.aa:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store ptr %i.fr, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i.i

_ZN10StringView12consumeFrontEc.exit.i.i:         ; preds = %bb.aa, %_ZNK10StringView10startsWithEc.exit.i.i.i, %_ZN10StringView12consumeFrontEc.exit.i
  %i.fs = phi ptr [ %i.fr, %bb.aa ], [ %i.fn, %_ZNK10StringView10startsWithEc.exit.i.i.i ], [ %i.fn, %_ZN10StringView12consumeFrontEc.exit.i ] ; 7 uses
  %i.ft = icmp eq ptr %i.fs, %i.fi
  br i1 %i.ft, label %.thread43.i.i, label %_ZL15startsWithDigit10StringView.exit.i.i

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i.i
  %i.fu = load i8, ptr %i.fs, align 1, !tbaa !15  ; 2 uses
  %i.fv = sext i8 %i.fu to i32
  %isdigittmp.i.i.i = add nsw i32 %i.fv, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %.lr.ph.preheader.i.i

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.fw = sext i8 %i.fu to i64
  %i.fx = add nsw i64 %i.fw, -47
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  store ptr %i.fy, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.fz = ptrtoint ptr %i.fi to i64
  %i.ga = ptrtoint ptr %i.fs to i64
  %i.gb = sub i64 %i.fz, %i.ga
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %.02557.i.i = phi i64 [ %i.gj, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03656.i.i = phi i64 [ %i.gi, %bb.ad ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15  ; 2 uses
  %i.ge = icmp eq i8 %i.gd, 64
  br i1 %i.ge, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.gf = add i8 %i.gd, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.gf, 16
  br i1 %or.cond.i.i, label %bb.ad, label %.thread43.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.gg = shl i64 %.03656.i.i, 4
  %i.gh = zext nneg i8 %i.gf to i64
  %i.gi = or disjoint i64 %i.gg, %i.gh
  %i.gj = add nuw i64 %.02557.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gj, %i.gb
  br i1 %exitcond.not.i.i, label %.thread43.i.i, label %.lr.ph.i.i, !llvm.loop !4

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.02557.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  store ptr %i.gl, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

.thread43.i.i:                                    ; preds = %bb.ad, %bb.ac, %_ZN10StringView12consumeFrontEc.exit.i.i
  store i8 1, ptr %i.w, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i: ; preds = %.thread43.i.i, %bb.ae, %bb.ab
  %i.gm = phi ptr [ %i.fy, %bb.ab ], [ %i.fs, %.thread43.i.i ], [ %i.gl, %bb.ae ] ; 3 uses
  %.sroa.0.4.i.i = phi i64 [ %i.fx, %bb.ab ], [ 0, %.thread43.i.i ], [ %.03656.i.i, %bb.ae ]
  %i.gn = icmp eq ptr %i.gm, %i.fi
  br i1 %i.gn, label %_ZN10StringView12consumeFrontEc.exit15.i, label %_ZNK10StringView10startsWithEc.exit.i14.i

_ZNK10StringView10startsWithEc.exit.i14.i:        ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.gp = icmp eq i8 %i.go, 63
  br i1 %i.gp, label %bb.af, label %_ZN10StringView12consumeFrontEc.exit15.i

bb.af:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i14.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store ptr %i.gq, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit15.i

_ZN10StringView12consumeFrontEc.exit15.i:         ; preds = %bb.af, %_ZNK10StringView10startsWithEc.exit.i14.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.i
  %i.gr = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler5parseER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !176 ; 2 uses
  %i.gs = load i8, ptr %i.w, align 8, !tbaa !28, !range !51, !noundef !52
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN12_GLOBAL__N_19Demangler22demangleNameScopePieceER10StringView.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %i.x, align 8, !tbaa !37
  store i32 -1, ptr %i.y, align 4, !tbaa !38
  %i.gu = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #22, !inline_history !176 ; 3 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.ah, label %_ZN12OutputStreamlsEc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit.i:                     ; preds = %bb.ag
  store ptr %i.gu, ptr %3, align 8, !tbaa !44
  store i64 1024, ptr %i.aa, align 8, !tbaa !45
  store i64 1, ptr %i.z, align 8, !tbaa !43
  store i8 96, ptr %i.gu, align 1, !tbaa !15
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(12) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0) #19, !inline_history !176
  %i.gz = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  %i.hb = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i16.i = icmp ult i64 %i.ha, %i.hb
  %.pre.i.i17.i = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  br i1 %.not.i.i.i16.i, label %_ZN12OutputStreamlsEc.exit23.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN12OutputStreamlsEc.exit.i
  %i.hc = shl i64 %i.hb, 1
  %spec.store.select.i.i.i18.i = call i64 @llvm.umax.i64(i64 %i.hc, i64 %i.ha) ; 2 uses
  store i64 %spec.store.select.i.i.i18.i, ptr %i.aa, align 8, !tbaa !45
  %i.hd = call ptr @realloc(ptr noundef %.pre.i.i17.i, i64 noundef %spec.store.select.i.i.i18.i) #24, !inline_history !176 ; 3 uses
  store ptr %i.hd, ptr %3, align 8, !tbaa !44
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.aj, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i: ; preds = %bb.ai
  %.pre1.i.i20.i = load i64, ptr %i.z, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i21.i = add i64 %.pre1.i.i20.i, 1
  br label %_ZN12OutputStreamlsEc.exit23.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt9terminatev() #23, !inline_history !176
  unreachable

_ZN12OutputStreamlsEc.exit23.i:                   ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i, %_ZN12OutputStreamlsEc.exit.i
  %.pre-phi.i.i22.i = phi i64 [ %.pre2.i.i21.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.ha, %_ZN12OutputStreamlsEc.exit.i ]
  %i.hf = phi i64 [ %.pre1.i.i20.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %i.gz, %_ZN12OutputStreamlsEc.exit.i ]
  %i.hg = phi ptr [ %i.hd, %._ZN12OutputStream4growEm.exit_crit_edge.i.i19.i ], [ %.pre.i.i17.i, %_ZN12OutputStreamlsEc.exit.i ]
  store i64 %.pre-phi.i.i22.i, ptr %i.z, align 8, !tbaa !43
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  store i8 39, ptr %i.hh, align 1, !tbaa !15
  %i.hi = load i64, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.hj = add i64 %i.hi, 3                        ; 2 uses
  %i.hk = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i24.i = icmp ult i64 %i.hj, %i.hk
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
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19Demangler29demangleUnqualifiedSymbolNameER10StringView19NameBackrefBehavior
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
  %i.n = call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %spec.store.select.i.i.i) #24 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !44
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %._ZN12OutputStream4growEm.exit_crit_edge.i.i

._ZN12OutputStream4growEm.exit_crit_edge.i.i:     ; preds = %bb.d
  %.pre1.i.i = load i64, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.pre2.i.i = add i64 %.pre1.i.i, 1
  br label %_ZN12OutputStreamlsEc.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStreamlsEc.exit:                       ; preds = %bb.c, %._ZN12OutputStream4growEm.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.k, %bb.c ]
  %i.p = phi i64 [ %.pre1.i.i, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %i.j, %bb.c ]
  %i.q = phi ptr [ %i.n, %._ZN12OutputStream4growEm.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.c ]
  store i64 %.pre-phi.i.i, ptr %i.e, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !15
  %i.s = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = add i64 %i.t, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34   ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = add i64 %i.z, %i.v                      ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit

bb.f:                                             ; preds = %_ZN12OutputStreamlsEc.exit
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 4096) ; 2 uses
  %i.af = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ag = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i) #20 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.speculated.i.i, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.af, ptr %i.u, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.v, ptr %i.ak, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit

_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView.exit: ; preds = %_ZN12OutputStreamlsEc.exit, %bb.f
  %.0.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.aa, %_ZN12OutputStreamlsEc.exit ] ; 3 uses
  %i.al = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) %i.s) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  call fastcc void @_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %.0.i.i, ptr nonnull %i.am)
  call void @free(ptr noundef nonnull %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler30demangleFunctionIdentifierCodeER10StringView27FunctionIdentifierCodeGroup(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 align 2 {
bb.a:
  switch i32 %2, label %default.unreachable40 [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %1, align 8, !tbaa !40
  %i.c = load i8, ptr %i.a, align 1, !tbaa !15    ; 4 uses
  switch i8 %i.c, label %bb.i [
    i8 48, label %bb.c
    i8 49, label %bb.c
    i8 66, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = icmp eq i8 %i.c, 49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35
  %i.k = add i64 %i.h, 7
  %i.l = add i64 %i.k, %i.j
  %i.m = and i64 %i.l, -8                         ; 2 uses
  %reass.sub.i.i = sub i64 %i.m, %i.h
  %i.n = add i64 %reass.sub.i.i, 40               ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = inttoptr i64 %i.m to ptr
  br label %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4096, ptr %i.w, align 8, !tbaa !33
  store ptr %i.s, ptr %i.e, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 40, ptr %i.x, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler26demangleStructorIdentifierER10StringViewb.exit: ; preds = %bb.d, %bb.e
  %.sink14.i.i = phi ptr [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 6 uses
  %i.y = zext i1 %i.d to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 8
  store i32 11, ptr %i.z, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle22StructorIdentifierNodeE, i64 16), ptr %.sink14.i.i, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 24
  store ptr null, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 32
  store i8 %i.y, ptr %i.ac, align 8, !tbaa !192
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35
  %i.aj = add i64 %i.ag, 7
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %reass.sub.i.i19 = sub i64 %i.al, %i.ag
  %i.am = add i64 %reass.sub.i.i19, 32            ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !33
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = inttoptr i64 %i.al to ptr
  br label %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.as = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.av, align 8, !tbaa !33
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 32, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit

_ZN12_GLOBAL__N_19Demangler36demangleConversionOperatorIdentifierER10StringView.exit: ; preds = %bb.g, %bb.h
  %.sink13.i.i = phi ptr [ %i.as, %bb.h ], [ %i.aq, %bb.g ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store i32 9, ptr %i.ax, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle32ConversionOperatorIdentifierNodeE, i64 16), ptr %.sink13.i.i, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !90
  br label %bb.x

bb.i:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = add i8 %i.c, -48
  %or.cond.i = icmp ult i8 %i.bb, 10
  %.v.i = select i1 %or.cond.i, i64 -48, i64 -55
  %i.bc = sext i8 %i.c to i64
  %i.bd = getelementptr i8, ptr @_ZZ30translateIntrinsicFunctionCodec27FunctionIdentifierCodeGroupE5Basic, i64 %.v.i
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %.0.i = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = add i64 %i.bh, 7
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.bm, %i.bh
  %i.bn = add i64 %reass.sub.i, 32                ; 2 uses
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !35
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_19Demangler14memorizeStringE10StringView:bb.a
  store ptr %i.at, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4096, ptr %i.av, align 8, !tbaa !33
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 40, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.as, %bb.c ], [ %i.aq, %bb.b ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 5, ptr %i.ax, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !55
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 32
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  store ptr %.sink13.i, ptr %i.bd, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %_ZeqRK10StringViewS1_.exit, %.lr.ph.split.us, %bb.a, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14demangleSignedER10StringView(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN10StringView12consumeFrontEc.exit.i, label %_ZNK10StringView10startsWithEc.exit.i.i

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !15
  %i.f = icmp eq i8 %i.e, 63
  br i1 %i.f, label %bb.b, label %_ZN10StringView12consumeFrontEc.exit.i

bb.b:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i

_ZN10StringView12consumeFrontEc.exit.i:           ; preds = %bb.b, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.a, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.i = phi i1 [ true, %bb.b ], [ false, %_ZNK10StringView10startsWithEc.exit.i.i ], [ false, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.thread, label %_ZL15startsWithDigit10StringView.exit.i

_ZL15startsWithDigit10StringView.exit.i:          ; preds = %_ZN10StringView12consumeFrontEc.exit.i
  %i.k = load i8, ptr %i.h, align 1, !tbaa !15    ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp.i.i = add nsw i32 %i.l, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.m = sext i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.y, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.x, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15    ; 2 uses
  %i.t = icmp eq i8 %i.s, 64
  br i1 %i.t, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = add i8 %i.s, -65                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.u, 16
  br i1 %or.cond.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.v = shl i64 %.03656.i, 4
  %i.w = zext nneg i8 %i.u to i64
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = add nuw i64 %.02557.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !4

.thread:                                          ; preds = %bb.e, %bb.d, %_ZN10StringView12consumeFrontEc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.z, align 8, !tbaa !28
  br label %bb.h

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

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
end_hunk_4
