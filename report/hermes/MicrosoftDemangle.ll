Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z17guessCharByteSizePKhjj:bb.a
  br i1 %i.c, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0712.pn.i = phi ptr [ %.0712.i, %bb.d ], [ %i.e, %.lr.ph.preheader.i ]
  %.011.i = phi i32 [ %i.h, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.0712.i = getelementptr inbounds i8, ptr %.0712.pn.i, i64 -1 ; 2 uses
  %i.f = load i8, ptr %.0712.i, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_Z22countTrailingNullBytesPKhi.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.h, %1
  br i1 %exitcond.not.i, label %_Z22countTrailingNullBytesPKhi.exit, label %.lr.ph.i, !llvm.loop !0

_Z22countTrailingNullBytesPKhi.exit:              ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %.011.i, %.lr.ph.i ], [ %1, %bb.d ]
  %.0.lcssa.i.fr = freeze i32 %.0.lcssa.i         ; 2 uses
  %i.i = icmp samesign ugt i32 %.0.lcssa.i.fr, 1
  %. = select i1 %i.i, i32 2, i32 1
  %.inv = icmp ult i32 %.0.lcssa.i.fr, 4
  %spec.select = select i1 %.inv, i32 %., i32 4
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_Z18countEmbeddedNullsPKhj.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.e
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i17.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.preheader
  %n.vec = and i64 %i.j, 4294967288               ; 4 uses
  %i.k = trunc nuw i64 %n.vec to i32
  %i.l = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load28 = load <4 x i8>, ptr %i.m, align 1, !tbaa !15
  %i.n = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.o = icmp eq <4 x i8> %wide.load28, zeroinitializer
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p             ; 2 uses
  %i.s = add <4 x i32> %vec.phi27, %i.q           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.s, %i.r
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %_Z18countEmbeddedNullsPKhj.exit, label %.lr.ph.i17.preheader30

.lr.ph.i17.preheader30:                           ; preds = %.lr.ph.i17.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i17.preheader ], [ %i.k, %middle.block ]
  %.058.i.ph = phi i32 [ 0, %.lr.ph.i17.preheader ], [ %i.u, %middle.block ]
  %.067.i.ph = phi ptr [ %0, %.lr.ph.i17.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader30, %.lr.ph.i17
  %.09.i = phi i32 [ %i.z, %.lr.ph.i17 ], [ %.09.i.ph, %.lr.ph.i17.preheader30 ]
  %.058.i = phi i32 [ %spec.select.i, %.lr.ph.i17 ], [ %.058.i.ph, %.lr.ph.i17.preheader30 ]
  %.067.i = phi ptr [ %i.v, %.lr.ph.i17 ], [ %.067.i.ph, %.lr.ph.i17.preheader30 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.067.i, i64 1
  %i.w = load i8, ptr %.067.i, align 1, !tbaa !15
  %i.x = icmp eq i8 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %spec.select.i = add i32 %.058.i, %i.y          ; 2 uses
  %i.z = add nuw i32 %.09.i, 1                    ; 2 uses
  %exitcond.not.i18 = icmp eq i32 %i.z, %1
  br i1 %exitcond.not.i18, label %_Z18countEmbeddedNullsPKhj.exit, label %.lr.ph.i17, !llvm.loop !123

_Z18countEmbeddedNullsPKhj.exit:                  ; preds = %.lr.ph.i17, %middle.block, %bb.e
  %.05.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.u, %middle.block ], [ %spec.select.i, %.lr.ph.i17 ] ; 2 uses
  %i.aa = shl i32 %1, 1
  %i.ab = udiv i32 %i.aa, 3
  %.not14 = icmp ult i32 %.05.lcssa.i, %i.ab
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
  store i64 %spec.store.select.i.i, ptr %i.bs, align 8
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
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView:bb.a
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = add i8 %i.df, -65                       ; 2 uses
  %i.dh = icmp ult i8 %i.dg, 16
  br i1 %i.dh, label %bb.aa, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !55
  %i.dj = shl nuw i8 %i.dc, 4
  %i.dk = or disjoint i8 %i.dg, %i.dj
  br label %bb.ah

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.dl = sext i8 %i.cv to i32
  %isdigittmp.i.i.i = add nsw i32 %i.dl, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.dm = sext i8 %i.cv to i64
  %i.dn = getelementptr i8, ptr @.str.33, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -48
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.dq, ptr %1, align 8, !tbaa !55
  br label %bb.ah

bb.ac:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.dr = icmp sgt i8 %i.cv, 96
  br i1 %i.dr, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ds = icmp samesign ult i8 %i.cv, 123
  br i1 %i.ds, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ae:                                            ; preds = %bb.ad
  %i.dt = zext nneg i8 %i.cv to i64
  %i.du = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -97
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.dx, ptr %1, align 8, !tbaa !55
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.dy = add i8 %i.cv, -65
  %or.cond.i.i = icmp ult i8 %i.dy, 26
  br i1 %or.cond.i.i, label %bb.ag, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ag:                                            ; preds = %bb.af
  %i.dz = zext nneg i8 %i.cv to i64
  %i.ea = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -65
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.ed, ptr %1, align 8, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %bb.ae, %bb.ag, %_ZNK10StringView10startsWithEc.exit.thread.i.i
  %.ph = phi ptr [ %i.cq, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ed, %bb.ag ], [ %i.dx, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.di, %bb.aa ] ; 11 uses
  %.1.i.i.ph = phi i8 [ %i.cr, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ec, %bb.ag ], [ %i.dw, %bb.ae ], [ %i.dp, %bb.ab ], [ %i.dk, %bb.aa ]
  %i.ee = icmp eq ptr %.ph, %i.cj
  br i1 %i.ee, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i, label %_ZNK10StringView10startsWithEc.exit.i5.i

_ZNK10StringView10startsWithEc.exit.i5.i:         ; preds = %bb.ah
  %i.ef = load i8, ptr %.ph, align 1, !tbaa !15
  %i.eg = icmp eq i8 %i.ef, 63
  br i1 %i.eg, label %bb.ai, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i

_ZNK10StringView10startsWithEc.exit.thread.i6.i:  ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i, %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  store ptr %i.eh, ptr %1, align 8, !tbaa !40
  %i.ei = load i8, ptr %.ph, align 1, !tbaa !15
  br label %bb.at

bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i
  %i.ej = ptrtoint ptr %i.cj to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 3 uses
  store ptr %i.ek, ptr %1, align 8, !tbaa !55
  %i.el = icmp eq ptr %i.ek, %i.cj
  br i1 %i.el, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i8.i

_ZNK10StringView10startsWithEc.exit.i.i8.i:       ; preds = %bb.ai
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !15  ; 8 uses
  %i.en = icmp eq i8 %i.em, 36
  br i1 %i.en, label %bb.aj, label %_ZL15startsWithDigit10StringView.exit.i9.i

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.ph, i64 2 ; 3 uses
  store ptr %i.eo, ptr %1, align 8, !tbaa !55
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ej, %i.ep
  %i.er = icmp ult i64 %i.eq, 2
  br i1 %i.er, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.et = add i8 %i.es, -65                       ; 2 uses
  %i.eu = icmp ult i8 %i.et, 16
  br i1 %i.eu, label %bb.al, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.ph, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.ex = add i8 %i.ew, -65                       ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 16
  br i1 %i.ey, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store ptr %i.ez, ptr %1, align 8, !tbaa !55
  %i.fa = shl nuw i8 %i.et, 4
  %i.fb = or disjoint i8 %i.ex, %i.fa
  br label %bb.at

_ZL15startsWithDigit10StringView.exit.i9.i:       ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.fc = sext i8 %i.em to i32
  %isdigittmp.i.i10.i = add nsw i32 %i.fc, -48
  %isdigit.i.i11.i = icmp ult i32 %isdigittmp.i.i10.i, 10
  br i1 %isdigit.i.i11.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.fd = sext i8 %i.em to i64
  %i.fe = getelementptr i8, ptr @.str.33, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -48
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fh, ptr %1, align 8, !tbaa !55
  br label %bb.at

bb.ao:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.fi = icmp sgt i8 %i.em, 96
  br i1 %i.fi, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp samesign ult i8 %i.em, 123
  br i1 %i.fj, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aq:                                            ; preds = %bb.ap
  %i.fk = zext nneg i8 %i.em to i64
  %i.fl = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -97
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fo, ptr %1, align 8, !tbaa !55
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.fp = add i8 %i.em, -65
  %or.cond.i12.i = icmp ult i8 %i.fp, 26
  br i1 %or.cond.i12.i, label %bb.as, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.as:                                            ; preds = %bb.ar
  %i.fq = zext nneg i8 %i.em to i64
  %i.fr = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -65
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fu, ptr %1, align 8, !tbaa !55
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an, %bb.am, %_ZNK10StringView10startsWithEc.exit.thread.i6.i
  %.1.i7.ph.i = phi i8 [ %i.ei, %_ZNK10StringView10startsWithEc.exit.thread.i6.i ], [ %i.ft, %bb.as ], [ %i.fn, %bb.aq ], [ %i.fg, %bb.an ], [ %i.fb, %bb.am ]
  %i.fv = zext i8 %.1.i.i.ph to i32
  %i.fw = shl nuw nsw i32 %i.fv, 8
  %i.fx = zext i8 %.1.i7.ph.i to i32
  %i.fy = or disjoint i32 %i.fw, %i.fx
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i: ; preds = %bb.af, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit: ; preds = %bb.at, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i
  %i.fz = phi i8 [ 1, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ 0, %bb.at ]
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ %i.fy, %bb.at ]
  %.not = icmp eq i64 %.086, 2
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  %i.ga = load i8, ptr %i.ch, align 8, !tbaa !140, !range !51, !noundef !52
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i)
  %.pre = load i8, ptr %i.bp, align 8, !tbaa !28, !range !51
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gc = phi i8 [ %.pre, %bb.av ], [ %i.fz, %bb.au ]
  %i.gd = add i64 %.086, -2
  %i.ge = trunc nuw i8 %i.gc to i1
  br i1 %i.ge, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.v

bb.ax:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit, %bb.ax
  %i.gf = phi ptr [ %i.hz, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ], [ %i.bz, %bb.ax ] ; 13 uses
  %.054 = phi i32 [ %indvars.iv.next109, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ], [ 0, %bb.ax ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ], [ 0, %bb.ax ] ; 4 uses
  %i.gg = icmp eq ptr %i.gf, %i.ac
  br i1 %i.gg, label %_ZNK10StringView10startsWithEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i65

_ZNK10StringView10startsWithEc.exit.i65:          ; preds = %bb.ay
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gi = icmp eq i8 %i.gh, 64
  br i1 %i.gi, label %bb.bk, label %_ZNK10StringView10startsWithEc.exit.i67

_ZNK10StringView10startsWithEc.exit.i67:          ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gk = icmp eq i8 %i.gj, 63
  br i1 %i.gk, label %bb.az, label %_ZNK10StringView10startsWithEc.exit.thread.i

_ZNK10StringView10startsWithEc.exit.thread.i:     ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i67
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  store ptr %i.gl, ptr %1, align 8, !tbaa !40
  %i.gm = load i8, ptr %i.gf, align 1, !tbaa !15
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i67
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 6 uses
  store ptr %i.gn, ptr %1, align 8, !tbaa !55
  %i.go = icmp eq ptr %i.gn, %i.ac
  br i1 %i.go, label %.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i69

_ZNK10StringView10startsWithEc.exit.i.i69:        ; preds = %bb.az
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !15  ; 8 uses
  %i.gq = icmp eq i8 %i.gp, 36
  br i1 %i.gq, label %bb.ba, label %_ZL15startsWithDigit10StringView.exit.i70

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 6 uses
  store ptr %i.gr, ptr %1, align 8, !tbaa !55
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
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.1.i68, ptr %3, align 1, !tbaa !15
  %indvars.iv.next109 = add i32 %.054, 1
  br label %bb.ay, !llvm.loop !135

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %4 = trunc nuw i64 %indvars.iv to i32           ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store ptr %i.ia, ptr %1, align 8, !tbaa !55
  %i.ib = icmp ugt i64 %.sroa.0.4.i, %indvars.iv
  br i1 %i.ib, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.ic, align 8, !tbaa !140
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.id = trunc i64 %.sroa.0.4.i to i32
  %i.ie = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %i.id) ; 8 uses
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.if
  %switch.gep = getelementptr i8, ptr %i.ig, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.aa, align 4, !tbaa !139
  %.not98 = icmp ugt i32 %i.ie, %4
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ih = udiv i32 %4, %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %5 = zext i32 %i.ih to i64
  %6 = udiv i32 %.054, %i.ie
  %i.ij = zext i32 %6 to i64
  %exitcond.not.i74 = icmp eq i32 %i.ie, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.ie, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.ie, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bs, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bt

bb.bm:                                            ; preds = %.lr.ph, %bb.bs
  %indvars.iv.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %bb.bs ] ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv.a to i32
  %i.il = mul i32 %i.ie, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.im ; 4 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !15
  %i.is = zext i8 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 8
  %i.iu = or disjoint i32 %i.it, %i.ip            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !15
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 16
  %i.iz = or disjoint i32 %i.iy, %i.iu            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !15
  %i.jc = zext i8 %i.jb to i32
  %i.jd = shl nuw i32 %i.jc, 24
  %i.je = or disjoint i32 %i.jd, %i.iz
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa155 = phi i32 [ %i.ip, %bb.bm ], [ %i.iu, %bb.bn ], [ %i.iz, %bb.bo ], [ %i.je, %bb.bp ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next.a, %5
  br i1 %i.jf, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.jg = load i8, ptr %i.ii, align 8, !tbaa !140, !range !51, !noundef !52
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa155)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.ij
  br i1 %exitcond.not, label %._crit_edge, label %bb.bm, !llvm.loop !136

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.ji = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.jj = load ptr, ptr %2, align 8, !tbaa !44    ; 4 uses
  %i.jk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jj) #21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  %i.jm = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.jj, ptr nonnull %i.jl) ; 2 uses
  %i.jn = extractvalue { ptr, ptr } %i.jm, 0
  %i.jo = extractvalue { ptr, ptr } %i.jm, 1
  store ptr %i.jn, ptr %i.z, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  call void @free(ptr noundef %i.jj) #19
  br label %bb.bu

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZNK10StringView4findEcm.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jp, align 8, !tbaa !28
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bt
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bt ]
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
  store i64 0, ptr %i.ar, align 8, !tbaa !142
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
end_hunk_1
