Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_typed_mark_proc:bb.a

bb.m:                                             ; preds = %GC_signal_mark_stack_overflow.exit, %bb.h
  %.3 = phi ptr [ %i.ae, %GC_signal_mark_stack_overflow.exit ], [ %i.aa, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.af, ptr %.3, align 8
  %i.ag = shl i64 %3, 6
  %i.ah = add i64 %i.ag, 64
  %i.ai = load i32, ptr @GC_typed_mark_proc_index, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = or i64 %i.ah, %i.aj
  %i.al = shl i64 %i.ak, 2
  %i.am = or disjoint i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.4 = phi ptr [ %.3, %bb.m ], [ %.036.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @GC_array_mark_proc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.w = inttoptr i64 %i.u to ptr
  %i.x = getelementptr inbounds i8, ptr %2, i64 -16
  %i.y = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef nonnull %0, ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef nonnull %i.x) ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %1, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.228) #45
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %2
  br i1 %i.af, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.g
  %.sink36 = phi ptr [ %1, %bb.f ], [ %1, %bb.g ], [ %i.y, %bb.c ] ; 2 uses
  %.sink34 = phi ptr [ %0, %bb.f ], [ %0, %bb.g ], [ %i.t, %bb.c ]
  %.sink = phi i64 [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ 8, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink36, i64 16 ; 2 uses
  store ptr %.sink34, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink36, i64 24
  store i64 %.sink, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %GC_find_header.exit
  %.026 = phi ptr [ %1, %GC_find_header.exit ], [ %i.ag, %.sink.split ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_push_complex_descriptor(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ax, %bb.f ]  ; 5 uses
  %.tr55 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.f ] ; 8 uses
  %.tr56 = phi ptr [ %2, %bb.a ], [ %i.av, %bb.f ] ; 7 uses
  %i.a = load i64, ptr %.tr55, align 8
  switch i64 %i.a, label %bb.g [
    i64 1, label %bb.b
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr55, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = ptrtoint ptr %3 to i64
  %i.g = ptrtoint ptr %.tr56 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp sgt i64 %i.i, %i.e
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 9 uses
  %.not80 = icmp eq i64 %i.e, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.l = icmp ult i64 %i.e, 8
  br i1 %i.l, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.preheader
  %unroll_iter = and i64 %i.e, -8
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.new
  %.04675 = phi ptr [ %.tr, %.lr.ph77.preheader.new ], [ %i.aj, %.lr.ph77 ] ; 2 uses
  %.05074 = phi ptr [ %.tr56, %.lr.ph77.preheader.new ], [ %i.ah, %.lr.ph77 ] ; 16 uses
  %niter = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %niter.next.7, %.lr.ph77 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.05074, i64 16
  store ptr %.04675, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.05074, i64 24
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.04675, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05074, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.05074, i64 40
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05074, i64 48
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.05074, i64 56
  store i64 %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.k ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05074, i64 64
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.05074, i64 72
  store i64 %i.c, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05074, i64 80
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.05074, i64 88
  store i64 %i.c, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.k ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05074, i64 96
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.05074, i64 104
  store i64 %i.c, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05074, i64 112
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.05074, i64 120
  store i64 %i.c, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.k ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05074, i64 128 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.05074, i64 136
  store i64 %i.c, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.k ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph77, !llvm.loop !346

bb.d:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.tr55, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.al)
  %.not79 = icmp eq i64 %i.an, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %4
  %.171 = phi i64 [ %6, %4 ], [ 0, %bb.d ]
  %.14770 = phi ptr [ %5, %4 ], [ %.tr, %bb.d ]   ; 2 uses
  %.15169 = phi ptr [ %i.ap, %4 ], [ %.tr56, %bb.d ]
  %i.ap = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef %.14770, ptr noundef %i.al, ptr noundef %.15169, ptr noundef %3) ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit, label %4

4:                                                ; preds = %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %.14770, i64 %i.ao
  %6 = add nuw i64 %.171, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %6, %i.an
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !347

bb.e:                                             ; preds = %tailrecurse
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr55, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.as)
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = tail call fastcc ptr @GC_push_complex_descriptor(ptr noundef %.tr, ptr noundef %i.au, ptr noundef %.tr56, ptr noundef %3) ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr55, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  br label %tailrecurse

bb.g:                                             ; preds = %tailrecurse
  %i.ba = load ptr, ptr @GC_current_warn_proc, align 8
  %i.bb = icmp eq ptr %i.ba, inttoptr (i64 -1 to ptr)
  br i1 %i.bb, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bc(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.04675.epil.init = phi ptr [ %.tr, %.lr.ph77.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ]
  %.05074.epil.init = phi ptr [ %.tr56, %.lr.ph77.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.04675.epil = phi ptr [ %i.bf, %.lr.ph77.epil ], [ %.04675.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %.05074.epil = phi ptr [ %i.bd, %.lr.ph77.epil ], [ %.05074.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 16 ; 3 uses
  store ptr %.04675.epil, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 24
  store i64 %i.c, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.04675.epil, i64 %i.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph77.epil, !llvm.loop !348

.loopexit:                                        ; preds = %bb.e, %4, %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph77.epil, %bb.d, %bb.c, %bb.g, %bb.b
  %.2 = phi ptr [ %i.bd, %.lr.ph77.epil ], [ null, %bb.g ], [ null, %bb.b ], [ null, %.lr.ph ], [ %.tr56, %bb.c ], [ %.tr56, %bb.d ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %4 ], [ null, %bb.e ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @GC_descr_obj_size(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %accumulator.tr = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ] ; 3 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %i.k, %bb.c ]   ; 7 uses
  %i.a = load i64, ptr %.tr, align 8
  switch i64 %i.a, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul i64 %i.e, %i.c
  %i.g = mul i64 %i.f, %accumulator.tr
  br label %common.ret33

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = mul i64 %i.i, %accumulator.tr
  br label %tailrecurse

common.ret33:                                     ; preds = %bb.e, %bb.b, %bb.d
  %common.ret33.op = phi i64 [ %accumulator.ret.tr, %bb.d ], [ %i.g, %bb.b ], [ 0, %bb.e ]
  ret i64 %common.ret33.op

bb.d:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.q)
  %i.s = add i64 %i.r, %i.o
  %accumulator.ret.tr = mul i64 %i.s, %accumulator.tr
  br label %common.ret33

bb.e:                                             ; preds = %tailrecurse
  %i.t = load ptr, ptr @GC_current_warn_proc, align 8
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %common.ret33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.v(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @GC_push_typed_structures_proc() #2 {
bb.a:
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448))
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @GC_make_sequence_descriptor(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @GC_malloc_kind(i64 noundef 24, i32 noundef 1) #53 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.b = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = lshr i64 %i.d, 12
  %i.f = lshr i64 %i.d, 18
  %i.g = and i64 %i.f, 4095
  %i.h = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.g
  %i.i = and i64 %i.e, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = atomicrmw volatile or ptr %i.h, i64 %i.j monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %0) #45, !srcloc !350
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %1) #45, !srcloc !351
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #42

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @looping_handler(i32 noundef %0) #38 {
bb.a:
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.231, i32 noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  br label %bb.b
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #14

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #43

; Function Attrs: noreturn nounwind uwtable
define internal void @GC_fault_handler(i32 %0) #38 {
bb.a:
  tail call void @siglongjmp(ptr noundef nonnull @GC_jmp_buf, i32 noundef 1) #48
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #44

declare i32 @close(i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @GC_write_fault_handler(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %0, 11
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.f = lshr i64 %i.d, 22                        ; 2 uses
  %i.g = and i64 %i.f, 2047
  %i.h = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.g
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.k, %i.f
  %i.m = icmp ne ptr %.0.i, %i.i
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.n, label %bb.c, label %is_header_found_async.exit, !llvm.loop !352

is_header_found_async.exit:                       ; preds = %bb.c
  %i.p = sub i64 0, %i.e
  %i.q = and i64 %i.p, %i.d
  %i.r = inttoptr i64 %i.q to ptr                 ; 6 uses
  %i.s = lshr i64 %i.d, 12
  %i.t = and i64 %i.s, 1023
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %.not29 = icmp eq ptr %i.v, null
  br i1 %.not29, label %bb.d, label %bb.i

bb.d:                                             ; preds = %is_header_found_async.exit
  %i.w = load ptr, ptr @GC_old_segv_handler, align 8 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.f
end_hunk_0
