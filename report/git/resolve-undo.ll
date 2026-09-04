Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/resolve-undo?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@record_resolve_undo:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @resolve_undo_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !38
  %i.g = load i64, ptr %i.b, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = icmp ult ptr %i.a, %i.h
  br i1 %i.i, label %.lr.ph37, label %.critedge

.lr.ph37:                                         ; preds = %.lr.ph, %.loopexit
  %.0233036 = phi ptr [ %i.aj, %.loopexit ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0233036, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 8 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph37
  %i.l = load ptr, ptr %.0233036, align 8, !tbaa !40 ; 2 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #8
  tail call void @strbuf_add(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %i.m) #7
  %i.n = load i64, ptr %0, align 8, !tbaa !47     ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.neg.i = add i64 %i.o, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.n, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.b
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #7
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.p = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.o, %strbuf_avail.exit.i ]
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !49
  store i64 %.pre-phi.i, ptr %i.c, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !41
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.t = load i64, ptr %i.c, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !41
  %i.v = load i32, ptr %i.k, align 4, !tbaa !12
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.v, i32 noundef 0) #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.x, i32 noundef 0) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.z, i32 noundef 0) #7
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !12
  %.not26 = icmp eq i32 %i.aa, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %strbuf_addch.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !45
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, i64 noundef %i.ac) #7
  br label %bb.d

bb.d:                                             ; preds = %strbuf_addch.exit, %bb.c
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !12
  %.not26.1 = icmp eq i32 %i.ad, 0
  br i1 %.not26.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.af = load i64, ptr %i.e, align 8, !tbaa !45
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i64 noundef %i.af) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !12
  %.not26.2 = icmp eq i32 %i.ag, 0
  br i1 %.not26.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !45
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %.lr.ph37
  %i.aj = getelementptr inbounds nuw i8, ptr %.0233036, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !38
  %i.al = load i64, ptr %i.b, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp ult ptr %i.aj, %i.am
  br i1 %i.an, label %.lr.ph37, label %.critedge

.critedge:                                        ; preds = %.loopexit, %.lr.ph, %bb.a
  ret void
}

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @resolve_undo_read(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #7 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  %.not82 = icmp eq i64 %1, 0
  br i1 %.not82, label %.loopexit69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = and i64 %i.c, 4294967295                 ; 18 uses
  %.not.i.i = icmp eq ptr %2, @hash_algos
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.not.2.i.i = icmp eq ptr %2, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i = select i1 %.not.2.i.i, i32 2, i32 0 ; 3 uses
  %.not.1.i.i = icmp eq ptr %2, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112) ; 3 uses
  %spec.select = select i1 %.not.1.i.i, i32 1, i32 %spec.select.i.i
  %spec.select.1 = select i1 %.not.1.i.i, i32 1, i32 %spec.select.i.i
  %spec.select.2 = select i1 %.not.1.i.i, i32 1, i32 %spec.select.i.i
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.split.us.us
  %.04784.us = phi i64 [ %.3.us.us.2, %.loopexit.split.us.us ], [ %1, %.lr.ph ] ; 2 uses
  %.04983.us = phi ptr [ %.352.us.us.2, %.loopexit.split.us.us ], [ %0, %.lr.ph ] ; 3 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.04983.us) #8
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %.not58.us = icmp ugt i64 %.04784.us, %i.j
  br i1 %.not58.us, label %bb.b, label %.loopexit67

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = call ptr @string_list_insert(ptr noundef %i.d, ptr noundef nonnull %.04983.us) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %.not59.us = icmp eq ptr %i.m, null
  br i1 %.not59.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = call ptr @xcalloc(i64 noundef 1, i64 noundef 120) #7 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 10 uses
  %i.p = sub nuw i64 %.04784.us, %i.j             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04983.us, i64 %i.j ; 4 uses
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.o, align 4, !tbaa !12
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %.not61.us = icmp eq ptr %i.t, null
  %i.u = icmp eq ptr %i.t, %i.q
  %or.cond.us = or i1 %.not61.us, %i.u
  br i1 %or.cond.us, label %.loopexit67, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.t, align 1, !tbaa !41
  %.not62.us = icmp eq i8 %i.v, 0
  br i1 %.not62.us, label %bb.f, label %.loopexit67

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %.not63.us = icmp ugt i64 %i.p, %i.z
  br i1 %.not63.us, label %bb.g, label %.loopexit67

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw i64 %i.p, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z ; 2 uses
  %i.ac = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %.not61.us.1 = icmp eq ptr %i.af, null
  %i.ag = icmp eq ptr %i.af, %i.w
  %or.cond.us.1 = or i1 %.not61.us.1, %i.ag
  br i1 %or.cond.us.1, label %.loopexit67, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !41
  %.not62.us.1 = icmp eq i8 %i.ah, 0
  br i1 %.not62.us.1, label %bb.i, label %.loopexit67

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.x                     ; 3 uses
  %.not63.us.1 = icmp ugt i64 %i.aa, %i.ak
  br i1 %.not63.us.1, label %bb.j, label %.loopexit67

bb.j:                                             ; preds = %bb.i
  %i.al = sub nuw i64 %i.aa, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ak ; 4 uses
  %i.an = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.am, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !12
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %.not61.us.2 = icmp eq ptr %i.aq, null
  %i.ar = icmp eq ptr %i.aq, %i.am
  %or.cond.us.2 = or i1 %.not61.us.2, %i.ar
  br i1 %or.cond.us.2, label %.loopexit67, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !41
  %.not62.us.2 = icmp eq i8 %i.as, 0
  br i1 %.not62.us.2, label %bb.l, label %.loopexit67

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %.not63.us.2 = icmp ugt i64 %i.al, %i.aw
  br i1 %.not63.us.2, label %.preheader.us, label %.loopexit67

.preheader.us:                                    ; preds = %bb.l
  %i.ax = sub nuw i64 %i.al, %i.aw                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.o, align 4, !tbaa !12
  %.not60.us.us = icmp eq i32 %i.ba, 0
  br i1 %.not60.us.us, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.preheader.us
  %i.bb = icmp ult i64 %i.ax, %i.h
  br i1 %i.bb, label %.loopexit67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull readonly align 1 %i.ay, i64 %i.bc, i1 false)
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.be = icmp ult i64 %i.bd, 32
  br i1 %i.be, label %bb.o, label %oidread.exit.us.us

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd
  %i.bg = sub nuw nsw i64 32, %i.bd
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bf, i8 0, i64 %i.bg, i1 false)
  br label %oidread.exit.us.us

oidread.exit.us.us:                               ; preds = %bb.o, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 0, ptr %i.bh, align 4, !tbaa !34
  %i.bi = sub nuw i64 %i.ax, %i.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.h
  br label %bb.p

bb.p:                                             ; preds = %oidread.exit.us.us, %.preheader.us
  %.352.us.us = phi ptr [ %i.bj, %oidread.exit.us.us ], [ %i.ay, %.preheader.us ] ; 3 uses
  %.3.us.us = phi i64 [ %i.bi, %oidread.exit.us.us ], [ %i.ax, %.preheader.us ] ; 3 uses
  %i.bk = load i32, ptr %i.ae, align 4, !tbaa !12
  %.not60.us.us.1 = icmp eq i32 %i.bk, 0
  br i1 %.not60.us.us.1, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp ult i64 %.3.us.us, %i.h
  br i1 %i.bl, label %.loopexit67, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr readonly align 1 %.352.us.us, i64 %i.bn, i1 false)
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 32
  br i1 %i.bp, label %bb.s, label %oidread.exit.us.us.1

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %i.br = sub nuw nsw i64 32, %i.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.br, i1 false)
  br label %oidread.exit.us.us.1

oidread.exit.us.us.1:                             ; preds = %bb.s, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i32 0, ptr %i.bs, align 4, !tbaa !34
  %i.bt = sub nuw i64 %.3.us.us, %i.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.352.us.us, i64 %i.h
  br label %bb.t

bb.t:                                             ; preds = %oidread.exit.us.us.1, %bb.p
  %.352.us.us.1 = phi ptr [ %i.bu, %oidread.exit.us.us.1 ], [ %.352.us.us, %bb.p ] ; 3 uses
  %.3.us.us.1 = phi i64 [ %i.bt, %oidread.exit.us.us.1 ], [ %.3.us.us, %bb.p ] ; 3 uses
  %.not60.us.us.2 = icmp eq i32 %i.ao, 0
  br i1 %.not60.us.us.2, label %.loopexit.split.us.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp ult i64 %.3.us.us.1, %i.h
  br i1 %i.bv, label %.loopexit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 2 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr readonly align 1 %.352.us.us.1, i64 %i.bx, i1 false)
  %i.by = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.bz = icmp ult i64 %i.by, 32
  br i1 %i.bz, label %bb.w, label %oidread.exit.us.us.2

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  %i.cb = sub nuw nsw i64 32, %i.by
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.cb, i1 false)
  br label %oidread.exit.us.us.2

oidread.exit.us.us.2:                             ; preds = %bb.w, %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  store i32 0, ptr %i.cc, align 4, !tbaa !34
  %i.cd = sub nuw i64 %.3.us.us.1, %i.h
  %i.ce = getelementptr inbounds nuw i8, ptr %.352.us.us.1, i64 %i.h
  br label %.loopexit.split.us.us

.loopexit.split.us.us:                            ; preds = %oidread.exit.us.us.2, %bb.t
  %.352.us.us.2 = phi ptr [ %i.ce, %oidread.exit.us.us.2 ], [ %.352.us.us.1, %bb.t ]
  %.3.us.us.2 = phi i64 [ %i.cd, %oidread.exit.us.us.2 ], [ %.3.us.us.1, %bb.t ] ; 2 uses
  %.not.us = icmp eq i64 %.3.us.us.2, 0
  br i1 %.not.us, label %.loopexit69, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit.split
  %.04784 = phi i64 [ %.3.2, %.loopexit.split ], [ %1, %.lr.ph.split.preheader ] ; 2 uses
  %.04983 = phi ptr [ %.352.2, %.loopexit.split ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.04983) #8
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %.not58 = icmp ugt i64 %.04784, %i.cg
  br i1 %.not58, label %bb.x, label %.loopexit67

bb.x:                                             ; preds = %.lr.ph.split
  %i.ch = call ptr @string_list_insert(ptr noundef %i.d, ptr noundef nonnull %.04983) #7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !33 ; 2 uses
  %.not59 = icmp eq ptr %i.cj, null
  br i1 %.not59, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = call ptr @xcalloc(i64 noundef 1, i64 noundef 120) #7 ; 2 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.y ], [ %i.cj, %bb.x ] ; 10 uses
  %i.cm = sub nuw i64 %.04784, %i.cg              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.04983, i64 %i.cg ; 4 uses
  %i.co = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.cp = trunc i64 %i.co to i32
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !12
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %.not61 = icmp eq ptr %i.cq, null
  %i.cr = icmp eq ptr %i.cq, %i.cn
  %or.cond = or i1 %.not61, %i.cr
  br i1 %or.cond, label %.loopexit67, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !41
  %.not62 = icmp eq i8 %i.cs, 0
  br i1 %.not62, label %bb.ab, label %.loopexit67

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.cn to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %.not63 = icmp ugt i64 %i.cm, %i.cw
  br i1 %.not63, label %bb.ac, label %.loopexit67

bb.ac:                                            ; preds = %bb.ab
  %i.cx = sub nuw i64 %i.cm, %i.cw                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cz = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  store i32 %i.da, ptr %i.db, align 4, !tbaa !12
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %.not61.1 = icmp eq ptr %i.dc, null
  %i.dd = icmp eq ptr %i.dc, %i.ct
  %or.cond.1 = or i1 %.not61.1, %i.dd
  br i1 %or.cond.1, label %.loopexit67, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !41
  %.not62.1 = icmp eq i8 %i.de, 0
  br i1 %.not62.1, label %bb.ae, label %.loopexit67

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cu                    ; 3 uses
  %.not63.1 = icmp ugt i64 %i.cx, %i.dh
  br i1 %.not63.1, label %bb.af, label %.loopexit67

bb.af:                                            ; preds = %bb.ae
  %i.di = sub nuw i64 %i.cx, %i.dh                ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dk = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !12
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %.not61.2 = icmp eq ptr %i.dn, null
  %i.do = icmp eq ptr %i.dn, %i.dj
  %or.cond.2 = or i1 %.not61.2, %i.do
  br i1 %or.cond.2, label %.loopexit67, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !41
  %.not62.2 = icmp eq i8 %i.dp, 0
  br i1 %.not62.2, label %bb.ah, label %.loopexit67

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dj to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %.not63.2 = icmp ugt i64 %i.di, %i.dt
  br i1 %.not63.2, label %.preheader, label %.loopexit67

.preheader:                                       ; preds = %bb.ah
  %i.du = sub nuw i64 %i.di, %i.dt                ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dt ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cl, i64 12 ; 2 uses
  %i.dx = load i32, ptr %i.cl, align 4, !tbaa !12
  %.not60 = icmp eq i32 %i.dx, 0
  br i1 %.not60, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.dy = icmp ult i64 %i.du, %i.h
  br i1 %i.dy, label %.loopexit67, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr nonnull readonly align 1 %i.dv, i64 %i.dz, i1 false)
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 32
  br i1 %i.eb, label %bb.ak, label %oidread.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ea
  %i.ed = sub nuw nsw i64 32, %i.ea
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ec, i8 0, i64 %i.ed, i1 false)
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.ak, %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  store i32 %spec.select, ptr %i.ee, align 4, !tbaa !34
  %i.ef = sub nuw i64 %i.du, %i.h
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.h
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %oidread.exit
  %.352 = phi ptr [ %i.eg, %oidread.exit ], [ %i.dv, %.preheader ] ; 3 uses
  %.3 = phi i64 [ %i.ef, %oidread.exit ], [ %i.du, %.preheader ] ; 3 uses
  %i.eh = load i32, ptr %i.db, align 4, !tbaa !12
  %.not60.1 = icmp eq i32 %i.eh, 0
  br i1 %.not60.1, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = icmp ult i64 %.3, %i.h
  br i1 %i.ei, label %.loopexit67, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr readonly align 1 %.352, i64 %i.ek, i1 false)
  %i.el = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.em = icmp ult i64 %i.el, 32
  br i1 %i.em, label %bb.ao, label %oidread.exit.1

bb.ao:                                            ; preds = %bb.an
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el
  %i.eo = sub nuw nsw i64 32, %i.el
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.en, i8 0, i64 %i.eo, i1 false)
  br label %oidread.exit.1

oidread.exit.1:                                   ; preds = %bb.ao, %bb.an
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store i32 %spec.select.1, ptr %i.ep, align 4, !tbaa !34
  %i.eq = sub nuw i64 %.3, %i.h
  %i.er = getelementptr inbounds nuw i8, ptr %.352, i64 %i.h
  br label %bb.ap

bb.ap:                                            ; preds = %oidread.exit.1, %bb.al
  %.352.1 = phi ptr [ %i.er, %oidread.exit.1 ], [ %.352, %bb.al ] ; 3 uses
  %.3.1 = phi i64 [ %i.eq, %oidread.exit.1 ], [ %.3, %bb.al ] ; 3 uses
  %.not60.2 = icmp eq i32 %i.dl, 0
  br i1 %.not60.2, label %.loopexit.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.es = icmp ult i64 %.3.1, %i.h
  br i1 %i.es, label %.loopexit67, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = getelementptr inbounds nuw i8, ptr %i.cl, i64 84 ; 2 uses
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.et, ptr readonly align 1 %.352.1, i64 %i.eu, i1 false)
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 32
  br i1 %i.ew, label %bb.as, label %oidread.exit.2

bb.as:                                            ; preds = %bb.ar
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ev
  %i.ey = sub nuw nsw i64 32, %i.ev
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ex, i8 0, i64 %i.ey, i1 false)
  br label %oidread.exit.2

oidread.exit.2:                                   ; preds = %bb.as, %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 116
  store i32 %spec.select.2, ptr %i.ez, align 4, !tbaa !34
  %i.fa = sub nuw i64 %.3.1, %i.h
  %i.fb = getelementptr inbounds nuw i8, ptr %.352.1, i64 %i.h
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %oidread.exit.2, %bb.ap
  %.352.2 = phi ptr [ %i.fb, %oidread.exit.2 ], [ %.352.1, %bb.ap ]
  %.3.2 = phi i64 [ %i.fa, %oidread.exit.2 ], [ %.3.1, %bb.ap ] ; 2 uses
  %.not = icmp eq i64 %.3.2, 0
  br i1 %.not, label %.loopexit69, label %.lr.ph.split

.loopexit67:                                      ; preds = %.lr.ph.split, %bb.aa, %bb.ab, %bb.z, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.am, %bb.aq, %.lr.ph.split.us, %bb.f, %bb.e, %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.q, %bb.u
  call void @string_list_clear(ptr noundef %i.d, i32 noundef 1) #7
  %i.fc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit.split, %.loopexit.split.us.us, %bb.a, %.loopexit67
  %.046 = phi ptr [ null, %.loopexit67 ], [ %i.d, %bb.a ], [ %i.d, %.loopexit.split.us.us ], [ %i.d, %.loopexit.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.046
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @resolve_undo_clear_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @string_list_clear(ptr noundef nonnull %i.b, i32 noundef 1) #7
  tail call void @free(ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = or i32 %i.d, 16
  store i32 %i.e, ptr %i.c, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @unmerge_index_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @index_name_pos(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = xor i32 %i.c, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = icmp ugt i32 %i.g, %i.e
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !53
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #8
  %.not = icmp eq i32 %i.n, 0
end_hunk_0
