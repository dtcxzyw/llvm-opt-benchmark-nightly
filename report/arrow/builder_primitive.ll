Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder_primitive?download=true
inline.NumInlined: 724
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5arrow14BooleanBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i62: ; preds = %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60, %bb.cn, %bb.cl
  %.pr.i63 = load ptr, ptr %3, align 8, !tbaa !71 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.pr.i63, null
  br i1 %.not.i.i64, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit65, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i57, !prof !149

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i57: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i62, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jt = phi ptr [ %.pr.i63, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i62 ], [ %i.ja, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !150, !range !159, !noundef !160
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit65, label %bb.cs

bb.cs:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i57
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit65

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit65: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i62, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i57, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ct:                                            ; preds = %bb.ck, %bb.c
  %.pn23 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn19.pn, %bb.ck ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn23
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !60
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !161
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !161
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !64

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !149

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !150, !range !159, !noundef !160
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.101, align 8            ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !162, !noalias !163 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !61, !noalias !163
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !163
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !163, !inline_history !166
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !61, !noalias !163
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !163
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !167  ; 2 uses
  %i.t = sdiv i64 %i.s, 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 4 uses
  %i.v = srem i64 %i.s, 8                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.u, align 1, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = and i8 %i.y, %i.w                        ; 2 uses
  %i.aa = icmp sgt i64 %3, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ad = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ae, %bb.e ] ; 2 uses
  %.03556.i.i = phi i64 [ %3, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.03655.i.i = phi i8 [ %i.ac, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 2 uses
  %.04054.i.i = phi i8 [ %i.z, %.lr.ph.i.i ], [ %i.ai, %bb.e ]
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %.not51.i.i = icmp eq i8 %i.ag, 0
  %i.ah = select i1 %.not51.i.i, i8 0, i8 %.03655.i.i
  %i.ai = or i8 %i.ah, %.04054.i.i                ; 2 uses
  %i.aj = shl i8 %.03655.i.i, 1                   ; 2 uses
  %i.ak = add nsw i64 %.03556.i.i, -1             ; 2 uses
  %i.al = icmp ne i8 %i.aj, 0
  %i.am = icmp samesign ugt i64 %.03556.i.i, 1
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.e, label %._crit_edge.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.018 = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.e ]
  %.040.lcssa.i.i = phi i8 [ %i.z, %bb.d ], [ %i.ai, %bb.e ]
  %.035.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %i.ak, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %.040.lcssa.i.i, ptr %i.u, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %.018, %._crit_edge.i.i ] ; 9 uses
  %.038.i.i = phi ptr [ %i.u, %bb.c ], [ %i.ao, %._crit_edge.i.i ] ; 9 uses
  %.1.i.i = phi i64 [ %3, %bb.c ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.ap = icmp sgt i64 %.1.i.i, 7
  br i1 %i.ap, label %iter.check, label %._crit_edge60.i.i

iter.check:                                       ; preds = %bb.f
  %i.aq = lshr i64 %.1.i.i, 3                     ; 9 uses
  %7 = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)  ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i.i, 32
  br i1 %min.iters.check, label %.preheader53.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %8 = icmp ne i64 %i.aq, 0                       ; 2 uses
  %umin.neg = sext i1 %8 to i64
  %i.ar = getelementptr i8, ptr %.038.i.i, i64 %i.aq
  %9 = getelementptr i8, ptr %i.ar, i64 1
  %scevgep = getelementptr i8, ptr %9, i64 %umin.neg
  %scevgep46 = getelementptr i8, ptr %2, i64 %.1
  %i.as = and i64 %.1.i.i, 9223372036854775800
  %10 = add i64 %.1, %i.as                        ; 2 uses
  %11 = add i64 %10, 8
  %12 = select i1 %8, i64 %10, i64 %11
  %scevgep47 = getelementptr i8, ptr %2, i64 %12
  %bound0 = icmp ult ptr %.038.i.i, %scevgep47
  %bound1 = icmp ult ptr %scevgep46, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader53.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check49 = icmp ult i64 %.1.i.i, 128
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %13 = and i64 %7, 12
  %n.vec = and i64 %7, 1152921504606846960        ; 6 uses
  %i.at = shl nuw nsw i64 %n.vec, 3
  %i.au = add i64 %.1, %i.at                      ; 2 uses
  %14 = sub nsw i64 %i.aq, %n.vec
  %i.av = getelementptr i8, ptr %.038.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl nuw i64 %index, 3
  %i.ax = add nuw i64 %.1, %i.aw                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i.i, i64 %index
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.az = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %i.bf = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 40
  %i.bj = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %i.bl = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 56
  %i.bn = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 64
  %i.bp = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 72
  %i.br = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 80
  %i.bt = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 88
  %i.bv = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 96
  %i.bx = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 104
  %i.bz = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 112
  %i.cb = getelementptr i8, ptr %2, i64 %i.ax     ; 8 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 120
  %i.cd = load i8, ptr %i.ay, align 1, !tbaa !38, !alias.scope !169
  %i.ce = load i8, ptr %i.ba, align 1, !tbaa !38, !alias.scope !169
  %i.cf = load i8, ptr %i.bc, align 1, !tbaa !38, !alias.scope !169
  %i.cg = load i8, ptr %i.be, align 1, !tbaa !38, !alias.scope !169
  %i.ch = load i8, ptr %i.bg, align 1, !tbaa !38, !alias.scope !169
  %i.ci = load i8, ptr %i.bi, align 1, !tbaa !38, !alias.scope !169
  %i.cj = load i8, ptr %i.bk, align 1, !tbaa !38, !alias.scope !169
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !38, !alias.scope !169
  %i.cl = load i8, ptr %i.bo, align 1, !tbaa !38, !alias.scope !169
  %i.cm = load i8, ptr %i.bq, align 1, !tbaa !38, !alias.scope !169
  %i.cn = load i8, ptr %i.bs, align 1, !tbaa !38, !alias.scope !169
  %i.co = load i8, ptr %i.bu, align 1, !tbaa !38, !alias.scope !169
  %i.cp = load i8, ptr %i.bw, align 1, !tbaa !38, !alias.scope !169
  %i.cq = load i8, ptr %i.by, align 1, !tbaa !38, !alias.scope !169
  %i.cr = load i8, ptr %i.ca, align 1, !tbaa !38, !alias.scope !169
  %i.cs = load i8, ptr %i.cc, align 1, !tbaa !38, !alias.scope !169
  %i.ct = insertelement <16 x i8> poison, i8 %i.cd, i64 0
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 1
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 2
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 3
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 4
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 5
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 6
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 7
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 8
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 9
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 10
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 11
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 12
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 13
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 14
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 15
  %i.dj = icmp ne <16 x i8> %i.di, zeroinitializer
  %i.dk = zext <16 x i1> %i.dj to <16 x i8>
  %i.dl = getelementptr i8, ptr %i.ay, i64 1
  %i.dm = getelementptr i8, ptr %i.az, i64 9
  %i.dn = getelementptr i8, ptr %i.bb, i64 17
  %i.do = getelementptr i8, ptr %i.bd, i64 25
  %i.dp = getelementptr i8, ptr %i.bf, i64 33
  %i.dq = getelementptr i8, ptr %i.bh, i64 41
  %i.dr = getelementptr i8, ptr %i.bj, i64 49
  %i.ds = getelementptr i8, ptr %i.bl, i64 57
  %i.dt = getelementptr i8, ptr %i.bn, i64 65
  %i.du = getelementptr i8, ptr %i.bp, i64 73
  %i.dv = getelementptr i8, ptr %i.br, i64 81
  %i.dw = getelementptr i8, ptr %i.bt, i64 89
  %i.dx = getelementptr i8, ptr %i.bv, i64 97
  %i.dy = getelementptr i8, ptr %i.bx, i64 105
  %i.dz = getelementptr i8, ptr %i.bz, i64 113
  %i.ea = getelementptr i8, ptr %i.cb, i64 121
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !38, !alias.scope !169
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !38, !alias.scope !169
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !38, !alias.scope !169
  %i.ee = load i8, ptr %i.do, align 1, !tbaa !38, !alias.scope !169
  %i.ef = load i8, ptr %i.dp, align 1, !tbaa !38, !alias.scope !169
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !38, !alias.scope !169
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !38, !alias.scope !169
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !38, !alias.scope !169
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !38, !alias.scope !169
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !38, !alias.scope !169
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !38, !alias.scope !169
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !38, !alias.scope !169
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !38, !alias.scope !169
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !38, !alias.scope !169
  %i.ep = load i8, ptr %i.dz, align 1, !tbaa !38, !alias.scope !169
  %i.eq = load i8, ptr %i.ea, align 1, !tbaa !38, !alias.scope !169
  %i.er = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 1
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 2
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 3
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 4
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 5
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 6
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 7
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 8
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 9
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 10
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 11
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 12
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 13
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 14
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 15
  %i.fh = icmp eq <16 x i8> %i.fg, zeroinitializer
  %i.fi = getelementptr i8, ptr %i.ay, i64 2
  %i.fj = getelementptr i8, ptr %i.az, i64 10
  %i.fk = getelementptr i8, ptr %i.bb, i64 18
  %i.fl = getelementptr i8, ptr %i.bd, i64 26
  %i.fm = getelementptr i8, ptr %i.bf, i64 34
  %i.fn = getelementptr i8, ptr %i.bh, i64 42
  %i.fo = getelementptr i8, ptr %i.bj, i64 50
  %i.fp = getelementptr i8, ptr %i.bl, i64 58
  %i.fq = getelementptr i8, ptr %i.bn, i64 66
  %i.fr = getelementptr i8, ptr %i.bp, i64 74
  %i.fs = getelementptr i8, ptr %i.br, i64 82
  %i.ft = getelementptr i8, ptr %i.bt, i64 90
  %i.fu = getelementptr i8, ptr %i.bv, i64 98
  %i.fv = getelementptr i8, ptr %i.bx, i64 106
  %i.fw = getelementptr i8, ptr %i.bz, i64 114
  %i.fx = getelementptr i8, ptr %i.cb, i64 122
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !38, !alias.scope !169
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !38, !alias.scope !169
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !38, !alias.scope !169
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !38, !alias.scope !169
  %i.gc = load i8, ptr %i.fm, align 1, !tbaa !38, !alias.scope !169
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !38, !alias.scope !169
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !38, !alias.scope !169
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !38, !alias.scope !169
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !38, !alias.scope !169
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !38, !alias.scope !169
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !38, !alias.scope !169
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !38, !alias.scope !169
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !38, !alias.scope !169
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !38, !alias.scope !169
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !38, !alias.scope !169
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !38, !alias.scope !169
  %i.go = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 1
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 2
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 3
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 4
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 5
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 6
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 7
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 8
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 9
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 10
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 11
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 12
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 13
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 14
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 15
  %i.he = icmp eq <16 x i8> %i.hd, zeroinitializer
  %i.hf = getelementptr i8, ptr %i.ay, i64 3
  %i.hg = getelementptr i8, ptr %i.az, i64 11
  %i.hh = getelementptr i8, ptr %i.bb, i64 19
  %i.hi = getelementptr i8, ptr %i.bd, i64 27
  %i.hj = getelementptr i8, ptr %i.bf, i64 35
  %i.hk = getelementptr i8, ptr %i.bh, i64 43
  %i.hl = getelementptr i8, ptr %i.bj, i64 51
  %i.hm = getelementptr i8, ptr %i.bl, i64 59
  %i.hn = getelementptr i8, ptr %i.bn, i64 67
  %i.ho = getelementptr i8, ptr %i.bp, i64 75
  %i.hp = getelementptr i8, ptr %i.br, i64 83
  %i.hq = getelementptr i8, ptr %i.bt, i64 91
  %i.hr = getelementptr i8, ptr %i.bv, i64 99
  %i.hs = getelementptr i8, ptr %i.bx, i64 107
  %i.ht = getelementptr i8, ptr %i.bz, i64 115
  %i.hu = getelementptr i8, ptr %i.cb, i64 123
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !38, !alias.scope !169
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !38, !alias.scope !169
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !38, !alias.scope !169
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !38, !alias.scope !169
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !38, !alias.scope !169
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !38, !alias.scope !169
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !38, !alias.scope !169
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !38, !alias.scope !169
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !38, !alias.scope !169
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !38, !alias.scope !169
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !38, !alias.scope !169
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !38, !alias.scope !169
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !38, !alias.scope !169
end_hunk_0
begin_hunk_1_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_:bb.a
  %i.jw = load i8, ptr %i.jg, align 1, !tbaa !38, !alias.scope !169
  %i.jx = load i8, ptr %i.jh, align 1, !tbaa !38, !alias.scope !169
  %i.jy = load i8, ptr %i.ji, align 1, !tbaa !38, !alias.scope !169
  %i.jz = load i8, ptr %i.jj, align 1, !tbaa !38, !alias.scope !169
  %i.ka = load i8, ptr %i.jk, align 1, !tbaa !38, !alias.scope !169
  %i.kb = load i8, ptr %i.jl, align 1, !tbaa !38, !alias.scope !169
  %i.kc = load i8, ptr %i.jm, align 1, !tbaa !38, !alias.scope !169
  %i.kd = load i8, ptr %i.jn, align 1, !tbaa !38, !alias.scope !169
  %i.ke = load i8, ptr %i.jo, align 1, !tbaa !38, !alias.scope !169
  %i.kf = load i8, ptr %i.jp, align 1, !tbaa !38, !alias.scope !169
  %i.kg = load i8, ptr %i.jq, align 1, !tbaa !38, !alias.scope !169
  %i.kh = load i8, ptr %i.jr, align 1, !tbaa !38, !alias.scope !169
  %i.ki = insertelement <16 x i8> poison, i8 %i.js, i64 0
  %i.kj = insertelement <16 x i8> %i.ki, i8 %i.jt, i64 1
  %i.kk = insertelement <16 x i8> %i.kj, i8 %i.ju, i64 2
  %i.kl = insertelement <16 x i8> %i.kk, i8 %i.jv, i64 3
  %i.km = insertelement <16 x i8> %i.kl, i8 %i.jw, i64 4
  %i.kn = insertelement <16 x i8> %i.km, i8 %i.jx, i64 5
  %i.ko = insertelement <16 x i8> %i.kn, i8 %i.jy, i64 6
  %i.kp = insertelement <16 x i8> %i.ko, i8 %i.jz, i64 7
  %i.kq = insertelement <16 x i8> %i.kp, i8 %i.ka, i64 8
  %i.kr = insertelement <16 x i8> %i.kq, i8 %i.kb, i64 9
  %i.ks = insertelement <16 x i8> %i.kr, i8 %i.kc, i64 10
  %i.kt = insertelement <16 x i8> %i.ks, i8 %i.kd, i64 11
  %i.ku = insertelement <16 x i8> %i.kt, i8 %i.ke, i64 12
  %i.kv = insertelement <16 x i8> %i.ku, i8 %i.kf, i64 13
  %i.kw = insertelement <16 x i8> %i.kv, i8 %i.kg, i64 14
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 15
  %i.ky = icmp eq <16 x i8> %i.kx, zeroinitializer
  %i.kz = getelementptr i8, ptr %i.ay, i64 5
  %i.la = getelementptr i8, ptr %i.az, i64 13
  %i.lb = getelementptr i8, ptr %i.bb, i64 21
  %i.lc = getelementptr i8, ptr %i.bd, i64 29
  %i.ld = getelementptr i8, ptr %i.bf, i64 37
  %i.le = getelementptr i8, ptr %i.bh, i64 45
  %i.lf = getelementptr i8, ptr %i.bj, i64 53
  %i.lg = getelementptr i8, ptr %i.bl, i64 61
  %i.lh = getelementptr i8, ptr %i.bn, i64 69
  %i.li = getelementptr i8, ptr %i.bp, i64 77
  %i.lj = getelementptr i8, ptr %i.br, i64 85
  %i.lk = getelementptr i8, ptr %i.bt, i64 93
  %i.ll = getelementptr i8, ptr %i.bv, i64 101
  %i.lm = getelementptr i8, ptr %i.bx, i64 109
  %i.ln = getelementptr i8, ptr %i.bz, i64 117
  %i.lo = getelementptr i8, ptr %i.cb, i64 125
  %i.lp = load i8, ptr %i.kz, align 1, !tbaa !38, !alias.scope !169
  %i.lq = load i8, ptr %i.la, align 1, !tbaa !38, !alias.scope !169
  %i.lr = load i8, ptr %i.lb, align 1, !tbaa !38, !alias.scope !169
  %i.ls = load i8, ptr %i.lc, align 1, !tbaa !38, !alias.scope !169
  %i.lt = load i8, ptr %i.ld, align 1, !tbaa !38, !alias.scope !169
  %i.lu = load i8, ptr %i.le, align 1, !tbaa !38, !alias.scope !169
  %i.lv = load i8, ptr %i.lf, align 1, !tbaa !38, !alias.scope !169
  %i.lw = load i8, ptr %i.lg, align 1, !tbaa !38, !alias.scope !169
  %i.lx = load i8, ptr %i.lh, align 1, !tbaa !38, !alias.scope !169
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !38, !alias.scope !169
  %i.lz = load i8, ptr %i.lj, align 1, !tbaa !38, !alias.scope !169
  %i.ma = load i8, ptr %i.lk, align 1, !tbaa !38, !alias.scope !169
  %i.mb = load i8, ptr %i.ll, align 1, !tbaa !38, !alias.scope !169
  %i.mc = load i8, ptr %i.lm, align 1, !tbaa !38, !alias.scope !169
  %i.md = load i8, ptr %i.ln, align 1, !tbaa !38, !alias.scope !169
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !38, !alias.scope !169
  %i.mf = insertelement <16 x i8> poison, i8 %i.lp, i64 0
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 1
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 2
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 3
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 4
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 5
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 6
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 7
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 8
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 9
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 10
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 11
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 12
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 13
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 14
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 15
  %i.mv = icmp eq <16 x i8> %i.mu, zeroinitializer
  %i.mw = getelementptr i8, ptr %i.ay, i64 6
  %i.mx = getelementptr i8, ptr %i.az, i64 14
  %i.my = getelementptr i8, ptr %i.bb, i64 22
  %i.mz = getelementptr i8, ptr %i.bd, i64 30
  %i.na = getelementptr i8, ptr %i.bf, i64 38
  %i.nb = getelementptr i8, ptr %i.bh, i64 46
  %i.nc = getelementptr i8, ptr %i.bj, i64 54
  %i.nd = getelementptr i8, ptr %i.bl, i64 62
  %i.ne = getelementptr i8, ptr %i.bn, i64 70
  %i.nf = getelementptr i8, ptr %i.bp, i64 78
  %i.ng = getelementptr i8, ptr %i.br, i64 86
  %i.nh = getelementptr i8, ptr %i.bt, i64 94
  %i.ni = getelementptr i8, ptr %i.bv, i64 102
  %i.nj = getelementptr i8, ptr %i.bx, i64 110
  %i.nk = getelementptr i8, ptr %i.bz, i64 118
  %i.nl = getelementptr i8, ptr %i.cb, i64 126
  %i.nm = load i8, ptr %i.mw, align 1, !tbaa !38, !alias.scope !169
  %i.nn = load i8, ptr %i.mx, align 1, !tbaa !38, !alias.scope !169
  %i.no = load i8, ptr %i.my, align 1, !tbaa !38, !alias.scope !169
  %i.np = load i8, ptr %i.mz, align 1, !tbaa !38, !alias.scope !169
  %i.nq = load i8, ptr %i.na, align 1, !tbaa !38, !alias.scope !169
  %i.nr = load i8, ptr %i.nb, align 1, !tbaa !38, !alias.scope !169
  %i.ns = load i8, ptr %i.nc, align 1, !tbaa !38, !alias.scope !169
  %i.nt = load i8, ptr %i.nd, align 1, !tbaa !38, !alias.scope !169
  %i.nu = load i8, ptr %i.ne, align 1, !tbaa !38, !alias.scope !169
  %i.nv = load i8, ptr %i.nf, align 1, !tbaa !38, !alias.scope !169
  %i.nw = load i8, ptr %i.ng, align 1, !tbaa !38, !alias.scope !169
  %i.nx = load i8, ptr %i.nh, align 1, !tbaa !38, !alias.scope !169
  %i.ny = load i8, ptr %i.ni, align 1, !tbaa !38, !alias.scope !169
  %i.nz = load i8, ptr %i.nj, align 1, !tbaa !38, !alias.scope !169
  %i.oa = load i8, ptr %i.nk, align 1, !tbaa !38, !alias.scope !169
  %i.ob = load i8, ptr %i.nl, align 1, !tbaa !38, !alias.scope !169
  %i.oc = insertelement <16 x i8> poison, i8 %i.nm, i64 0
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 1
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 2
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 3
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 4
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 5
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 6
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 7
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 8
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 9
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 10
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 11
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 12
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 13
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 14
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 15
  %i.os = icmp eq <16 x i8> %i.or, zeroinitializer
  %i.ot = getelementptr i8, ptr %i.ay, i64 7
  %i.ou = getelementptr i8, ptr %i.az, i64 15
  %i.ov = getelementptr i8, ptr %i.bb, i64 23
  %i.ow = getelementptr i8, ptr %i.bd, i64 31
  %i.ox = getelementptr i8, ptr %i.bf, i64 39
  %i.oy = getelementptr i8, ptr %i.bh, i64 47
  %i.oz = getelementptr i8, ptr %i.bj, i64 55
  %i.pa = getelementptr i8, ptr %i.bl, i64 63
  %i.pb = getelementptr i8, ptr %i.bn, i64 71
  %i.pc = getelementptr i8, ptr %i.bp, i64 79
  %i.pd = getelementptr i8, ptr %i.br, i64 87
  %i.pe = getelementptr i8, ptr %i.bt, i64 95
  %i.pf = getelementptr i8, ptr %i.bv, i64 103
  %i.pg = getelementptr i8, ptr %i.bx, i64 111
  %i.ph = getelementptr i8, ptr %i.bz, i64 119
  %i.pi = getelementptr i8, ptr %i.cb, i64 127
  %i.pj = load i8, ptr %i.ot, align 1, !tbaa !38, !alias.scope !169
  %i.pk = load i8, ptr %i.ou, align 1, !tbaa !38, !alias.scope !169
  %i.pl = load i8, ptr %i.ov, align 1, !tbaa !38, !alias.scope !169
  %i.pm = load i8, ptr %i.ow, align 1, !tbaa !38, !alias.scope !169
  %i.pn = load i8, ptr %i.ox, align 1, !tbaa !38, !alias.scope !169
  %i.po = load i8, ptr %i.oy, align 1, !tbaa !38, !alias.scope !169
  %i.pp = load i8, ptr %i.oz, align 1, !tbaa !38, !alias.scope !169
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !38, !alias.scope !169
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !38, !alias.scope !169
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !38, !alias.scope !169
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !38, !alias.scope !169
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !38, !alias.scope !169
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !38, !alias.scope !169
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !38, !alias.scope !169
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !38, !alias.scope !169
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !38, !alias.scope !169
  %i.pz = insertelement <16 x i8> poison, i8 %i.pj, i64 0
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 1
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 2
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 3
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 4
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 5
  %i.qf = insertelement <16 x i8> %i.qe, i8 %i.pp, i64 6
  %i.qg = insertelement <16 x i8> %i.qf, i8 %i.pq, i64 7
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 8
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 9
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 10
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 11
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 12
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 13
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 14
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 15
  %i.qp = icmp eq <16 x i8> %i.qo, zeroinitializer
  %i.qq = select <16 x i1> %i.fh, <16 x i8> zeroinitializer, <16 x i8> splat (i8 2)
  %i.qr = or disjoint <16 x i8> %i.qq, %i.dk
  %i.qs = select <16 x i1> %i.he, <16 x i8> zeroinitializer, <16 x i8> splat (i8 4)
  %i.qt = or disjoint <16 x i8> %i.qr, %i.qs
  %i.qu = select <16 x i1> %i.jb, <16 x i8> zeroinitializer, <16 x i8> splat (i8 8)
  %i.qv = or disjoint <16 x i8> %i.qt, %i.qu
  %i.qw = select <16 x i1> %i.ky, <16 x i8> zeroinitializer, <16 x i8> splat (i8 16)
  %i.qx = or disjoint <16 x i8> %i.qv, %i.qw
  %i.qy = select <16 x i1> %i.mv, <16 x i8> zeroinitializer, <16 x i8> splat (i8 32)
  %i.qz = or disjoint <16 x i8> %i.qx, %i.qy
  %i.ra = select <16 x i1> %i.os, <16 x i8> zeroinitializer, <16 x i8> splat (i8 64)
  %i.rb = or <16 x i8> %i.qz, %i.ra
  %i.rc = select <16 x i1> %i.qp, <16 x i8> zeroinitializer, <16 x i8> splat (i8 -128)
  %i.rd = or <16 x i8> %i.rb, %i.rc
  store <16 x i8> %i.rd, ptr %next.gep, align 1, !tbaa !38, !alias.scope !172, !noalias !169
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.re = icmp eq i64 %index.next, %n.vec
  br i1 %i.re, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge60.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %13, 0
  br i1 %min.epilog.iters.check, label %.preheader53.i.i.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %7, 1152921504606846972      ; 5 uses
  %i.rf = shl nuw nsw i64 %n.vec52, 3
  %i.rg = add i64 %.1, %i.rf                      ; 2 uses
  %15 = sub nsw i64 %i.aq, %n.vec52
  %i.rh = getelementptr i8, ptr %.038.i.i, i64 %n.vec52 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %i.ri = shl nuw i64 %index53, 3
  %i.rj = add nuw i64 %.1, %i.ri                  ; 4 uses
  %next.gep54 = getelementptr i8, ptr %.038.i.i, i64 %index53
  %i.rk = getelementptr i8, ptr %2, i64 %i.rj     ; 8 uses
  %i.rl = getelementptr i8, ptr %2, i64 %i.rj     ; 8 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 8
  %i.rn = getelementptr i8, ptr %2, i64 %i.rj     ; 8 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 16
  %i.rp = getelementptr i8, ptr %2, i64 %i.rj     ; 8 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 24
  %i.rr = load i8, ptr %i.rk, align 1, !tbaa !38, !alias.scope !169
  %i.rs = load i8, ptr %i.rm, align 1, !tbaa !38, !alias.scope !169
  %i.rt = load i8, ptr %i.ro, align 1, !tbaa !38, !alias.scope !169
  %i.ru = load i8, ptr %i.rq, align 1, !tbaa !38, !alias.scope !169
  %i.rv = insertelement <4 x i8> poison, i8 %i.rr, i64 0
  %i.rw = insertelement <4 x i8> %i.rv, i8 %i.rs, i64 1
  %i.rx = insertelement <4 x i8> %i.rw, i8 %i.rt, i64 2
  %i.ry = insertelement <4 x i8> %i.rx, i8 %i.ru, i64 3
  %i.rz = icmp ne <4 x i8> %i.ry, zeroinitializer
  %i.sa = zext <4 x i1> %i.rz to <4 x i8>
  %i.sb = getelementptr i8, ptr %i.rk, i64 1
  %i.sc = getelementptr i8, ptr %i.rl, i64 9
  %i.sd = getelementptr i8, ptr %i.rn, i64 17
  %i.se = getelementptr i8, ptr %i.rp, i64 25
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !38, !alias.scope !169
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !38, !alias.scope !169
  %i.sh = load i8, ptr %i.sd, align 1, !tbaa !38, !alias.scope !169
  %i.si = load i8, ptr %i.se, align 1, !tbaa !38, !alias.scope !169
  %i.sj = insertelement <4 x i8> poison, i8 %i.sf, i64 0
  %i.sk = insertelement <4 x i8> %i.sj, i8 %i.sg, i64 1
  %i.sl = insertelement <4 x i8> %i.sk, i8 %i.sh, i64 2
  %i.sm = insertelement <4 x i8> %i.sl, i8 %i.si, i64 3
  %i.sn = icmp eq <4 x i8> %i.sm, zeroinitializer
  %i.so = getelementptr i8, ptr %i.rk, i64 2
  %i.sp = getelementptr i8, ptr %i.rl, i64 10
  %i.sq = getelementptr i8, ptr %i.rn, i64 18
  %i.sr = getelementptr i8, ptr %i.rp, i64 26
  %i.ss = load i8, ptr %i.so, align 1, !tbaa !38, !alias.scope !169
  %i.st = load i8, ptr %i.sp, align 1, !tbaa !38, !alias.scope !169
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !38, !alias.scope !169
  %i.sv = load i8, ptr %i.sr, align 1, !tbaa !38, !alias.scope !169
  %i.sw = insertelement <4 x i8> poison, i8 %i.ss, i64 0
  %i.sx = insertelement <4 x i8> %i.sw, i8 %i.st, i64 1
  %i.sy = insertelement <4 x i8> %i.sx, i8 %i.su, i64 2
  %i.sz = insertelement <4 x i8> %i.sy, i8 %i.sv, i64 3
  %i.ta = icmp eq <4 x i8> %i.sz, zeroinitializer
  %i.tb = getelementptr i8, ptr %i.rk, i64 3
  %i.tc = getelementptr i8, ptr %i.rl, i64 11
  %i.td = getelementptr i8, ptr %i.rn, i64 19
  %i.te = getelementptr i8, ptr %i.rp, i64 27
  %i.tf = load i8, ptr %i.tb, align 1, !tbaa !38, !alias.scope !169
  %i.tg = load i8, ptr %i.tc, align 1, !tbaa !38, !alias.scope !169
  %i.th = load i8, ptr %i.td, align 1, !tbaa !38, !alias.scope !169
  %i.ti = load i8, ptr %i.te, align 1, !tbaa !38, !alias.scope !169
  %i.tj = insertelement <4 x i8> poison, i8 %i.tf, i64 0
  %i.tk = insertelement <4 x i8> %i.tj, i8 %i.tg, i64 1
  %i.tl = insertelement <4 x i8> %i.tk, i8 %i.th, i64 2
  %i.tm = insertelement <4 x i8> %i.tl, i8 %i.ti, i64 3
  %i.tn = icmp eq <4 x i8> %i.tm, zeroinitializer
  %i.to = getelementptr i8, ptr %i.rk, i64 4
  %i.tp = getelementptr i8, ptr %i.rl, i64 12
  %i.tq = getelementptr i8, ptr %i.rn, i64 20
  %i.tr = getelementptr i8, ptr %i.rp, i64 28
  %i.ts = load i8, ptr %i.to, align 1, !tbaa !38, !alias.scope !169
  %i.tt = load i8, ptr %i.tp, align 1, !tbaa !38, !alias.scope !169
  %i.tu = load i8, ptr %i.tq, align 1, !tbaa !38, !alias.scope !169
  %i.tv = load i8, ptr %i.tr, align 1, !tbaa !38, !alias.scope !169
  %i.tw = insertelement <4 x i8> poison, i8 %i.ts, i64 0
  %i.tx = insertelement <4 x i8> %i.tw, i8 %i.tt, i64 1
  %i.ty = insertelement <4 x i8> %i.tx, i8 %i.tu, i64 2
  %i.tz = insertelement <4 x i8> %i.ty, i8 %i.tv, i64 3
  %i.ua = icmp eq <4 x i8> %i.tz, zeroinitializer
  %i.ub = getelementptr i8, ptr %i.rk, i64 5
  %i.uc = getelementptr i8, ptr %i.rl, i64 13
  %i.ud = getelementptr i8, ptr %i.rn, i64 21
  %i.ue = getelementptr i8, ptr %i.rp, i64 29
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !38, !alias.scope !169
  %i.ug = load i8, ptr %i.uc, align 1, !tbaa !38, !alias.scope !169
  %i.uh = load i8, ptr %i.ud, align 1, !tbaa !38, !alias.scope !169
  %i.ui = load i8, ptr %i.ue, align 1, !tbaa !38, !alias.scope !169
  %i.uj = insertelement <4 x i8> poison, i8 %i.uf, i64 0
  %i.uk = insertelement <4 x i8> %i.uj, i8 %i.ug, i64 1
  %i.ul = insertelement <4 x i8> %i.uk, i8 %i.uh, i64 2
  %i.um = insertelement <4 x i8> %i.ul, i8 %i.ui, i64 3
  %i.un = icmp eq <4 x i8> %i.um, zeroinitializer
  %i.uo = getelementptr i8, ptr %i.rk, i64 6
  %i.up = getelementptr i8, ptr %i.rl, i64 14
  %i.uq = getelementptr i8, ptr %i.rn, i64 22
  %i.ur = getelementptr i8, ptr %i.rp, i64 30
  %i.us = load i8, ptr %i.uo, align 1, !tbaa !38, !alias.scope !169
  %i.ut = load i8, ptr %i.up, align 1, !tbaa !38, !alias.scope !169
  %i.uu = load i8, ptr %i.uq, align 1, !tbaa !38, !alias.scope !169
  %i.uv = load i8, ptr %i.ur, align 1, !tbaa !38, !alias.scope !169
  %i.uw = insertelement <4 x i8> poison, i8 %i.us, i64 0
  %i.ux = insertelement <4 x i8> %i.uw, i8 %i.ut, i64 1
  %i.uy = insertelement <4 x i8> %i.ux, i8 %i.uu, i64 2
  %i.uz = insertelement <4 x i8> %i.uy, i8 %i.uv, i64 3
  %i.va = icmp eq <4 x i8> %i.uz, zeroinitializer
  %i.vb = getelementptr i8, ptr %i.rk, i64 7
  %i.vc = getelementptr i8, ptr %i.rl, i64 15
  %i.vd = getelementptr i8, ptr %i.rn, i64 23
  %i.ve = getelementptr i8, ptr %i.rp, i64 31
  %i.vf = load i8, ptr %i.vb, align 1, !tbaa !38, !alias.scope !169
  %i.vg = load i8, ptr %i.vc, align 1, !tbaa !38, !alias.scope !169
  %i.vh = load i8, ptr %i.vd, align 1, !tbaa !38, !alias.scope !169
  %i.vi = load i8, ptr %i.ve, align 1, !tbaa !38, !alias.scope !169
  %i.vj = insertelement <4 x i8> poison, i8 %i.vf, i64 0
  %i.vk = insertelement <4 x i8> %i.vj, i8 %i.vg, i64 1
  %i.vl = insertelement <4 x i8> %i.vk, i8 %i.vh, i64 2
  %i.vm = insertelement <4 x i8> %i.vl, i8 %i.vi, i64 3
  %i.vn = icmp eq <4 x i8> %i.vm, zeroinitializer
  %i.vo = select <4 x i1> %i.sn, <4 x i8> zeroinitializer, <4 x i8> splat (i8 2)
  %i.vp = or disjoint <4 x i8> %i.vo, %i.sa
  %i.vq = select <4 x i1> %i.ta, <4 x i8> zeroinitializer, <4 x i8> splat (i8 4)
  %i.vr = or disjoint <4 x i8> %i.vp, %i.vq
  %i.vs = select <4 x i1> %i.tn, <4 x i8> zeroinitializer, <4 x i8> splat (i8 8)
  %i.vt = or disjoint <4 x i8> %i.vr, %i.vs
  %i.vu = select <4 x i1> %i.ua, <4 x i8> zeroinitializer, <4 x i8> splat (i8 16)
  %i.vv = or disjoint <4 x i8> %i.vt, %i.vu
  %i.vw = select <4 x i1> %i.un, <4 x i8> zeroinitializer, <4 x i8> splat (i8 32)
  %i.vx = or disjoint <4 x i8> %i.vv, %i.vw
  %i.vy = select <4 x i1> %i.va, <4 x i8> zeroinitializer, <4 x i8> splat (i8 64)
  %i.vz = or <4 x i8> %i.vx, %i.vy
  %i.wa = select <4 x i1> %i.vn, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -128)
  %i.wb = or <4 x i8> %i.vz, %i.wa
  store <4 x i8> %i.wb, ptr %next.gep54, align 1, !tbaa !38, !alias.scope !172, !noalias !169
  %index.next55 = add nuw i64 %index53, 4         ; 2 uses
  %i.wc = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.wc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.aq, %n.vec52
  br i1 %cmp.n56, label %._crit_edge60.i.i, label %.preheader53.i.i.preheader

.preheader53.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.rg, %vec.epilog.middle.block ]
  %.in.i.i.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %14, %vec.epilog.iter.check ], [ %15, %vec.epilog.middle.block ]
  %.13959.i.i.ph = phi ptr [ %.038.i.i, %iter.check ], [ %.038.i.i, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.rh, %vec.epilog.middle.block ]
  br label %.preheader53.i.i

.preheader53.i.i:                                 ; preds = %.preheader53.i.i.preheader, %.preheader53.i.i
  %.3 = phi i64 [ %i.we, %.preheader53.i.i ], [ %.3.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.in.i.i = phi i64 [ %i.wf, %.preheader53.i.i ], [ %.in.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.13959.i.i = phi ptr [ %i.wi, %.preheader53.i.i ], [ %.13959.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %i.wd = getelementptr i8, ptr %2, i64 %.3
  %i.we = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.wf = add nsw i64 %.in.i.i, -1
  %i.wg = load <8 x i8>, ptr %i.wd, align 1, !tbaa !38
  %i.wh = icmp ne <8 x i8> %i.wg, zeroinitializer
  %i.wi = getelementptr inbounds nuw i8, ptr %.13959.i.i, i64 1 ; 2 uses
  store <8 x i1> %i.wh, ptr %.13959.i.i, align 1, !tbaa !38
  %i.wj = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.wj, label %.preheader53.i.i, label %._crit_edge60.i.i, !llvm.loop !179

._crit_edge60.i.i:                                ; preds = %.preheader53.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.2 = phi i64 [ %.1, %bb.f ], [ %i.rg, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %i.we, %.preheader53.i.i ] ; 2 uses
  %.139.lcssa.i.i = phi ptr [ %.038.i.i, %bb.f ], [ %i.rh, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %i.wi, %.preheader53.i.i ]
  %i.wk = srem i64 %.1.i.i, 8                     ; 6 uses
  %.not45.i.i = icmp eq i64 %i.wk, 0
  br i1 %.not45.i.i, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge60.i.i
  %i.wl = icmp sgt i64 %i.wk, 0
  br i1 %i.wl, label %.lr.ph65.i.i.preheader, label %._crit_edge66.i.i

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.wk, 1
  %i.wm = icmp eq i64 %i.wk, 1
  br i1 %i.wm, label %.lr.ph65.i.i.epil.preheader, label %.lr.ph65.i.i.preheader.new

.lr.ph65.i.i.preheader.new:                       ; preds = %.lr.ph65.i.i.preheader
  %unroll_iter = and i64 %i.wk, 9223372036854775806
  br label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i, %.lr.ph65.i.i.preheader.new
  %i.wn = phi i64 [ %.2, %.lr.ph65.i.i.preheader.new ], [ %i.wt, %.lr.ph65.i.i ] ; 3 uses
  %.13763.i.i = phi i8 [ 1, %.lr.ph65.i.i.preheader.new ], [ %i.wz, %.lr.ph65.i.i ] ; 3 uses
  %.14162.i.i = phi i8 [ 0, %.lr.ph65.i.i.preheader.new ], [ %i.wy, %.lr.ph65.i.i ]
  %niter = phi i64 [ 0, %.lr.ph65.i.i.preheader.new ], [ %niter.next.1, %.lr.ph65.i.i ]
  %i.wo = getelementptr inbounds i8, ptr %2, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !38
  %.not52.i.i = icmp eq i8 %i.wp, 0
  %i.wq = select i1 %.not52.i.i, i8 0, i8 %.13763.i.i
  %i.wr = or i8 %i.wq, %.14162.i.i
  %i.ws = shl nuw i8 %.13763.i.i, 1
  %i.wt = add nsw i64 %i.wn, 2                    ; 2 uses
  %i.wu = getelementptr i8, ptr %2, i64 %i.wn
  %i.wv = getelementptr i8, ptr %i.wu, i64 1
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !38
  %.not52.i.i.1 = icmp eq i8 %i.ww, 0
  %i.wx = select i1 %.not52.i.i.1, i8 0, i8 %i.ws
  %i.wy = or i8 %i.wx, %i.wr                      ; 3 uses
  %i.wz = shl nuw i8 %.13763.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge66.i.i.loopexit.unr-lcssa, label %.lr.ph65.i.i, !llvm.loop !180

._crit_edge66.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph65.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i.i, label %.lr.ph65.i.i.epil.preheader

.lr.ph65.i.i.epil.preheader:                      ; preds = %._crit_edge66.i.i.loopexit.unr-lcssa, %.lr.ph65.i.i.preheader
  %.epil.init = phi i64 [ %.2, %.lr.ph65.i.i.preheader ], [ %i.wt, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %.13763.i.i.epil.init = phi i8 [ 1, %.lr.ph65.i.i.preheader ], [ %i.wz, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %.14162.i.i.epil.init = phi i8 [ 0, %.lr.ph65.i.i.preheader ], [ %i.wy, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i64 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod66)
  %i.xa = getelementptr inbounds i8, ptr %2, i64 %.epil.init
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !38
  %.not52.i.i.epil = icmp eq i8 %i.xb, 0
  %i.xc = select i1 %.not52.i.i.epil, i8 0, i8 %.13763.i.i.epil.init
  %i.xd = or i8 %i.xc, %.14162.i.i.epil.init
  br label %._crit_edge66.i.i

._crit_edge66.i.i:                                ; preds = %.lr.ph65.i.i.epil.preheader, %._crit_edge66.i.i.loopexit.unr-lcssa, %.preheader.i.i
  %.141.lcssa.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.wy, %._crit_edge66.i.i.loopexit.unr-lcssa ], [ %i.xd, %.lr.ph65.i.i.epil.preheader ]
  store i8 %.141.lcssa.i.i, ptr %.139.lcssa.i.i, align 1, !tbaa !38
  br label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread"

"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit": ; preds = %bb.b
  %i.xe = icmp eq ptr %4, null
  br i1 %i.xe, label %bb.g, label %bb.h

"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread": ; preds = %._crit_edge60.i.i, %._crit_edge66.i.i
  %i.xf = load i64, ptr %i.r, align 8, !tbaa !167
  %i.xg = add nsw i64 %i.xf, %3
  store i64 %i.xg, ptr %i.r, align 8, !tbaa !167
  %i.xh = icmp eq ptr %4, null
  br i1 %i.xh, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread", %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit"
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.h:                                             ; preds = %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

bb.i:                                             ; preds = %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !181
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !106
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !82
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.a, ptr %5, align 8, !tbaa !182
  %i.xn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.xn, align 8, !tbaa !185
  %i.xo = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.xi, ptr %i.xo, align 8, !tbaa !187
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.xk, i64 noundef %i.xm, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.xp = load i64, ptr %i.xl, align 8, !tbaa !167
  %i.xq = add nsw i64 %i.xp, %3
  store i64 %i.xq, ptr %i.xl, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !39
  %i.xt = add nsw i64 %i.xs, %3
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !39
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !190
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.xv, ptr %i.xw, align 8, !tbaa !144
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.g, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !191
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_l(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !194 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !61, !noalias !194
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !194
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !194, !inline_history !166
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit16.thread

_ZN5arrow6StatusD2Ev.exit16.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !61, !noalias !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !194
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit: ; preds = %bb.b
  %i.n = icmp eq ptr %4, null
  br i1 %i.n, label %bb.c, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !167
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %2, i64 noundef %5, i64 noundef %3, ptr noundef %i.p, i64 noundef %i.r)
  %i.s = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %2, i64 noundef %5, i64 noundef %3)
  %i.t = sub i64 %3, %i.s
  %i.u = load <2 x i64>, ptr %i.q, align 8, !tbaa !106
  %i.v = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.t, i64 1
  %i.x = add nsw <2 x i64> %i.w, %i.u
  store <2 x i64> %i.x, ptr %i.q, align 8, !tbaa !106
  %i.y = icmp eq ptr %4, null
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !190
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.d:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !167
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.aa, i64 noundef %i.ac)
  %i.ad = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ae = sub i64 %3, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !190
  %i.ah = add nsw i64 %i.ae, %i.ag                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !190
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !167
  %i.aj = add nsw i64 %i.ai, %3
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !167
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.d, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ak = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ah, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = add nsw i64 %i.am, %3
  store i64 %i.an, ptr %i.al, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !144
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !197
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !200 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !61, !noalias !200
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !200
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !200, !inline_history !166
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !61, !noalias !200
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !200
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %5, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %i.r = sdiv i64 %i.q, 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 4 uses
  %i.t = srem i64 %i.q, 8                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.s, align 1, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38
  %i.x = and i8 %i.w, %i.u                        ; 2 uses
  %i.y = icmp sgt i64 %3, 0
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ab = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %.03556.i.i = phi i64 [ %3, %.lr.ph.i.i ], [ %i.ai, %bb.e ] ; 2 uses
  %.03655.i.i = phi i8 [ %i.aa, %.lr.ph.i.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.04054.i.i = phi i8 [ %i.x, %.lr.ph.i.i ], [ %i.ag, %bb.e ]
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %.not51.i.i = icmp eq i8 %i.ae, 0
  %i.af = select i1 %.not51.i.i, i8 0, i8 %.03655.i.i
  %i.ag = or i8 %i.af, %.04054.i.i                ; 2 uses
  %i.ah = shl i8 %.03655.i.i, 1                   ; 2 uses
  %i.ai = add nsw i64 %.03556.i.i, -1             ; 2 uses
  %i.aj = icmp ne i8 %i.ah, 0
  %i.ak = icmp samesign ugt i64 %.03556.i.i, 1
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.e, label %._crit_edge.i.i, !llvm.loop !203

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.017 = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.e ]
  %.040.lcssa.i.i = phi i8 [ %i.x, %bb.d ], [ %i.ag, %bb.e ]
  %.035.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %.040.lcssa.i.i, ptr %i.s, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %.017, %._crit_edge.i.i ] ; 9 uses
  %.038.i.i = phi ptr [ %i.s, %bb.c ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %.1.i.i = phi i64 [ %3, %bb.c ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.an = icmp sgt i64 %.1.i.i, 7
  br i1 %i.an, label %iter.check, label %._crit_edge60.i.i

iter.check:                                       ; preds = %bb.f
  %i.ao = lshr i64 %.1.i.i, 3                     ; 9 uses
  %6 = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)  ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i.i, 32
  br i1 %min.iters.check, label %.preheader53.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = icmp ne i64 %i.ao, 0                       ; 2 uses
  %umin.neg = sext i1 %7 to i64
  %i.ap = getelementptr i8, ptr %.038.i.i, i64 %i.ao
  %8 = getelementptr i8, ptr %i.ap, i64 1
  %scevgep = getelementptr i8, ptr %8, i64 %umin.neg
  %scevgep43 = getelementptr i8, ptr %2, i64 %.1
  %i.aq = and i64 %.1.i.i, 9223372036854775800
  %9 = add i64 %.1, %i.aq                         ; 2 uses
  %10 = add i64 %9, 8
  %11 = select i1 %7, i64 %9, i64 %10
  %scevgep44 = getelementptr i8, ptr %2, i64 %11
  %bound0 = icmp ult ptr %.038.i.i, %scevgep44
  %bound1 = icmp ult ptr %scevgep43, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader53.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %.1.i.i, 128
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %12 = and i64 %6, 12
  %n.vec = and i64 %6, 1152921504606846960        ; 6 uses
  %i.ar = shl nuw nsw i64 %n.vec, 3
  %i.as = add i64 %.1, %i.ar                      ; 2 uses
  %13 = sub nsw i64 %i.ao, %n.vec
  %i.at = getelementptr i8, ptr %.038.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl nuw i64 %index, 3
  %i.av = add nuw i64 %.1, %i.au                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i.i, i64 %index
  %i.aw = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 24
  %i.bd = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %i.bf = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 40
  %i.bh = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 56
  %i.bl = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 64
  %i.bn = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 72
  %i.bp = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 80
  %i.br = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 88
  %i.bt = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 96
  %i.bv = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 104
  %i.bx = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 112
  %i.bz = getelementptr i8, ptr %2, i64 %i.av     ; 8 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 120
  %i.cb = load i8, ptr %i.aw, align 1, !tbaa !38, !alias.scope !204
  %i.cc = load i8, ptr %i.ay, align 1, !tbaa !38, !alias.scope !204
  %i.cd = load i8, ptr %i.ba, align 1, !tbaa !38, !alias.scope !204
  %i.ce = load i8, ptr %i.bc, align 1, !tbaa !38, !alias.scope !204
  %i.cf = load i8, ptr %i.be, align 1, !tbaa !38, !alias.scope !204
  %i.cg = load i8, ptr %i.bg, align 1, !tbaa !38, !alias.scope !204
  %i.ch = load i8, ptr %i.bi, align 1, !tbaa !38, !alias.scope !204
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !38, !alias.scope !204
  %i.cj = load i8, ptr %i.bm, align 1, !tbaa !38, !alias.scope !204
  %i.ck = load i8, ptr %i.bo, align 1, !tbaa !38, !alias.scope !204
  %i.cl = load i8, ptr %i.bq, align 1, !tbaa !38, !alias.scope !204
  %i.cm = load i8, ptr %i.bs, align 1, !tbaa !38, !alias.scope !204
  %i.cn = load i8, ptr %i.bu, align 1, !tbaa !38, !alias.scope !204
  %i.co = load i8, ptr %i.bw, align 1, !tbaa !38, !alias.scope !204
  %i.cp = load i8, ptr %i.by, align 1, !tbaa !38, !alias.scope !204
  %i.cq = load i8, ptr %i.ca, align 1, !tbaa !38, !alias.scope !204
  %i.cr = insertelement <16 x i8> poison, i8 %i.cb, i64 0
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 1
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 2
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 3
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 4
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 5
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 6
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 7
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 8
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 9
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 10
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 11
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 12
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 13
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 14
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 15
  %i.dh = icmp ne <16 x i8> %i.dg, zeroinitializer
  %i.di = zext <16 x i1> %i.dh to <16 x i8>
  %i.dj = getelementptr i8, ptr %i.aw, i64 1
  %i.dk = getelementptr i8, ptr %i.ax, i64 9
  %i.dl = getelementptr i8, ptr %i.az, i64 17
  %i.dm = getelementptr i8, ptr %i.bb, i64 25
  %i.dn = getelementptr i8, ptr %i.bd, i64 33
  %i.do = getelementptr i8, ptr %i.bf, i64 41
  %i.dp = getelementptr i8, ptr %i.bh, i64 49
  %i.dq = getelementptr i8, ptr %i.bj, i64 57
  %i.dr = getelementptr i8, ptr %i.bl, i64 65
  %i.ds = getelementptr i8, ptr %i.bn, i64 73
  %i.dt = getelementptr i8, ptr %i.bp, i64 81
  %i.du = getelementptr i8, ptr %i.br, i64 89
  %i.dv = getelementptr i8, ptr %i.bt, i64 97
  %i.dw = getelementptr i8, ptr %i.bv, i64 105
  %i.dx = getelementptr i8, ptr %i.bx, i64 113
  %i.dy = getelementptr i8, ptr %i.bz, i64 121
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !38, !alias.scope !204
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !38, !alias.scope !204
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !38, !alias.scope !204
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !38, !alias.scope !204
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !38, !alias.scope !204
  %i.ee = load i8, ptr %i.do, align 1, !tbaa !38, !alias.scope !204
  %i.ef = load i8, ptr %i.dp, align 1, !tbaa !38, !alias.scope !204
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !38, !alias.scope !204
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !38, !alias.scope !204
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !38, !alias.scope !204
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !38, !alias.scope !204
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !38, !alias.scope !204
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !38, !alias.scope !204
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !38, !alias.scope !204
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !38, !alias.scope !204
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !38, !alias.scope !204
  %i.ep = insertelement <16 x i8> poison, i8 %i.dz, i64 0
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 1
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 2
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 3
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 4
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 5
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 6
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 7
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 8
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 9
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 10
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 11
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 12
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 13
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 14
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 15
  %i.ff = icmp eq <16 x i8> %i.fe, zeroinitializer
  %i.fg = getelementptr i8, ptr %i.aw, i64 2
  %i.fh = getelementptr i8, ptr %i.ax, i64 10
  %i.fi = getelementptr i8, ptr %i.az, i64 18
  %i.fj = getelementptr i8, ptr %i.bb, i64 26
  %i.fk = getelementptr i8, ptr %i.bd, i64 34
  %i.fl = getelementptr i8, ptr %i.bf, i64 42
  %i.fm = getelementptr i8, ptr %i.bh, i64 50
  %i.fn = getelementptr i8, ptr %i.bj, i64 58
  %i.fo = getelementptr i8, ptr %i.bl, i64 66
  %i.fp = getelementptr i8, ptr %i.bn, i64 74
  %i.fq = getelementptr i8, ptr %i.bp, i64 82
  %i.fr = getelementptr i8, ptr %i.br, i64 90
  %i.fs = getelementptr i8, ptr %i.bt, i64 98
  %i.ft = getelementptr i8, ptr %i.bv, i64 106
  %i.fu = getelementptr i8, ptr %i.bx, i64 114
  %i.fv = getelementptr i8, ptr %i.bz, i64 122
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !38, !alias.scope !204
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !38, !alias.scope !204
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !38, !alias.scope !204
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !38, !alias.scope !204
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !38, !alias.scope !204
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !38, !alias.scope !204
  %i.gc = load i8, ptr %i.fm, align 1, !tbaa !38, !alias.scope !204
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !38, !alias.scope !204
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !38, !alias.scope !204
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !38, !alias.scope !204
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !38, !alias.scope !204
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !38, !alias.scope !204
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !38, !alias.scope !204
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !38, !alias.scope !204
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !38, !alias.scope !204
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !38, !alias.scope !204
  %i.gm = insertelement <16 x i8> poison, i8 %i.fw, i64 0
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 1
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 2
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 3
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 4
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 5
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 6
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 7
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 8
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 9
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 10
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 11
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 12
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 13
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 14
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 15
  %i.hc = icmp eq <16 x i8> %i.hb, zeroinitializer
  %i.hd = getelementptr i8, ptr %i.aw, i64 3
  %i.he = getelementptr i8, ptr %i.ax, i64 11
  %i.hf = getelementptr i8, ptr %i.az, i64 19
  %i.hg = getelementptr i8, ptr %i.bb, i64 27
  %i.hh = getelementptr i8, ptr %i.bd, i64 35
  %i.hi = getelementptr i8, ptr %i.bf, i64 43
  %i.hj = getelementptr i8, ptr %i.bh, i64 51
  %i.hk = getelementptr i8, ptr %i.bj, i64 59
  %i.hl = getelementptr i8, ptr %i.bl, i64 67
  %i.hm = getelementptr i8, ptr %i.bn, i64 75
  %i.hn = getelementptr i8, ptr %i.bp, i64 83
  %i.ho = getelementptr i8, ptr %i.br, i64 91
  %i.hp = getelementptr i8, ptr %i.bt, i64 99
  %i.hq = getelementptr i8, ptr %i.bv, i64 107
  %i.hr = getelementptr i8, ptr %i.bx, i64 115
  %i.hs = getelementptr i8, ptr %i.bz, i64 123
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !38, !alias.scope !204
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !38, !alias.scope !204
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !38, !alias.scope !204
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !38, !alias.scope !204
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !38, !alias.scope !204
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !38, !alias.scope !204
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !38, !alias.scope !204
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !38, !alias.scope !204
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !38, !alias.scope !204
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !38, !alias.scope !204
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !38, !alias.scope !204
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !38, !alias.scope !204
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !38, !alias.scope !204
end_hunk_1
begin_hunk_2_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE:bb.a
  %i.ju = load i8, ptr %i.je, align 1, !tbaa !38, !alias.scope !204
  %i.jv = load i8, ptr %i.jf, align 1, !tbaa !38, !alias.scope !204
  %i.jw = load i8, ptr %i.jg, align 1, !tbaa !38, !alias.scope !204
  %i.jx = load i8, ptr %i.jh, align 1, !tbaa !38, !alias.scope !204
  %i.jy = load i8, ptr %i.ji, align 1, !tbaa !38, !alias.scope !204
  %i.jz = load i8, ptr %i.jj, align 1, !tbaa !38, !alias.scope !204
  %i.ka = load i8, ptr %i.jk, align 1, !tbaa !38, !alias.scope !204
  %i.kb = load i8, ptr %i.jl, align 1, !tbaa !38, !alias.scope !204
  %i.kc = load i8, ptr %i.jm, align 1, !tbaa !38, !alias.scope !204
  %i.kd = load i8, ptr %i.jn, align 1, !tbaa !38, !alias.scope !204
  %i.ke = load i8, ptr %i.jo, align 1, !tbaa !38, !alias.scope !204
  %i.kf = load i8, ptr %i.jp, align 1, !tbaa !38, !alias.scope !204
  %i.kg = insertelement <16 x i8> poison, i8 %i.jq, i64 0
  %i.kh = insertelement <16 x i8> %i.kg, i8 %i.jr, i64 1
  %i.ki = insertelement <16 x i8> %i.kh, i8 %i.js, i64 2
  %i.kj = insertelement <16 x i8> %i.ki, i8 %i.jt, i64 3
  %i.kk = insertelement <16 x i8> %i.kj, i8 %i.ju, i64 4
  %i.kl = insertelement <16 x i8> %i.kk, i8 %i.jv, i64 5
  %i.km = insertelement <16 x i8> %i.kl, i8 %i.jw, i64 6
  %i.kn = insertelement <16 x i8> %i.km, i8 %i.jx, i64 7
  %i.ko = insertelement <16 x i8> %i.kn, i8 %i.jy, i64 8
  %i.kp = insertelement <16 x i8> %i.ko, i8 %i.jz, i64 9
  %i.kq = insertelement <16 x i8> %i.kp, i8 %i.ka, i64 10
  %i.kr = insertelement <16 x i8> %i.kq, i8 %i.kb, i64 11
  %i.ks = insertelement <16 x i8> %i.kr, i8 %i.kc, i64 12
  %i.kt = insertelement <16 x i8> %i.ks, i8 %i.kd, i64 13
  %i.ku = insertelement <16 x i8> %i.kt, i8 %i.ke, i64 14
  %i.kv = insertelement <16 x i8> %i.ku, i8 %i.kf, i64 15
  %i.kw = icmp eq <16 x i8> %i.kv, zeroinitializer
  %i.kx = getelementptr i8, ptr %i.aw, i64 5
  %i.ky = getelementptr i8, ptr %i.ax, i64 13
  %i.kz = getelementptr i8, ptr %i.az, i64 21
  %i.la = getelementptr i8, ptr %i.bb, i64 29
  %i.lb = getelementptr i8, ptr %i.bd, i64 37
  %i.lc = getelementptr i8, ptr %i.bf, i64 45
  %i.ld = getelementptr i8, ptr %i.bh, i64 53
  %i.le = getelementptr i8, ptr %i.bj, i64 61
  %i.lf = getelementptr i8, ptr %i.bl, i64 69
  %i.lg = getelementptr i8, ptr %i.bn, i64 77
  %i.lh = getelementptr i8, ptr %i.bp, i64 85
  %i.li = getelementptr i8, ptr %i.br, i64 93
  %i.lj = getelementptr i8, ptr %i.bt, i64 101
  %i.lk = getelementptr i8, ptr %i.bv, i64 109
  %i.ll = getelementptr i8, ptr %i.bx, i64 117
  %i.lm = getelementptr i8, ptr %i.bz, i64 125
  %i.ln = load i8, ptr %i.kx, align 1, !tbaa !38, !alias.scope !204
  %i.lo = load i8, ptr %i.ky, align 1, !tbaa !38, !alias.scope !204
  %i.lp = load i8, ptr %i.kz, align 1, !tbaa !38, !alias.scope !204
  %i.lq = load i8, ptr %i.la, align 1, !tbaa !38, !alias.scope !204
  %i.lr = load i8, ptr %i.lb, align 1, !tbaa !38, !alias.scope !204
  %i.ls = load i8, ptr %i.lc, align 1, !tbaa !38, !alias.scope !204
  %i.lt = load i8, ptr %i.ld, align 1, !tbaa !38, !alias.scope !204
  %i.lu = load i8, ptr %i.le, align 1, !tbaa !38, !alias.scope !204
  %i.lv = load i8, ptr %i.lf, align 1, !tbaa !38, !alias.scope !204
  %i.lw = load i8, ptr %i.lg, align 1, !tbaa !38, !alias.scope !204
  %i.lx = load i8, ptr %i.lh, align 1, !tbaa !38, !alias.scope !204
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !38, !alias.scope !204
  %i.lz = load i8, ptr %i.lj, align 1, !tbaa !38, !alias.scope !204
  %i.ma = load i8, ptr %i.lk, align 1, !tbaa !38, !alias.scope !204
  %i.mb = load i8, ptr %i.ll, align 1, !tbaa !38, !alias.scope !204
  %i.mc = load i8, ptr %i.lm, align 1, !tbaa !38, !alias.scope !204
  %i.md = insertelement <16 x i8> poison, i8 %i.ln, i64 0
  %i.me = insertelement <16 x i8> %i.md, i8 %i.lo, i64 1
  %i.mf = insertelement <16 x i8> %i.me, i8 %i.lp, i64 2
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 3
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 4
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 5
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 6
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 7
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 8
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 9
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 10
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 11
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 12
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 13
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 14
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 15
  %i.mt = icmp eq <16 x i8> %i.ms, zeroinitializer
  %i.mu = getelementptr i8, ptr %i.aw, i64 6
  %i.mv = getelementptr i8, ptr %i.ax, i64 14
  %i.mw = getelementptr i8, ptr %i.az, i64 22
  %i.mx = getelementptr i8, ptr %i.bb, i64 30
  %i.my = getelementptr i8, ptr %i.bd, i64 38
  %i.mz = getelementptr i8, ptr %i.bf, i64 46
  %i.na = getelementptr i8, ptr %i.bh, i64 54
  %i.nb = getelementptr i8, ptr %i.bj, i64 62
  %i.nc = getelementptr i8, ptr %i.bl, i64 70
  %i.nd = getelementptr i8, ptr %i.bn, i64 78
  %i.ne = getelementptr i8, ptr %i.bp, i64 86
  %i.nf = getelementptr i8, ptr %i.br, i64 94
  %i.ng = getelementptr i8, ptr %i.bt, i64 102
  %i.nh = getelementptr i8, ptr %i.bv, i64 110
  %i.ni = getelementptr i8, ptr %i.bx, i64 118
  %i.nj = getelementptr i8, ptr %i.bz, i64 126
  %i.nk = load i8, ptr %i.mu, align 1, !tbaa !38, !alias.scope !204
  %i.nl = load i8, ptr %i.mv, align 1, !tbaa !38, !alias.scope !204
  %i.nm = load i8, ptr %i.mw, align 1, !tbaa !38, !alias.scope !204
  %i.nn = load i8, ptr %i.mx, align 1, !tbaa !38, !alias.scope !204
  %i.no = load i8, ptr %i.my, align 1, !tbaa !38, !alias.scope !204
  %i.np = load i8, ptr %i.mz, align 1, !tbaa !38, !alias.scope !204
  %i.nq = load i8, ptr %i.na, align 1, !tbaa !38, !alias.scope !204
  %i.nr = load i8, ptr %i.nb, align 1, !tbaa !38, !alias.scope !204
  %i.ns = load i8, ptr %i.nc, align 1, !tbaa !38, !alias.scope !204
  %i.nt = load i8, ptr %i.nd, align 1, !tbaa !38, !alias.scope !204
  %i.nu = load i8, ptr %i.ne, align 1, !tbaa !38, !alias.scope !204
  %i.nv = load i8, ptr %i.nf, align 1, !tbaa !38, !alias.scope !204
  %i.nw = load i8, ptr %i.ng, align 1, !tbaa !38, !alias.scope !204
  %i.nx = load i8, ptr %i.nh, align 1, !tbaa !38, !alias.scope !204
  %i.ny = load i8, ptr %i.ni, align 1, !tbaa !38, !alias.scope !204
  %i.nz = load i8, ptr %i.nj, align 1, !tbaa !38, !alias.scope !204
  %i.oa = insertelement <16 x i8> poison, i8 %i.nk, i64 0
  %i.ob = insertelement <16 x i8> %i.oa, i8 %i.nl, i64 1
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 2
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 3
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 4
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 5
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 6
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 7
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 8
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 9
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 10
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 11
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 12
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 13
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 14
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 15
  %i.oq = icmp eq <16 x i8> %i.op, zeroinitializer
  %i.or = getelementptr i8, ptr %i.aw, i64 7
  %i.os = getelementptr i8, ptr %i.ax, i64 15
  %i.ot = getelementptr i8, ptr %i.az, i64 23
  %i.ou = getelementptr i8, ptr %i.bb, i64 31
  %i.ov = getelementptr i8, ptr %i.bd, i64 39
  %i.ow = getelementptr i8, ptr %i.bf, i64 47
  %i.ox = getelementptr i8, ptr %i.bh, i64 55
  %i.oy = getelementptr i8, ptr %i.bj, i64 63
  %i.oz = getelementptr i8, ptr %i.bl, i64 71
  %i.pa = getelementptr i8, ptr %i.bn, i64 79
  %i.pb = getelementptr i8, ptr %i.bp, i64 87
  %i.pc = getelementptr i8, ptr %i.br, i64 95
  %i.pd = getelementptr i8, ptr %i.bt, i64 103
  %i.pe = getelementptr i8, ptr %i.bv, i64 111
  %i.pf = getelementptr i8, ptr %i.bx, i64 119
  %i.pg = getelementptr i8, ptr %i.bz, i64 127
  %i.ph = load i8, ptr %i.or, align 1, !tbaa !38, !alias.scope !204
  %i.pi = load i8, ptr %i.os, align 1, !tbaa !38, !alias.scope !204
  %i.pj = load i8, ptr %i.ot, align 1, !tbaa !38, !alias.scope !204
  %i.pk = load i8, ptr %i.ou, align 1, !tbaa !38, !alias.scope !204
  %i.pl = load i8, ptr %i.ov, align 1, !tbaa !38, !alias.scope !204
  %i.pm = load i8, ptr %i.ow, align 1, !tbaa !38, !alias.scope !204
  %i.pn = load i8, ptr %i.ox, align 1, !tbaa !38, !alias.scope !204
  %i.po = load i8, ptr %i.oy, align 1, !tbaa !38, !alias.scope !204
  %i.pp = load i8, ptr %i.oz, align 1, !tbaa !38, !alias.scope !204
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !38, !alias.scope !204
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !38, !alias.scope !204
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !38, !alias.scope !204
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !38, !alias.scope !204
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !38, !alias.scope !204
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !38, !alias.scope !204
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !38, !alias.scope !204
  %i.px = insertelement <16 x i8> poison, i8 %i.ph, i64 0
  %i.py = insertelement <16 x i8> %i.px, i8 %i.pi, i64 1
  %i.pz = insertelement <16 x i8> %i.py, i8 %i.pj, i64 2
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 3
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 4
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 5
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 6
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 7
  %i.qf = insertelement <16 x i8> %i.qe, i8 %i.pp, i64 8
  %i.qg = insertelement <16 x i8> %i.qf, i8 %i.pq, i64 9
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 10
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 11
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 12
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 13
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 14
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 15
  %i.qn = icmp eq <16 x i8> %i.qm, zeroinitializer
  %i.qo = select <16 x i1> %i.ff, <16 x i8> zeroinitializer, <16 x i8> splat (i8 2)
  %i.qp = or disjoint <16 x i8> %i.qo, %i.di
  %i.qq = select <16 x i1> %i.hc, <16 x i8> zeroinitializer, <16 x i8> splat (i8 4)
  %i.qr = or disjoint <16 x i8> %i.qp, %i.qq
  %i.qs = select <16 x i1> %i.iz, <16 x i8> zeroinitializer, <16 x i8> splat (i8 8)
  %i.qt = or disjoint <16 x i8> %i.qr, %i.qs
  %i.qu = select <16 x i1> %i.kw, <16 x i8> zeroinitializer, <16 x i8> splat (i8 16)
  %i.qv = or disjoint <16 x i8> %i.qt, %i.qu
  %i.qw = select <16 x i1> %i.mt, <16 x i8> zeroinitializer, <16 x i8> splat (i8 32)
  %i.qx = or disjoint <16 x i8> %i.qv, %i.qw
  %i.qy = select <16 x i1> %i.oq, <16 x i8> zeroinitializer, <16 x i8> splat (i8 64)
  %i.qz = or <16 x i8> %i.qx, %i.qy
  %i.ra = select <16 x i1> %i.qn, <16 x i8> zeroinitializer, <16 x i8> splat (i8 -128)
  %i.rb = or <16 x i8> %i.qz, %i.ra
  store <16 x i8> %i.rb, ptr %next.gep, align 1, !tbaa !38, !alias.scope !207, !noalias !204
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rc = icmp eq i64 %index.next, %n.vec
  br i1 %i.rc, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge60.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %12, 0
  br i1 %min.epilog.iters.check, label %.preheader53.i.i.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %6, 1152921504606846972      ; 5 uses
  %i.rd = shl nuw nsw i64 %n.vec49, 3
  %i.re = add i64 %.1, %i.rd                      ; 2 uses
  %14 = sub nsw i64 %i.ao, %n.vec49
  %i.rf = getelementptr i8, ptr %.038.i.i, i64 %n.vec49 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.rg = shl nuw i64 %index50, 3
  %i.rh = add nuw i64 %.1, %i.rg                  ; 4 uses
  %next.gep51 = getelementptr i8, ptr %.038.i.i, i64 %index50
  %i.ri = getelementptr i8, ptr %2, i64 %i.rh     ; 8 uses
  %i.rj = getelementptr i8, ptr %2, i64 %i.rh     ; 8 uses
  %i.rk = getelementptr i8, ptr %i.rj, i64 8
  %i.rl = getelementptr i8, ptr %2, i64 %i.rh     ; 8 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 16
  %i.rn = getelementptr i8, ptr %2, i64 %i.rh     ; 8 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 24
  %i.rp = load i8, ptr %i.ri, align 1, !tbaa !38, !alias.scope !204
  %i.rq = load i8, ptr %i.rk, align 1, !tbaa !38, !alias.scope !204
  %i.rr = load i8, ptr %i.rm, align 1, !tbaa !38, !alias.scope !204
  %i.rs = load i8, ptr %i.ro, align 1, !tbaa !38, !alias.scope !204
  %i.rt = insertelement <4 x i8> poison, i8 %i.rp, i64 0
  %i.ru = insertelement <4 x i8> %i.rt, i8 %i.rq, i64 1
  %i.rv = insertelement <4 x i8> %i.ru, i8 %i.rr, i64 2
  %i.rw = insertelement <4 x i8> %i.rv, i8 %i.rs, i64 3
  %i.rx = icmp ne <4 x i8> %i.rw, zeroinitializer
  %i.ry = zext <4 x i1> %i.rx to <4 x i8>
  %i.rz = getelementptr i8, ptr %i.ri, i64 1
  %i.sa = getelementptr i8, ptr %i.rj, i64 9
  %i.sb = getelementptr i8, ptr %i.rl, i64 17
  %i.sc = getelementptr i8, ptr %i.rn, i64 25
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !38, !alias.scope !204
  %i.se = load i8, ptr %i.sa, align 1, !tbaa !38, !alias.scope !204
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !38, !alias.scope !204
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !38, !alias.scope !204
  %i.sh = insertelement <4 x i8> poison, i8 %i.sd, i64 0
  %i.si = insertelement <4 x i8> %i.sh, i8 %i.se, i64 1
  %i.sj = insertelement <4 x i8> %i.si, i8 %i.sf, i64 2
  %i.sk = insertelement <4 x i8> %i.sj, i8 %i.sg, i64 3
  %i.sl = icmp eq <4 x i8> %i.sk, zeroinitializer
  %i.sm = getelementptr i8, ptr %i.ri, i64 2
  %i.sn = getelementptr i8, ptr %i.rj, i64 10
  %i.so = getelementptr i8, ptr %i.rl, i64 18
  %i.sp = getelementptr i8, ptr %i.rn, i64 26
  %i.sq = load i8, ptr %i.sm, align 1, !tbaa !38, !alias.scope !204
  %i.sr = load i8, ptr %i.sn, align 1, !tbaa !38, !alias.scope !204
  %i.ss = load i8, ptr %i.so, align 1, !tbaa !38, !alias.scope !204
  %i.st = load i8, ptr %i.sp, align 1, !tbaa !38, !alias.scope !204
  %i.su = insertelement <4 x i8> poison, i8 %i.sq, i64 0
  %i.sv = insertelement <4 x i8> %i.su, i8 %i.sr, i64 1
  %i.sw = insertelement <4 x i8> %i.sv, i8 %i.ss, i64 2
  %i.sx = insertelement <4 x i8> %i.sw, i8 %i.st, i64 3
  %i.sy = icmp eq <4 x i8> %i.sx, zeroinitializer
  %i.sz = getelementptr i8, ptr %i.ri, i64 3
  %i.ta = getelementptr i8, ptr %i.rj, i64 11
  %i.tb = getelementptr i8, ptr %i.rl, i64 19
  %i.tc = getelementptr i8, ptr %i.rn, i64 27
  %i.td = load i8, ptr %i.sz, align 1, !tbaa !38, !alias.scope !204
  %i.te = load i8, ptr %i.ta, align 1, !tbaa !38, !alias.scope !204
  %i.tf = load i8, ptr %i.tb, align 1, !tbaa !38, !alias.scope !204
  %i.tg = load i8, ptr %i.tc, align 1, !tbaa !38, !alias.scope !204
  %i.th = insertelement <4 x i8> poison, i8 %i.td, i64 0
  %i.ti = insertelement <4 x i8> %i.th, i8 %i.te, i64 1
  %i.tj = insertelement <4 x i8> %i.ti, i8 %i.tf, i64 2
  %i.tk = insertelement <4 x i8> %i.tj, i8 %i.tg, i64 3
  %i.tl = icmp eq <4 x i8> %i.tk, zeroinitializer
  %i.tm = getelementptr i8, ptr %i.ri, i64 4
  %i.tn = getelementptr i8, ptr %i.rj, i64 12
  %i.to = getelementptr i8, ptr %i.rl, i64 20
  %i.tp = getelementptr i8, ptr %i.rn, i64 28
  %i.tq = load i8, ptr %i.tm, align 1, !tbaa !38, !alias.scope !204
  %i.tr = load i8, ptr %i.tn, align 1, !tbaa !38, !alias.scope !204
  %i.ts = load i8, ptr %i.to, align 1, !tbaa !38, !alias.scope !204
  %i.tt = load i8, ptr %i.tp, align 1, !tbaa !38, !alias.scope !204
  %i.tu = insertelement <4 x i8> poison, i8 %i.tq, i64 0
  %i.tv = insertelement <4 x i8> %i.tu, i8 %i.tr, i64 1
  %i.tw = insertelement <4 x i8> %i.tv, i8 %i.ts, i64 2
  %i.tx = insertelement <4 x i8> %i.tw, i8 %i.tt, i64 3
  %i.ty = icmp eq <4 x i8> %i.tx, zeroinitializer
  %i.tz = getelementptr i8, ptr %i.ri, i64 5
  %i.ua = getelementptr i8, ptr %i.rj, i64 13
  %i.ub = getelementptr i8, ptr %i.rl, i64 21
  %i.uc = getelementptr i8, ptr %i.rn, i64 29
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !38, !alias.scope !204
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !38, !alias.scope !204
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !38, !alias.scope !204
  %i.ug = load i8, ptr %i.uc, align 1, !tbaa !38, !alias.scope !204
  %i.uh = insertelement <4 x i8> poison, i8 %i.ud, i64 0
  %i.ui = insertelement <4 x i8> %i.uh, i8 %i.ue, i64 1
  %i.uj = insertelement <4 x i8> %i.ui, i8 %i.uf, i64 2
  %i.uk = insertelement <4 x i8> %i.uj, i8 %i.ug, i64 3
  %i.ul = icmp eq <4 x i8> %i.uk, zeroinitializer
  %i.um = getelementptr i8, ptr %i.ri, i64 6
  %i.un = getelementptr i8, ptr %i.rj, i64 14
  %i.uo = getelementptr i8, ptr %i.rl, i64 22
  %i.up = getelementptr i8, ptr %i.rn, i64 30
  %i.uq = load i8, ptr %i.um, align 1, !tbaa !38, !alias.scope !204
  %i.ur = load i8, ptr %i.un, align 1, !tbaa !38, !alias.scope !204
  %i.us = load i8, ptr %i.uo, align 1, !tbaa !38, !alias.scope !204
  %i.ut = load i8, ptr %i.up, align 1, !tbaa !38, !alias.scope !204
  %i.uu = insertelement <4 x i8> poison, i8 %i.uq, i64 0
  %i.uv = insertelement <4 x i8> %i.uu, i8 %i.ur, i64 1
  %i.uw = insertelement <4 x i8> %i.uv, i8 %i.us, i64 2
  %i.ux = insertelement <4 x i8> %i.uw, i8 %i.ut, i64 3
  %i.uy = icmp eq <4 x i8> %i.ux, zeroinitializer
  %i.uz = getelementptr i8, ptr %i.ri, i64 7
  %i.va = getelementptr i8, ptr %i.rj, i64 15
  %i.vb = getelementptr i8, ptr %i.rl, i64 23
  %i.vc = getelementptr i8, ptr %i.rn, i64 31
  %i.vd = load i8, ptr %i.uz, align 1, !tbaa !38, !alias.scope !204
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !38, !alias.scope !204
  %i.vf = load i8, ptr %i.vb, align 1, !tbaa !38, !alias.scope !204
  %i.vg = load i8, ptr %i.vc, align 1, !tbaa !38, !alias.scope !204
  %i.vh = insertelement <4 x i8> poison, i8 %i.vd, i64 0
  %i.vi = insertelement <4 x i8> %i.vh, i8 %i.ve, i64 1
  %i.vj = insertelement <4 x i8> %i.vi, i8 %i.vf, i64 2
  %i.vk = insertelement <4 x i8> %i.vj, i8 %i.vg, i64 3
  %i.vl = icmp eq <4 x i8> %i.vk, zeroinitializer
  %i.vm = select <4 x i1> %i.sl, <4 x i8> zeroinitializer, <4 x i8> splat (i8 2)
  %i.vn = or disjoint <4 x i8> %i.vm, %i.ry
  %i.vo = select <4 x i1> %i.sy, <4 x i8> zeroinitializer, <4 x i8> splat (i8 4)
  %i.vp = or disjoint <4 x i8> %i.vn, %i.vo
  %i.vq = select <4 x i1> %i.tl, <4 x i8> zeroinitializer, <4 x i8> splat (i8 8)
  %i.vr = or disjoint <4 x i8> %i.vp, %i.vq
  %i.vs = select <4 x i1> %i.ty, <4 x i8> zeroinitializer, <4 x i8> splat (i8 16)
  %i.vt = or disjoint <4 x i8> %i.vr, %i.vs
  %i.vu = select <4 x i1> %i.ul, <4 x i8> zeroinitializer, <4 x i8> splat (i8 32)
  %i.vv = or disjoint <4 x i8> %i.vt, %i.vu
  %i.vw = select <4 x i1> %i.uy, <4 x i8> zeroinitializer, <4 x i8> splat (i8 64)
  %i.vx = or <4 x i8> %i.vv, %i.vw
  %i.vy = select <4 x i1> %i.vl, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -128)
  %i.vz = or <4 x i8> %i.vx, %i.vy
  store <4 x i8> %i.vz, ptr %next.gep51, align 1, !tbaa !38, !alias.scope !207, !noalias !204
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.wa = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.wa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n53, label %._crit_edge60.i.i, label %.preheader53.i.i.preheader

.preheader53.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.re, %vec.epilog.middle.block ]
  %.in.i.i.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %13, %vec.epilog.iter.check ], [ %14, %vec.epilog.middle.block ]
  %.13959.i.i.ph = phi ptr [ %.038.i.i, %iter.check ], [ %.038.i.i, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.rf, %vec.epilog.middle.block ]
  br label %.preheader53.i.i

.preheader53.i.i:                                 ; preds = %.preheader53.i.i.preheader, %.preheader53.i.i
  %.3 = phi i64 [ %i.wc, %.preheader53.i.i ], [ %.3.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.in.i.i = phi i64 [ %i.wd, %.preheader53.i.i ], [ %.in.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.13959.i.i = phi ptr [ %i.wg, %.preheader53.i.i ], [ %.13959.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %i.wb = getelementptr i8, ptr %2, i64 %.3
  %i.wc = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.wd = add nsw i64 %.in.i.i, -1
  %i.we = load <8 x i8>, ptr %i.wb, align 1, !tbaa !38
  %i.wf = icmp ne <8 x i8> %i.we, zeroinitializer
  %i.wg = getelementptr inbounds nuw i8, ptr %.13959.i.i, i64 1 ; 2 uses
  store <8 x i1> %i.wf, ptr %.13959.i.i, align 1, !tbaa !38
  %i.wh = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.wh, label %.preheader53.i.i, label %._crit_edge60.i.i, !llvm.loop !211

._crit_edge60.i.i:                                ; preds = %.preheader53.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.2 = phi i64 [ %.1, %bb.f ], [ %i.re, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %i.wc, %.preheader53.i.i ] ; 2 uses
  %.139.lcssa.i.i = phi ptr [ %.038.i.i, %bb.f ], [ %i.rf, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.wg, %.preheader53.i.i ]
  %i.wi = srem i64 %.1.i.i, 8                     ; 6 uses
  %.not45.i.i = icmp eq i64 %i.wi, 0
  br i1 %.not45.i.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge60.i.i
  %i.wj = icmp sgt i64 %i.wi, 0
  br i1 %i.wj, label %.lr.ph65.i.i.preheader, label %._crit_edge66.i.i

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.wi, 1
  %i.wk = icmp eq i64 %i.wi, 1
  br i1 %i.wk, label %.lr.ph65.i.i.epil.preheader, label %.lr.ph65.i.i.preheader.new

.lr.ph65.i.i.preheader.new:                       ; preds = %.lr.ph65.i.i.preheader
  %unroll_iter = and i64 %i.wi, 9223372036854775806
  br label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i, %.lr.ph65.i.i.preheader.new
  %i.wl = phi i64 [ %.2, %.lr.ph65.i.i.preheader.new ], [ %i.wr, %.lr.ph65.i.i ] ; 3 uses
  %.13763.i.i = phi i8 [ 1, %.lr.ph65.i.i.preheader.new ], [ %i.wx, %.lr.ph65.i.i ] ; 3 uses
  %.14162.i.i = phi i8 [ 0, %.lr.ph65.i.i.preheader.new ], [ %i.ww, %.lr.ph65.i.i ]
  %niter = phi i64 [ 0, %.lr.ph65.i.i.preheader.new ], [ %niter.next.1, %.lr.ph65.i.i ]
  %i.wm = getelementptr inbounds i8, ptr %2, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !38
  %.not52.i.i = icmp eq i8 %i.wn, 0
  %i.wo = select i1 %.not52.i.i, i8 0, i8 %.13763.i.i
  %i.wp = or i8 %i.wo, %.14162.i.i
  %i.wq = shl nuw i8 %.13763.i.i, 1
  %i.wr = add nsw i64 %i.wl, 2                    ; 2 uses
  %i.ws = getelementptr i8, ptr %2, i64 %i.wl
  %i.wt = getelementptr i8, ptr %i.ws, i64 1
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !38
  %.not52.i.i.1 = icmp eq i8 %i.wu, 0
  %i.wv = select i1 %.not52.i.i.1, i8 0, i8 %i.wq
  %i.ww = or i8 %i.wv, %i.wp                      ; 3 uses
  %i.wx = shl nuw i8 %.13763.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge66.i.i.loopexit.unr-lcssa, label %.lr.ph65.i.i, !llvm.loop !212

._crit_edge66.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph65.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i.i, label %.lr.ph65.i.i.epil.preheader

.lr.ph65.i.i.epil.preheader:                      ; preds = %._crit_edge66.i.i.loopexit.unr-lcssa, %.lr.ph65.i.i.preheader
  %.epil.init = phi i64 [ %.2, %.lr.ph65.i.i.preheader ], [ %i.wr, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %.13763.i.i.epil.init = phi i8 [ 1, %.lr.ph65.i.i.preheader ], [ %i.wx, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %.14162.i.i.epil.init = phi i8 [ 0, %.lr.ph65.i.i.preheader ], [ %i.ww, %._crit_edge66.i.i.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.wi to i1
  call void @llvm.assume(i1 %lcmp.mod63)
  %i.wy = getelementptr inbounds i8, ptr %2, i64 %.epil.init
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !38
  %.not52.i.i.epil = icmp eq i8 %i.wz, 0
  %i.xa = select i1 %.not52.i.i.epil, i8 0, i8 %.13763.i.i.epil.init
  %i.xb = or i8 %i.xa, %.14162.i.i.epil.init
  br label %._crit_edge66.i.i

._crit_edge66.i.i:                                ; preds = %.lr.ph65.i.i.epil.preheader, %._crit_edge66.i.i.loopexit.unr-lcssa, %.preheader.i.i
  %.141.lcssa.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.ww, %._crit_edge66.i.i.loopexit.unr-lcssa ], [ %i.xb, %.lr.ph65.i.i.epil.preheader ]
  store i8 %.141.lcssa.i.i, ptr %.139.lcssa.i.i, align 1, !tbaa !38
  br label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i"

"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i": ; preds = %._crit_edge66.i.i, %._crit_edge60.i.i
  %i.xc = load i64, ptr %i.p, align 8, !tbaa !167
  %i.xd = add nsw i64 %i.xc, %3
  store i64 %i.xd, ptr %i.p, align 8, !tbaa !167
  br label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit"

"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit": ; preds = %bb.b, %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i"
  call void @_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !213
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit"
  ret void
}

declare void @_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIhSaIhEERKS1_IbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.a, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.a, i64 noundef %i.f, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !221
  %i.e = load ptr, ptr %2, align 8, !tbaa !219
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !162, !noalias !222 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !61, !noalias !222
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !222
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !222, !inline_history !166
  %i.r = add nsw i64 %i.q, %i.k                   ; 2 uses
  %.not.i = icmp sgt i64 %i.r, %i.m
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit15

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.s = shl nsw i64 %i.m, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.r, i64 %i.s)
  %i.t = load ptr, ptr %1, align 8, !tbaa !61, !noalias !222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !222
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit15, label %.critedge

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES8_E3$_0EEvlOT0_.exit", label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !167 ; 2 uses
  %i.ac = sdiv i64 %i.ab, 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 4 uses
  %i.ae = srem i64 %i.ab, 8                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ai = and i8 %i.ah, %i.af                     ; 2 uses
  %i.aj = icmp sgt i64 %i.k, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38
  %.val49.val.i.i = load ptr, ptr %2, align 8, !tbaa !219
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.am = phi i64 [ 0, %.lr.ph.i.i ], [ %i.an, %bb.d ] ; 3 uses
  %.03560.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.aw, %bb.d ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_:bb.a
  %i.di = select i1 %.not74, i8 0, i8 64
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = select i1 %.not75, i8 0, i8 -128
  %i.dl = or i8 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.13954, i64 1 ; 2 uses
  store i8 %i.dl, ptr %.13954, align 1, !tbaa !38
  %i.dn = icmp samesign ugt i64 %.in, 1
  br i1 %i.dn, label %.preheader48, label %._crit_edge55, !llvm.loop !398

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.dm, %.preheader48 ]
  %i.do = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.do, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !187
  %i.ds = load ptr, ptr %3, align 8, !tbaa !395, !nonnull !160, !align !337
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !181 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !396, !nonnull !160, !align !337 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 6 uses
  %xtraiter = and i64 %i.do, 1
  %i.dx = icmp eq i64 %i.do, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.do, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.er, %bb.f ] ; 3 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !106 ; 2 uses
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !106
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !38
  %.not47 = icmp eq i8 %i.eb, 0                   ; 2 uses
  %i.ec = zext i1 %.not47 to i64
  %i.ed = load i64, ptr %i.dw, align 8, !tbaa !190
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !190
  %i.ef = select i1 %.not47, i8 0, i8 %.13758
  %i.eg = or i8 %i.ef, %.14157
  %i.eh = shl nuw i8 %.13758, 1
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !106 ; 2 uses
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dv, align 8, !tbaa !106
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !38
  %.not47.1 = icmp eq i8 %i.el, 0                 ; 2 uses
  %i.em = zext i1 %.not47.1 to i64
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !190
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !190
  %i.ep = select i1 %.not47.1, i8 0, i8 %i.eh
  %i.eq = or i8 %i.ep, %i.eg                      ; 3 uses
  %i.er = shl nuw i8 %.13758, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !399

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.er, %._crit_edge61.loopexit.unr-lcssa ]
  %.14157.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.es = load i64, ptr %i.dv, align 8, !tbaa !106 ; 2 uses
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.dv, align 8, !tbaa !106
  %i.eu = getelementptr inbounds i8, ptr %i.dt, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !38
  %.not47.epil = icmp eq i8 %i.ev, 0              ; 2 uses
  %i.ew = zext i1 %.not47.epil to i64
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !190
  %i.ey = add nsw i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.dw, align 8, !tbaa !190
  %i.ez = select i1 %.not47.epil, i8 0, i8 %.13758.epil.init
  %i.fa = or i8 %i.ez, %.14157.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %.epil.preheader, %._crit_edge61.loopexit.unr-lcssa, %.preheader
  %.141.lcssa = phi i8 [ 0, %.preheader ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge61, %bb.a
  ret void
}

declare void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !400
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !400
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327, !noalias !400, !nonnull !160, !align !337
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %2) #20, !noalias !400
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !400 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !400
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !400
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !323    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA24_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !323    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

declare void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { cold }

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
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!40, !28, i64 104}
!40 = !{!"_ZTSN5arrow12ArrayBuilderE", !41, i64 8, !28, i64 16, !42, i64 24, !28, i64 96, !28, i64 104, !28, i64 112, !48, i64 120}
!41 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !36, i64 0}
!42 = !{!"_ZTSN5arrow18TypedBufferBuilderIbvEE", !43, i64 0, !28, i64 56, !28, i64 64}
!43 = !{!"_ZTSN5arrow13BufferBuilderE", !44, i64 0, !41, i64 16, !47, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!44 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !45, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !34, i64 8}
!46 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !36, i64 0}
!47 = !{!"p1 omnipotent char", !36, i64 0}
!48 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !36, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!56 = !{!54, !55, i64 16}
!57 = !{!54, !55, i64 8}
!58 = !{!59, !4, i64 8}
!59 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!60 = !{!59, !4, i64 12}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !6, i64 0}
!63 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!66 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!70 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!71 = !{!72, !73, i64 0}
!72 = !{!"_ZTSN5arrow6StatusE", !73, i64 0}
!73 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5arrow6Status2OKEv: argument 0"}
!76 = distinct !{!76, !"_ZN5arrow6Status2OKEv"}
!77 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!78 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!79 = !{!40, !41, i64 8}
!80 = !{!40, !28, i64 16}
!81 = !{!43, !41, i64 16}
!82 = !{!43, !47, i64 24}
!83 = !{!43, !28, i64 48}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !34, i64 8}
!86 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!87 = !{!88, !97, i64 40}
!88 = !{!"_ZTSN5arrow8DataTypeE", !89, i64 0, !93, i64 24, !97, i64 40, !98, i64 48}
!89 = !{!"_ZTSN5arrow6detail15FingerprintableE", !90, i64 8, !90, i64 16}
!90 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !91, i64 0}
!91 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !92, i64 0}
!92 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!93 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !94, i64 0}
!94 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !95, i64 0}
!95 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !96, i64 8}
!96 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!97 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!98 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!103 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!104 = !{!46, !46, i64 0}
!105 = distinct !{null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!106 = !{!28, !28, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl: argument 0"}
!109 = distinct !{!109, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl"}
!110 = !{!43, !28, i64 32}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5arrow18TypedBufferBuilderIbvE6ResizeElb: argument 0"}
!113 = distinct !{!113, !"_ZN5arrow18TypedBufferBuilderIbvE6ResizeElb"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb: argument 0"}
!116 = distinct !{!116, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb"}
!117 = !{!43, !28, i64 40}
!118 = !{!119, !115}
!119 = distinct !{!119, !120, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!120 = distinct !{!120, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!123 = distinct !{!123, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!126 = distinct !{!126, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!127 = !{!128, !129, i64 0}
!128 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !34, i64 8}
!129 = !{!"p1 _ZTSN5arrow6BufferE", !36, i64 0}
!130 = !{!125, !122}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb: argument 0"}
!133 = distinct !{!133, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb"}
!134 = !{!135, !132}
!135 = distinct !{!135, !136, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!136 = distinct !{!136, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!139 = distinct !{!139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!142 = distinct !{!142, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!143 = !{!141, !138}
!144 = !{!40, !28, i64 96}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN5arrow6Status2OKEv: argument 0"}
!147 = distinct !{!147, !"_ZN5arrow6Status2OKEv"}
!148 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!149 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!150 = !{!151, !153, i64 1}
!151 = !{!"_ZTSN5arrow6Status5StateE", !152, i64 0, !153, i64 1, !154, i64 8, !156, i64 40}
!152 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!153 = !{!"bool", !5, i64 0}
!154 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !155, i64 0, !28, i64 8, !5, i64 16}
!155 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!156 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !157, i64 0}
!157 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !158, i64 0, !34, i64 8}
!158 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!159 = !{i8 0, i8 2}
!160 = !{}
!161 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!162 = !{!40, !28, i64 112}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!165 = distinct !{!165, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!166 = distinct !{null}
!167 = !{!42, !28, i64 56}
!168 = distinct !{!168, !68}
end_hunk_3
