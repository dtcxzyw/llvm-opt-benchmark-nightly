Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/phishcheck?download=true
inline.NumInlined: 73
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_url_canon:bb.a
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !47
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ew, align 1, !tbaa !49
  %i.fd = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.fe = add i64 %.068.i, -4                     ; 2 uses
  %.not.i.3 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.3, label %str_make_lowercase.exit, label %.lr.ph.i.new

str_make_lowercase.exit:                          ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.x
  store ptr %.3, ptr %4, align 8, !tbaa !37
  store i64 %i.dg, ptr %5, align 8, !tbaa !50
  store i64 %.1, ptr %7, align 8, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %str_make_lowercase.exit
  %.0134 = phi i32 [ 0, %str_make_lowercase.exit ], [ 100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @str_hex_to_char(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.not = icmp ugt ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !49
  %i.e = icmp eq i8 %i.d, 37
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1, !tbaa !49    ; 2 uses
  %i.g = icmp eq i8 %i.f, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49    ; 2 uses
  %i.j = icmp eq i8 %i.i, 48
  %or.cond.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond.i, label %hex2int.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %i.k = zext i8 %i.f to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !54
  %i.n = trunc i16 %i.m to i8
  %i.o = shl i8 %i.n, 4
  %i.p = zext i8 %i.i to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !54
  %i.s = trunc i16 %i.r to i8
  %i.t = or i8 %i.o, %i.s
  br label %hex2int.exit

hex2int.exit:                                     ; preds = %bb.c, %._crit_edge.i
  %i.u = phi i8 [ %i.t, %._crit_edge.i ], [ 1, %bb.c ]
  store i8 %i.u, ptr %i.h, align 1, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %hex2int.exit, %bb.b
  %.035 = phi ptr [ %i.h, %hex2int.exit ], [ %i.a, %bb.b ] ; 3 uses
  store ptr %.035, ptr %0, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.0 = phi ptr [ %i.b, %bb.d ], [ %.3, %._crit_edge ] ; 3 uses
  %.not4553 = icmp ugt ptr %i.v, %.0
  br i1 %.not4553, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %i.w = phi ptr [ %i.bg, %bb.i ], [ %i.v, %bb.e ] ; 2 uses
  %.156 = phi ptr [ %.3, %bb.i ], [ %.0, %bb.e ]  ; 5 uses
  %.035.pn55 = phi ptr [ %.23757, %bb.i ], [ %.035, %bb.e ] ; 4 uses
  %.03854 = phi ptr [ %.341, %bb.i ], [ null, %bb.e ] ; 5 uses
  %.23757 = getelementptr inbounds nuw i8, ptr %.035.pn55, i64 1 ; 4 uses
  %i.x = load i8, ptr %.23757, align 1, !tbaa !49
  %i.y = icmp eq i8 %i.x, 37
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.z = tail call ptr @__ctype_b_loc() #18
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.pn55, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !49  ; 3 uses
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !54
  %i.ag = and i16 %i.af, 4096
  %.not47 = icmp eq i16 %i.ag, 0
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.035.pn55, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !49  ; 3 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = and i16 %i.al, 4096
  %.not48 = icmp eq i16 %i.am, 0
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i8 %i.ac, 48
  %i.ao = icmp eq i8 %i.ai, 48
  %or.cond.i49 = and i1 %i.an, %i.ao
  br i1 %or.cond.i49, label %hex2int.exit51, label %._crit_edge.i50

._crit_edge.i50:                                  ; preds = %bb.h
  %i.ap = zext i8 %i.ac to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !54
  %i.as = trunc i16 %i.ar to i8
  %i.at = shl i8 %i.as, 4
  %i.au = zext i8 %i.ai to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !54
  %i.ax = trunc i16 %i.aw to i8
  %i.ay = or i8 %i.at, %i.ax
  br label %hex2int.exit51

hex2int.exit51:                                   ; preds = %bb.h, %._crit_edge.i50
  %i.az = phi i8 [ %i.ay, %._crit_edge.i50 ], [ 1, %bb.h ] ; 2 uses
  store i8 %i.az, ptr %.23757, align 1, !tbaa !49
  %i.ba = icmp ne i8 %i.az, 37
  %i.bb = icmp ne ptr %.03854, null
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bb
  %spec.select = select i1 %or.cond, ptr %.03854, ptr %.23757
  %i.bc = ptrtoint ptr %.156 to i64
  %i.bd = ptrtoint ptr %i.w to i64
  %reass.sub = sub i64 %i.bc, %i.bd
  %i.be = add i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.w, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %.156, i64 -2
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %hex2int.exit51, %.lr.ph
  %.341 = phi ptr [ %.03854, %.lr.ph ], [ %spec.select, %hex2int.exit51 ], [ %.03854, %bb.g ], [ %.03854, %bb.f ] ; 2 uses
  %.3 = phi ptr [ %.156, %.lr.ph ], [ %i.bf, %hex2int.exit51 ], [ %.156, %bb.g ], [ %.156, %bb.f ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.035.pn55, i64 5 ; 2 uses
  %.not45 = icmp ugt ptr %i.bg, %.3
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  %i.bh = icmp eq ptr %.341, null
  br i1 %i.bh, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.1.lcssa65 = phi ptr [ %.3, %._crit_edge ], [ %.0, %bb.e ]
  store ptr %.1.lcssa65, ptr %1, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @cli_regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @cli_regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @cli_regfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @isURL(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %in_tld_set.exit.thread, label %.preheader159

.preheader159:                                    ; preds = %bb.a, %bb.b
  %.090 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 16 uses
  %i.a = load i8, ptr %.090, align 1, !tbaa !49   ; 4 uses
  switch i8 %i.a, label %.thread [
    i8 32, label %bb.b
    i8 104, label %bb.c
    i8 102, label %bb.f
    i8 109, label %bb.g
  ]

bb.b:                                             ; preds = %.preheader159
  %i.b = getelementptr inbounds nuw i8, ptr %.090, i64 1
  br label %.preheader159

bb.c:                                             ; preds = %.preheader159
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.090, ptr noundef nonnull dereferenceable(7) @https, i64 noundef 6) #15
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.090, i64 5
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.090, ptr noundef nonnull dereferenceable(6) @http, i64 noundef 5) #15
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.090, i64 4
  br i1 %i.g, label %select.unfold, label %.thread

bb.f:                                             ; preds = %.preheader159
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.090, ptr noundef nonnull dereferenceable(5) @ftp, i64 noundef 4) #15
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.090, i64 3
  br i1 %i.j, label %select.unfold, label %.thread

bb.g:                                             ; preds = %.preheader159
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.090, ptr noundef nonnull dereferenceable(10) @mailto_proto, i64 noundef 9) #15
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.090, i64 8
  br i1 %i.m, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %bb.g, %bb.f, %bb.d
  %.082 = phi ptr [ %i.n, %bb.g ], [ %i.e, %bb.d ], [ %i.k, %bb.f ], [ %i.h, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.082, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49
  %i.q = icmp eq i8 %i.p, 47
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %select.unfold
  %i.r = getelementptr inbounds nuw i8, ptr %.082, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !49
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %in_tld_set.exit.thread, label %.thread

.thread:                                          ; preds = %.preheader159, %bb.e, %bb.g, %bb.f, %bb.h, %select.unfold
  %2 = phi i8 [ %i.a, %select.unfold ], [ %i.a, %bb.h ], [ 104, %bb.e ], [ 102, %bb.f ], [ 109, %bb.g ], [ %i.a, %.preheader159 ]
  %.082142 = phi ptr [ %.082, %select.unfold ], [ %.082, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %.preheader159 ]
  %.not98 = icmp eq i32 %1, 0                     ; 4 uses
  br i1 %.not98, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.u = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.090, i32 noundef 58) #15
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.v = phi ptr [ %i.u, %bb.i ], [ %.082142, %.thread ] ; 6 uses
  %.not.i = icmp ult ptr %.090, %i.v
  br i1 %.not.i, label %bb.k, label %validate_uri_ialpha.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.w = zext i8 %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @URI_alpha, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !49
  %.not8.i = icmp eq i8 %i.y, 0
  br i1 %.not8.i, label %validate_uri_ialpha.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.v
  br i1 %i.aa, label %.lr.ph.i.i, label %validate_uri_ialpha.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %exitcond.not.i.i, label %validate_uri_ialpha.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.06.i.i = phi ptr [ %i.ab, %bb.m ], [ %i.z, %bb.l ] ; 2 uses
  %i.ac = load i8, ptr %.06.i.i, align 1, !tbaa !49
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @URI_xalpha_nodot, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49
  %.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i, label %validate_uri_ialpha.exit.thread, label %bb.m

validate_uri_ialpha.exit:                         ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !49
  %i.ai = icmp eq i8 %i.ah, 47
  br i1 %i.ai, label %bb.n, label %validate_uri_ialpha.exit.thread

bb.n:                                             ; preds = %validate_uri_ialpha.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !49
  %i.al = icmp eq i8 %i.ak, 47
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %spec.select113 = select i1 %i.al, ptr %i.am, ptr %i.aj
  br label %validate_uri_ialpha.exit.thread

validate_uri_ialpha.exit.thread:                  ; preds = %.lr.ph.i.i, %bb.k, %bb.n, %bb.j, %validate_uri_ialpha.exit
  %.284 = phi ptr [ %spec.select113, %bb.n ], [ %i.ag, %validate_uri_ialpha.exit ], [ %.090, %bb.j ], [ %.090, %bb.k ], [ %.090, %.lr.ph.i.i ] ; 12 uses
  %.not102 = phi i1 [ false, %bb.n ], [ false, %validate_uri_ialpha.exit ], [ true, %bb.j ], [ true, %bb.k ], [ true, %.lr.ph.i.i ]
  %i.an = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.284, i32 noundef 47) #15 ; 2 uses
  %.not101 = icmp eq ptr %i.an, null
  br i1 %.not101, label %bb.o, label %bb.p

bb.o:                                             ; preds = %validate_uri_ialpha.exit.thread
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.284) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %.284, i64 %i.ao
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %validate_uri_ialpha.exit.thread
  %.078 = phi ptr [ %i.an, %validate_uri_ialpha.exit.thread ], [ %i.ap, %bb.o ] ; 6 uses
  br i1 %.not102, label %bb.q, label %.critedge115

bb.q:                                             ; preds = %bb.p
  %i.aq = ptrtoint ptr %.078 to i64
  %i.ar = ptrtoint ptr %.284 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = tail call ptr @memchr(ptr noundef nonnull %.284, i32 noundef 64, i64 noundef %i.as) #15 ; 5 uses
  %.not103 = icmp eq ptr %i.at, null
  br i1 %.not103, label %.critedge115, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.q
  %.0243 = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 3 uses
  %i.au = icmp ugt ptr %.0243, %.284
  br i1 %i.au, label %.lr.ph246, label %.critedge

.preheader:                                       ; preds = %.lr.ph246
  %.0 = getelementptr inbounds i8, ptr %.0245, i64 -1 ; 3 uses
  %i.av = icmp ugt ptr %.0, %.284
  br i1 %i.av, label %.lr.ph246, label %.critedge

.lr.ph246:                                        ; preds = %.preheader.preheader, %.preheader
  %.0245 = phi ptr [ %.0, %.preheader ], [ %.0243, %.preheader.preheader ] ; 5 uses
  %.pn244 = phi ptr [ %.0245, %.preheader ], [ %i.at, %.preheader.preheader ]
  %i.aw = load i8, ptr %.0245, align 1, !tbaa !49
  %.not104 = icmp eq i8 %i.aw, 46
  br i1 %.not104, label %.critedge, label %.preheader

.critedge:                                        ; preds = %.lr.ph246, %.preheader, %.preheader.preheader
  %.pn.lcssa = phi ptr [ %i.at, %.preheader.preheader ], [ %.pn244, %.lr.ph246 ], [ %.0245, %.preheader ] ; 3 uses
  %.0.lcssa = phi ptr [ %.0243, %.preheader.preheader ], [ %.0245, %.lr.ph246 ], [ %.0, %.preheader ] ; 2 uses
  %i.ax = icmp eq ptr %.0.lcssa, %.284
  br i1 %i.ax, label %in_tld_set.exit.thread, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %.0.lcssa to i64
  %i.ba = xor i64 %i.az, -1
  %i.bb = add i64 %i.ba, %i.ay                    ; 2 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 5 uses
  %i.bd = add i32 %i.bc, -2
  %or.cond.i = icmp ult i32 %i.bd, 17
  br i1 %or.cond.i, label %bb.s, label %in_tld_set.exit.thread

bb.s:                                             ; preds = %bb.r
  %switch.i.i = icmp samesign ult i32 %i.bc, 6
  br i1 %switch.i.i, label %tld_hash.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !49
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @tld_hash.asso_values, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !54
  %i.bj = zext i16 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bj, %i.bc
  br label %tld_hash.exit.i

tld_hash.exit.i:                                  ; preds = %bb.t, %bb.s
  %.0.i.i = phi i32 [ %i.bk, %bb.t ], [ %i.bc, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !49
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @tld_hash.asso_values, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !54
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %.0.i.i, %i.bq
  %i.bs = load i8, ptr %.pn.lcssa, align 1, !tbaa !49 ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @tld_hash.asso_values, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 50
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !54
  %i.bx = zext i16 %i.bw to i32
  %i.by = add nuw nsw i32 %i.br, %i.bx            ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, 988
  br i1 %i.bz, label %bb.u, label %in_tld_set.exit.thread

bb.u:                                             ; preds = %tld_hash.exit.i
  %i.ca = zext nneg i32 %i.by to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr @in_tld_set.lengthtable, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !49
  %i.cd = zext i8 %i.cc to i32
  %i.ce = icmp eq i32 %i.bc, %i.cd
  br i1 %i.ce, label %bb.v, label %in_tld_set.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @in_tld_set.wordlist, i64 %i.ca
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !37 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !49
  %i.ci = icmp eq i8 %i.bs, %i.ch
  br i1 %i.ci, label %bb.w, label %in_tld_set.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ck = add i64 %i.bb, 4294967295
  %i.cl = and i64 %i.ck, 4294967295
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.bl, ptr nonnull %i.cj, i64 %i.cl)
  %.not.i118 = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i118, label %.critedge115, label %in_tld_set.exit.thread

.critedge115:                                     ; preds = %bb.w, %bb.q, %bb.p
  %i.cm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.284, i32 noundef 46) #15 ; 4 uses
  %i.cn = icmp ugt ptr %i.cm, %.078
  %.not106172 = icmp eq ptr %i.cm, null
  %or.cond173 = or i1 %i.cn, %.not106172
  br i1 %or.cond173, label %in_tld_set.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge115
  br i1 %.not98, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %validate_uri_xpalphas_nodot.exit.us
  %i.co = phi ptr [ %i.cw, %validate_uri_xpalphas_nodot.exit.us ], [ %i.cm, %.lr.ph ] ; 3 uses
  %.079175.us = phi ptr [ %i.cv, %validate_uri_xpalphas_nodot.exit.us ], [ %.284, %.lr.ph ] ; 2 uses
  %i.cp = icmp ult ptr %.079175.us, %i.co
  br i1 %i.cp, label %.lr.ph.i.us, label %in_tld_set.exit.thread

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %bb.x
  %.09.i.us = phi ptr [ %i.cu, %bb.x ], [ %.079175.us, %.lr.ph.split.us ] ; 2 uses
  %i.cq = load i8, ptr %.09.i.us, align 1, !tbaa !49
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @URI_xpalpha_nodot, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !49
  %.not.i119.us = icmp eq i8 %i.ct, 0
  br i1 %.not.i119.us, label %in_tld_set.exit.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.us, i64 1 ; 2 uses
  %exitcond.not.i.us = icmp eq ptr %i.cu, %i.co
  br i1 %exitcond.not.i.us, label %validate_uri_xpalphas_nodot.exit.us, label %.lr.ph.i.us

validate_uri_xpalphas_nodot.exit.us:              ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 3 uses
  %i.cw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cv, i32 noundef 46) #15 ; 3 uses
  %i.cx = icmp ugt ptr %i.cw, %.078
  %.not106.us = icmp eq ptr %i.cw, null
  %or.cond.us = or i1 %i.cx, %.not106.us
  br i1 %or.cond.us, label %.thread149, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %in_tld_set.exit128
  %i.cy = phi ptr [ %i.et, %in_tld_set.exit128 ], [ %i.cm, %.lr.ph ] ; 5 uses
  %.079175 = phi ptr [ %i.es, %in_tld_set.exit128 ], [ %.284, %.lr.ph ] ; 6 uses
  %.085174 = phi ptr [ %.186, %in_tld_set.exit128 ], [ null, %.lr.ph ] ; 2 uses
  %i.cz = icmp ult ptr %.079175, %i.cy
  br i1 %i.cz, label %.lr.ph.i, label %in_tld_set.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph.split, %bb.y
  %.09.i = phi ptr [ %i.de, %bb.y ], [ %.079175, %.lr.ph.split ] ; 2 uses
  %i.da = load i8, ptr %.09.i, align 1, !tbaa !49
  %i.db = zext i8 %i.da to i64
end_hunk_0
