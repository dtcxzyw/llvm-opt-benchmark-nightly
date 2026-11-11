Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_bp?download=true
inline.NumInlined: 21
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.46 = private unnamed_addr constant [54 x i8] c"Conditional break %s exists at the specified location\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"Deleted breakpoint #%lu\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Failed to find breakpoint #%lu\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"Breakpoint #%d at %s:%lu, hits: %lu\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"Breakpoint #%d in %s() at %s:%u, hits: %lu\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Breakpoint #%d in #%lu at %s:%u, hits: %lu\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"Breakpoint #%d in %s::%s()#%lu at %s:%u, hits: %lu\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"Breakpoint #%d in %s()#%lu at %s:%u, hits: %lu\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"Breakpoint #%d in %s at %s:%u, hits: %lu\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"Breakpoint #%d in %s::%s() at %s:%u, hits: %lu\00", align 1
@.str.56 = private unnamed_addr constant [60 x i8] c"Conditional breakpoint #%d: at %s if %s at %s:%u, hits: %lu\00", align 1
@.str.57 = private unnamed_addr constant [62 x i8] c"Conditional breakpoint #%d: on %s == true at %s:%u, hits: %lu\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"Unknown breakpoint at %s:%u\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"------------------------------------------------\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Function Breakpoints:\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"#%d\09\09%s%s\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" [disabled]\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Method Breakpoints:\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"#%d\09\09%s::%s%s\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"File Breakpoints:\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"#%d\09\09%s:%lu%s\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Pending File Breakpoints:\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Opline Breakpoints:\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"#%d\09\09#%lu\09\09(%s breakpoint)%s\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"#%d\09\09#%lu%s\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"Method opline Breakpoints:\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"#%d\09\09%s::%s opline %lu%s\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Function opline Breakpoints:\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"#%d\09\09%s opline %lu%s\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"File opline Breakpoints:\0A\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"Conditional Breakpoints:\0A\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"#%d\09\09at %s if %s%s\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"#%d\09\09at %s#%lu if %s%s\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"#%d\09\09at %s::%s if %s%s\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"#%d\09\09at %s::%s#%lu if %s%s\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"#%d\09\09at %s:%lu if %s%s\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"#%d\09\09at #%lu if %s%s\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"Invalid parameter type for conditional breakpoint\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"#%d\09\09if %s%s\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"Opcode Breakpoints:\0A\00", align 1
@compiler_globals = external local_unnamed_addr global %struct._zend_compiler_globals, align 8
@.str.89 = private unnamed_addr constant [38 x i8] c"Invalid file for conditional break %s\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c";\00", align 1
@zend_compile_string = external local_unnamed_addr global ptr, align 8
@.str.92 = private unnamed_addr constant [28 x i8] c"Conditional Breakpoint Code\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"Conditional breakpoint #%d added %s/%p\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"Failed to compile code for expression %s\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@switch.table.phpdbg_print_breakpoints = private unnamed_addr constant [3 x ptr] [ptr @.str.70, ptr @.str.69, ptr @.str.71], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @phpdbg_reset_breakpoints() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 584), align 8, !tbaa !17 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 568), align 8, !tbaa !18
  %i.c = shl i32 %i.b, 2
  %i.d = and i32 %i.c, 16
  %narrow = sub nuw nsw i32 32, %i.d
  %i.e = zext nneg i32 %narrow to i64
  %.not27 = icmp eq i32 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 576), align 8, !tbaa !18
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.loopexit
  %.02029 = phi ptr [ %i.ao, %.loopexit ], [ %i.f, %.lr.ph30.preheader ] ; 3 uses
  %.02128 = phi i32 [ %i.ap, %.loopexit ], [ %i.a, %.lr.ph30.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.02029, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !18
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.b, !prof !19

bb.b:                                             ; preds = %.lr.ph30
  %i.j = load ptr, ptr %.02029, align 8, !tbaa !18 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = shl i32 %i.n, 2
  %i.p = and i32 %i.o, 16
  %narrow22 = sub nuw nsw i32 32, %i.p
  %i.q = zext nneg i32 %narrow22 to i64           ; 3 uses
  %.not2324 = icmp eq i32 %i.l, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 4 uses
  %xtraiter = and i32 %i.l, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !18
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.c, !prof !19

bb.c:                                             ; preds = %.lr.ph.prol
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !23
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.c, %.lr.ph.prol
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  %i.z = add nsw i32 %i.l, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.026.unr = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.01925.unr = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.aa = icmp eq i32 %i.l, 1
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.f
  %.026 = phi ptr [ %i.am, %bb.f ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01925 = phi i32 [ %i.an, %bb.f ], [ %.01925.unr, %.lr.ph.prol.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !18
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.1, label %bb.d, !prof !19

bb.d:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %.026, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !23
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.026, i64 %i.q ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !18
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %.lr.ph.1
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q
  %i.an = add i32 %.01925, -2                     ; 2 uses
  %.not23.1 = icmp eq i32 %i.an, 0
  br i1 %.not23.1, label %.loopexit, label %.lr.ph, !llvm.loop !169

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %bb.f, %bb.b, %.lr.ph30
  %i.ao = getelementptr inbounds nuw i8, ptr %.02029, i64 %i.e
  %i.ap = add i32 %.02128, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph30, !llvm.loop !170

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @phpdbg_export_breakpoints(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @phpdbg_export_breakpoints_to_string(ptr noundef nonnull %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = call i32 @fputs(ptr noundef %i.b, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @phpdbg_export_breakpoints_to_string(ptr noundef initializes((0, 8)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  store ptr @.str, ptr %0, align 8, !tbaa !25
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 588), align 4, !tbaa !26 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.d = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 2, i32 noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef %i.b) #14 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 584), align 8, !tbaa !17 ; 2 uses
  %.not103119 = icmp eq i32 %i.e, 0
  br i1 %.not103119, label %._crit_edge, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 576), align 8, !tbaa !18
  %.pre124 = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 568), align 8, !tbaa !18
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.loopexit
  %.098122.a = phi i32 [ %1, %.loopexit ], [ %.pre124, %.lr.ph123.preheader ] ; 3 uses
  %.098122 = phi i32 [ %i.fl, %.loopexit ], [ %i.e, %.lr.ph123.preheader ]
  %.099121 = phi ptr [ %.1, %.loopexit ], [ %i.f, %.lr.ph123.preheader ] ; 5 uses
  %.0100120 = phi i32 [ %.1101, %.loopexit ], [ 0, %.lr.ph123.preheader ] ; 3 uses
  %i.g = and i32 %.098122.a, 4
  %.not106 = icmp eq i32 %i.g, 0
  br i1 %.not106, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph123
  %i.h = getelementptr inbounds nuw i8, ptr %.099121, i64 16
  %i.i = zext i32 %.0100120 to i64
  %i.j = add i32 %.0100120, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph123
  %i.k = getelementptr inbounds nuw i8, ptr %.099121, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.099121, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1101 = phi i32 [ %i.j, %bb.c ], [ %.0100120, %bb.d ]
  %.1 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %.097 = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.099121, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !18
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %.099121, align 8, !tbaa !18 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18
  %i.v = shl i32 %i.u, 2
  %i.w = and i32 %i.v, 16
  %narrow = sub nuw nsw i32 32, %i.w
  %i.x = zext nneg i32 %narrow to i64
  %.not107116 = icmp eq i32 %i.s, 0
  br i1 %.not107116, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %.0118 = phi ptr [ %i.fj, %bb.an ], [ %i.z, %.lr.ph.preheader ] ; 3 uses
  %.096117 = phi i32 [ %i.fk, %bb.an ], [ %i.s, %.lr.ph.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !18
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.an, label %bb.g, !prof !19

bb.g:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %.0118, align 8, !tbaa !18 ; 35 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i64 %.097, %i.af
  br i1 %i.ag, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !34
  switch i8 %i.ai, label %bb.am [
    i8 0, label %bb.i
    i8 2, label %bb.n
    i8 4, label %bb.o
    i8 8, label %bb.p
    i8 7, label %bb.q
    i8 9, label %bb.r
    i8 6, label %bb.w
    i8 5, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #15
  %i.am = call ptr @php_addcslashes_str(ptr noundef nonnull %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.2, i64 noundef 3) #14 ; 6 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ar = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.aq) #14 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  %i.au = and i32 %i.at, 64
  %.not.i112 = icmp eq i32 %i.au, 0
  br i1 %.not.i112, label %bb.j, label %zend_string_release.exit114

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.am, align 4, !tbaa !38 ; 2 uses
  %i.aw = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.am, align 4, !tbaa !38
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %zend_string_release.exit114

bb.k:                                             ; preds = %bb.j
  %i.az = and i32 %i.at, 128
  %.not5.i113 = icmp eq i32 %i.az, 0
  br i1 %.not5.i113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.am) #14
  br label %zend_string_release.exit114

bb.m:                                             ; preds = %bb.k
  call void @_efree(ptr noundef nonnull %i.am) #14
  br label %zend_string_release.exit114

bb.n:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %0, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bd = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef %i.ba, ptr noundef %i.bc) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.o:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %0, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bi) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.p:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %0, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.br = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bq) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.q:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %0, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !47
  %i.bx = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, ptr noundef %i.bs, ptr noundef %i.bu, i64 noundef %i.bw) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.r:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) #15
  %i.cb = call ptr @php_addcslashes_str(ptr noundef nonnull %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.2, i64 noundef 3) #14 ; 6 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.cg = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef %i.cc, ptr noundef nonnull %i.cd, i64 noundef %i.cf) #14 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18 ; 2 uses
  %i.cj = and i32 %i.ci, 64
  %.not.i109 = icmp eq i32 %i.cj, 0
  br i1 %.not.i109, label %bb.s, label %zend_string_release.exit114

bb.s:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %i.cb, align 4, !tbaa !38 ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.cb, align 4, !tbaa !38
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %zend_string_release.exit114

bb.t:                                             ; preds = %bb.s
  %i.co = and i32 %i.ci, 128
  %.not5.i110 = icmp eq i32 %i.co, 0
  br i1 %.not5.i110, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.cb) #14
  br label %zend_string_release.exit114

bb.v:                                             ; preds = %bb.t
  call void @_efree(ptr noundef nonnull %i.cb) #14
  br label %zend_string_release.exit114

bb.w:                                             ; preds = %bb.h
  %i.cp = load ptr, ptr %0, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.cs = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef %i.cp, ptr noundef %i.cr) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.x:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !56, !range !57, !noundef !58
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !59
  switch i32 %i.cx, label %zend_string_release.exit114 [
    i32 7, label %bb.z
    i32 8, label %bb.aa
    i32 1, label %bb.ab
    i32 5, label %bb.ac
    i32 4, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %0, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !62
  %i.df = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, ptr noundef %i.cy, ptr noundef %i.da, i64 noundef %i.dc, ptr noundef %i.de) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.aa:                                            ; preds = %bb.y
  %i.dg = load ptr, ptr %0, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !62
  %i.dp = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10, ptr noundef %i.dg, ptr noundef %i.di, ptr noundef %i.dk, i64 noundef %i.dm, ptr noundef %i.do) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.ab:                                            ; preds = %bb.y
  %i.dq = load ptr, ptr %0, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !65
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.dv = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, ptr noundef %i.dq, i64 noundef %i.ds, ptr noundef %i.du) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.ac:                                            ; preds = %bb.y
  %i.dw = load ptr, ptr %0, align 8, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !62
  %i.eb = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12, ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef %i.ea) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.ad:                                            ; preds = %bb.y
  %i.ec = load ptr, ptr %0, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !63
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !62
  %i.ej = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13, ptr noundef %i.ec, ptr noundef %i.ee, ptr noundef %i.eg, ptr noundef %i.ei) #14 ; 0 uses
  br label %zend_string_release.exit114

bb.ae:                                            ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !66 ; 2 uses
  %i.em = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.el) #15
  %i.en = call ptr @php_addcslashes_str(ptr noundef nonnull %i.el, i64 noundef %i.em, ptr noundef nonnull @.str.2, i64 noundef 3) #14 ; 6 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !67
  %i.es = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !62
  %i.eu = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, ptr noundef %i.eo, ptr noundef nonnull %i.ep, i64 noundef %i.er, ptr noundef %i.et) #14 ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !18 ; 2 uses
  %i.ex = and i32 %i.ew, 64
  %.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i, label %bb.af, label %zend_string_release.exit114

bb.af:                                            ; preds = %bb.ae
  %i.ey = load i32, ptr %i.en, align 4, !tbaa !38 ; 2 uses
  %i.ez = icmp ne i32 %i.ey, 0
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.en, align 4, !tbaa !38
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ag, label %zend_string_release.exit114

bb.ag:                                            ; preds = %bb.af
  %i.fc = and i32 %i.ew, 128
  %.not5.i = icmp eq i32 %i.fc, 0
  br i1 %.not5.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.en) #14
  br label %zend_string_release.exit114

bb.ai:                                            ; preds = %bb.ag
  call void @_efree(ptr noundef nonnull %i.en) #14
  br label %zend_string_release.exit114

bb.aj:                                            ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %i.ff = call i32 (ptr, ptr, ...) @_phpdbg_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef nonnull %0, ptr noundef %i.fe) #14 ; 0 uses
  br label %zend_string_release.exit114

zend_string_release.exit114:                      ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.v, %bb.u, %bb.s, %bb.r, %bb.m, %bb.l, %bb.j, %bb.i, %bb.aj, %bb.y, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.q, %bb.p, %bb.o, %bb.n
  %i.fg = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !18
  %.not108 = icmp eq i8 %i.fh, 0
  br i1 %.not108, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %zend_string_release.exit114
  call void @free(ptr noundef nonnull %i.fg) #14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %zend_string_release.exit114
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !25
  store ptr %i.fi, ptr %0, align 8, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.h, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.g, %.lr.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %.0118, i64 %i.x
  %i.fk = add i32 %.096117, -1                    ; 2 uses
  %.not107 = icmp eq i32 %i.fk, 0
  br i1 %.not107, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !171

.loopexit.loopexit:                               ; preds = %bb.an
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 568), align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.e
  %1 = phi i32 [ %.pre, %.loopexit.loopexit ], [ %.098122.a, %bb.f ], [ %.098122.a, %bb.e ]
  %i.fl = add i32 %.098122, -1                    ; 2 uses
  %.not103 = icmp eq i32 %i.fl, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph123, !llvm.loop !172

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.pr = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not104 = icmp eq ptr %.pr, null
  br i1 %.not104, label %bb.ap, label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge
  %i.fm = phi ptr [ %.pr, %._crit_edge ], [ @.str, %bb.a ]
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !18
  %.not105 = icmp eq i8 %i.fn, 0
  br i1 %.not105, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @php_addcslashes_str(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @_phpdbg_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @phpdbg_set_breakpoint_file(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._php_stream_statbuf, align 8 ; 4 uses
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %.sroa.10 = alloca [3 x i8], align 1            ; 4 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 4 uses
  %7 = alloca %struct._zend_array, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @tsrm_realpath(ptr noundef %0, ptr noundef nonnull %i.a) #14
  %.not58 = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not58, ptr %0, ptr %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.053 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 6 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.053) #15 ; 3 uses
  %i.d = call ptr @zend_hash_str_find(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1424), ptr noundef nonnull %.053, i64 noundef %i.c) #14
  %.not104 = icmp eq ptr %i.d, null
  br i1 %.not104, label %bb.d, label %zend_string_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @_php_stream_stat_path(ptr noundef nonnull %.053, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #14
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %0, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.j = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #14 ; 0 uses
  br label %zend_string_release.exit

bb.g:                                             ; preds = %bb.e
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %zend_string_alloc.exit

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !177
  %i.n = and i32 %i.m, 40960
  %.not59 = icmp eq i32 %i.n, 0
  br i1 %.not59, label %bb.i, label %zend_string_alloc.exit

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.p = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull %.053) #14 ; 0 uses
  br label %zend_string_release.exit

zend_string_alloc.exit:                           ; preds = %bb.c, %bb.h, %bb.g
  %.055 = phi i64 [ %i.c, %bb.c ], [ %i.k, %bb.g ], [ %i.c, %bb.h ] ; 5 uses
  %.154 = phi ptr [ %.053, %bb.c ], [ %0, %bb.g ], [ %.053, %bb.h ] ; 3 uses
  %.051 = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.h ]
  %.049 = phi ptr [ @phpdbg_globals, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 56), %bb.g ], [ @phpdbg_globals, %bb.h ] ; 3 uses
  %i.q = and i64 %.055, -8
  %i.r = add i64 %i.q, 32
  %i.s = call noalias ptr @_emalloc(i64 noundef %i.r) #16 ; 12 uses
  store i32 1, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i32 22, ptr %i.t, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !178
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.055, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 1 %.154, i64 %.055, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.055
  store i8 0, ptr %i.x, align 1, !tbaa !18
  %i.y = call ptr @zend_hash_find(ptr noundef nonnull %.049, ptr noundef nonnull %i.s) #14 ; 2 uses
  %.not.i63 = icmp eq ptr %i.y, null
  br i1 %.not.i63, label %bb.j, label %zend_hash_find_ptr.exit

zend_hash_find_ptr.exit:                          ; preds = %zend_string_alloc.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18, !nonnull !58, !noundef !58
  br label %bb.o

bb.j:                                             ; preds = %zend_string_alloc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_zend_hash_init(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull @phpdbg_file_breaks_dtor, i1 noundef zeroext false) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.aa, align 8, !tbaa !18
  %i.ab = call ptr @zend_hash_add(ptr noundef nonnull %.049, ptr noundef nonnull %i.s, ptr noundef nonnull %5) #14 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ab, null
  br i1 %.not.i64, label %zend_hash_add_mem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = and i32 %i.ad, 128
  %.not46.i = icmp eq i32 %i.ae, 0
  br i1 %.not46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = call noalias ptr @_emalloc_56() #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = phi ptr [ %i.af, %bb.l ], [ %i.ag, %bb.m ] ; 3 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %zend_hash_add_mem.exit

zend_hash_add_mem.exit:                           ; preds = %bb.j, %bb.n
  %.0.i65 = phi ptr [ %i.ah, %bb.n ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.o

bb.o:                                             ; preds = %zend_hash_find_ptr.exit, %zend_hash_add_mem.exit
  %.050 = phi ptr [ %i.z, %zend_hash_find_ptr.exit ], [ %.0.i65, %zend_hash_add_mem.exit ] ; 5 uses
  %i.ai = call ptr @zend_hash_index_find(ptr noundef %.050, i64 noundef %2) #14
  %.not105 = icmp eq ptr %i.ai, null
  br i1 %.not105, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i8 0, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i8 0, i64 7, i1 false)
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1384), align 8, !tbaa !91 ; 5 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1384), align 8, !tbaa !91
  %i.al = call noalias ptr @_estrndup(ptr noundef nonnull %.154, i64 noundef %.055) #14 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = and i32 %i.an, 128
  %.not.i66 = icmp eq i32 %i.ao, 0
  br i1 %.not.i66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = call noalias dereferenceable_or_null(40) ptr @__zend_malloc(i64 noundef 40) #16
  br label %zend_hash_index_update_mem.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = call noalias ptr @_emalloc_40() #14
  br label %zend_hash_index_update_mem.exit

zend_hash_index_update_mem.exit:                  ; preds = %bb.q, %bb.r
  %i.ar = phi ptr [ %i.ap, %bb.q ], [ %i.aq, %bb.r ] ; 9 uses
  store i32 %i.aj, ptr %i.ar, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i64 3, i1 false)
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 0, ptr %.sroa.1073.0..sroa_idx, align 1
end_hunk_0
