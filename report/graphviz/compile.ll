Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/compile?download=true
inline.NumInlined: 262
inline.NumDeleted: 34
begin_hunk_0_@compileProg:bb.a
  br i1 %.not.i5.i73.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %agxbsizeof.exit.i.i70.i
  call fastcc void @agxbmore(ptr noundef nonnull %5, i64 noundef 1)
  %.val.i15.pre.i.i74.i = load i8, ptr %i.bc, align 1, !tbaa !39
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %agxbsizeof.exit.i.i70.i
  %.val.i6.pr.i80.i = phi i8 [ %.val.i15.pre.i.i74.i, %bb.ae ], [ %.val.i68.i, %agxbsizeof.exit.i.i70.i ] ; 2 uses
  %.not.i16.i.i76.i = icmp eq i8 %.val.i6.pr.i80.i, -1
  br i1 %.not.i16.i.i76.i, label %agxbputc.exit.i77.thread.i, label %agxbputc.exit.i77.i

agxbputc.exit.i77.thread.i:                       ; preds = %bb.af
  %i.dj = load i64, ptr %i.bd, align 8, !tbaa !39
  %i.dk = load ptr, ptr %5, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !39
  br label %bb.ag

agxbputc.exit.i77.i:                              ; preds = %bb.af
  %i.dm = zext i8 %.val.i6.pr.i80.i to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !39
  %i.do = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.dp = add i8 %i.do, 1                         ; 2 uses
  store i8 %i.dp, ptr %i.bc, align 1, !tbaa !39
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.ag, label %agxbclear.exit.thread.i69.i

agxbclear.exit.thread.i69.i:                      ; preds = %agxbputc.exit.i77.i, %bb.ac
  store i8 0, ptr %i.bc, align 1, !tbaa !39
  br label %agxbuse.exit82.i

bb.ag:                                            ; preds = %agxbputc.exit.i77.i, %agxbputc.exit.i77.thread.i
  store i64 0, ptr %i.bd, align 8, !tbaa !39
  %i.dr = load ptr, ptr %5, align 8, !tbaa !39
  br label %agxbuse.exit82.i

agxbuse.exit82.i:                                 ; preds = %bb.ag, %agxbclear.exit.thread.i69.i
  %i.ds = phi ptr [ %i.dr, %bb.ag ], [ %5, %agxbclear.exit.thread.i69.i ]
  %i.dt = call fastcc ptr @mkStmts(ptr noundef nonnull %i.ab, ptr noundef %i.bk, ptr noundef nonnull byval(%struct.case_infos_t) align 8 %i.dc, ptr noundef %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %.056100, i64 40
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !48
  %.val47.i = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.dv = icmp eq i8 %.val47.i, -1
  br i1 %i.dv, label %bb.ah, label %agxbfree.exit83.i

bb.ah:                                            ; preds = %agxbuse.exit82.i
  %.val46.i = load ptr, ptr %5, align 8
  call void @free(ptr noundef %.val46.i) #22
  br label %agxbfree.exit83.i

agxbfree.exit83.i:                                ; preds = %bb.ah, %agxbuse.exit82.i
  %i.dw = call i32 @getErrorErrors() #22
  %.not40.i = icmp eq i32 %i.dw, 0
  br i1 %.not40.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %agxbfree.exit83.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.056100, i64 8
  store i8 1, ptr %i.dx, align 8, !tbaa !110
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %agxbfree.exit83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ab, %bb.aa, %agxbfree.exit.i
  %.236.i = phi i1 [ %.not.i82, %bb.ab ], [ false, %agxbfree.exit.i ], [ %.not.i82, %bb.aj ], [ %.not.i82, %bb.aa ]
  %i.dy = call i32 @getErrorErrors() #22
  %.not41.i = icmp eq i32 %i.dy, 0
  br i1 %.not41.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.056100, i64 32 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47
  call void @free(ptr noundef %i.ea) #22
  %i.eb = getelementptr inbounds nuw i8, ptr %.056100, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !48
  call void @free(ptr noundef %i.ec) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.236.i, label %mkBlock.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %.056100, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !110, !range !112, !noundef !113
  br label %mkBlock.exit

mkBlock.exit:                                     ; preds = %bb.am, %bb.an
  %.037.i = phi i8 [ %i.ee, %bb.an ], [ 1, %bb.am ]
  %i.ef = call i32 @getErrorErrors() #22
  %.not70 = icmp eq i32 %i.ef, 0
  br i1 %.not70, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %mkBlock.exit
  %i.eg = or i8 %.037.i, %.05899                  ; 2 uses
  %i.eh = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.eh, ptr %i.bf, align 8, !tbaa !49
  %i.ei = getelementptr inbounds nuw i8, ptr %.056100, i64 48
  %i.ej = add nuw i64 %.055102, 1                 ; 2 uses
  %.val = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ek = icmp ult i64 %i.ej, %.val
  br i1 %i.ek, label %bb.k, label %.thread92, !llvm.loop !78

.thread92:                                        ; preds = %bb.ao, %bb.f
  %i.el = phi ptr [ null, %bb.f ], [ %i.aq, %bb.ao ] ; 5 uses
  %i.em = phi i64 [ 0, %bb.f ], [ %i.eh, %bb.ao ] ; 5 uses
  %.2 = phi i8 [ 0, %bb.f ], [ %i.eg, %bb.ao ]
  store i8 %.2, ptr %i.a, align 8, !tbaa !114
  store i32 4, ptr @codePhase, align 4, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !115 ; 2 uses
  %i.ep = icmp ne ptr %i.eo, null
  %or.cond = select i1 %i.ep, i1 true, i1 %or.cond78
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread92
  store i64 29, ptr getelementptr inbounds nuw (i8, ptr @symbols, i64 32), align 16, !tbaa !43
  store i16 64, ptr getelementptr inbounds nuw (i8, ptr @tchk, i64 6), align 2, !tbaa !45
  %i.eq = load ptr, ptr %0, align 8, !tbaa !103
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = load i32, ptr %i.er, align 8, !tbaa !116
  %i.et = call fastcc ptr @compile(ptr noundef nonnull %i.ab, ptr noundef %i.eq, ptr noundef %i.eo, i32 noundef %i.es, ptr noundef nonnull @.str.1, ptr noundef %.060, i32 noundef 264)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !117
  %i.ev = call i32 @getErrorErrors() #22
  %.not71 = icmp eq i32 %i.ev, 0
  br i1 %.not71, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap, %.thread92
  store i32 5, ptr @codePhase, align 4, !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !118 ; 2 uses
  %.not72 = icmp eq ptr %i.ex, null
  br i1 %.not72, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  call void @setErrorLine(i32 noundef 0) #22
  br label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @symbols, i64 32), align 16, !tbaa !43
  %i.ey = load ptr, ptr %0, align 8, !tbaa !103
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !119
  %i.fb = call fastcc ptr @compile(ptr noundef nonnull %i.ab, ptr noundef %i.ey, ptr noundef nonnull %i.ex, i32 noundef %i.fa, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 264) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !120
  %i.fd = call i32 @getErrorErrors() #22
  %.not73 = icmp eq i32 %i.fd, 0
  br i1 %.not73, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  call void @setErrorLine(i32 noundef 0) #22
  %.not74 = icmp eq ptr %i.fb, null
  br i1 %.not74, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.a, align 8, !tbaa !114
  br label %.loopexit

.loopexit:                                        ; preds = %mkBlock.exit, %.thread, %initDisc.exit.thread, %bb.as, %bb.at, %bb.ar, %bb.ap, %bb.e, %bb.c
  %i.fe = phi ptr [ %i.el, %.thread ], [ null, %initDisc.exit.thread ], [ %i.el, %bb.as ], [ %i.el, %bb.at ], [ %i.el, %bb.ar ], [ %i.el, %bb.ap ], [ null, %bb.e ], [ null, %bb.c ], [ %i.aq, %mkBlock.exit ] ; 2 uses
  %i.ff = phi i64 [ %i.em, %.thread ], [ 0, %initDisc.exit.thread ], [ %i.em, %bb.as ], [ %i.em, %bb.at ], [ %i.em, %bb.ar ], [ %i.em, %bb.ap ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.bg, %mkBlock.exit ] ; 2 uses
  %i.fg = phi ptr [ %i.ab, %.thread ], [ null, %initDisc.exit.thread ], [ %i.ab, %bb.as ], [ %i.ab, %bb.at ], [ %i.ab, %bb.ar ], [ %i.ab, %bb.ap ], [ %i.ab, %bb.e ], [ null, %bb.c ], [ %i.ab, %mkBlock.exit ]
  %i.fh = call i32 @getErrorErrors() #22
  %.not75 = icmp eq i32 %i.fh, 0
  br i1 %.not75, label %freeCompileProg.exit, label %bb.au

.thread94:                                        ; preds = %bb.a
  tail call void (i32, ptr, ...) @error(i32 noundef 2, ptr noundef nonnull @.str) #22
  %i.fi = tail call i32 @getErrorErrors() #22     ; 0 uses
  br label %freeCompileProg.exit

bb.au:                                            ; preds = %.loopexit
  call void @exclose(ptr noundef %i.fg) #22
  %.not12.i = icmp eq i64 %i.ff, 0
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.au
  call void @free(ptr noundef %i.fe) #22
  call void @free(ptr noundef nonnull %i.a) #22
  br label %freeCompileProg.exit

.lr.ph.i:                                         ; preds = %bb.au, %.lr.ph.i
  %.011.i = phi i64 [ %i.fo, %.lr.ph.i ], [ 0, %bb.au ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [48 x i8], ptr %i.fe, i64 %.011.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !47
  call void @free(ptr noundef %i.fl) #22
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !48
  call void @free(ptr noundef %i.fn) #22
  %i.fo = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.ff
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

freeCompileProg.exit:                             ; preds = %.thread94, %.loopexit, %._crit_edge.i
  %.061 = phi ptr [ %i.a, %.loopexit ], [ null, %.thread94 ], [ null, %._crit_edge.i ]
  ret ptr %.061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @error(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @exinit() local_unnamed_addr #3

declare ptr @exopen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compile(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 259, 265) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.agxbuf, align 8             ; 12 uses
  %i.a = tail call noalias ptr @tmpfile()         ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25 = icmp eq ptr %5, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rewind(ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %.not26 = icmp eq ptr %4, null
  br i1 %.not26, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %.not2729 = icmp eq ptr %1, null
  %spec.store.select30 = select i1 %.not2729, ptr @.str.189, ptr %1
  br label %agxbdisown.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %7, ptr noundef nonnull @.str.188, ptr noundef nonnull %4)
  %i.d = add nsw i32 %3, -1                       ; 3 uses
  %.not27 = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not27, ptr @.str.189, ptr %1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 31 ; 2 uses
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit.i.i, label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.f
  %i.f = zext i8 %.val.i to i64                   ; 2 uses
  %i.g = call noalias ptr @strndup(ptr noundef nonnull readonly %7, i64 noundef %i.f) #22 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %agxbdisown.exit

bb.g:                                             ; preds = %agxblen.exit.i
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.46, i64 noundef %i.j) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

agxbsizeof.exit.i.i:                              ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %.not.i7.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i7.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %agxbsizeof.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %7, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.e, align 1, !tbaa !39 ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i15.pre.i.i, -1
  br i1 %.not.i16.i.i, label %..thread_crit_edge.i, label %bb.i

..thread_crit_edge.i:                             ; preds = %bb.h
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !39
  br label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.p = zext i8 %.val.i15.pre.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !39
  %.pre = load ptr, ptr %7, align 8, !tbaa !39
  br label %agxbdisown.exit

.thread.i:                                        ; preds = %..thread_crit_edge.i, %agxbsizeof.exit.i.i
  %i.r = phi i64 [ %.pre.i, %..thread_crit_edge.i ], [ %i.m, %agxbsizeof.exit.i.i ]
  %i.s = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !39
  br label %agxbdisown.exit

agxbdisown.exit:                                  ; preds = %agxblen.exit.i, %.thread.i, %bb.i, %.thread
  %spec.store.select32 = phi ptr [ %spec.store.select30, %.thread ], [ %spec.store.select, %bb.i ], [ %spec.store.select, %.thread.i ], [ %spec.store.select, %agxblen.exit.i ]
  %.02131 = phi i32 [ %3, %.thread ], [ %i.d, %bb.i ], [ %i.d, %.thread.i ], [ %i.d, %agxblen.exit.i ]
  %i.u = phi ptr [ null, %.thread ], [ %.pre, %bb.i ], [ %i.s, %.thread.i ], [ %i.g, %agxblen.exit.i ]
  %i.v = tail call i32 @excomp(ptr noundef %0, ptr noundef nonnull %spec.store.select32, i32 noundef %.02131, ptr noundef %i.a, ptr noundef %i.u) #22
  %i.w = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  %i.x = icmp sgt i32 %i.v, -1
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %agxbdisown.exit
  %i.y = tail call i32 @getErrorErrors() #22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @exexpr(ptr noundef %0, ptr noundef %4, ptr noundef null, i32 noundef %6) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %agxbdisown.exit
  %.0 = phi ptr [ %i.aa, %bb.k ], [ null, %bb.j ], [ null, %agxbdisown.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %.0
}

declare i32 @getErrorErrors() local_unnamed_addr #3

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @setErrorLine(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @freeCompileProg(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @exclose(ptr noundef %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.g) #22
  tail call void @free(ptr noundef nonnull %0) #22
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.011 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.k) #22
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.m) #22
  %i.n = add nuw i64 %.011, 1                     ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !49
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %._crit_edge, !llvm.loop !0

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @exclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @readG(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agread(ptr noundef %0, ptr noundef null) #22 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @aginit(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 24, i32 noundef 0) #22
  tail call void @aginit(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 32, i32 noundef 0) #22
  tail call void @aginit(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef 0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
end_hunk_0
