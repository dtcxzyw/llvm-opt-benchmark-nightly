Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_register_displacement
define void @GC_register_displacement(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.b1 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b1, label %bb.b, label %GC_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %GC_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @GC_nprocs, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  %i.f = icmp ugt i64 %0, 4095
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_lock.exit
  %i.g = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.g(ptr noundef nonnull @.str.131) #43, !inline_history !5
  tail call void @abort() #46
  unreachable

bb.h:                                             ; preds = %GC_lock.exit
  %i.h = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %0 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not.i2 = icmp eq i8 %i.i, 0
  br i1 %.not.i2, label %bb.i, label %GC_register_displacement_inner.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.h, align 1
  %i.j = and i64 %0, 7
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), i64 %i.j
  store i8 1, ptr %i.k, align 1
  br label %GC_register_displacement_inner.exit

GC_register_displacement_inner.exit:              ; preds = %bb.h, %bb.i
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_register_displacement_inner.exit
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %GC_register_displacement_inner.exit, %bb.j
  ret void
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @GC_default_same_obj_print_proc(ptr noundef %0, ptr noundef %1) #8 {
bb.a:
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.132, ptr noundef %0, ptr noundef %1)
  %i.a = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.a(ptr noundef nonnull @.str.133) #43
  tail call void @abort() #46
  unreachable
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_same_obj(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @GC_init()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi ptr [ %i.d, %bb.c ], [ %i.k, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.d, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.d
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %GC_find_header.exit
  %i.q = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not66.unshifted = xor i64 %i.q, %i.a
  %.not66 = icmp ult i64 %.not66.unshifted, 4096
  br i1 %.not66, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i64 %i.q, 22                        ; 2 uses
  %i.s = and i64 %i.r, 2047
  %i.t = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in.i70 = phi ptr [ %i.t, %bb.f ], [ %i.z, %bb.g ]
  %.0.i71 = load ptr, ptr %.0.in.i70, align 8     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8208
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ne i64 %i.v, %i.r
  %i.x = icmp ne ptr %.0.i71, %i.e
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8216
  br i1 %i.y, label %bb.g, label %GC_find_header.exit72, !llvm.loop !2

GC_find_header.exit72:                            ; preds = %bb.g
  %i.aa = lshr i64 %i.q, 12
  %i.ab = and i64 %i.aa, 1023
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i71, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not67 = icmp eq ptr %i.ad, null
  br i1 %.not67, label %bb.q, label %bb.p

bb.h:                                             ; preds = %GC_find_header.exit
  %i.ae = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %i.o to i64
  %i.ag = and i64 %i.a, -4096
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = sub nsw i64 0, %i.af
  %i.aj = getelementptr inbounds [4096 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = lshr i64 %i.ak, 22                      ; 2 uses
  %i.am = and i64 %i.al, 2047
  %i.an = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.in.i73 = phi ptr [ %i.an, %bb.i ], [ %i.at, %bb.j ]
  %.0.i74 = load ptr, ptr %.0.in.i73, align 8     ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i74, i64 8208
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp ne i64 %i.ap, %i.al
  %i.ar = icmp ne ptr %.0.i74, %i.e
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i74, i64 8216
  br i1 %i.as, label %bb.j, label %GC_find_header.exit75, !llvm.loop !2

GC_find_header.exit75:                            ; preds = %bb.j
  %i.au = lshr exact i64 %i.ak, 12
  %i.av = and i64 %i.au, 1023
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i74, i64 %i.av
  %.05183 = load ptr, ptr %i.aw, align 8          ; 3 uses
  %i.ax = icmp ult ptr %.05183, inttoptr (i64 4096 to ptr)
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %GC_find_header.exit75, %GC_find_header.exit78
  %.05185 = phi ptr [ %.051, %GC_find_header.exit78 ], [ %.05183, %GC_find_header.exit75 ]
  %.05284 = phi ptr [ %i.ba, %GC_find_header.exit78 ], [ %i.aj, %GC_find_header.exit75 ]
  %i.ay = ptrtoint ptr %.05185 to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [4096 x i8], ptr %.05284, i64 %i.az ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = lshr i64 %i.bb, 22                      ; 2 uses
  %i.bd = and i64 %i.bc, 2047
  %i.be = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bd
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph
  %.0.in.i76 = phi ptr [ %i.be, %.lr.ph ], [ %i.bk, %bb.k ]
  %.0.i77 = load ptr, ptr %.0.in.i76, align 8     ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i77, i64 8208
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp ne i64 %i.bg, %i.bc
  %i.bi = icmp ne ptr %.0.i77, %i.e
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i77, i64 8216
  br i1 %i.bj, label %bb.k, label %GC_find_header.exit78, !llvm.loop !2

GC_find_header.exit78:                            ; preds = %bb.k
  %i.bl = lshr i64 %i.bb, 12
  %i.bm = and i64 %i.bl, 1023
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0.i77, i64 %i.bm
  %.051 = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bo = icmp ult ptr %.051, inttoptr (i64 4096 to ptr)
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %GC_find_header.exit78, %GC_find_header.exit75
  %.052.lcssa = phi ptr [ %i.aj, %GC_find_header.exit75 ], [ %i.ba, %GC_find_header.exit78 ] ; 2 uses
  %.051.lcssa = phi ptr [ %.05183, %GC_find_header.exit75 ], [ %.051, %GC_find_header.exit78 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 32
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.bq ; 2 uses
  %.not64 = icmp uge ptr %0, %i.br
  %.not65 = icmp uge ptr %1, %i.br
  %or.cond.not82 = or i1 %.not64, %.not65
  %i.bs = icmp ult ptr %1, %.052.lcssa
  %or.cond68 = or i1 %i.bs, %or.cond.not82
  br i1 %or.cond68, label %bb.p, label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bu = load i64, ptr %i.bt, align 8            ; 4 uses
  %i.bv = icmp ugt i64 %i.bu, 2048
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = and i64 %i.a, -4096
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 2 uses
  %.not62 = icmp ult ptr %0, %i.by
  br i1 %.not62, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = xor i64 %i.bz, %i.a
  %.not = icmp ult i64 %i.ca, 4096
  br i1 %.not, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.n
  %i.cb = trunc i64 %i.a to i16
  %.lhs.trunc = and i16 %i.cb, 4095
  %.rhs.trunc = trunc nuw nsw i64 %i.bu to i16
  %i.cc = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.cc to i64
  %i.cd = sub nsw i64 0, %.zext
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bu
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %.150 = phi ptr [ %i.bx, %bb.m ], [ %i.ce, %.thread ]
  %.1 = phi ptr [ %i.by, %bb.m ], [ %i.cf, %.thread ]
  %.not63 = icmp uge ptr %1, %.1
  %i.cg = icmp ult ptr %1, %.150
  %or.cond69 = select i1 %.not63, i1 true, i1 %i.cg
  br i1 %or.cond69, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m, %._crit_edge, %GC_find_header.exit72
  %i.ch = load ptr, ptr @GC_same_obj_print_proc, align 8
  tail call void %i.ch(ptr noundef %0, ptr noundef %1) #43
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %._crit_edge, %bb.e, %GC_find_header.exit72, %bb.p
  ret ptr %0
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @GC_default_is_valid_displacement_print_proc(ptr noundef %0) #8 {
bb.a:
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.134, ptr noundef %0)
  %i.a = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.a(ptr noundef nonnull @.str.135) #43
  tail call void @abort() #46
  unreachable
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_is_valid_displacement(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @GC_init()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.c = lshr i64 %i.b, 22                        ; 2 uses
  %i.d = and i64 %i.c, 2047
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i = phi ptr [ %i.e, %bb.d ], [ %i.l, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, %i.c
  %i.j = icmp ne ptr %.0.i, %i.f
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.k, label %bb.e, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.e
  %i.m = lshr i64 %i.b, 12
  %i.n = and i64 %i.m, 1023
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.n, label %bb.f

bb.f:                                             ; preds = %GC_find_header.exit
  %i.r = and i64 %i.b, -4096
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.t, 0
  %i.u = icmp ult ptr %i.p, inttoptr (i64 4096 to ptr) ; 2 uses
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %GC_find_header.exit39
  %.044 = phi ptr [ %i.x, %GC_find_header.exit39 ], [ %i.s, %.preheader ]
  %.02743 = phi ptr [ %i.al, %GC_find_header.exit39 ], [ %i.p, %.preheader ]
  %i.v = ptrtoint ptr %.02743 to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4096 x i8], ptr %.044, i64 %i.w ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = lshr i64 %i.y, 22                        ; 2 uses
  %i.aa = and i64 %i.z, 2047
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph
  %.0.in.i37 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ah, %bb.g ]
  %.0.i38 = load ptr, ptr %.0.in.i37, align 8     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i38, i64 8208
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, %i.z
  %i.af = icmp ne ptr %.0.i38, %i.f
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i38, i64 8216
  br i1 %i.ag, label %bb.g, label %GC_find_header.exit39, !llvm.loop !2

GC_find_header.exit39:                            ; preds = %bb.g
  %i.ai = lshr i64 %i.y, 12
  %i.aj = and i64 %i.ai, 1023
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i38, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = icmp ult ptr %i.al, inttoptr (i64 4096 to ptr)
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !70

bb.h:                                             ; preds = %bb.f
  br i1 %i.u, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %GC_find_header.exit39, %.preheader, %bb.h
  %.128 = phi ptr [ %i.p, %bb.h ], [ %i.p, %.preheader ], [ %i.al, %GC_find_header.exit39 ]
  %.1 = phi ptr [ %i.s, %bb.h ], [ %i.s, %.preheader ], [ %i.x, %GC_find_header.exit39 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.128, i64 32
  %i.ao = load i64, ptr %i.an, align 8            ; 4 uses
  %i.ap = and i64 %i.b, 4095
  %i.aq = urem i64 %i.ap, %i.ao                   ; 2 uses
  %i.ar = icmp ult i64 %i.ao, 2049
  %i.as = ptrtoint ptr %.1 to i64
  %i.at = add i64 %i.ao, %i.as
  %.not34 = icmp ugt i64 %i.at, %i.b
  %or.cond = or i1 %i.ar, %.not34
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1
  %.not35 = icmp eq i8 %i.av, 0
  br i1 %.not35, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %i.ao, %i.b
  %i.ax = sub i64 %i.aw, %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %.1, i64 4096
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = lshr i64 %i.az, 22                      ; 2 uses
  %i.bc = and i64 %i.bb, 2047
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bc
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i40 = phi ptr [ %i.bd, %bb.k ], [ %i.bj, %bb.l ]
  %.0.i41 = load ptr, ptr %.0.in.i40, align 8     ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8208
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ne i64 %i.bf, %i.bb
  %i.bh = icmp ne ptr %.0.i41, %i.f
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8216
  br i1 %i.bi, label %bb.l, label %GC_find_header.exit42, !llvm.loop !2

GC_find_header.exit42:                            ; preds = %bb.l
  %i.bk = lshr i64 %i.az, 12
  %i.bl = and i64 %i.bk, 1023
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i41, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %i.bn, inttoptr (i64 4096 to ptr)
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.i, %GC_find_header.exit42, %bb.h
  %i.bp = load ptr, ptr @GC_is_valid_displacement_print_proc, align 8
  tail call void %i.bp(ptr noundef nonnull %0) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %GC_find_header.exit42, %GC_find_header.exit, %bb.c, %bb.m
  ret ptr %0
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @GC_default_is_visible_print_proc(ptr noundef %0) #8 {
bb.a:
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.136, ptr noundef %0)
  %i.a = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.a(ptr noundef nonnull @.str.137) #43
  tail call void @abort() #46
  unreachable
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_is_visible(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %i.a, 7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %GC_base.exit.thread

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.d, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @GC_init()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = lshr i64 %i.a, 22                        ; 3 uses
  %i.d = and i64 %i.c, 2047
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.d ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i = phi ptr [ %i.e, %bb.d ], [ %i.l, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, %i.c
  %i.j = icmp ne ptr %.0.i, %i.f
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.k, label %bb.e, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.e
  %i.m = lshr i64 %i.a, 12
  %i.n = and i64 %i.m, 1023                       ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %.not8 = icmp eq ptr %i.p, null
  br i1 %.not8, label %bb.j, label %bb.f

bb.f:                                             ; preds = %GC_find_header.exit
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %.preheader, label %GC_base.exit.thread, !prof !47

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0.in.i9 = phi ptr [ %i.v, %.preheader ], [ %i.e, %bb.f ]
  %.0.i10 = load ptr, ptr %.0.in.i9, align 8      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8208
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ne i64 %i.r, %i.c
  %i.t = icmp ne ptr %.0.i10, %i.f
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8216
  br i1 %i.u, label %.preheader, label %bb.g, !llvm.loop !6

bb.g:                                             ; preds = %.preheader
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i10, i64 %i.n
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.z = and i64 %i.a, -4096
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = icmp ult ptr %i.x, inttoptr (i64 4096 to ptr)
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.as, %GC_find_header.exit.i ], [ %i.x, %.preheader.i ]
  %.03745.i = phi ptr [ %i.ae, %GC_find_header.exit.i ], [ %i.aa, %.preheader.i ]
  %i.ac = ptrtoint ptr %.03646.i to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.ad ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = lshr i64 %i.af, 22                      ; 2 uses
  %i.ah = and i64 %i.ag, 2047
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ao, %bb.h ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ne i64 %i.ak, %i.ag
  %i.am = icmp ne ptr %.0.i.i, %i.f
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.an, label %bb.h, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.h
  %i.ap = lshr i64 %i.af, 12
  %i.aq = and i64 %i.ap, 1023
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp ult ptr %i.as, inttoptr (i64 4096 to ptr)
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.ae, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.aa, %.preheader.i ], [ %i.ae, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.x, %.preheader.i ], [ %i.as, %GC_find_header.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 4
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %GC_base.exit.thread

bb.i:                                             ; preds = %._crit_edge.i
  %i.ax = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ay = and i64 %i.ax, -8                       ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = and i64 %i.ax, 4088
  %i.bb = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = urem i64 %i.ba, %i.bc
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.az, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bc, 4097
  %or.cond.not.i.not15 = and i1 %i.bj, %i.bi
  %.not42.i = icmp uge ptr %0, %i.bg
  %cond.i.not12 = or i1 %.not42.i, %or.cond.not.i.not15
  %i.bk = icmp eq i64 %i.ay, 0
  %or.cond = or i1 %i.bk, %cond.i.not12
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.j

GC_base.exit.thread:                              ; preds = %bb.i, %._crit_edge.i, %bb.g, %bb.f, %bb.a
  %i.bl = load ptr, ptr @GC_is_visible_print_proc, align 8
  tail call void %i.bl(ptr noundef %0) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %GC_find_header.exit, %GC_base.exit.thread
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @GC_base(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b, label %bb.b, label %bb.g, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.j, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.q = and i64 %i.a, -4096
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %GC_find_header.exit
  %.03646 = phi ptr [ %i.aj, %GC_find_header.exit ], [ %i.o, %.preheader ]
  %.03745 = phi ptr [ %i.v, %GC_find_header.exit ], [ %i.r, %.preheader ]
  %i.t = ptrtoint ptr %.03646 to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4096 x i8], ptr %.03745, i64 %i.u ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = lshr i64 %i.w, 22                        ; 2 uses
  %i.y = and i64 %i.x, 2047
  %i.z = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph
  %.0.in.i = phi ptr [ %i.z, %.lr.ph ], [ %i.af, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, %i.x
  %i.ad = icmp ne ptr %.0.i, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.ae, label %bb.e, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.e
  %i.ag = lshr i64 %i.w, 12
  %i.ah = and i64 %i.ag, 1023
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, inttoptr (i64 4096 to ptr)
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %GC_find_header.exit, %.preheader
  %.038.lcssa = phi ptr [ %0, %.preheader ], [ %i.v, %GC_find_header.exit ]
  %.037.lcssa = phi ptr [ %i.r, %.preheader ], [ %i.v, %GC_find_header.exit ]
  %.036.lcssa = phi ptr [ %i.o, %.preheader ], [ %i.aj, %GC_find_header.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 25
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not = icmp eq i8 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %.038.lcssa to i64         ; 2 uses
  %i.ap = and i64 %i.ao, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %i.ao, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 32
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 4096
  %i.az = icmp ule ptr %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.at, 4096
  %or.cond.not = or i1 %i.ba, %i.az
  %.not42 = icmp ult ptr %0, %i.ax
  %cond = and i1 %.not42, %or.cond.not
  %spec.select = select i1 %cond, ptr %i.aw, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %._crit_edge ], [ %spec.select, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_pre_incr(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %1 ; 4 uses
  %i.c = tail call ptr @GC_same_obj(ptr noundef %i.b, ptr noundef %i.a) ; 0 uses
  %i.d = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @GC_is_valid_displacement(ptr noundef %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %0, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_post_incr(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %1 ; 3 uses
  %i.c = tail call ptr @GC_same_obj(ptr noundef %i.b, ptr noundef %i.a) ; 0 uses
  %i.d = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @GC_is_valid_displacement(ptr noundef %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @GC_print_hblkfreelist() local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @GC_hblkfreelist, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %cond = icmp eq ptr %i.b, null
  br i1 %cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @GC_free_bytes, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @GC_printf(ptr noundef nonnull @.str.4, i32 noundef %i.e, i64 noundef %i.d)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %GC_is_black_listed.exit.thread
  %.038 = phi ptr [ %i.cd, %GC_is_black_listed.exit.thread ], [ %i.b, %bb.c ] ; 3 uses
  %i.f = ptrtoint ptr %.038 to i64                ; 2 uses
  %i.g = lshr i64 %i.f, 22                        ; 2 uses
  %i.h = and i64 %i.g, 2047
  %i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.h
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %.0.in.i = phi ptr [ %i.i, %.lr.ph ], [ %i.p, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ne i64 %i.l, %i.g
  %i.n = icmp ne ptr %.0.i, %i.j
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.o, label %bb.d, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.d
  %i.q = lshr i64 %i.f, 12                        ; 5 uses
  %i.r = and i64 %i.q, 1023
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = and i64 %i.q, 262143                     ; 3 uses
  %i.x = load i32, ptr @GC_all_interior_pointers, align 4
  %.not.i = icmp eq i32 %i.x, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %GC_find_header.exit._crit_edge

GC_find_header.exit._crit_edge:                   ; preds = %GC_find_header.exit
  %.pre = lshr i64 %i.w, 6
  br label %bb.g

bb.e:                                             ; preds = %GC_find_header.exit
  %i.y = load ptr, ptr @GC_old_normal_bl, align 8
  %i.z = lshr i64 %i.w, 6                         ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.q, 63
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  %i.ae = and i64 %i.ab, %i.ad
  %.not24.i = icmp eq i64 %i.ae, 0
  br i1 %.not24.i, label %bb.f, label %GC_is_black_listed.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @GC_incomplete_normal_bl, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.z
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, %i.ad
  %.not25.i = icmp eq i64 %i.ai, 0
  br i1 %.not25.i, label %bb.g, label %GC_is_black_listed.exit.thread

bb.g:                                             ; preds = %GC_find_header.exit._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre, %GC_find_header.exit._crit_edge ], [ %i.z, %bb.f ] ; 5 uses
  %i.aj = load ptr, ptr @GC_old_stack_bl, align 8 ; 2 uses
  %i.ak = load ptr, ptr @GC_incomplete_stack_bl, align 8 ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.pre-phi
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %GC_is_black_listed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = and i64 %i.q, 63
  %i.as = shl nuw i64 1, %i.ar                    ; 2 uses
  %i.at = and i64 %i.am, %i.as
  %.not26.i = icmp eq i64 %i.at, 0
  br i1 %.not26.i, label %bb.j, label %GC_is_black_listed.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, %i.as
  %.not27.i = icmp eq i64 %i.aw, 0
  br i1 %.not27.i, label %GC_is_black_listed.exit, label %GC_is_black_listed.exit.thread

GC_is_black_listed.exit:                          ; preds = %bb.j, %bb.h
  br i1 %.not.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %GC_is_black_listed.exit
  %i.ax = load ptr, ptr @GC_old_normal_bl, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.pre-phi
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.q, 63
  %i.bb = shl nuw i64 1, %i.ba                    ; 2 uses
  %i.bc = and i64 %i.az, %i.bb
  %.not24.i30 = icmp eq i64 %i.bc, 0
  br i1 %.not24.i30, label %bb.l, label %GC_is_black_listed.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr @GC_incomplete_normal_bl, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, %i.bb
end_hunk_0
begin_hunk_1_@store_debug_info:bb.a
  br i1 %.b12, label %GC_start_debugging_inner.exit, label %bb.i

bb.i:                                             ; preds = %GC_lock.exit
  store ptr @GC_debug_print_heap_obj_proc, ptr @GC_print_heap_obj, align 8
  store i1 true, ptr @GC_debugging_started, align 4
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23064), align 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %bb.j, label %GC_start_debugging_inner.exit

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23064), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 960), align 8
  br label %GC_start_debugging_inner.exit

GC_start_debugging_inner.exit:                    ; preds = %bb.j, %bb.i, %GC_lock.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %3, ptr %0, align 8
  %i.i = sext i32 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.m = xor i64 %i.l, -81929232789475893
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8
  %i.o = xor i64 %i.l, -4837202520199737873       ; 2 uses
  %i.p = add i64 %1, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  store i64 %i.o, ptr %i.r, align 8
  %i.s = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 22                        ; 2 uses
  %i.u = and i64 %i.t, 2047
  %i.v = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.u
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %GC_start_debugging_inner.exit
  %.0.in.i.i.i = phi ptr [ %i.v, %GC_start_debugging_inner.exit ], [ %i.ac, %bb.k ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ne i64 %i.y, %i.t
  %i.aa = icmp ne ptr %.0.i.i.i, %i.w
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.ab, label %bb.k, label %GC_store_debug_info_inner.exit, !llvm.loop !2

GC_store_debug_info_inner.exit:                   ; preds = %bb.k
  %i.ad = lshr i64 %i.s, 12
  %i.ae = and i64 %i.ad, 1023
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  store i64 %i.o, ptr %i.al, align 8
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %GC_store_debug_info_inner.exit
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %GC_store_debug_info_inner.exit, %bb.l, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.l ], [ %i.h, %GC_store_debug_info_inner.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_ignore_off_page(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub = add i64 %0, 40
  %i.e = sub i64 %reass.sub, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %i.f, i32 noundef 1) #51
  %i.h = tail call fastcc ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.30, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_ignore_off_page(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %0, i32 noundef 1) #51
  ret ptr %i.a
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_atomic_ignore_off_page(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub = add i64 %0, 40
  %i.e = sub i64 %reass.sub, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %i.f, i32 noundef 0) #51
  %i.h = tail call fastcc ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.31, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_atomic_ignore_off_page(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_generic_malloc_ignore_off_page(i64 noundef %0, i32 noundef 0) #51
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_debug_malloc_stubborn(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub.i = add i64 %0, 40
  %i.e = sub i64 %reass.sub.i, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.f, i32 noundef 1) #51
  %i.h = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @GC_debug_change_stubborn(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_debug_end_stubborn_change(ptr noundef nonnull %0) local_unnamed_addr #2 {
bb.a:
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.q = and i64 %i.a, -4096
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.aj, %GC_find_header.exit.i ], [ %i.o, %.preheader.i ]
  %.03745.i = phi ptr [ %i.v, %GC_find_header.exit.i ], [ %i.r, %.preheader.i ]
  %i.t = ptrtoint ptr %.03646.i to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.u ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = lshr i64 %i.w, 22                        ; 2 uses
  %i.y = and i64 %i.x, 2047
  %i.z = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.af, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, %i.x
  %i.ad = icmp ne ptr %.0.i.i, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ae, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ag = lshr i64 %i.w, 12
  %i.ah = and i64 %i.ag, 1023
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, inttoptr (i64 4096 to ptr)
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.r, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.o, %.preheader.i ], [ %i.aj, %GC_find_header.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %i.ao, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.az = icmp ugt ptr %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.at, 4097
  %or.cond.not.i.not8 = and i1 %i.ba, %i.az
  %.not42.i = icmp uge ptr %0, %i.ax
  %cond.i.not6 = or i1 %.not42.i, %or.cond.not.i.not8
  %i.bb = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.bb, %cond.i.not6
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.g

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.32, ptr noundef nonnull %0)
  %i.bc = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bc(ptr noundef nonnull @.str.33) #43
  tail call void @abort() #46
  unreachable

bb.g:                                             ; preds = %bb.f
  %.b.i4 = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b.i4, label %bb.h, label %GC_end_stubborn_change.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = lshr i64 %i.bd, 18
  %i.bg = and i64 %i.bf, 4095
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.bg
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = atomicrmw volatile or ptr %i.bh, i64 %i.bj monotonic, align 8 ; 0 uses
  br label %GC_end_stubborn_change.exit

GC_end_stubborn_change.exit:                      ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define void @GC_end_stubborn_change(ptr noundef nonnull %0) local_unnamed_addr #12 {
bb.a:
  %.b = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = lshr i64 %i.a, 12
  %i.c = lshr i64 %i.a, 18
  %i.d = and i64 %i.c, 4095
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.d
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f
  %i.h = atomicrmw volatile or ptr %i.e, i64 %i.g monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_debug_ptr_store_and_dirty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @GC_is_valid_displacement(ptr noundef %1) ; 0 uses
  %i.b = tail call ptr @GC_is_visible(ptr noundef %0) ; 0 uses
  store ptr %1, ptr %0, align 8
  tail call void @GC_debug_end_stubborn_change(ptr noundef %0)
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %1) #43, !srcloc !89
  ret void
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_atomic(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub = add i64 %0, 40
  %i.e = sub i64 %reass.sub, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.f, i32 noundef 0) #51
  %i.h = tail call fastcc ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.34, ptr noundef %1, i32 noundef %2)
  ret ptr %i.h
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_atomic(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_malloc_kind(i64 noundef %0, i32 noundef 0) #51
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias ptr @GC_debug_strdup(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @GC_find_leak, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.35)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48 ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = load i32, ptr @GC_all_interior_pointers, align 4
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = add nsw i64 %i.f, -41
  %i.h = icmp ult i64 %i.d, %i.g
  %reass.sub.i = add i64 %i.c, 41
  %i.i = sub i64 %reass.sub.i, %i.f
  %i.j = select i1 %i.h, i64 %i.i, i64 -1, !prof !47
  %i.k = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.j, i32 noundef 0) #51
  %i.l = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.k, i64 noundef %i.d, ptr noundef nonnull @.str.34, ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #49
  store i32 12, ptr %i.n, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.e
  %.0 = phi ptr [ %i.l, %bb.f ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noalias ptr @GC_debug_strndup(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %1) ; 5 uses
  %i.b = add i64 %spec.select, 1                  ; 2 uses
  %i.c = load i32, ptr @GC_all_interior_pointers, align 4
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = add nsw i64 %i.d, -41
  %i.f = icmp ult i64 %i.b, %i.e
  %reass.sub.i = add i64 %spec.select, 41
  %i.g = sub i64 %reass.sub.i, %i.d
  %i.h = select i1 %i.f, i64 %i.g, i64 -1, !prof !47
  %i.i = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.h, i32 noundef 0) #51
  %i.j = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.i, i64 noundef %i.b, ptr noundef nonnull @.str.34, ptr noundef %2, i32 noundef %3) ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__errno_location() #49
  store i32 12, ptr %i.l, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select
  store i8 0, ptr %i.m, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret ptr %i.j
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_uncollectable(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 40)
  %i.b = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.a, i32 noundef 2) #51
  %i.c = tail call fastcc ptr @store_debug_info(ptr noundef %i.b, i64 noundef %0, ptr noundef nonnull @.str.36, ptr noundef %1, i32 noundef %2)
  ret ptr %i.c
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_uncollectable(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %0, i32 noundef 2) #51
  ret ptr %i.a
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_atomic_uncollectable(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 40)
  %i.b = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.a, i32 noundef 3) #51
  %i.c = tail call fastcc ptr @store_debug_info(ptr noundef %i.b, i64 noundef %0, ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2)
  ret ptr %i.c
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_malloc_atomic_uncollectable(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %0, i32 noundef 3) #51
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @GC_debug_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.c, label %GC_base.exit.thread, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = lshr i64 %i.b, 22                        ; 3 uses
  %i.d = and i64 %i.c, 2047
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.d ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi ptr [ %i.e, %bb.c ], [ %i.l, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, %i.c
  %i.j = icmp ne ptr %.0.i, %i.f
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.k, label %bb.d, label %bb.e, !llvm.loop !6

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i64 %i.b, 12
  %i.n = and i64 %i.m, 1023                       ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.r = and i64 %i.b, -4096
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = icmp ult ptr %i.p, inttoptr (i64 4096 to ptr)
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.ak, %GC_find_header.exit.i ], [ %i.p, %.preheader.i ]
  %.03745.i = phi ptr [ %i.w, %GC_find_header.exit.i ], [ %i.s, %.preheader.i ]
  %i.u = ptrtoint ptr %.03646.i to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.v ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = lshr i64 %i.x, 22                        ; 2 uses
  %i.z = and i64 %i.y, 2047
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.ag, %bb.f ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ne i64 %i.ac, %i.y
  %i.ae = icmp ne ptr %.0.i.i, %i.f
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.af, label %bb.f, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.f
  %i.ah = lshr i64 %i.x, 12
  %i.ai = and i64 %i.ah, 1023
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = icmp ult ptr %i.ak, inttoptr (i64 4096 to ptr)
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.w, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.s, %.preheader.i ], [ %i.w, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.p, %.preheader.i ], [ %i.ak, %GC_find_header.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 4
  %.not.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i, label %bb.g, label %GC_base.exit.thread

bb.g:                                             ; preds = %._crit_edge.i
  %i.ap = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = and i64 %i.ap, 4088
  %i.at = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = urem i64 %i.as, %i.au
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.aw ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.ba = icmp ugt ptr %i.ay, %i.az
  %i.bb = icmp ult i64 %i.au, 4097
  %or.cond.not.i.not62 = and i1 %i.bb, %i.ba
  %.not42.i = icmp uge ptr %0, %i.ay
  %cond.i.not59 = or i1 %.not42.i, %or.cond.not.i.not62
  %i.bc = icmp eq i64 %i.aq, 0
  %or.cond57 = or i1 %i.bc, %cond.i.not59
  br i1 %or.cond57, label %GC_base.exit.thread, label %bb.h

GC_base.exit.thread:                              ; preds = %bb.g, %._crit_edge.i, %bb.e, %bb.b
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.38, ptr noundef nonnull %0)
  %i.bd = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bd(ptr noundef nonnull @.str.39) #43
  tail call void @abort() #46
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.be = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bf = sub i64 %i.b, %i.be
  %.not = icmp eq i64 %i.bf, 32                   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.40, ptr noundef nonnull %0)
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.bg = lshr i64 %i.be, 22                      ; 3 uses
  %i.bh = and i64 %i.bg, 2047
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bh ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.in.i.i.i = phi ptr [ %i.bi, %bb.j ], [ %i.bo, %bb.k ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp ne i64 %i.bk, %i.bg
  %i.bm = icmp ne ptr %.0.i.i.i, %i.f
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.bn, label %bb.k, label %GC_size.exit.i, !llvm.loop !2

GC_size.exit.i:                                   ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bq = lshr i64 %i.be, 12
  %i.br = and i64 %i.bq, 1023                     ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = load i32, ptr @GC_all_interior_pointers, align 4
  %i.bz = sext i32 %i.by to i64
  %reass.sub.i = add i64 %i.bx, 40
  %i.ca = sub i64 %reass.sub.i, %i.bz
  %i.cb = icmp ugt i64 %i.ca, %i.bv
  br i1 %i.cb, label %GC_check_annotated_obj.exit, label %bb.l

bb.l:                                             ; preds = %GC_size.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cf = xor i64 %i.cd, %i.ce
  %.not.i46 = icmp eq i64 %i.cf, -81929232789475893
  br i1 %.not.i46, label %bb.m, label %GC_check_annotated_obj.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = lshr i64 %i.bv, 3
  %i.ch = getelementptr [8 x i8], ptr %i.ax, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -8     ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = xor i64 %i.cj, %i.ce
  %.not20.i = icmp eq i64 %i.ck, -4837202520199737873
  br i1 %.not20.i, label %bb.n, label %GC_check_annotated_obj.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = add i64 %i.bx, 7
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %.not21.i = icmp eq i64 %i.co, %i.cj
  %..i = select i1 %.not21.i, ptr null, ptr %i.cn
  br label %GC_check_annotated_obj.exit

GC_check_annotated_obj.exit:                      ; preds = %bb.n, %bb.m, %bb.l, %GC_size.exit.i
  %.0.i47 = phi ptr [ %i.ci, %bb.m ], [ %i.bw, %GC_size.exit.i ], [ %i.cc, %bb.l ], [ %..i, %bb.n ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %GC_check_annotated_obj.exit
  %.0.in.i.i48 = phi ptr [ %i.bi, %GC_check_annotated_obj.exit ], [ %i.cu, %bb.o ]
  %.0.i.i49 = load ptr, ptr %.0.in.i.i48, align 8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i49, i64 8208
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = icmp ne i64 %i.cq, %i.bg
  %i.cs = icmp ne ptr %.0.i.i49, %i.f
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i49, i64 8216
  br i1 %i.ct, label %bb.o, label %GC_size.exit, !llvm.loop !2

GC_size.exit:                                     ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i49, i64 %i.br
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %.not42 = icmp eq ptr %.0.i47, null
  br i1 %.not42, label %bb.r, label %bb.p

bb.p:                                             ; preds = %GC_size.exit
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  %i.cz = icmp eq i64 %i.bx, %i.cy
  br i1 %i.cz, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.p
  tail call fastcc void @GC_print_smashed_obj(ptr noundef nonnull @.str.41, ptr noundef nonnull %0, ptr noundef nonnull %.0.i47)
  br label %bb.ae

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @GC_print_smashed_obj(ptr noundef nonnull @.str.42, ptr noundef nonnull %0, ptr noundef nonnull %.0.i47)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %GC_size.exit
  store i64 %i.cy, ptr %i.bw, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %i.da = load i32, ptr @GC_find_leak, align 4
  %.not43 = icmp eq i32 %i.da, 0
  %.b41 = load i1, ptr @GC_findleak_delay_free, align 4
  %or.cond = select i1 %.not, i1 %.b41, i1 false
  %or.cond58 = select i1 %.not43, i1 true, i1 %or.cond
  br i1 %or.cond58, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @GC_free(ptr noundef nonnull %i.ax)
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0.in.i52 = phi ptr [ %i.e, %bb.u ], [ %i.dh, %bb.v ]
  %.0.i53 = load ptr, ptr %.0.in.i52, align 8     ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i53, i64 8208
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = icmp ne i64 %i.dd, %i.c
  %i.df = icmp ne ptr %.0.i53, %i.db
  %i.dg = select i1 %i.de, i1 %i.df, i1 false
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i53, i64 8216
  br i1 %i.dg, label %bb.v, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.v
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0.i53, i64 %i.n
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = and i8 %i.dl, -2
  %switch = icmp eq i8 %i.dm, 2
  br i1 %switch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %GC_find_header.exit
  tail call void @GC_free(ptr noundef nonnull %i.ax)
  br label %bb.ae

bb.x:                                             ; preds = %GC_find_header.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.do = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dp = add i64 %i.do, -32                      ; 2 uses
  %i.dq = lshr i64 %i.dp, 3                       ; 4 uses
  %.not65 = icmp eq i64 %i.dq, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %min.iters.check = icmp ult i64 %i.dp, 32
  br i1 %min.iters.check, label %.lr.ph.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dq, 2305843009213693948     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <2 x i64> splat (i64 -1171307680339476753), ptr %i.dr, align 8
  store <2 x i64> splat (i64 -1171307680339476753), ptr %i.ds, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader73

.lr.ph.preheader73:                               ; preds = %.lr.ph.preheader, %middle.block
  %.064.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader73, %.lr.ph
  %.064 = phi i64 [ %i.dv, %.lr.ph ], [ %.064.ph, %.lr.ph.preheader73 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.064
  store i64 -1171307680339476753, ptr %i.du, align 8
  %i.dv = add nuw nsw i64 %.064, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %i.dq
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.x
  %.b40 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b40, label %bb.y, label %GC_lock.exit.thread

GC_lock.exit.thread:                              ; preds = %._crit_edge
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.dx = add i64 %i.dw, %i.do
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  br label %bb.ae

bb.y:                                             ; preds = %._crit_edge
  %i.dy = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not44 = icmp eq i32 %i.dy, 0
  br i1 %.not44, label %GC_lock.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = load i32, ptr @GC_nprocs, align 4
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i54 = icmp eq i8 %i.eb, 0
  br i1 %.not.i54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ec = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.ac, %bb.ab, %bb.y
  %.b.pr = load i1, ptr @GC_need_to_lock, align 4
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ee = add i64 %i.ed, %i.do
  store i64 %i.ee, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  br i1 %.b.pr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %GC_lock.exit
  %i.ef = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %GC_lock.exit.thread, %bb.t, %GC_lock.exit, %bb.ad, %bb.w, %.critedge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @GC_size(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 22                        ; 2 uses
  %i.d = and i64 %i.c, 2047
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, %i.c
  %i.j = icmp ne ptr %.0.i, %i.f
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.k, label %bb.c, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.c
  %i.m = lshr i64 %i.b, 12
  %i.n = and i64 %i.m, 1023
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %GC_find_header.exit
  %.0 = phi i64 [ %i.r, %GC_find_header.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_print_smashed_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_base.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.q = and i64 %i.a, -4096
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.aj, %GC_find_header.exit.i ], [ %i.o, %.preheader.i ]
  %.03745.i = phi ptr [ %i.v, %GC_find_header.exit.i ], [ %i.r, %.preheader.i ]
  %i.t = ptrtoint ptr %.03646.i to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.u ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = lshr i64 %i.w, 22                        ; 2 uses
  %i.y = and i64 %i.x, 2047
  %i.z = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.af, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, %i.x
  %i.ad = icmp ne ptr %.0.i.i, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ae, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ag = lshr i64 %i.w, 12
  %i.ah = and i64 %i.ag, 1023
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, inttoptr (i64 4096 to ptr)
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %1, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.r, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.o, %.preheader.i ], [ %i.aj, %GC_find_header.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ap = and i64 %i.ao, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %i.ao, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.az = icmp ule ptr %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.at, 4096
  %or.cond.not.i = or i1 %i.ba, %i.az
  %.not42.i = icmp ult ptr %1, %i.ax
  %cond.i = and i1 %.not42.i, %or.cond.not.i
  %spec.select.i = select i1 %cond.i, ptr %i.aw, ptr null
  br label %GC_base.exit

GC_base.exit:                                     ; preds = %bb.a, %bb.d, %._crit_edge.i, %bb.f
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %spec.select.i, %bb.f ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %.not = icmp ugt ptr %2, %i.bb
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %GC_base.exit
  %i.bc = load ptr, ptr %.1.i, align 8            ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread, label %bb.j

bb.h:                                             ; preds = %GC_base.exit
  %i.be = icmp eq ptr %.1.i, null
  br i1 %i.be, label %GC_size.exit, label %.thread, !prof !92

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bf = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.bg = lshr i64 %i.bf, 22                      ; 2 uses
  %i.bh = and i64 %i.bg, 2047
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bh
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.thread
  %.0.in.i.i16 = phi ptr [ %i.bi, %.thread ], [ %i.bp, %bb.i ]
  %.0.i.i17 = load ptr, ptr %.0.in.i.i16, align 8 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 8208
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp ne i64 %i.bl, %i.bg
  %i.bn = icmp ne ptr %.0.i.i17, %i.bj
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 8216
  br i1 %i.bo, label %bb.i, label %GC_find_header.exit.i18, !llvm.loop !2

GC_find_header.exit.i18:                          ; preds = %bb.i
  %i.bq = lshr i64 %i.bf, 12
  %i.br = and i64 %i.bq, 1023
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i17, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add i64 %i.bv, -40
  br label %GC_size.exit

GC_size.exit:                                     ; preds = %bb.h, %GC_find_header.exit.i18
  %.0.i19 = phi i64 [ %i.bw, %GC_find_header.exit.i18 ], [ -40, %bb.h ]
  %i.bx = load i32, ptr @GC_all_interior_pointers, align 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.0.i19, %i.by
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.201, ptr noundef %0, ptr noundef %2, ptr noundef %1, i64 noundef %i.bz)
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ca = icmp ult ptr %i.bc, inttoptr (i64 4096 to ptr)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = load i8, ptr %i.bc, align 1
  %i.cc = icmp eq i8 %i.cb, 0
  %spec.select = select i1 %i.cc, ptr @.str.204, ptr %i.bc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = phi ptr [ @.str.203, %bb.j ], [ %spec.select, %bb.k ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = load i64, ptr %i.bb, align 8
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.202, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %i.cd, i32 noundef %i.cg, i64 noundef %i.ch)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %GC_size.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.c, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.c
  %i.l = and i64 %i.a, -4096
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = lshr i64 %i.a, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 9 uses
  %i.t = lshr i64 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = zext i8 %i.v to i64
  %i.y = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.x ; 2 uses
  %i.z = icmp ult i64 %i.s, 2064
  br i1 %i.z, label %bb.d, label %bb.n, !prof !47

bb.d:                                             ; preds = %GC_find_header.exit
  %.b32 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b32, label %bb.e, label %GC_lock.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not34 = icmp eq i32 %i.aa, 0
  br i1 %.not34, label %GC_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr @GC_nprocs, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ag = add i64 %i.af, %i.s
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ah = and i32 %i.w, 254
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GC_lock.exit
  %i.aj = load i64, ptr @GC_non_gc_bytes, align 8
  %i.ak = sub i64 %i.aj, %i.s
  store i64 %i.ak, ptr @GC_non_gc_bytes, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %GC_lock.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %.not35 = icmp ne i32 %i.am, 0
  %i.an = icmp samesign ugt i64 %i.s, 8
  %or.cond = and i1 %i.an, %.not35
  br i1 %or.cond, label %bb.l, label %bb.m, !prof !50

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = add nsw i64 %i.s, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = load ptr, ptr %i.y, align 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.t ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %0, align 8
  store ptr %0, ptr %i.ar, align 8
  %.b31 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b31, label %.sink.split, label %bb.v

bb.n:                                             ; preds = %GC_find_header.exit
  %i.at = add i64 %i.s, 4095                      ; 2 uses
  %i.au = and i64 %i.at, -4096
  %.b30 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b30, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not33 = icmp eq i32 %i.av, 0
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @GC_lock()
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ax = add i64 %i.aw, %i.s
  store i64 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ay = and i32 %i.w, 254
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = load i64, ptr @GC_non_gc_bytes, align 8
  %i.bb = sub i64 %i.ba, %i.s
  store i64 %i.bb, ptr @GC_non_gc_bytes, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = icmp ugt i64 %i.at, 8191
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.be = sub i64 %i.bd, %i.au
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call fastcc void @GC_freehblk(ptr noundef %i.m)
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %bb.u, %bb.m
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.m, %bb.u, %bb.a
  ret void
}

; Function Attrs: nounwind allocsize(1) uwtable
define ptr @GC_debug_realloc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @GC_all_interior_pointers, align 4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, -41
  %i.e = icmp ult i64 %1, %i.d
  %reass.sub.i = add i64 %1, 40
  %i.f = sub i64 %reass.sub.i, %i.c
  %i.g = select i1 %i.e, i64 %i.f, i64 -1, !prof !47
  %i.h = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.g, i32 noundef 1) #51
  %i.i = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.h, i64 noundef %1, ptr noundef nonnull @.str.29, ptr noundef %2, i32 noundef %3)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @GC_debug_free(ptr noundef nonnull %0)
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.f, label %GC_base.exit.thread, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.k = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.l = lshr i64 %i.k, 22                        ; 2 uses
  %i.m = and i64 %i.l, 2047
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.m
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in.i = phi ptr [ %i.n, %bb.f ], [ %i.u, %bb.g ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ne i64 %i.q, %i.l
  %i.s = icmp ne ptr %.0.i, %i.o
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.t, label %bb.g, label %bb.h, !llvm.loop !6

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i64 %i.k, 12
  %i.w = and i64 %i.v, 1023
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.aa = and i64 %i.k, -4096
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = icmp ult ptr %i.y, inttoptr (i64 4096 to ptr)
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.at, %GC_find_header.exit.i ], [ %i.y, %.preheader.i ]
  %.03745.i = phi ptr [ %i.af, %GC_find_header.exit.i ], [ %i.ab, %.preheader.i ]
  %i.ad = ptrtoint ptr %.03646.i to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.ae ; 4 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = lshr i64 %i.ag, 22                      ; 2 uses
  %i.ai = and i64 %i.ah, 2047
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ai
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ap, %bb.i ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ne i64 %i.al, %i.ah
  %i.an = icmp ne ptr %.0.i.i, %i.o
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ao, label %bb.i, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.i
  %i.aq = lshr i64 %i.ag, 12
  %i.ar = and i64 %i.aq, 1023
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = icmp ult ptr %i.at, inttoptr (i64 4096 to ptr)
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.af, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.ab, %.preheader.i ], [ %i.af, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.y, %.preheader.i ], [ %i.at, %GC_find_header.exit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 4
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %bb.j, label %GC_base.exit.thread

bb.j:                                             ; preds = %._crit_edge.i
  %i.ay = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = and i64 %i.ay, 4088
  %i.bc = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = urem i64 %i.bb, %i.bd
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bj = icmp ugt ptr %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bd, 4097
  %or.cond.not.i.not59 = and i1 %i.bk, %i.bj
  %.not42.i = icmp uge ptr %0, %i.bh
  %cond.i.not56 = or i1 %.not42.i, %or.cond.not.i.not59
  %i.bl = icmp eq i64 %i.az, 0
  %or.cond = or i1 %i.bl, %cond.i.not56
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.k

GC_base.exit.thread:                              ; preds = %bb.j, %._crit_edge.i, %bb.h, %bb.e
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.43, ptr noundef nonnull %0)
  %i.bm = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bm(ptr noundef nonnull @.str.44) #43
  tail call void @abort() #46
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bn = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bo = sub i64 %i.k, %i.bn
  %.not = icmp eq i64 %i.bo, 32
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.45, ptr noundef nonnull %0)
  %i.bp = tail call ptr @GC_realloc(ptr noundef nonnull %0, i64 noundef %1) #52
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.bq = lshr i64 %i.bn, 22                      ; 2 uses
  %i.br = and i64 %i.bq, 2047
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.in.i50 = phi ptr [ %i.bs, %bb.m ], [ %i.by, %bb.n ]
  %.0.i51 = load ptr, ptr %.0.in.i50, align 8     ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i51, i64 8208
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp ne i64 %i.bu, %i.bq
  %i.bw = icmp ne ptr %.0.i51, %i.o
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i51, i64 8216
  br i1 %i.bx, label %bb.n, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.n
  %i.bz = lshr i64 %i.bn, 12
  %i.ca = and i64 %i.bz, 1023
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0.i51, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i8, ptr %i.cd, align 8             ; 2 uses
  switch i8 %i.ce, label %bb.s [
    i8 1, label %bb.o
    i8 0, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

bb.o:                                             ; preds = %GC_find_header.exit
  %i.cf = load i32, ptr @GC_all_interior_pointers, align 4
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = add nsw i64 %i.cg, -41
  %i.ci = icmp ult i64 %1, %i.ch
  %reass.sub.i52 = add i64 %1, 40
  %i.cj = sub i64 %reass.sub.i52, %i.cg
  %i.ck = select i1 %i.ci, i64 %i.cj, i64 -1, !prof !47
  %i.cl = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.ck, i32 noundef 1) #51
  %i.cm = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.cl, i64 noundef %1, ptr noundef nonnull @.str.29, ptr noundef %2, i32 noundef %3)
  br label %bb.t

bb.p:                                             ; preds = %GC_find_header.exit
  %i.cn = load i32, ptr @GC_all_interior_pointers, align 4
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = add nsw i64 %i.co, -41
  %i.cq = icmp ult i64 %1, %i.cp
  %reass.sub.i53 = add i64 %1, 40
  %i.cr = sub i64 %reass.sub.i53, %i.co
  %i.cs = select i1 %i.cq, i64 %i.cr, i64 -1, !prof !47
  %i.ct = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.cs, i32 noundef 0) #51
  %i.cu = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.ct, i64 noundef %1, ptr noundef nonnull @.str.34, ptr noundef %2, i32 noundef %3)
  br label %bb.t

bb.q:                                             ; preds = %GC_find_header.exit
  %i.cv = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 40)
  %i.cw = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.cv, i32 noundef 2) #51
  %i.cx = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.cw, i64 noundef %1, ptr noundef nonnull @.str.36, ptr noundef %2, i32 noundef %3)
  br label %bb.t

bb.r:                                             ; preds = %GC_find_header.exit
  %i.cy = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 40)
  %i.cz = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.cy, i32 noundef 3) #51
  %i.da = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.cz, i64 noundef %1, ptr noundef nonnull @.str.37, ptr noundef %2, i32 noundef %3)
  br label %bb.t

bb.s:                                             ; preds = %GC_find_header.exit
  %i.db = zext i8 %i.ce to i32
  %i.dc = load i32, ptr @GC_all_interior_pointers, align 4
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = add nsw i64 %i.dd, -41
  %i.df = icmp ult i64 %1, %i.de
  %reass.sub.i54 = add i64 %1, 40
  %i.dg = sub i64 %reass.sub.i54, %i.dd
  %i.dh = select i1 %i.df, i64 %i.dg, i64 -1, !prof !47
  %i.di = tail call noalias ptr @GC_generic_malloc(i64 noundef %i.dh, i32 noundef %i.db) #51
  %i.dj = tail call fastcc ptr @store_debug_info(ptr noundef %i.di, i64 noundef %1, ptr noundef nonnull @.str.205, ptr noundef %2, i32 noundef %3)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0 = phi ptr [ %i.dj, %bb.s ], [ %i.cm, %bb.o ], [ %i.cu, %bb.p ], [ %i.cx, %bb.q ], [ %i.da, %bb.r ] ; 3 uses
  %.not48 = icmp eq ptr %.0, null
  br i1 %.not48, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %.not49 = icmp eq i64 %i.dl, 0
  br i1 %.not49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0, ptr nonnull align 1 %0, i64 %i.dm, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @GC_debug_free(ptr noundef nonnull %0)
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.l, %bb.d, %bb.b
  %.043 = phi ptr [ %i.i, %bb.b ], [ null, %bb.d ], [ %i.bp, %bb.l ], [ %.0, %bb.w ], [ null, %bb.t ]
  ret ptr %.043
}

; Function Attrs: nounwind allocsize(1) uwtable
define ptr @GC_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @GC_malloc_kind(i64 noundef %1, i32 noundef 1) #51
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @GC_free(ptr noundef nonnull %0)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.e = lshr i64 %i.a, 22                        ; 2 uses
  %i.f = and i64 %i.e, 2047
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.f
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.in.i = phi ptr [ %i.g, %bb.e ], [ %i.n, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ne i64 %i.j, %i.e
  %i.l = icmp ne ptr %.0.i, %i.h
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.m, label %bb.f, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.f
  %i.o = lshr i64 %i.a, 12
  %i.p = and i64 %i.o, 1023
end_hunk_1
begin_hunk_2_@GC_realloc:bb.a
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = sub i64 %i.ad, %i.t
  %i.al = load i64, ptr @GC_non_gc_bytes, align 8
  %i.am = add i64 %i.ak, %i.al
  store i64 %i.am, ptr @GC_non_gc_bytes, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %GC_find_header.exit
  %.047 = phi i64 [ %i.t, %GC_find_header.exit ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ] ; 3 uses
  %i.an = load i32, ptr @GC_all_interior_pointers, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 %1)
  %.not53 = icmp ugt i64 %i.ap, %.047
  br i1 %.not53, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = lshr i64 %.047, 1
  %.not54 = icmp ult i64 %1, %i.aq
  br i1 %.not54, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp ugt i64 %i.t, %1
  br i1 %i.ar, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.at = sub nuw i64 %i.t, %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 0, i64 %i.at, i1 false)
  br label %bb.r

bb.m:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i64 [ %.047, %bb.i ], [ %1, %bb.j ]
  switch i8 %i.v, label %bb.p [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.au = tail call noalias ptr @GC_malloc_kind(i64 noundef %1, i32 noundef %i.w) #51
  br label %GC_generic_or_special_malloc.exit

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.av = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %1, i32 noundef %i.w) #51
  br label %GC_generic_or_special_malloc.exit

bb.p:                                             ; preds = %bb.m
  %i.aw = tail call noalias ptr @GC_generic_malloc(i64 noundef %1, i32 noundef %i.w) #51
  br label %GC_generic_or_special_malloc.exit

GC_generic_or_special_malloc.exit:                ; preds = %bb.n, %bb.o, %bb.p
  %.0.i56 = phi ptr [ %i.aw, %bb.p ], [ %i.au, %bb.n ], [ %i.av, %bb.o ] ; 3 uses
  %.not55 = icmp eq ptr %.0.i56, null
  br i1 %.not55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %GC_generic_or_special_malloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i56, ptr nonnull align 1 %0, i64 %.1, i1 false)
  tail call void @GC_free(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %GC_generic_or_special_malloc.exit, %bb.q, %bb.k, %bb.l, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.d ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.0.i56, %bb.q ], [ null, %GC_generic_or_special_malloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_generic_or_special_malloc(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub.i = add i64 %0, 40
  %i.e = sub i64 %reass.sub.i, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.f, i32 noundef 0) #51
  %i.h = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.34, ptr noundef %2, i32 noundef %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @GC_all_interior_pointers, align 4
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add nsw i64 %i.j, -41
  %i.l = icmp ult i64 %0, %i.k
  %reass.sub.i17 = add i64 %0, 40
  %i.m = sub i64 %reass.sub.i17, %i.j
  %i.n = select i1 %i.l, i64 %i.m, i64 -1, !prof !47
  %i.o = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.n, i32 noundef 1) #51
  %i.p = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.o, i64 noundef %0, ptr noundef nonnull @.str.29, ptr noundef %2, i32 noundef %3)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 40)
  %i.r = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.q, i32 noundef 2) #51
  %i.s = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.r, i64 noundef %0, ptr noundef nonnull @.str.36, ptr noundef %2, i32 noundef %3)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 40)
  %i.u = tail call noalias ptr @GC_generic_malloc_uncollectable(i64 noundef %i.t, i32 noundef 3) #51
  %i.v = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.u, i64 noundef %0, ptr noundef nonnull @.str.37, ptr noundef %2, i32 noundef %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.w = load i32, ptr @GC_all_interior_pointers, align 4
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = add nsw i64 %i.x, -41
  %i.z = icmp ult i64 %0, %i.y
  %reass.sub.i18 = add i64 %0, 40
  %i.aa = sub i64 %reass.sub.i18, %i.x
  %i.ab = select i1 %i.z, i64 %i.aa, i64 -1, !prof !47
  %i.ac = tail call noalias ptr @GC_generic_malloc(i64 noundef %i.ab, i32 noundef %1) #51
  %i.ad = tail call fastcc ptr @store_debug_info(ptr noundef %i.ac, i64 noundef %0, ptr noundef nonnull @.str.205, ptr noundef %2, i32 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.ad, %bb.f ], [ %i.h, %bb.b ], [ %i.p, %bb.c ], [ %i.s, %bb.d ], [ %i.v, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @GC_debug_register_finalizer(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = lshr i64 %i.c, 22                        ; 2 uses
  %i.e = and i64 %i.d, 2047
  %i.f = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %i.i, %i.d
  %i.k = icmp ne ptr %.0.i, %i.g
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.c, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.s = and i64 %i.c, -4096
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = icmp ult ptr %i.q, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.al, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %.03745.i = phi ptr [ %i.x, %GC_find_header.exit.i ], [ %i.t, %.preheader.i ]
  %i.v = ptrtoint ptr %.03646.i to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.w ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = lshr i64 %i.y, 22                        ; 2 uses
  %i.aa = and i64 %i.z, 2047
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, %i.z
  %i.af = icmp ne ptr %.0.i.i, %i.g
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ag, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ai = lshr i64 %i.y, 12
  %i.aj = and i64 %i.ai, 1023
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = icmp ult ptr %i.al, inttoptr (i64 4096 to ptr)
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.al, %GC_find_header.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 4
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.aq = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = and i64 %i.aq, 4088
  %i.au = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = urem i64 %i.at, %i.av
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bb = icmp ugt ptr %i.az, %i.ba
  %i.bc = icmp ult i64 %i.av, 4097
  %or.cond.not.i.not30 = and i1 %i.bc, %i.bb
  %.not42.i = icmp uge ptr %0, %i.az
  %cond.i.not27 = or i1 %.not42.i, %or.cond.not.i.not30
  %i.bd = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.bd, %cond.i.not27
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.j

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %GC_base.exit.thread
  store ptr null, ptr %4, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_base.exit.thread
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %store_old.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %3, align 8
  br label %store_old.exit

bb.j:                                             ; preds = %bb.f
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.c, %i.be
  %.not = icmp eq i64 %i.bf, 32
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.46, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_normal_finalize_mark_proc)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @GC_malloc_kind(i64 noundef 16, i32 noundef 1) #51 ; 4 uses
  %.not.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i25, label %store_old.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef nonnull @GC_debug_invoke_finalizer, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_normal_finalize_mark_proc)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bj to i64
  switch i64 %magicptr.i, label %bb.q [
    i64 0, label %bb.w
    i64 -1, label %store_old.exit
  ]

bb.q:                                             ; preds = %bb.p
  %.not19.i = icmp eq ptr %i.bj, @GC_debug_invoke_finalizer
  br i1 %.not19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.206, ptr noundef nonnull %0)
  br label %store_old.exit

bb.s:                                             ; preds = %bb.q
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %3, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not21.i = icmp eq ptr %4, null
  br i1 %.not21.i, label %store_old.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %4, align 8
  br label %store_old.exit

bb.w:                                             ; preds = %bb.p
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not18.i = icmp eq ptr %4, null
  br i1 %.not18.i, label %store_old.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %4, align 8
  br label %store_old.exit

store_old.exit:                                   ; preds = %bb.n, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.p, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_register_finalizer(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @GC_register_finalizer_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @GC_normal_finalize_mark_proc)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_debug_invoke_finalizer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.a(ptr noundef nonnull %i.b, ptr noundef %i.d) #43
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_debug_register_finalizer_no_order(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = lshr i64 %i.c, 22                        ; 2 uses
  %i.e = and i64 %i.d, 2047
  %i.f = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %i.i, %i.d
  %i.k = icmp ne ptr %.0.i, %i.g
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.c, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.s = and i64 %i.c, -4096
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = icmp ult ptr %i.q, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.al, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %.03745.i = phi ptr [ %i.x, %GC_find_header.exit.i ], [ %i.t, %.preheader.i ]
  %i.v = ptrtoint ptr %.03646.i to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.w ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = lshr i64 %i.y, 22                        ; 2 uses
  %i.aa = and i64 %i.z, 2047
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, %i.z
  %i.af = icmp ne ptr %.0.i.i, %i.g
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ag, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ai = lshr i64 %i.y, 12
  %i.aj = and i64 %i.ai, 1023
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = icmp ult ptr %i.al, inttoptr (i64 4096 to ptr)
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.al, %GC_find_header.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 4
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.aq = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = and i64 %i.aq, 4088
  %i.au = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = urem i64 %i.at, %i.av
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bb = icmp ugt ptr %i.az, %i.ba
  %i.bc = icmp ult i64 %i.av, 4097
  %or.cond.not.i.not30 = and i1 %i.bc, %i.bb
  %.not42.i = icmp uge ptr %0, %i.az
  %cond.i.not27 = or i1 %.not42.i, %or.cond.not.i.not30
  %i.bd = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.bd, %cond.i.not27
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.j

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %GC_base.exit.thread
  store ptr null, ptr %4, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_base.exit.thread
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %store_old.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %3, align 8
  br label %store_old.exit

bb.j:                                             ; preds = %bb.f
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.c, %i.be
  %.not = icmp eq i64 %i.bf, 32
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.47, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_null_finalize_mark_proc)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @GC_malloc_kind(i64 noundef 16, i32 noundef 1) #51 ; 4 uses
  %.not.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i25, label %store_old.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef nonnull @GC_debug_invoke_finalizer, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_null_finalize_mark_proc)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bj to i64
  switch i64 %magicptr.i, label %bb.q [
    i64 0, label %bb.w
    i64 -1, label %store_old.exit
  ]

bb.q:                                             ; preds = %bb.p
  %.not19.i = icmp eq ptr %i.bj, @GC_debug_invoke_finalizer
  br i1 %.not19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.206, ptr noundef nonnull %0)
  br label %store_old.exit

bb.s:                                             ; preds = %bb.q
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %3, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not21.i = icmp eq ptr %4, null
  br i1 %.not21.i, label %store_old.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %4, align 8
  br label %store_old.exit

bb.w:                                             ; preds = %bb.p
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not18.i = icmp eq ptr %4, null
  br i1 %.not18.i, label %store_old.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %4, align 8
  br label %store_old.exit

store_old.exit:                                   ; preds = %bb.n, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.p, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_register_finalizer_no_order(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @GC_register_finalizer_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @GC_null_finalize_mark_proc)
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_debug_register_finalizer_unreachable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = lshr i64 %i.c, 22                        ; 2 uses
  %i.e = and i64 %i.d, 2047
  %i.f = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %i.i, %i.d
  %i.k = icmp ne ptr %.0.i, %i.g
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.c, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.s = and i64 %i.c, -4096
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = icmp ult ptr %i.q, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.al, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %.03745.i = phi ptr [ %i.x, %GC_find_header.exit.i ], [ %i.t, %.preheader.i ]
  %i.v = ptrtoint ptr %.03646.i to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.w ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = lshr i64 %i.y, 22                        ; 2 uses
  %i.aa = and i64 %i.z, 2047
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, %i.z
  %i.af = icmp ne ptr %.0.i.i, %i.g
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ag, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ai = lshr i64 %i.y, 12
  %i.aj = and i64 %i.ai, 1023
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = icmp ult ptr %i.al, inttoptr (i64 4096 to ptr)
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.al, %GC_find_header.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 4
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.aq = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = and i64 %i.aq, 4088
  %i.au = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = urem i64 %i.at, %i.av
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bb = icmp ugt ptr %i.az, %i.ba
  %i.bc = icmp ult i64 %i.av, 4097
  %or.cond.not.i.not30 = and i1 %i.bc, %i.bb
  %.not42.i = icmp uge ptr %0, %i.az
  %cond.i.not27 = or i1 %.not42.i, %or.cond.not.i.not30
  %i.bd = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.bd, %cond.i.not27
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.j

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %GC_base.exit.thread
  store ptr null, ptr %4, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_base.exit.thread
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %store_old.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %3, align 8
  br label %store_old.exit

bb.j:                                             ; preds = %bb.f
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.c, %i.be
  %.not = icmp eq i64 %i.bf, 32
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.48, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_unreachable_finalize_mark_proc)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @GC_malloc_kind(i64 noundef 16, i32 noundef 1) #51 ; 4 uses
  %.not.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i25, label %store_old.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef nonnull @GC_debug_invoke_finalizer, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_unreachable_finalize_mark_proc)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bj to i64
  switch i64 %magicptr.i, label %bb.q [
    i64 0, label %bb.w
    i64 -1, label %store_old.exit
  ]

bb.q:                                             ; preds = %bb.p
  %.not19.i = icmp eq ptr %i.bj, @GC_debug_invoke_finalizer
  br i1 %.not19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.206, ptr noundef nonnull %0)
  br label %store_old.exit

bb.s:                                             ; preds = %bb.q
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %3, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not21.i = icmp eq ptr %4, null
  br i1 %.not21.i, label %store_old.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %4, align 8
  br label %store_old.exit

bb.w:                                             ; preds = %bb.p
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not18.i = icmp eq ptr %4, null
  br i1 %.not18.i, label %store_old.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %4, align 8
  br label %store_old.exit

store_old.exit:                                   ; preds = %bb.n, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.p, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_register_finalizer_unreachable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @GC_register_finalizer_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @GC_unreachable_finalize_mark_proc)
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_debug_register_finalizer_ignore_self(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = lshr i64 %i.c, 22                        ; 2 uses
  %i.e = and i64 %i.d, 2047
  %i.f = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %i.i, %i.d
  %i.k = icmp ne ptr %.0.i, %i.g
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.c, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.s = and i64 %i.c, -4096
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = icmp ult ptr %i.q, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.al, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %.03745.i = phi ptr [ %i.x, %GC_find_header.exit.i ], [ %i.t, %.preheader.i ]
  %i.v = ptrtoint ptr %.03646.i to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.w ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = lshr i64 %i.y, 22                        ; 2 uses
  %i.aa = and i64 %i.z, 2047
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, %i.z
  %i.af = icmp ne ptr %.0.i.i, %i.g
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ag, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ai = lshr i64 %i.y, 12
  %i.aj = and i64 %i.ai, 1023
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = icmp ult ptr %i.al, inttoptr (i64 4096 to ptr)
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.x, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.al, %GC_find_header.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 4
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.aq = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = and i64 %i.aq, 4088
  %i.au = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = urem i64 %i.at, %i.av
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bb = icmp ugt ptr %i.az, %i.ba
  %i.bc = icmp ult i64 %i.av, 4097
  %or.cond.not.i.not30 = and i1 %i.bc, %i.bb
  %.not42.i = icmp uge ptr %0, %i.az
  %cond.i.not27 = or i1 %.not42.i, %or.cond.not.i.not30
  %i.bd = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.bd, %cond.i.not27
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.j

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %GC_base.exit.thread
  store ptr null, ptr %4, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %GC_base.exit.thread
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %store_old.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %3, align 8
  br label %store_old.exit

bb.j:                                             ; preds = %bb.f
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.c, %i.be
  %.not = icmp eq i64 %i.bf, 32
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.49, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_ignore_self_finalize_mark_proc)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @GC_malloc_kind(i64 noundef 16, i32 noundef 1) #51 ; 4 uses
  %.not.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i25, label %store_old.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8
  call fastcc void @GC_register_finalizer_inner(ptr noundef nonnull %i.ay, ptr noundef nonnull @GC_debug_invoke_finalizer, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @GC_ignore_self_finalize_mark_proc)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bj to i64
  switch i64 %magicptr.i, label %bb.q [
    i64 0, label %bb.w
    i64 -1, label %store_old.exit
  ]

bb.q:                                             ; preds = %bb.p
  %.not19.i = icmp eq ptr %i.bj, @GC_debug_invoke_finalizer
  br i1 %.not19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.206, ptr noundef nonnull %0)
  br label %store_old.exit

bb.s:                                             ; preds = %bb.q
  %.not20.i = icmp eq ptr %3, null
  br i1 %.not20.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr %3, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not21.i = icmp eq ptr %4, null
  br i1 %.not21.i, label %store_old.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %4, align 8
  br label %store_old.exit

bb.w:                                             ; preds = %bb.p
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not18.i = icmp eq ptr %4, null
  br i1 %.not18.i, label %store_old.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %4, align 8
  br label %store_old.exit

store_old.exit:                                   ; preds = %bb.n, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.p, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_register_finalizer_ignore_self(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @GC_register_finalizer_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @GC_ignore_self_finalize_mark_proc)
  ret void
}

; Function Attrs: nounwind allocsize(0) uwtable
define noalias ptr @GC_debug_malloc_replacement(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = add nsw i64 %i.b, -41
  %i.d = icmp ult i64 %0, %i.c
  %reass.sub.i = add i64 %0, 40
  %i.e = sub i64 %reass.sub.i, %i.b
  %i.f = select i1 %i.d, i64 %i.e, i64 -1, !prof !47
  %i.g = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.f, i32 noundef 1) #51
  %i.h = tail call fastcc noalias ptr @store_debug_info(ptr noundef %i.g, i64 noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.50, i32 noundef 0)
  ret ptr %i.h
}

; Function Attrs: nounwind allocsize(1) uwtable
define ptr @GC_debug_realloc_replacement(ptr noundef %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call ptr @GC_debug_realloc(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.50, i32 noundef 0) #52
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @GC_push_finalizer_structures() local_unnamed_addr #2 {
bb.a:
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 288), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 296))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 320))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 352))
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_push_all_eager(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.b = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, -8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, 7
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %i.i = add i64 %i.e, -8                         ; 2 uses
  %.not16 = icmp ult i64 %i.i, %i.h
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = inttoptr i64 %i.h to ptr
  %i.k = ptrtoint ptr %i.b to i64
end_hunk_2
begin_hunk_3_@GC_push_all_eager:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.023.i, i64 25 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 4
  %.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i, label %bb.p, label %bb.m, !prof !47

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr @GC_all_interior_pointers, align 4
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.m)
  br label %GC_mark_and_push_stack.exit

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.m)
  br label %GC_mark_and_push_stack.exit

bb.p:                                             ; preds = %bb.l
  %.b.i = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = lshr i64 %i.m, 18
  %i.bb = and i64 %i.ba, 4095
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.bb
  %i.bd = and i64 %i.z, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = atomicrmw volatile or ptr %i.bc, i64 %i.be monotonic, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8 ; 4 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %i.bi = ptrtoint ptr %.022.i to i64             ; 2 uses
  %i.bj = lshr i64 %i.bi, 4
  %i.bk = and i64 %i.bj, 255                      ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.023.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i64                   ; 3 uses
  %i.bq = and i64 %i.bi, 15                       ; 2 uses
  %i.br = or i64 %i.bq, %i.bp
  %.not.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s, !prof !47

bb.s:                                             ; preds = %bb.r
  %i.bs = load i8, ptr %i.aw, align 1
  %i.bt = and i8 %i.bs, 32
  %.not55.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not55.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %.neg.i = mul nsw i64 %i.bp, -16
  %.neg28.i = sub nsw i64 %.neg.i, %i.bq
  %i.bw = sub nsw i64 %i.bk, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.022.i, i64 %.neg28.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.2.i.i = phi i64 [ %i.bk, %bb.r ], [ %i.bw, %bb.u ], [ 0, %bb.t ]
  %.1.i.i = phi ptr [ %.022.i, %bb.r ], [ %i.bx, %bb.u ], [ %i.bv, %bb.t ]
  %i.by = getelementptr inbounds nuw i8, ptr %.023.i, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.2.i.i ; 2 uses
  %i.ca = load atomic volatile i8, ptr %i.bz monotonic, align 1
  %.not61.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not61.i.i, label %bb.w, label %GC_push_contents_hdr.exit.i

bb.w:                                             ; preds = %bb.v
  store atomic volatile i8 1, ptr %i.bz monotonic, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = add i64 %i.cc, 1
  store atomic volatile i64 %i.cd, ptr %i.cb monotonic, align 8
  %i.ce = getelementptr i8, ptr %.023.i, i64 40
  %.val.i.i = load i64, ptr %i.ce, align 8        ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i.i, label %GC_push_contents_hdr.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.not11.i.i.i = icmp ult ptr %i.cf, %i.bh
  br i1 %.not11.i.i.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.cg = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not1.i.i.i.i, label %GC_signal_mark_stack_overflow.exit.i.i.i, label %bb.ab, !prof !47

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.ci)
  br label %GC_signal_mark_stack_overflow.exit.i.i.i

GC_signal_mark_stack_overflow.exit.i.i.i:         ; preds = %bb.ab, %bb.aa
  %i.cj = getelementptr inbounds i8, ptr %i.bg, i64 -8176
  br label %bb.ac

bb.ac:                                            ; preds = %GC_signal_mark_stack_overflow.exit.i.i.i, %bb.x
  %.0.i.i.i = phi ptr [ %i.cj, %GC_signal_mark_stack_overflow.exit.i.i.i ], [ %i.cf, %bb.x ] ; 3 uses
  store ptr %.1.i.i, ptr %.0.i.i.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i64 %.val.i.i, ptr %i.ck, align 8
  br label %GC_push_contents_hdr.exit.i

GC_push_contents_hdr.exit.i:                      ; preds = %bb.ac, %bb.w, %bb.v
  %.0.i27.i = phi ptr [ %.0.i.i.i, %bb.ac ], [ %i.bg, %bb.v ], [ %i.bg, %bb.w ]
  store volatile ptr %.0.i27.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  br label %GC_mark_and_push_stack.exit

GC_mark_and_push_stack.exit:                      ; preds = %GC_push_contents_hdr.exit.i, %bb.o, %bb.n, %bb.k, %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %.not = icmp ult i64 %i.i, %i.cm
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !94

.loopexit:                                        ; preds = %GC_mark_and_push_stack.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @GC_register_disappearing_link(ptr noundef nonnull %0) local_unnamed_addr #2 {
bb.a:
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %bb.b, label %GC_base.exit.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_base.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.q = and i64 %i.a, -4096
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.aj, %GC_find_header.exit.i ], [ %i.o, %.preheader.i ]
  %.03745.i = phi ptr [ %i.v, %GC_find_header.exit.i ], [ %i.r, %.preheader.i ]
  %i.t = ptrtoint ptr %.03646.i to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.u ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = lshr i64 %i.w, 22                        ; 2 uses
  %i.y = and i64 %i.x, 2047
  %i.z = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.af, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, %i.x
  %i.ad = icmp ne ptr %.0.i.i, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ae, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.ag = lshr i64 %i.w, 12
  %i.ah = and i64 %i.ag, 1023
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, inttoptr (i64 4096 to ptr)
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.r, %.preheader.i ], [ %i.v, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.o, %.preheader.i ], [ %i.aj, %GC_find_header.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %i.ao, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.az = icmp ugt ptr %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.at, 4097
  %or.cond.not.i.not7 = and i1 %i.ba, %i.az
  %.not42.i = icmp uge ptr %0, %i.ax
  %cond.i.not5 = or i1 %.not42.i, %or.cond.not.i.not7
  %i.bb = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.bb, %cond.i.not5
  br i1 %or.cond, label %GC_base.exit.thread, label %bb.g

GC_base.exit.thread:                              ; preds = %bb.f, %._crit_edge.i, %bb.d, %bb.a
  %i.bc = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bc(ptr noundef nonnull @.str.51) #43
  tail call void @abort() #46
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bd = and i64 %i.a, 7
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %GC_general_register_disappearing_link.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bf(ptr noundef nonnull @.str.52) #43, !inline_history !55
  tail call void @abort() #46
  unreachable

GC_general_register_disappearing_link.exit:       ; preds = %bb.g
  %i.bg = tail call fastcc range(i32 0, 4) i32 @GC_register_disappearing_link_inner(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), ptr noundef nonnull %0, ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.53)
  ret i32 %i.bg
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @GC_general_register_disappearing_link(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.d(ptr noundef nonnull @.str.52) #43
  tail call void @abort() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @GC_register_disappearing_link_inner(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.53)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @GC_register_disappearing_link_inner(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_find_leak, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread, !prof !47

bb.b:                                             ; preds = %bb.a
  %.b63 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b63, label %bb.c, label %GC_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #43
  %.not66 = icmp eq i32 %i.b, 0
  br i1 %.not66, label %GC_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @GC_nprocs, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %GC_lock.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit

GC_lock.exit:                                     ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %GC_lock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = icmp ugt i64 %i.j, %i.n
  br i1 %i.o, label %bb.i, label %bb.k, !prof !48

bb.i:                                             ; preds = %bb.h, %GC_lock.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @GC_grow_table(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
  %i.r = load i32, ptr @GC_print_stats, align 4
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %bb.k, label %bb.j, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.p, align 8
  %i.t = shl nuw i32 1, %i.s
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.207, ptr noundef %3, i32 noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.u = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.v = lshr i64 %i.u, 3                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = add i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %i.u, %i.z
  %i.ab = xor i64 %i.aa, %i.v
  %i.ac = zext nneg i32 %i.x to i64
  %notmask = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask, -1
  %i.ae = and i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %.05380 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %.not6881 = icmp eq ptr %.05380, null
  br i1 %.not6881, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %.05382 = phi ptr [ %.053, %bb.n ], [ %.05380, %bb.k ] ; 3 uses
  %i.ah = load i64, ptr %.05382, align 8
  %i.ai = xor i64 %i.ah, %i.u
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.ak = ptrtoint ptr %2 to i64
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %.05382, i64 16
  store i64 %i.al, ptr %i.am, align 8
  %.b62 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b62, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.05382, i64 8
  %.053 = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not68 = icmp eq ptr %.053, null
  br i1 %.not68, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.n, %bb.k
  %i.ap = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 24, i32 noundef 1) ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr @GC_oom_fn, align 8
  %.b61 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b61, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #43 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_3
begin_hunk_4_@GC_is_marked:bb.a
  %i.p = lshr i64 %i.a, 4
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i32
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define void @GC_push_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not = icmp ult i64 %i.c, %i.f
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8 = icmp ult ptr %i.i, %i.j
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #43
  tail call void @abort() #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_push_conditional(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @GC_page_was_dirty)
  br label %GC_push_all.exit

bb.c:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %GC_push_all.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.i, %i.j
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = sub nuw i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, -8                         ; 8 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %GC_push_all.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.a, 4103
  %i.h = and i64 %i.g, -4096                      ; 4 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %.not34 = icmp ugt i64 %i.e, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4096
  %i.k = tail call i32 %2(ptr noundef nonnull %i.j) #43, !callees !145
  %.not35 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store volatile ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.o, %i.p
  br i1 %.not8.i, label %GC_push_all.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.q(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

bb.f:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.y = mul i64 %i.x, 3
  %i.z = lshr i64 %i.y, 2
  %i.aa = icmp ugt i64 %i.w, %i.z
  %i.ab = inttoptr i64 %i.c to ptr                ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store volatile ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ae = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i42 = icmp ult ptr %i.ae, %i.af
  br i1 %.not8.i42, label %GC_push_all.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ag(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

bb.j:                                             ; preds = %bb.g
  %.not.i44 = icmp ult i64 %i.c, %i.h
  br i1 %.not.i44, label %bb.k, label %GC_push_all.exit46

bb.k:                                             ; preds = %bb.j
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store volatile ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i45 = icmp ult ptr %i.aj, %i.ak
  br i1 %.not8.i45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.al(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %i.h, %i.c
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.ab, ptr %i.an, align 8
  %i.ao = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.am, ptr %i.ap, align 8
  br label %GC_push_all.exit46

GC_push_all.exit46:                               ; preds = %bb.m, %bb.j, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4096 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %.not3658 = icmp ult i64 %i.e, %i.ar
  br i1 %.not3658, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GC_push_all.exit46, %GC_push_all.exit52
  %3 = phi i64 [ %i.bs, %GC_push_all.exit52 ], [ %i.ar, %GC_push_all.exit46 ]
  %i.as = phi ptr [ %i.br, %GC_push_all.exit52 ], [ %i.aq, %GC_push_all.exit46 ] ; 3 uses
  %.059 = phi ptr [ %i.as, %GC_push_all.exit52 ], [ %i.i, %GC_push_all.exit46 ] ; 2 uses
  %i.at = tail call i32 %2(ptr noundef nonnull %.059) #43, !callees !145
  %.not39 = icmp eq i32 %i.at, 0
  br i1 %.not39, label %GC_push_all.exit52, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.au = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.bb = mul i64 %i.ba, 3
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = icmp ugt i64 %i.az, %i.bc
  %4 = ptrtoint ptr %.059 to i64
  %5 = add i64 %4, 7
  %6 = and i64 %5, -8                             ; 6 uses
  br i1 %i.bd, label %bb.o, label %8

bb.o:                                             ; preds = %bb.n
  %.not.i47 = icmp ult i64 %6, %i.e
  br i1 %.not.i47, label %bb.p, label %GC_push_all.exit

bb.p:                                             ; preds = %bb.o
  %7 = inttoptr i64 %6 to ptr
  %i.be = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store volatile ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i48 = icmp ult ptr %i.bg, %i.bh
  br i1 %.not8.i48, label %GC_push_all.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bi(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

8:                                                ; preds = %bb.n
  %9 = inttoptr i64 %6 to ptr
  %10 = and i64 %3, -8                            ; 2 uses
  %.not.i50 = icmp ult i64 %6, %10
  br i1 %.not.i50, label %bb.r, label %GC_push_all.exit52

bb.r:                                             ; preds = %8
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store volatile ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i51 = icmp ult ptr %i.bl, %i.bm
  br i1 %.not8.i51, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bn(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

bb.t:                                             ; preds = %bb.r
  %11 = sub nuw i64 %10, %6
  %i.bo = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %9, ptr %i.bo, align 8
  %i.bp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %11, ptr %i.bq, align 8
  br label %GC_push_all.exit52

GC_push_all.exit52:                               ; preds = %bb.t, %8, %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 4096 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %.not36 = icmp ult i64 %i.e, %i.bs
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge:                                      ; preds = %GC_push_all.exit52, %GC_push_all.exit46
  %.0.lcssa = phi ptr [ %i.i, %GC_push_all.exit46 ], [ %i.as, %GC_push_all.exit52 ] ; 3 uses
  %.not37 = icmp eq ptr %.0.lcssa, %i.f
  br i1 %.not37, label %GC_push_all.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bt = tail call i32 %2(ptr noundef nonnull %.0.lcssa) #43, !callees !145
  %.not38 = icmp eq i32 %i.bt, 0
  br i1 %.not38, label %GC_push_all.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = ptrtoint ptr %.0.lcssa to i64
  %12 = add i64 %i.bu, 7
  %13 = and i64 %12, -8                           ; 3 uses
  %.not.i53 = icmp ult i64 %13, %i.e
  br i1 %.not.i53, label %bb.w, label %GC_push_all.exit

bb.w:                                             ; preds = %bb.v
  %14 = inttoptr i64 %13 to ptr
  %i.bv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store volatile ptr %i.bw, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bx = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i54 = icmp ult ptr %i.bx, %i.by
  br i1 %.not8.i54, label %GC_push_all.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bz(ptr noundef nonnull @.str.62) #43, !inline_history !59
  tail call void @abort() #46
  unreachable

GC_push_all.exit.sink.split:                      ; preds = %bb.w, %bb.p, %bb.h, %bb.d
  %.sink81 = phi i64 [ %6, %bb.p ], [ %i.c, %bb.h ], [ %i.c, %bb.d ], [ %13, %bb.w ]
  %.sink79 = phi ptr [ %7, %bb.p ], [ %i.ab, %bb.h ], [ %i.l, %bb.d ], [ %14, %bb.w ]
  %i.ca = sub nuw i64 %i.e, %.sink81
  %i.cb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %.sink79, ptr %i.cb, align 8
  %i.cc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.ca, ptr %i.cd, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %GC_push_all.exit.sink.split, %bb.v, %bb.o, %._crit_edge, %bb.u, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @GC_page_was_dirty(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
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
  %i.l = lshr i64 %i.a, 12                        ; 2 uses
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.q = lshr i64 %i.a, 18
  %i.r = and i64 %i.q, 4095
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.l, 63
  %i.v = lshr i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 1
  br label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 1, %GC_find_header.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_mark_and_push(ptr noundef %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !146

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.p, label %bb.d, label %bb.g, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @GC_base(ptr noundef %0)
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = lshr i64 %i.s, 22                        ; 2 uses
  %i.u = and i64 %i.t, 2047
  %i.v = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.in.i = phi ptr [ %i.v, %bb.e ], [ %i.ab, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ne i64 %i.x, %i.t
  %i.z = icmp ne ptr %.0.i, %i.e
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.aa, label %bb.f, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.f
  %i.ac = lshr i64 %i.s, 12
  %i.ad = and i64 %i.ac, 1023
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread32, label %bb.g

bb.g:                                             ; preds = %GC_find_header.exit, %bb.c
  %.022 = phi ptr [ %i.af, %GC_find_header.exit ], [ %i.o, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.022, i64 25
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 4
  %.not25 = icmp eq i8 %i.aj, 0
  br i1 %.not25, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %.pr.pre = load i32, ptr @GC_all_interior_pointers, align 4
  %i.ak = icmp eq i32 %.pr.pre, 0
  br i1 %i.ak, label %.thread, label %.thread32

.thread32:                                        ; preds = %GC_find_header.exit, %bb.h
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.a)
  br label %bb.j

.thread:                                          ; preds = %bb.d, %bb.h
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.022, i32 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %.thread32, %.thread, %bb.i
  %.023 = phi ptr [ %i.al, %bb.i ], [ %1, %.thread ], [ %1, %.thread32 ]
  ret ptr %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #22

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @GC_add_to_black_list_stack(i64 noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = lshr i64 %0, 22                          ; 2 uses
  %i.b = and i64 %i.a, 2047
  %i.c = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, %i.a
  %i.h = icmp ne ptr %.0.i, %i.d
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.i, label %bb.b, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.b
  %i.k = lshr i64 %0, 12                          ; 4 uses
  %i.l = and i64 %i.k, 262143                     ; 2 uses
  %i.m = and i64 %i.k, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %GC_find_header.exit._crit_edge, label %bb.c

GC_find_header.exit._crit_edge:                   ; preds = %GC_find_header.exit
  %.pre = and i64 %i.k, 63
  %.pre6 = shl nuw i64 1, %.pre
  %.pre8 = lshr i64 %i.l, 6
  br label %bb.d

bb.c:                                             ; preds = %GC_find_header.exit
  %i.q = load ptr, ptr @GC_old_stack_bl, align 8
  %i.r = lshr i64 %i.l, 6                         ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.k, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit._crit_edge, %bb.c
  %.pre-phi9 = phi i64 [ %.pre8, %GC_find_header.exit._crit_edge ], [ %i.r, %bb.c ]
end_hunk_4
begin_hunk_5_@GC_push_roots:bb.a
  %wide.trip.count = zext i32 %i.bg to i64
  %.pre62 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %.lr.ph45.split

.lr.ph.split:                                     ; preds = %.lr.ph, %GC_push_conditional_with_exclusions.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %GC_push_conditional_with_exclusions.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %indvars.iv ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph.i, label %GC_push_conditional_with_exclusions.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %.pre41.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %GC_push_conditional_static.exit.i, %.lr.ph.i
  %i.bm = phi i64 [ %i.df, %GC_push_conditional_static.exit.i ], [ %.pre41.i, %.lr.ph.i ] ; 3 uses
  %.01531.i = phi ptr [ %i.de, %GC_push_conditional_static.exit.i ], [ %i.bi, %.lr.ph.i ] ; 5 uses
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  %.not17.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not17.i.i, label %GC_next_exclusion.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ %i.bn, %.lr.ph.split.i ] ; 2 uses
  %.01115.i.i = phi i64 [ %.112.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.bo = add i64 %.01115.i.i, %.016.i.i
  %i.bp = lshr i64 %i.bo, 1                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %.not14.i.i = icmp ugt ptr %i.bs, %.01531.i     ; 2 uses
  %i.bt = add nuw i64 %i.bp, 1
  %.112.i.i = select i1 %.not14.i.i, i64 %.01115.i.i, i64 %i.bt ; 3 uses
  %.1.i.i = select i1 %.not14.i.i, i64 %i.bp, i64 %.016.i.i ; 2 uses
  %i.bu = icmp ugt i64 %.1.i.i, %.112.i.i
  br i1 %i.bu, label %.lr.ph.i.i, label %GC_next_exclusion.exit.i, !llvm.loop !24

GC_next_exclusion.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.split.i
  %.011.lcssa.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %.112.i.i, %.lr.ph.i.i ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %.011.lcssa.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %.not.i.not.i = icmp ugt ptr %i.bx, %.01531.i
  br i1 %.not.i.not.i, label %bb.m, label %.split.us.i.loopexit35

bb.m:                                             ; preds = %GC_next_exclusion.exit.i
  %i.by = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i = icmp ult ptr %i.by, %i.bk
  br i1 %.not.i, label %bb.p, label %.split.us.i.loopexit35

.split.us.i.loopexit35:                           ; preds = %GC_next_exclusion.exit.i, %bb.m
  %i.bz = ptrtoint ptr %.01531.i to i64
  %i.ca = add i64 %i.bz, 7
  %i.cb = and i64 %i.ca, -8                       ; 3 uses
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = ptrtoint ptr %i.bk to i64
  %i.ce = and i64 %i.cd, -8                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cb, %i.ce
  br i1 %.not.i.i.i, label %bb.n, label %GC_push_conditional_with_exclusions.exit

bb.n:                                             ; preds = %.split.us.i.loopexit35
  %i.cf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store volatile ptr %i.cg, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ch = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i.i = icmp ult ptr %i.ch, %i.ci
  br i1 %.not8.i.i.i, label %bb.o, label %.split.us

.split.us:                                        ; preds = %bb.n, %bb.k
  %i.cj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cj(ptr noundef nonnull @.str.62) #43, !inline_history !280
  tail call void @abort() #46
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ck = sub nuw i64 %i.ce, %i.cb
  %i.cl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.cc, ptr %i.cl, align 8
  %i.cm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ck, ptr %i.cn, align 8
  br label %GC_push_conditional_with_exclusions.exit

bb.p:                                             ; preds = %bb.m
  %i.co = icmp ugt ptr %i.by, %.01531.i
  br i1 %i.co, label %bb.q, label %GC_push_conditional_static.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cp = ptrtoint ptr %.01531.i to i64
  %i.cq = add i64 %i.cp, 7
  %i.cr = and i64 %i.cq, -8                       ; 3 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = ptrtoint ptr %i.by to i64
  %i.cu = and i64 %i.ct, -8                       ; 2 uses
  %.not.i.i22.i = icmp ult i64 %i.cr, %i.cu
  br i1 %.not.i.i22.i, label %bb.r, label %GC_push_conditional_static.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store volatile ptr %i.cw, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cx = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i23.i = icmp ult ptr %i.cx, %i.cy
  br i1 %.not8.i.i23.i, label %bb.s, label %.split33.us.i

.split33.us.i:                                    ; preds = %bb.r, %bb.g
  %i.cz = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cz(ptr noundef nonnull @.str.62) #43, !inline_history !280
  tail call void @abort() #46
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.da = sub nuw i64 %i.cu, %i.cr
  %i.db = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.cs, ptr %i.db, align 8
  %i.dc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.da, ptr %i.dd, align 8
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  %.pre42.i = load ptr, ptr %i.bw, align 8
  br label %GC_push_conditional_static.exit.i

GC_push_conditional_static.exit.i:                ; preds = %bb.s, %bb.q, %bb.p
  %i.de = phi ptr [ %i.bx, %bb.p ], [ %i.bx, %bb.q ], [ %.pre42.i, %bb.s ] ; 2 uses
  %i.df = phi i64 [ %i.bm, %bb.p ], [ %i.bm, %bb.q ], [ %.pre.i, %bb.s ]
  %i.dg = icmp ult ptr %i.de, %i.bk
  br i1 %i.dg, label %.lr.ph.split.i, label %GC_push_conditional_with_exclusions.exit

GC_push_conditional_with_exclusions.exit:         ; preds = %GC_push_conditional_static.exit.i, %.lr.ph.split, %.split.us.i.loopexit35, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %.lr.ph.split, label %.preheader34, !llvm.loop !279

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %GC_set_mark_bit.exit
  %i.dk = phi ptr [ %.pre62, %.lr.ph45.split.preheader ], [ %i.gk, %GC_set_mark_bit.exit ] ; 6 uses
  %i.dl = phi ptr [ %.pre62, %.lr.ph45.split.preheader ], [ %i.gl, %GC_set_mark_bit.exit ] ; 5 uses
  %indvars.iv59 = phi i64 [ 0, %.lr.ph45.split.preheader ], [ %indvars.iv.next60, %GC_set_mark_bit.exit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv59
  %i.dn = load ptr, ptr %i.dm, align 16           ; 3 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dp = lshr i64 %i.do, 22                      ; 2 uses
  %i.dq = and i64 %i.dp, 2047
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.dq
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph45.split
  %.0.in.i = phi ptr [ %i.dr, %.lr.ph45.split ], [ %i.dx, %bb.t ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp ne i64 %i.dt, %i.dp
  %i.dv = icmp ne ptr %.0.i, %i.dl
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.dw, label %bb.t, label %bb.u, !llvm.loop !6

bb.u:                                             ; preds = %bb.t
  %i.dy = lshr i64 %i.do, 12
  %i.dz = and i64 %i.dy, 1023
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8            ; 4 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %GC_set_mark_bit.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %i.ed = and i64 %i.do, -4096
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = icmp ult ptr %i.eb, inttoptr (i64 4096 to ptr)
  br i1 %i.ef, label %.lr.ph.i18, label %._crit_edge.i

.lr.ph.i18:                                       ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.ew, %GC_find_header.exit.i ], [ %i.eb, %.preheader.i ]
  %.03745.i = phi ptr [ %i.ei, %GC_find_header.exit.i ], [ %i.ee, %.preheader.i ]
  %i.eg = ptrtoint ptr %.03646.i to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.eh ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = lshr i64 %i.ej, 22                      ; 2 uses
  %i.el = and i64 %i.ek, 2047
  %i.em = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i18
  %.0.in.i.i = phi ptr [ %i.em, %.lr.ph.i18 ], [ %i.es, %bb.v ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp ne i64 %i.eo, %i.ek
  %i.eq = icmp ne ptr %.0.i.i, %i.dl
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.er, label %bb.v, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.v
  %i.et = lshr i64 %i.ej, 12
  %i.eu = and i64 %i.et, 1023
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.ex = icmp ult ptr %i.ew, inttoptr (i64 4096 to ptr)
  br i1 %i.ex, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.ei, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.ee, %.preheader.i ], [ %i.ei, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.eb, %.preheader.i ], [ %i.ew, %GC_find_header.exit.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = and i8 %i.ez, 4
  %.not.i17 = icmp eq i8 %i.fa, 0
  br i1 %.not.i17, label %bb.w, label %GC_set_mark_bit.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.fb = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.fc = and i64 %i.fb, -8                       ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = and i64 %i.fb, 4088
  %i.ff = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8            ; 3 uses
  %i.fh = urem i64 %i.fe, %i.fg
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %i.fd, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.fm = icmp ugt ptr %i.fk, %i.fl
  %i.fn = icmp ult i64 %i.fg, 4097
  %or.cond.not.i.not33 = and i1 %i.fn, %i.fm
  %.not42.i = icmp uge ptr %i.dn, %i.fk
  %cond.i.not30 = or i1 %.not42.i, %or.cond.not.i.not33
  %.not16 = icmp eq i64 %i.fc, 0
  %or.cond29 = or i1 %.not16, %cond.i.not30
  br i1 %or.cond29, label %GC_set_mark_bit.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fp = lshr i64 %i.fo, 22                      ; 2 uses
  %i.fq = and i64 %i.fp, 2047
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.fq
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.0.in.i.i19 = phi ptr [ %i.fr, %bb.x ], [ %i.fx, %bb.y ]
  %.0.i.i20 = load ptr, ptr %.0.in.i.i19, align 8 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 8208
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp ne i64 %i.ft, %i.fp
  %i.fv = icmp ne ptr %.0.i.i20, %i.dk
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 8216
  br i1 %i.fw, label %bb.y, label %GC_find_header.exit.i21, !llvm.loop !2

GC_find_header.exit.i21:                          ; preds = %bb.y
  %i.fy = lshr i64 %i.fo, 12
  %i.fz = and i64 %i.fy, 1023
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i20, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = lshr i64 %i.fo, 4
  %i.gd = and i64 %i.gc, 255
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1
  %.not.i22 = icmp eq i8 %i.gg, 0
  br i1 %.not.i22, label %bb.z, label %GC_set_mark_bit.exit

bb.z:                                             ; preds = %GC_find_header.exit.i21
  store i8 1, ptr %i.gf, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 2 uses
  %i.gi = load volatile i64, ptr %i.gh, align 8
  %i.gj = add i64 %i.gi, 1
  store volatile i64 %i.gj, ptr %i.gh, align 8
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %GC_set_mark_bit.exit

GC_set_mark_bit.exit:                             ; preds = %bb.w, %._crit_edge.i, %bb.u, %bb.z, %GC_find_header.exit.i21
  %i.gk = phi ptr [ %i.dk, %bb.w ], [ %i.dk, %._crit_edge.i ], [ %i.dk, %bb.u ], [ %.pre, %bb.z ], [ %i.dk, %GC_find_header.exit.i21 ]
  %i.gl = phi ptr [ %i.dl, %bb.w ], [ %i.dl, %._crit_edge.i ], [ %i.dl, %bb.u ], [ %.pre, %bb.z ], [ %i.dk, %GC_find_header.exit.i21 ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph45.split, !llvm.loop !281

._crit_edge.split:                                ; preds = %GC_set_mark_bit.exit, %.lr.ph45, %.preheader34
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 288), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 296))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 312), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 320))
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 336), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 352))
  %i.gm = load i32, ptr @GC_no_dls, align 4
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 400), align 8
  %i.gp = icmp ne i32 %i.go, 0
  %or.cond = select i1 %i.gn, i1 true, i1 %i.gp
  br i1 %or.cond, label %bb.aa, label %GC_push_thread_structures.exit

bb.aa:                                            ; preds = %._crit_edge.split
  %i.gq = and i64 add (i64 ptrtoint (ptr @GC_threads to i64), i64 7), -16 ; 3 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %.not.i.i = icmp ult i64 %i.gq, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64)
  br i1 %.not.i.i, label %bb.ab, label %GC_push_thread_structures.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gs = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store volatile ptr %i.gt, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i = icmp ult ptr %i.gu, %i.gv
  br i1 %.not8.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.gw(ptr noundef nonnull @.str.62) #43, !inline_history !285
  tail call void @abort() #46
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gx = sub nuw i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @GC_threads, i64 2048) to i64), %i.gq
  %i.gy = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.gr, ptr %i.gy, align 8
  %i.gz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.gx, ptr %i.ha, align 8
  br label %GC_push_thread_structures.exit

GC_push_thread_structures.exit:                   ; preds = %bb.ad, %bb.aa, %._crit_edge.split
  %i.hb = load ptr, ptr @GC_push_typed_structures, align 8
  %.not = icmp eq ptr %i.hb, null
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %GC_push_thread_structures.exit
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448))
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %GC_push_thread_structures.exit
  %.b = load i1, ptr @GC_world_stopped, align 4
  br i1 %.b, label %.preheader, label %GC_mark_thread_local_free_lists.exit

.preheader:                                       ; preds = %bb.af, %._crit_edge.i25
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i25 ], [ 0, %bb.af ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr @GC_threads, i64 %indvars.iv.i
  %i.hd = load volatile ptr, ptr %i.hc, align 8   ; 2 uses
  %.not8.i = icmp eq ptr %i.hd, null
  br i1 %.not8.i, label %._crit_edge.i25, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader, %GC_mark_thread_local_fls_for.exit.i
  %.09.i = phi ptr [ %i.oa, %GC_mark_thread_local_fls_for.exit.i ], [ %i.hd, %.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.09.i, i64 40
  %i.hf = load i8, ptr %i.he, align 8
  %i.hg = and i8 %i.hf, 1
  %.not7.i = icmp eq i8 %i.hg, 0
  br i1 %.not7.i, label %bb.ag, label %GC_mark_thread_local_fls_for.exit.i

bb.ag:                                            ; preds = %.lr.ph.i23
  %i.hh = getelementptr inbounds nuw i8, ptr %.09.i, i64 104
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.i, i64 704
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %GC_set_fl_marks.exit31.i.i, %bb.ag
  %indvars.iv.i.i = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next.i.i, %GC_set_fl_marks.exit31.i.i ] ; 4 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i ; 3 uses
  %i.hj = load atomic volatile i64, ptr %invariant.gep.i.i monotonic, align 8 ; 5 uses
  %i.hk = icmp ugt i64 %i.hj, 4096
  br i1 %i.hk, label %bb.ah, label %GC_set_fl_marks.exit.i.i

bb.ah:                                            ; preds = %.preheader.i.i
  %i.hl = lshr i64 %i.hj, 22                      ; 2 uses
  %i.hm = and i64 %i.hl, 2047
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.hm
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0.in.i.i.i.i = phi ptr [ %i.hn, %bb.ah ], [ %i.hu, %bb.ai ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8208
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = icmp ne i64 %i.hq, %i.hl
  %i.hs = icmp ne ptr %.0.i.i.i.i, %i.ho
  %i.ht = select i1 %i.hr, i1 %i.hs, i1 false
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8216
  br i1 %i.ht, label %bb.ai, label %GC_find_header.exit.i.i.i, !llvm.loop !2

GC_find_header.exit.i.i.i:                        ; preds = %bb.ai
  %i.hv = inttoptr i64 %i.hj to ptr
  %i.hw = and i64 %i.hj, -4096                    ; 2 uses
  %i.hx = inttoptr i64 %i.hw to ptr
  br label %.sink.split

.sink.split.loopexit:                             ; preds = %bb.ao
  br label %.sink.split, !llvm.loop !2

.sink.split:                                      ; preds = %.sink.split.loopexit, %GC_find_header.exit.i.i.i
  %.sink118 = phi i64 [ %i.hj, %GC_find_header.exit.i.i.i ], [ %i.in, %.sink.split.loopexit ]
  %.0.i31.i.i.i.sink = phi ptr [ %.0.i.i.i.i, %GC_find_header.exit.i.i.i ], [ %.0.i31.i.i.i, %.sink.split.loopexit ]
  %.024.i.i.i.ph = phi ptr [ %i.hv, %GC_find_header.exit.i.i.i ], [ %i.il, %.sink.split.loopexit ]
  %.022.i.i.i.ph = phi i64 [ %i.hw, %GC_find_header.exit.i.i.i ], [ %i.io, %.sink.split.loopexit ]
  %.019.i.i.i.ph = phi ptr [ %i.hx, %GC_find_header.exit.i.i.i ], [ %i.ip, %.sink.split.loopexit ]
  %i.hy = lshr i64 %.sink118, 12
  %i.hz = and i64 %i.hy, 1023
end_hunk_5
begin_hunk_6_@GC_add_leaked:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp ne i64 %i.ax, %i.d
  %i.az = icmp ne ptr %.0.i.i.i, %i.g
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.ba, label %.preheader.i, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %.preheader.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.o
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = lshr i64 %i.c, 4
  %i.bf = and i64 %i.be, 255
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %.not.i13.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i13.i, label %bb.h, label %GC_set_mark_bit.exit.i

bb.h:                                             ; preds = %GC_find_header.exit.i.i
  store i8 1, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.bk = load volatile i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 1
  store volatile i64 %i.bl, ptr %i.bj, align 8
  br label %GC_set_mark_bit.exit.i

GC_set_mark_bit.exit.i:                           ; preds = %bb.h, %GC_find_header.exit.i.i
  %i.bm = load i32, ptr @GC_n_smashed, align 4    ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @GC_smashed, i64 %i.bn
  store ptr %i.av, ptr %i.bo, align 8
  %i.bp = icmp ult i32 %i.bm, 19
  br i1 %i.bp, label %bb.i, label %GC_add_smashed.exit.i

bb.i:                                             ; preds = %GC_set_mark_bit.exit.i
  %i.bq = add nuw nsw i32 %i.bm, 1
  store i32 %i.bq, ptr @GC_n_smashed, align 4
  br label %GC_add_smashed.exit.i

GC_add_smashed.exit.i:                            ; preds = %bb.i, %GC_set_mark_bit.exit.i
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  br label %GC_check_leaked.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.br = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.as
  br i1 %exitcond.not.i, label %GC_check_leaked.exit, label %.lr.ph.i, !llvm.loop !40

GC_check_leaked.exit.thread:                      ; preds = %bb.g, %GC_size.exit.i.i, %bb.f, %bb.b, %bb.a
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  %i.bs = load i32, ptr @GC_n_leaked, align 4     ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 40
  br i1 %i.bt, label %bb.k, label %GC_check_leaked.exit

bb.k:                                             ; preds = %GC_check_leaked.exit.thread
  %i.bu = add nuw nsw i32 %i.bs, 1
  store i32 %i.bu, ptr @GC_n_leaked, align 4
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @GC_leaked, i64 %i.bv
  store ptr %0, ptr %i.bw, align 8
  %i.bx = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.by = lshr i64 %i.bx, 22                      ; 2 uses
  %i.bz = and i64 %i.by, 2047
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bz
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i3 = phi ptr [ %i.ca, %bb.k ], [ %i.ch, %bb.l ]
  %.0.i.i = load ptr, ptr %.0.in.i.i3, align 8    ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp ne i64 %i.cd, %i.by
  %i.cf = icmp ne ptr %.0.i.i, %i.cb
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.cg, label %bb.l, label %GC_find_header.exit.i4, !llvm.loop !2

GC_find_header.exit.i4:                           ; preds = %bb.l
  %i.ci = lshr i64 %i.bx, 12
  %i.cj = and i64 %i.ci, 1023
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = lshr i64 %i.bx, 4
  %i.cn = and i64 %i.cm, 255
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1
  %.not.i5 = icmp eq i8 %i.cq, 0
  br i1 %.not.i5, label %bb.m, label %GC_check_leaked.exit

bb.m:                                             ; preds = %GC_find_header.exit.i4
  store i8 1, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 56 ; 2 uses
  %i.cs = load volatile i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, 1
  store volatile i64 %i.ct, ptr %i.cr, align 8
  br label %GC_check_leaked.exit

GC_check_leaked.exit:                             ; preds = %bb.j, %bb.m, %GC_find_header.exit.i4, %GC_add_smashed.exit.i, %GC_find_header.exit.i, %GC_check_leaked.exit.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @GC_make_disappearing_links_disappear(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not39 = icmp eq i32 %1, 0
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  %.b38 = load i1, ptr @GC_manual_vdb, align 4    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.03267 = phi i32 [ 0, %.preheader ], [ %.133.lcssa, %._crit_edge ] ; 2 uses
  %.03666 = phi i64 [ 0, %.preheader ], [ %i.ev, %._crit_edge ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03666
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not62 = icmp eq ptr %i.i, null
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread
  %.065 = phi ptr [ %.3, %.thread ], [ null, %bb.b ] ; 4 uses
  %.03064 = phi ptr [ %i.k, %.thread ], [ %i.i, %bb.b ] ; 11 uses
  %.13363 = phi i32 [ %.335, %.thread ], [ %.03267, %bb.b ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.03064, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  br i1 %.not39, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i64, ptr %.03064, align 8
  %i.m = xor i64 %i.l, -1                         ; 5 uses
  %i.n = inttoptr i64 %i.m to ptr
  br i1 %.b.i, label %bb.d, label %.thread, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 %i.m, 22                        ; 2 uses
  %i.p = and i64 %i.o, 2047
  %i.q = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.p
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i = phi ptr [ %i.q, %bb.d ], [ %i.x, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ne i64 %i.t, %i.o
  %i.v = icmp ne ptr %.0.i, %i.r
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.w, label %bb.e, label %bb.f, !llvm.loop !6

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.m, 12
  %i.z = and i64 %i.y, 1023
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ad = and i64 %i.m, -4096
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp ult ptr %i.ab, inttoptr (i64 4096 to ptr)
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.aw, %GC_find_header.exit.i ], [ %i.ab, %.preheader.i ]
  %.03745.i = phi ptr [ %i.ai, %GC_find_header.exit.i ], [ %i.ae, %.preheader.i ]
  %i.ag = ptrtoint ptr %.03646.i to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.ah ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = lshr i64 %i.aj, 22                      ; 2 uses
  %i.al = and i64 %i.ak, 2047
  %i.am = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.as, %bb.g ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ne i64 %i.ao, %i.ak
  %i.aq = icmp ne ptr %.0.i.i, %i.r
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ar, label %bb.g, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.g
  %i.at = lshr i64 %i.aj, 12
  %i.au = and i64 %i.at, 1023
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = icmp ult ptr %i.aw, inttoptr (i64 4096 to ptr)
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !7

._crit_edge.i.loopexit:                           ; preds = %GC_find_header.exit.i
  %i.ay = ptrtoint ptr %i.ai to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.038.lcssa.i = phi i64 [ %i.m, %.preheader.i ], [ %i.ay, %._crit_edge.i.loopexit ] ; 2 uses
  %.037.lcssa.i = phi ptr [ %i.ae, %.preheader.i ], [ %i.ai, %._crit_edge.i.loopexit ]
  %.036.lcssa.i = phi ptr [ %i.ab, %.preheader.i ], [ %i.aw, %._crit_edge.i.loopexit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = and i8 %i.ba, 4
  %.not.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %._crit_edge.i
  %i.bc = and i64 %.038.lcssa.i, -8               ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = and i64 %.038.lcssa.i, 4088
  %i.bf = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = urem i64 %i.be, %i.bg
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.bm = icmp ugt ptr %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bg, 4097
  %or.cond.not.i.not60 = and i1 %i.bn, %i.bm
  %.not42.i = icmp ule ptr %i.bk, %i.n
  %cond.i.not57 = or i1 %.not42.i, %or.cond.not.i.not60
  %i.bo = icmp eq i64 %i.bc, 0
  %or.cond56 = or i1 %i.bo, %cond.i.not57
  br i1 %or.cond56, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bq = lshr i64 %i.bp, 22                      ; 2 uses
  %i.br = and i64 %i.bq, 2047
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.br
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.in.i.i42 = phi ptr [ %i.bs, %bb.i ], [ %i.by, %bb.j ]
  %.0.i.i43 = load ptr, ptr %.0.in.i.i42, align 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 8208
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp ne i64 %i.bu, %i.bq
  %i.bw = icmp ne ptr %.0.i.i43, %i.r
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 8216
  br i1 %i.bx, label %bb.j, label %GC_is_marked.exit, !llvm.loop !2

GC_is_marked.exit:                                ; preds = %bb.j
  %i.bz = lshr i64 %i.bp, 12
  %i.ca = and i64 %i.bz, 1023
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i43, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = lshr i64 %i.bp, 4
  %i.ce = and i64 %i.cd, 255
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1
  %.not41 = icmp eq i8 %i.ch, 0
  br i1 %.not41, label %bb.n, label %.thread, !prof !48

bb.k:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.03064, i64 16
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = xor i64 %i.cj, -1                       ; 3 uses
  %i.cl = lshr i64 %i.ck, 22                      ; 2 uses
  %i.cm = and i64 %i.cl, 2047
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cm
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i45 = phi ptr [ %i.cn, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i46 = load ptr, ptr %.0.in.i.i45, align 8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 8208
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = icmp ne i64 %i.cq, %i.cl
  %i.cs = icmp ne ptr %.0.i.i46, %i.co
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 8216
  br i1 %i.ct, label %bb.l, label %GC_is_marked.exit48, !llvm.loop !2

GC_is_marked.exit48:                              ; preds = %bb.l
  %i.cv = lshr i64 %i.ck, 12
  %i.cw = and i64 %i.cv, 1023
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i46, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = lshr i64 %i.ck, 4
  %i.da = and i64 %i.cz, 255
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %i.dd = load i8, ptr %i.dc, align 1
  %.not40 = icmp eq i8 %i.dd, 0
  br i1 %.not40, label %bb.m, label %.thread, !prof !48

bb.m:                                             ; preds = %GC_is_marked.exit48
  %i.de = load i64, ptr %.03064, align 8
  %i.df = xor i64 %i.de, -1
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr null, ptr %i.dg, align 8
  br label %bb.n

bb.n:                                             ; preds = %GC_is_marked.exit, %bb.m
  %i.dh = icmp eq ptr %.065, null
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03666
  store ptr %i.k, ptr %i.dj, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.065, i64 8
  store ptr %i.k, ptr %i.dk, align 8
  br i1 %.b38, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = ptrtoint ptr %.065 to i64               ; 2 uses
  %i.dm = lshr i64 %i.dl, 12
  %i.dn = lshr i64 %i.dl, 18
  %i.do = and i64 %i.dn, 4095
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.do
  %i.dq = and i64 %i.dm, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = atomicrmw volatile or ptr %i.dp, i64 %i.dr monotonic, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.234 = phi i32 [ 1, %bb.o ], [ %.13363, %bb.q ], [ %.13363, %bb.p ]
  %i.dt = ptrtoint ptr %.03064 to i64             ; 3 uses
  %i.du = lshr i64 %i.dt, 22                      ; 2 uses
  %i.dv = and i64 %i.du, 2047
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.dv
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.in.i.i49 = phi ptr [ %i.dw, %bb.r ], [ %i.ed, %bb.s ]
  %.0.i.i50 = load ptr, ptr %.0.in.i.i49, align 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8208
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp ne i64 %i.dz, %i.du
  %i.eb = icmp ne ptr %.0.i.i50, %i.dx
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 8216
  br i1 %i.ec, label %bb.s, label %GC_find_header.exit.i51, !llvm.loop !2

GC_find_header.exit.i51:                          ; preds = %bb.s
  %i.ee = lshr i64 %i.dt, 12
  %i.ef = and i64 %i.ee, 1023
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i50, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = lshr i64 %i.dt, 4
  %i.ej = and i64 %i.ei, 255
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej ; 2 uses
  %i.em = load i8, ptr %i.el, align 1
  %.not.i52 = icmp eq i8 %i.em, 0
  br i1 %.not.i52, label %GC_clear_mark_bit.exit, label %bb.t

bb.t:                                             ; preds = %GC_find_header.exit.i51
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 56 ; 2 uses
  %i.eo = load volatile i64, ptr %i.en, align 8
  store i8 0, ptr %i.el, align 1
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = load i32, ptr @GC_parallel, align 4
  %i.es = icmp ne i32 %i.er, 0
  %or.cond.i = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %or.cond.i, label %GC_clear_mark_bit.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store volatile i64 %i.ep, ptr %i.en, align 8
  br label %GC_clear_mark_bit.exit

GC_clear_mark_bit.exit:                           ; preds = %GC_find_header.exit.i51, %bb.t, %bb.u
  %i.et = load i64, ptr %i.f, align 8
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr %i.f, align 8
  br label %.thread

.thread:                                          ; preds = %bb.h, %._crit_edge.i, %bb.f, %bb.c, %GC_is_marked.exit, %GC_is_marked.exit48, %GC_clear_mark_bit.exit
  %.335 = phi i32 [ %.234, %GC_clear_mark_bit.exit ], [ %.13363, %GC_is_marked.exit48 ], [ %.13363, %GC_is_marked.exit ], [ %.13363, %bb.h ], [ %.13363, %bb.c ], [ %.13363, %bb.f ], [ %.13363, %._crit_edge.i ] ; 2 uses
  %.3 = phi ptr [ %.065, %GC_clear_mark_bit.exit ], [ %.03064, %GC_is_marked.exit48 ], [ %.03064, %GC_is_marked.exit ], [ %.03064, %bb.h ], [ %.03064, %bb.c ], [ %.03064, %bb.f ], [ %.03064, %._crit_edge.i ]
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !315

._crit_edge:                                      ; preds = %.thread, %bb.b
  %.133.lcssa = phi i32 [ %.03267, %bb.b ], [ %.335, %.thread ] ; 2 uses
end_hunk_6
begin_hunk_7_@GC_reclaim_all:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ne i64 %i.v, %i.q
  %i.x = icmp ne ptr %.0.i, %i.t
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.y, label %bb.h, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.h
  %i.aa = lshr i64 %i.p, 12
  %i.ab = and i64 %i.aa, 1023                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %GC_find_header.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i64
  %i.ai = load i64, ptr @GC_gc_no, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = icmp eq i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %GC_find_header.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.in.i.i = phi ptr [ %i.s, %bb.j ], [ %i.at, %bb.k ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp ne i64 %i.ap, %i.q
  %i.ar = icmp ne ptr %.0.i.i, %i.an
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.as, label %bb.k, label %GC_reclaim_small_nonempty_block.exit, !llvm.loop !2

GC_reclaim_small_nonempty_block.exit:             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ab
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16
  %i.bb = load i64, ptr @GC_gc_no, align 8
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = lshr i64 %i.am, 4
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load ptr, ptr %i.bf, align 8
  %i.bj = call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.n, ptr noundef nonnull %i.av, i64 noundef %i.am, i32 noundef %i.bh, ptr noundef %i.bi, ptr noundef nonnull @GC_bytes_found)
  store ptr %i.bj, ptr %i.bf, align 8
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.l

bb.l:                                             ; preds = %GC_reclaim_small_nonempty_block.exit, %bb.i
  %i.bk = phi ptr [ %.pre, %GC_reclaim_small_nonempty_block.exit ], [ %i.ae, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.bl = add nuw nsw i64 %.01929, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, 129
  br i1 %exitcond.not, label %.loopexit27.loopexit, label %.preheader, !llvm.loop !320

.loopexit27.loopexit:                             ; preds = %._crit_edge
  %.pre36 = load i32, ptr @GC_n_kinds, align 4
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %bb.e
  %i.bm = phi i32 [ %.pre36, %.loopexit27.loopexit ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.e, label %._crit_edge33, !llvm.loop !321

._crit_edge33:                                    ; preds = %.loopexit27, %bb.d
  %i.bp = load i32, ptr @GC_print_stats, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %._crit_edge33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.br = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #43
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr @GC_on_abort, align 8
  call void %i.bt(ptr noundef nonnull @.str.93) #43
  call void @abort() #46
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %reass.sub = sub i64 %i.bv, %i.bx
  %i.by = add i64 %reass.sub, 1000000000          ; 2 uses
  %i.bz = udiv i64 %i.by, 1000000
  %i.ca = load i64, ptr %3, align 8
  %i.cb = load i64, ptr %2, align 8
  %i.cc = sub nsw i64 %i.ca, %i.cb
  %i.cd = mul i64 %i.cc, 1000
  %i.ce = add nsw i64 %i.bz, -1000
  %i.cf = add i64 %i.ce, %i.cd
  %i.cg = urem i64 %i.by, 1000000
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.186, i64 noundef %i.cf, i64 noundef %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %._crit_edge33, %bb.o
  %.020 = phi i32 [ 1, %._crit_edge33 ], [ 1, %bb.o ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_print_all_smashed_proc() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_n_smashed, align 4     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.189, i32 noundef %i.a)
  %i.c = load i32, ptr @GC_n_smashed, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %._crit_edge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @GC_smashed, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.g = lshr i64 %i.f, 22                        ; 2 uses
  %i.h = and i64 %i.g, 2047
  %i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.h
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.0.in.i = phi ptr [ %i.i, %.lr.ph ], [ %i.p, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ne i64 %i.l, %i.g
  %i.n = icmp ne ptr %.0.i, %i.j
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.o, label %bb.c, label %.preheader.i, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.c
  %i.q = lshr i64 %i.f, 12
  %i.r = and i64 %i.q, 1023
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.u = icmp ult ptr %i.t, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.v = and i64 %i.f, -4096
  %i.w = inttoptr i64 %i.v to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.an, %GC_find_header.exit.i ], [ %i.t, %.lr.ph.i.preheader ]
  %.03745.i = phi ptr [ %i.z, %GC_find_header.exit.i ], [ %i.w, %.lr.ph.i.preheader ]
  %i.x = ptrtoint ptr %.03646.i to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.y ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 22                      ; 2 uses
  %i.ac = and i64 %i.ab, 2047
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aj, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ne i64 %i.af, %i.ab
  %i.ah = icmp ne ptr %.0.i.i, %i.j
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ai, label %bb.d, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.d
  %i.ak = lshr i64 %i.aa, 12
  %i.al = and i64 %i.ak, 1023
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ult ptr %i.an, inttoptr (i64 4096 to ptr)
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.pre-phi = phi i64 [ %i.f, %.preheader.i ], [ %i.aa, %GC_find_header.exit.i ] ; 2 uses
  %.036.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.an, %GC_find_header.exit.i ]
  %i.ap = and i64 %.pre-phi, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %.pre-phi, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.at = load i64, ptr %i.as, align 8
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  tail call fastcc void @GC_print_smashed_obj(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ax, ptr noundef %i.e)
  store ptr null, ptr %i.d, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr @GC_n_smashed, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %._crit_edge.i, %bb.b
  store i32 0, ptr @GC_n_smashed, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_debug_print_heap_obj_proc(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [41 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %select.unfold, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = lshr i64 %i.d, 22                        ; 3 uses
  %i.f = and i64 %i.e, 2047
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.f ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ne i64 %i.j, %i.e
  %i.l = icmp ne ptr %.0.i.i.i, %i.h
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.m, label %bb.c, label %GC_size.exit.i, !llvm.loop !2

GC_size.exit.i:                                   ; preds = %bb.c
  %i.o = lshr i64 %i.d, 12
  %i.p = and i64 %i.o, 1023                       ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.v = xor i64 %i.u, %i.d
  %.not.i = icmp ugt i64 %i.v, 4095
  %i.w = icmp ult i64 %i.t, 40
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.w
  br i1 %or.cond.i, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %GC_size.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = xor i64 %i.y, %i.u
  %.not13.i = icmp eq i64 %i.z, -81929232789475893
  br i1 %.not13.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.t, 3
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = xor i64 %i.ad, %i.u
  %.not14.i = icmp eq i64 %i.ae, -4837202520199737873
  br i1 %.not14.i, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, %i.t
  br i1 %i.ah, label %select.unfold, label %GC_has_other_debug_info.exit

GC_has_other_debug_info.exit:                     ; preds = %bb.f
  %.b.i.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i.i, label %.preheader, label %GC_base.exit.i, !prof !47

.preheader:                                       ; preds = %GC_has_other_debug_info.exit, %.preheader
  %.0.in.i.i = phi ptr [ %i.an, %.preheader ], [ %i.g, %GC_has_other_debug_info.exit ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ne i64 %i.aj, %i.e
  %i.al = icmp ne ptr %.0.i.i, %i.h
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.am, label %.preheader, label %bb.g, !llvm.loop !6

bb.g:                                             ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.p
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %GC_base.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.ar = and i64 %i.d, -4096
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = icmp ult ptr %i.ap, inttoptr (i64 4096 to ptr)
  br i1 %i.at, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %GC_find_header.exit.i.i
  %.03646.i.i = phi ptr [ %i.bk, %GC_find_header.exit.i.i ], [ %i.ap, %.preheader.i.i ]
  %.03745.i.i = phi ptr [ %i.aw, %GC_find_header.exit.i.i ], [ %i.as, %.preheader.i.i ]
  %i.au = ptrtoint ptr %.03646.i.i to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [4096 x i8], ptr %.03745.i.i, i64 %i.av ; 4 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = lshr i64 %i.ax, 22                      ; 2 uses
  %i.az = and i64 %i.ay, 2047
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.az
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.0.in.i.i.i4 = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.bg, %bb.h ]
  %.0.i.i.i5 = load ptr, ptr %.0.in.i.i.i4, align 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 8208
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp ne i64 %i.bc, %i.ay
  %i.be = icmp ne ptr %.0.i.i.i5, %i.h
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 8216
  br i1 %i.bf, label %bb.h, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %bb.h
  %i.bh = lshr i64 %i.ax, 12
  %i.bi = and i64 %i.bh, 1023
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i5, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp ult ptr %i.bk, inttoptr (i64 4096 to ptr)
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %GC_find_header.exit.i.i, %.preheader.i.i
  %.038.lcssa.i.i = phi ptr [ %0, %.preheader.i.i ], [ %i.aw, %GC_find_header.exit.i.i ]
  %.037.lcssa.i.i = phi ptr [ %i.as, %.preheader.i.i ], [ %i.aw, %GC_find_header.exit.i.i ]
  %.036.lcssa.i.i = phi ptr [ %i.ap, %.preheader.i.i ], [ %i.bk, %GC_find_header.exit.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.036.lcssa.i.i, i64 25
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = and i8 %i.bn, 4
  %.not.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i, label %bb.i, label %GC_base.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bp = ptrtoint ptr %.038.lcssa.i.i to i64     ; 2 uses
  %i.bq = and i64 %i.bp, -8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = and i64 %i.bp, 4088
  %i.bt = getelementptr inbounds nuw i8, ptr %.036.lcssa.i.i, i64 32
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = urem i64 %i.bs, %i.bu
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.037.lcssa.i.i, i64 4096
  %i.ca = icmp ule ptr %i.by, %i.bz
  %i.cb = icmp ugt i64 %i.bu, 4096
  %or.cond.not.i.i = or i1 %i.cb, %i.ca
  %.not42.i.i = icmp ult ptr %0, %i.by
  %cond.i.i = and i1 %.not42.i.i, %or.cond.not.i.i
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.bx, ptr null
  br label %GC_base.exit.i

GC_base.exit.i:                                   ; preds = %bb.i, %._crit_edge.i.i, %bb.g, %GC_has_other_debug_info.exit
  %.1.i.i = phi ptr [ null, %GC_has_other_debug_info.exit ], [ null, %bb.g ], [ null, %._crit_edge.i.i ], [ %spec.select.i.i, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 4 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = lshr i64 %i.cd, 22                      ; 2 uses
  %i.cf = and i64 %i.ce, 2047
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cf
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %GC_base.exit.i
  %.0.in.i22.i = phi ptr [ %i.cg, %GC_base.exit.i ], [ %i.cm, %bb.j ]
  %.0.i23.i = load ptr, ptr %.0.in.i22.i, align 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i23.i, i64 8208
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp ne i64 %i.ci, %i.ce
  %i.ck = icmp ne ptr %.0.i23.i, %i.h
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i23.i, i64 8216
  br i1 %i.cl, label %bb.j, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.j
  %i.cn = lshr i64 %i.cd, 12
  %i.co = and i64 %i.cn, 1023
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0.i23.i, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i8, ptr %i.cr, align 8             ; 4 uses
  %i.ct = zext i8 %i.cs to i32
  %i.cu = zext i8 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @GC_describe_type_fns, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.cw, null
  br i1 %.not.i3, label %bb.n, label %bb.k

bb.k:                                             ; preds = %GC_find_header.exit.i
  %i.cx = ptrtoint ptr %.1.i.i to i64             ; 3 uses
  %i.cy = lshr i64 %i.cx, 22                      ; 2 uses
  %i.cz = and i64 %i.cy, 2047
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cz
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i24.i = phi ptr [ %i.da, %bb.k ], [ %i.dg, %bb.l ]
  %.0.i.i25.i = load ptr, ptr %.0.in.i.i24.i, align 8 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i25.i, i64 8208
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp ne i64 %i.dc, %i.cy
  %i.de = icmp ne ptr %.0.i.i25.i, %i.h
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i25.i, i64 8216
  br i1 %i.df, label %bb.l, label %GC_is_marked.exit.i, !llvm.loop !2

GC_is_marked.exit.i:                              ; preds = %bb.l
  %i.dh = lshr i64 %i.cx, 12
  %i.di = and i64 %i.dh, 1023
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i25.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = lshr i64 %i.cx, 4
  %i.dm = and i64 %i.dl, 255
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1
  %.not20.i = icmp eq i8 %i.dp, 0
  br i1 %.not20.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %GC_is_marked.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.dq, align 8
  call void %i.cw(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.a) #43, !inline_history !323
  br label %bb.o

bb.n:                                             ; preds = %GC_is_marked.exit.i, %GC_find_header.exit.i
  %i.dr = icmp ult i8 %i.cs, 4
  br i1 %i.dr, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %bb.n
  %i.ds = zext nneg i8 %i.cs to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GC_debug_print_heap_obj_proc, i64 %i.ds
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup, %bb.m
  %.0.ph.i = phi ptr [ %switch.load, %switch.lookup ], [ %i.a, %bb.m ]
  %i.dt = load ptr, ptr %.1.i.i, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8
  call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.194, ptr noundef nonnull %i.cc, ptr noundef %i.dt, i32 noundef %i.dw, i64 noundef %i.dy, ptr noundef nonnull %.0.ph.i)
  br label %GC_print_obj.exit

bb.p:                                             ; preds = %bb.n
  %i.dz = load ptr, ptr %.1.i.i, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.eg = load i64, ptr %i.ef, align 8
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.cc, ptr noundef %i.dz, i32 noundef %i.ec, i64 noundef %i.ee, i32 noundef %i.ct, i64 noundef %i.eg)
  br label %GC_print_obj.exit

GC_print_obj.exit:                                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.q

select.unfold:                                    ; preds = %bb.f, %bb.e, %GC_size.exit.i, %bb.a
  tail call void @GC_default_print_heap_obj_proc(ptr noundef %0)
  br label %bb.q

bb.q:                                             ; preds = %select.unfold, %GC_print_obj.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_default_print_heap_obj_proc(ptr noundef %0) #2 {
bb.a:
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 4 uses
  br i1 %.b.i, label %bb.b, label %GC_base.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %i.j, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, %i.b
  %i.h = icmp ne ptr %.0.i, %.pre
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.i, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.a, 12
  %i.l = and i64 %i.k, 1023
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %GC_base.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = and i64 %i.a, -4096
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = icmp ult ptr %i.n, inttoptr (i64 4096 to ptr)
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.ai, %GC_find_header.exit.i ], [ %i.n, %.preheader.i ]
  %.03745.i = phi ptr [ %i.u, %GC_find_header.exit.i ], [ %i.q, %.preheader.i ]
  %i.s = ptrtoint ptr %.03646.i to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.t ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = lshr i64 %i.v, 22                        ; 2 uses
  %i.x = and i64 %i.w, 2047
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ae, %bb.e ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ne i64 %i.aa, %i.w
  %i.ac = icmp ne ptr %.0.i.i, %.pre
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ad, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.af = lshr i64 %i.v, 12
  %i.ag = and i64 %i.af, 1023
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp ult ptr %i.ai, inttoptr (i64 4096 to ptr)
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.038.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.u, %GC_find_header.exit.i ]
  %.037.lcssa.i = phi ptr [ %i.q, %.preheader.i ], [ %i.u, %GC_find_header.exit.i ]
  %.036.lcssa.i = phi ptr [ %i.n, %.preheader.i ], [ %i.ai, %GC_find_header.exit.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 25
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 4
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.f, label %GC_base.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = ptrtoint ptr %.038.lcssa.i to i64       ; 2 uses
  %i.ao = and i64 %i.an, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = and i64 %i.an, 4088
  %i.ar = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = urem i64 %i.aq, %i.as
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 4096
  %i.ay = icmp ule ptr %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.as, 4096
  %or.cond.not.i = or i1 %i.az, %i.ay
  %.not42.i = icmp ult ptr %0, %i.aw
  %cond.i = and i1 %.not42.i, %or.cond.not.i
  %spec.select.i = select i1 %cond.i, ptr %i.av, ptr null
  br label %GC_base.exit

GC_base.exit:                                     ; preds = %bb.a, %bb.d, %._crit_edge.i, %bb.f
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %spec.select.i, %bb.f ] ; 3 uses
  %i.ba = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.bb = lshr i64 %i.ba, 22                      ; 3 uses
  %i.bc = and i64 %i.bb, 2047
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bc ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %GC_base.exit
  %.0.in.i5 = phi ptr [ %i.bd, %GC_base.exit ], [ %i.bj, %bb.g ]
  %.0.i6 = load ptr, ptr %.0.in.i5, align 8       ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8208
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ne i64 %i.bf, %i.bb
  %i.bh = icmp ne ptr %.0.i6, %.pre
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8216
  br i1 %i.bi, label %bb.g, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.g
  %i.bk = lshr i64 %i.ba, 12
  %i.bl = and i64 %i.bk, 1023                     ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i6, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i8, ptr %i.bo, align 8             ; 2 uses
  %i.bq = icmp eq ptr %.1.i, null
  br i1 %i.bq, label %GC_size.exit, label %.preheader, !prof !48

.preheader:                                       ; preds = %GC_find_header.exit, %.preheader
  %.0.in.i.i7 = phi ptr [ %i.bw, %.preheader ], [ %i.bd, %GC_find_header.exit ]
  %.0.i.i8 = load ptr, ptr %.0.in.i.i7, align 8   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 8208
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ne i64 %i.bs, %i.bb
  %i.bu = icmp ne ptr %.0.i.i8, %.pre
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 8216
  br i1 %i.bv, label %.preheader, label %GC_find_header.exit.i9, !llvm.loop !2

GC_find_header.exit.i9:                           ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i8, i64 %i.bl
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  br label %GC_size.exit

GC_size.exit:                                     ; preds = %GC_find_header.exit, %GC_find_header.exit.i9
  %.0.i10 = phi i64 [ %i.ca, %GC_find_header.exit.i9 ], [ 0, %GC_find_header.exit ]
  %i.cb = icmp eq i8 %i.bp, 0
  %i.cc = and i8 %i.bp, -2
  %i.cd = icmp eq i8 %i.cc, 2
  %i.ce = select i1 %i.cd, ptr @.str.198, ptr @.str.199
  %i.cf = select i1 %i.cb, ptr @.str.197, ptr %i.ce
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.196, ptr noundef %.1.i, i64 noundef %.0.i10, ptr noundef nonnull %i.cf)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_grow_table(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %1, align 4                ; 4 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8
  %.not53 = icmp eq ptr %i.d, null
  %i.e = zext nneg i32 %i.b to i64
  %i.f = shl nuw i64 1, %i.e                      ; 3 uses
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %i.h = icmp ult i32 %i.b, 12
  %i.i = load i32, ptr @GC_incremental, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #43 ; 0 uses
  %i.l = call fastcc i32 @GC_try_to_collect_inner(ptr noundef nonnull @GC_never_stop_func) ; 0 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = call i32 @pthread_setcancelstate(i32 noundef %i.m, ptr noundef null) #43 ; 0 uses
  %i.o = load i64, ptr %2, align 8                ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = sub i64 %i.f, %i.p
  %.not = icmp ult i64 %i.o, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = shl i64 8, %i.g                          ; 3 uses
  %i.s = icmp ult i64 %i.r, 4097
  br i1 %i.s, label %GC_generic_malloc_inner_ignore_off_page.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr @GC_all_interior_pointers, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 %i.r) ; 3 uses
  %i.w = call fastcc ptr @GC_alloc_large(i64 noundef %i.v, i32 noundef 1, i32 noundef 1) #50, !inline_history !51 ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %GC_generic_malloc_inner_ignore_off_page.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.b.i.i = load i1, ptr @GC_debugging_started, align 4
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_obj_kinds, i64 76), align 4
  %.not8.i.i = icmp ne i32 %i.x, 0
  %or.cond44.not = select i1 %.b.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond44.not, label %bb.f, label %GC_generic_malloc_inner_ignore_off_page.exit.thread63

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.v, 4095
  %i.z = and i64 %i.y, -4096
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.z, i1 false)
  br label %GC_generic_malloc_inner_ignore_off_page.exit.thread63

GC_generic_malloc_inner_ignore_off_page.exit.thread63: ; preds = %bb.f, %bb.e
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  br label %.preheader

GC_generic_malloc_inner_ignore_off_page.exit:     ; preds = %bb.c
  %i.ac = call fastcc ptr @GC_generic_malloc_inner(i64 noundef %i.r, i32 noundef 1) ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %GC_generic_malloc_inner_ignore_off_page.exit.thread, label %.preheader

.preheader:                                       ; preds = %GC_generic_malloc_inner_ignore_off_page.exit.thread63, %GC_generic_malloc_inner_ignore_off_page.exit
  %.0.i65 = phi ptr [ %i.w, %GC_generic_malloc_inner_ignore_off_page.exit.thread63 ], [ %i.ac, %GC_generic_malloc_inner_ignore_off_page.exit ] ; 4 uses
  %.b.pre = load i1, ptr @GC_manual_vdb, align 4
  %.b41.fr = freeze i1 %.b.pre                    ; 2 uses
  br i1 %.not53, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader
  %i.ae = add i32 %i.b, 4
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.g
  %i.ag = xor i64 %notmask, -1                    ; 2 uses
  br i1 %.b41.fr, label %.lr.ph48.split.us.split, label %.lr.ph48.split.split

.lr.ph48.split.us.split:                          ; preds = %.lr.ph48, %._crit_edge.split.us.us
  %.03947.us = phi i64 [ %i.bc, %._crit_edge.split.us.us ], [ 0, %.lr.ph48 ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03947.us
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not4245.us = icmp eq ptr %i.aj, null
  br i1 %.not4245.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph48.split.us.split, %.lr.ph.us
  %.03846.us.us = phi ptr [ %i.an, %.lr.ph.us ], [ %i.aj, %.lr.ph48.split.us.split ] ; 4 uses
  %i.ak = load i64, ptr %.03846.us.us, align 8
  %i.al = xor i64 %i.ak, -1                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03846.us.us, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = lshr i64 %i.al, 3
  %i.ap = lshr i64 %i.al, %i.af
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, %i.ag
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i65, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.am, align 8
  %i.au = ptrtoint ptr %.03846.us.us to i64       ; 2 uses
  %i.av = lshr i64 %i.au, 12
  %i.aw = lshr i64 %i.au, 18
  %i.ax = and i64 %i.aw, 4095
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ax
end_hunk_7
