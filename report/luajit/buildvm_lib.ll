Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/buildvm_lib?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@emit_lib:bb.a
  %.not = icmp eq ptr %i.cz, null
  br i1 %.not, label %._crit_edge166, label %bb.f, !llvm.loop !29

._crit_edge166:                                   ; preds = %bb.ah, %.thread
  %i.da = load i32, ptr %i.b, align 8, !tbaa !19
  switch i32 %i.da, label %bb.am [
    i32 6, label %bb.ai
    i32 9, label %bb.aj
    i32 5, label %bb.ak
    i32 8, label %bb.al
  ]

bb.ai:                                            ; preds = %._crit_edge166
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !20
  %fwrite126 = call i64 @fwrite(ptr nonnull @.str.11, i64 15, i64 1, ptr %i.dc) ; 0 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !20
  %i.de = load i32, ptr @ffasmfunc, align 4, !tbaa !21
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.12, i32 noundef %i.de) #13 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %._crit_edge166
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !20
  %fwrite125 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %i.dh) ; 0 uses
  br label %bb.am

bb.ak:                                            ; preds = %._crit_edge166
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !20
  %fwrite120 = call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr %i.dj) ; 0 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !20
  %fwrite121 = call i64 @fwrite(ptr nonnull @.str.15, i64 43, i64 1, ptr %i.dk) ; 0 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !20
  %fwrite122 = call i64 @fwrite(ptr nonnull @.str.16, i64 14, i64 1, ptr %i.dl) ; 0 uses
  %i.dm = load i32, ptr @ffasmfunc, align 4, !tbaa !21 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %bb.ak, %.lr.ph174
  %.097.in172 = phi i32 [ %.097, %.lr.ph174 ], [ %i.dm, %bb.ak ] ; 2 uses
  %.097 = add nsw i32 %.097.in172, -1
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !20
  %fwrite124 = call i64 @fwrite(ptr nonnull @.str.17, i64 11, i64 1, ptr %i.do) ; 0 uses
  %i.dp = icmp samesign ugt i32 %.097.in172, 2
  br i1 %i.dp, label %.lr.ph174, label %._crit_edge175, !llvm.loop !30

._crit_edge175:                                   ; preds = %.lr.ph174, %bb.ak
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !20
  %fwrite123 = call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %i.dq) ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge166
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !20
  %fwrite116 = call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !20
  %fwrite117 = call i64 @fwrite(ptr nonnull @.str.19, i64 59, i64 1, ptr %i.dt) ; 0 uses
  %i.du = load i8, ptr @obuf, align 16, !tbaa !23
  %.not118167 = icmp eq i8 %i.du, 0
  br i1 %.not118167, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.al, %.lr.ph170
  %.0168 = phi ptr [ %i.dz, %.lr.ph170 ], [ @obuf, %bb.al ] ; 3 uses
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !20
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.20, ptr noundef nonnull %.0168) #13 ; 0 uses
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0168) #17
  %i.dy = getelementptr i8, ptr %.0168, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 1      ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %.not118 = icmp eq i8 %i.ea, 0
  br i1 %.not118, label %._crit_edge171, label %.lr.ph170, !llvm.loop !31

._crit_edge171:                                   ; preds = %.lr.ph170, %bb.al
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !20
  %fwrite119 = call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr %i.eb) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge166, %bb.aj, %._crit_edge171, %._crit_edge175, %bb.ai
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @libdef_endmodule(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 7 uses
  %i.b = load i32, ptr @modstate, align 4, !tbaa !21 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.69, i64 18, i64 1, ptr %i.e) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @modname) #13 ; 0 uses
  store i8 0, ptr %i.a, align 16, !tbaa !23
  %i.j = load ptr, ptr @optr, align 8, !tbaa !22
  %i.k = icmp ugt ptr %i.j, @obuf
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.014 = phi i32 [ %.1, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.01013 = phi ptr [ %i.u, %bb.f ], [ @obuf, %bb.d ] ; 2 uses
  %i.l = sext i32 %.014 to i64
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  %i.n = load i8, ptr %.01013, align 1, !tbaa !23
  %i.o = zext i8 %i.n to i32
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %i.o) #13
  %i.q = add nsw i32 %i.p, %.014                  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 74
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.a) #13 ; 0 uses
  store i8 0, ptr %i.a, align 16, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ %i.q, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.01013, i64 1 ; 2 uses
  %i.v = load ptr, ptr @optr, align 8, !tbaa !22
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a, i32 noundef 255) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @libdef_module(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @libdef_endmodule(ptr noundef nonnull %0)
  %i.d = load i32, ptr @ffid, align 4, !tbaa !21
  %3 = trunc i32 %i.d to i8
  store i8 %3, ptr @obuf, align 16, !tbaa !23
  %i.e = load i32, ptr @ffasmfunc, align 4, !tbaa !21
  %4 = trunc i32 %i.e to i8
  store i8 %4, ptr getelementptr inbounds nuw (i8, ptr @obuf, i64 1), align 1, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @obuf, i64 3), ptr @optr, align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @obuf, i64 2), align 2, !tbaa !23
  store i32 1, ptr @modstate, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.9, ptr noundef %1) #13 ; 0 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.9, ptr noundef %1) #13 ; 0 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef %1) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 2 uses
  store i64 %i.m, ptr @modnamelen, align 8, !tbaa !26
  %i.n = icmp ugt i64 %i.m, 79
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @modname, ptr noundef nonnull dereferenceable(1) %1) #13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @libdef_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #7 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @ffasmfunc, align 4, !tbaa !21
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @ffasmfunc, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  switch i32 %i.e, label %bb.x [
    i32 7, label %bb.d
    i32 6, label %bb.q
    i32 8, label %bb.r
    i32 9, label %.preheader
  ]

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23    ; 2 uses
  %.not43 = icmp eq i8 %i.g, 0
  br i1 %.not43, label %.critedge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @modstate, align 4, !tbaa !21 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.39, ptr noundef %1) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr @regfunc, align 4, !tbaa !21 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @optr, align 8, !tbaa !22  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.p = icmp ugt ptr %i.o, getelementptr inbounds nuw (i8, ptr @obuf, i64 8192)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite41 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 30, i64 1, ptr %i.q) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.o, ptr @optr, align 8, !tbaa !22
  store i8 -2, ptr %i.n, align 1, !tbaa !23
  br label %bb.ae

bb.j:                                             ; preds = %bb.f
  %.not38 = icmp eq i32 %2, 128
  br i1 %.not38, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not39 = icmp eq i32 %i.h, 1
  br i1 %.not39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %i.s) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 2, ptr @modstate, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = select i1 %i.a, ptr @.str.43, ptr @.str.44
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.v, ptr noundef %1) #13 ; 0 uses
  %.pr = load i32, ptr @regfunc, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.x = phi i32 [ %.pr, %bb.m ], [ %i.l, %bb.j ]
  %.not40 = icmp eq i32 %i.x, 2
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @obuf, i64 2), align 2, !tbaa !23
  %i.z = add i8 %i.y, 1
  store i8 %i.z, ptr getelementptr inbounds nuw (i8, ptr @obuf, i64 2), align 2, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aa = phi ptr [ %1, %bb.o ], [ @.str.45, %bb.n ]
  tail call fastcc void @libdef_name(ptr noundef %i.aa, i32 noundef %2)
  br label %bb.ae

bb.q:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.46, ptr noundef %1) #13 ; 0 uses
  br label %bb.ae

bb.r:                                             ; preds = %bb.c
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.af = icmp ugt i64 %i.ae, 79
  br i1 %i.af, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ai = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @funcname, ptr noundef nonnull dereferenceable(1) %1) #13 ; 0 uses
  br label %bb.ae

.lr.ph:                                           ; preds = %.preheader, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %.preheader ] ; 2 uses
  %i.aj = phi i8 [ %i.aq, %bb.w ], [ %i.g, %.preheader ]
  %i.ak = phi ptr [ %i.ap, %bb.w ], [ %i.f, %.preheader ]
  %i.al = getelementptr i8, ptr @modname, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %.not37 = icmp eq i8 %i.an, 0
  br i1 %.not37, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.ao = icmp eq i8 %i.aj, 95
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 46, ptr %i.ak, align 1, !tbaa !23
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23  ; 2 uses
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !38

.critedge:                                        ; preds = %.lr.ph, %bb.w, %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.48, ptr noundef nonnull %1) #13 ; 0 uses
  br label %bb.ae

bb.x:                                             ; preds = %bb.c
  %i.au = icmp eq i32 %i.e, 5
  %or.cond = and i1 %i.a, %i.au
  br i1 %or.cond, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  br label %bb.z

end_hunk_0
