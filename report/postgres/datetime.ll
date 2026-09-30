Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/datetime?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PGTYPESdate_fmt_asc:bb.a
  %i.ae = call ptr @pgtypes_alloc(i64 noundef 20) #10 ; 5 uses
  %.not65.not = icmp eq ptr %i.ae, null
  br i1 %.not65.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %.sroa.0.182 to i64
  %.sroa.0.0.insert.mask42 = and i64 %i.af, -4294967296
  %.sroa.0.0.insert.ext41 = zext i32 %.sink91 to i64
  %.sroa.0.0.insert.insert43 = or disjoint i64 %.sroa.0.0.insert.mask42, %.sroa.0.0.insert.ext41
  %.sroa.0.2.ph74 = inttoptr i64 %.sroa.0.0.insert.insert43 to ptr
  %i.ag = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.ae, i64 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %.sink91) #10 ; 0 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.ae, i64 %i.ah, i1 false)
  call void @free(ptr noundef nonnull %i.ae) #10
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.e, align 4             ; 2 uses
  %i.aj = call ptr @pgtypes_alloc(i64 noundef 20) #10 ; 5 uses
  %.not64.not = icmp eq ptr %i.aj, null
  br i1 %.not64.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = ptrtoint ptr %.sroa.0.182 to i64
  %.sroa.0.0.insert.mask38 = and i64 %i.ak, -4294967296
  %.sroa.0.0.insert.ext37 = zext i32 %i.ai to i64
  %.sroa.0.0.insert.insert39 = or disjoint i64 %.sroa.0.0.insert.mask38, %.sroa.0.0.insert.ext37
  %i.al = inttoptr i64 %.sroa.0.0.insert.insert39 to ptr
  %i.am = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.aj, i64 noundef 20, ptr noundef nonnull @.str.9, i32 noundef %i.ai) #10 ; 0 uses
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.aj, i64 %i.an, i1 false)
  call void @free(ptr noundef nonnull %i.aj) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h
  %.sroa.0.271 = phi ptr [ %i.al, %bb.l ], [ %.sroa.0.2.ph74, %bb.j ], [ %.sroa.0.2.ph, %bb.h ] ; 2 uses
  %i.ao = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.o) #12 ; 2 uses
  %.not63 = icmp eq ptr %i.ao, null
  br i1 %.not63, label %._crit_edge, label %bb.b, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.083, %.preheader ], [ %.sroa.0.271, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !5

.critedge:                                        ; preds = %._crit_edge, %bb.k, %bb.i
  %.6 = phi i32 [ -1, %bb.k ], [ -1, %bb.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @PGTYPESdate_defmt_asc(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x [2 x i32]], align 16         ; 19 uses
  %.sroa.0290 = alloca i32, align 4               ; 5 uses
  %.sroa.10 = alloca i32, align 4                 ; 5 uses
  %.sroa.17 = alloca i32, align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0290)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  store i32 -1, ptr %.sroa.0290, align 4
  store i32 -1, ptr %.sroa.10, align 4
  store i32 -1, ptr %.sroa.17, align 4
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %1, null
  %or.cond4 = and i1 %i.d, %or.cond
  %.3200.sroa.gep301 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.3200.sroa.gep302 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br i1 %or.cond4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #11
  store i32 311, ptr %i.e, align 4
  br label %.critedge242

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.5) #12 ; 4 uses
  %i.g = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.3) #12 ; 4 uses
  %i.h = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1) #12 ; 5 uses
  %i.i = icmp ne ptr %i.f, null
  %i.j = icmp ne ptr %i.g, null
  %or.cond6 = select i1 %i.i, i1 %i.j, i1 false
  %i.k = icmp ne ptr %i.h, null
  %or.cond8 = select i1 %or.cond6, i1 %i.k, i1 false
  br i1 %or.cond8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #11
  store i32 311, ptr %i.l, align 4
  br label %.critedge242

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult ptr %i.f, %i.g
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult ptr %i.h, %i.f
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ugt ptr %i.h, %i.g
  %.str.11..str.12 = select i1 %i.o, ptr @.str.11, ptr @.str.12
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.p = icmp ult ptr %i.h, %i.g
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp ugt ptr %i.h, %i.f
  %.str.14..str.15 = select i1 %i.q, ptr @.str.14, ptr @.str.15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0194 = phi ptr [ @.str.13, %bb.h ], [ %.str.11..str.12, %bb.g ], [ @.str.10, %bb.f ], [ %.str.14..str.15, %bb.i ] ; 6 uses
  %i.r = load i8, ptr %2, align 1                 ; 2 uses
  %.not.not253 = icmp eq i8 %i.r, 0
  br i1 %.not.not253, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.s = tail call ptr @__ctype_b_loc() #11
  %i.t = load ptr, ptr %i.s, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.u = add i32 %.0204254, 1                     ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.not.not = icmp eq i8 %i.x, 0
  br i1 %.not.not, label %.critedge, label %bb.l, !llvm.loop !6

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.y = phi i8 [ %i.r, %.lr.ph ], [ %i.x, %bb.k ]
  %.0204254 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.k ]
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, 2048
  %.not226 = icmp eq i16 %i.ac, 0
  br i1 %.not226, label %bb.t, label %bb.k

.critedge:                                        ; preds = %bb.k, %bb.j
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  switch i32 %i.ae, label %bb.m [
    i32 8, label %bb.n
    i32 6, label %bb.n
  ]

bb.m:                                             ; preds = %.critedge
  %i.af = tail call ptr @__errno_location() #11
  store i32 312, ptr %i.af, align 4
  br label %.critedge242

bb.n:                                             ; preds = %.critedge, %.critedge
  %i.ag = add nuw nsw i64 %i.ad, 3
  %i.ah = tail call ptr @pgtypes_alloc(i64 noundef %i.ag) #10 ; 8 uses
  %.not229 = icmp eq ptr %i.ah, null
  br i1 %.not229, label %.critedge242, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp eq i32 %i.ae, 6
  br i1 %i.ai, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %.0194, align 1
  %i.ak = icmp eq i8 %i.aj, 121
  br i1 %i.ak, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0194, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 121
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %.sroa.13.0 = phi i32 [ 4, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 2, %bb.q ] ; 2 uses
  %.sroa.8.0 = phi i32 [ 2, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 2, %bb.r ], [ 2, %bb.o ], [ 4, %bb.p ], [ 2, %bb.q ] ; 2 uses
  %i.ao = phi i64 [ 2, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 4, %bb.q ]
  %i.ap = phi i64 [ 2, %bb.r ], [ 2, %bb.o ], [ 4, %bb.p ], [ 2, %bb.q ]
  %i.aq = zext nneg i32 %.sroa.0.0 to i64         ; 2 uses
  %i.ar = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %2, i64 noundef %i.aq) #10 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  store i8 32, ptr %i.as, align 1
  %i.at = or disjoint i32 %.sroa.0.0, 1           ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap ; 2 uses
  %i.ax = zext nneg i32 %.sroa.8.0 to i64
  %i.ay = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef %i.ax) #10 ; 0 uses
  %i.az = add nuw nsw i32 %.sroa.8.0, %i.at       ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  store i8 32, ptr %i.bb, align 1
  %i.bc = add nuw nsw i32 %i.az, 1                ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.bg = zext nneg i32 %.sroa.13.0 to i64
  %i.bh = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef %i.bg) #10 ; 0 uses
  %i.bi = add nuw nsw i32 %.sroa.13.0, %i.bc
  %.pre = zext nneg i32 %i.bi to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre
  store i8 0, ptr %i.bj, align 1
  br label %.loopexit

bb.t:                                             ; preds = %bb.l
  %i.bk = tail call ptr @pgtypes_strdup(ptr noundef nonnull %2) #10 ; 6 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %.critedge242, label %.preheader251.a

.preheader251.a:                                  ; preds = %bb.t
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %.not228255 = icmp eq i8 %i.bl, 0
  br i1 %.not228255, label %.loopexit, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader251.a, %.lr.ph257
  %i.bm = phi i8 [ %i.bs, %.lr.ph257 ], [ %i.bl, %.preheader251.a ]
  %i.bn = phi ptr [ %i.br, %.lr.ph257 ], [ %i.bk, %.preheader251.a ]
  %.2206256 = phi i32 [ %i.bp, %.lr.ph257 ], [ 0, %.preheader251.a ]
  %i.bo = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.bm) #10
  store i8 %i.bo, ptr %i.bn, align 1
  %i.bp = add i32 %.2206256, 1                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %.not228 = icmp eq i8 %i.bs, 0
  br i1 %.not228, label %.loopexit, label %.lr.ph257, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph257, %.preheader251.a, %bb.s
  %.1196 = phi ptr [ %i.ah, %bb.s ], [ %i.bk, %.preheader251.a ], [ %i.bk, %.lr.ph257 ] ; 16 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1196) #12 ; 3 uses
  %.not275 = icmp eq i64 %i.bt, 0
  br i1 %.not275, label %.thread338, label %.lr.ph263

.lr.ph263:                                        ; preds = %.loopexit
  %i.bu = tail call ptr @__ctype_b_loc() #11
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit342, %.lr.ph263
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %.0197262.ph = phi i32 [ %.1198, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %.1202261.ph = phi i32 [ %.2203, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 2 uses
  %i.bw = sext i32 %.0197262.ph to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.1196, i64 %indvars.iv.ph
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = and i16 %i.cc, 2048
  %i.ce = icmp eq i16 %i.cd, 0                    ; 2 uses
  %i.cf = icmp ne i32 %.1202261.ph, 0             ; 2 uses
  %or.cond12.peel = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond12.peel, label %.loopexit370, label %bb.u

bb.u:                                             ; preds = %.outer
  %or.cond14.peel = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond14.peel, label %.loopexit342, label %.thread.peel

.thread.peel:                                     ; preds = %bb.u
  %i.cg = trunc nuw i64 %indvars.iv.ph to i32
  store i32 %i.cg, ptr %i.bx, align 8
  %indvars.iv.next331.peel = add i64 %indvars.iv.ph, 1 ; 4 uses
  %i.ch = and i64 %indvars.iv.next331.peel, 4294967295
  %i.ci = icmp ugt i64 %i.bt, %i.ch
  br i1 %i.ci, label %.outer.peel.newph, label %._crit_edge.thread334

.outer.peel.newph:                                ; preds = %.thread.peel
  %i.cj = getelementptr inbounds nuw i8, ptr %.1196, i64 %indvars.iv.next331.peel
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, 2048
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %.loopexit370, label %.loopexit342

.loopexit370:                                     ; preds = %.outer.peel.newph, %.outer
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.ph, %.outer ], [ %indvars.iv.next331.peel, %.outer.peel.newph ] ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.lcssa to i32
  %i.cr = add i32 %i.cq, -1
  %i.cs = sext i32 %.0197262.ph to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cr, ptr %i.cu, align 4
  %i.cv = add i32 %.0197262.ph, 1
  br label %.loopexit342

.loopexit342:                                     ; preds = %bb.u, %.outer.peel.newph, %.loopexit370
  %indvars.iv367.a = phi i64 [ %indvars.iv.lcssa, %.loopexit370 ], [ %indvars.iv.ph, %bb.u ], [ %indvars.iv.next331.peel, %.outer.peel.newph ] ; 2 uses
  %.2203 = phi i32 [ 0, %.loopexit370 ], [ %.1202261.ph, %bb.u ], [ 1, %.outer.peel.newph ] ; 2 uses
  %.1198 = phi i32 [ %i.cv, %.loopexit370 ], [ %.0197262.ph, %.outer.peel.newph ], [ %.0197262.ph, %bb.u ] ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv367.a, 1  ; 2 uses
  %i.cw = and i64 %indvars.iv.next, 4294967295
  %i.cx = icmp ugt i64 %i.bt, %i.cw
  br i1 %i.cx, label %.outer, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.loopexit342
  %i.cy = icmp eq i32 %.2203, 0
  br i1 %i.cy, label %bb.v, label %._crit_edge.thread334

._crit_edge.thread334:                            ; preds = %.thread.peel, %._crit_edge
  %indvars.iv366 = phi i64 [ %indvars.iv367.a, %._crit_edge ], [ %indvars.iv.ph, %.thread.peel ]
  %.1198333337 = phi i32 [ %.1198, %._crit_edge ], [ %.0197262.ph, %.thread.peel ] ; 2 uses
  %i.cz = trunc i64 %indvars.iv366 to i32
  %i.da = sext i32 %.1198333337 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.cz, ptr %i.dc, align 4
  %i.dd = add i32 %.1198333337, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread334, %._crit_edge
  %.2199 = phi i32 [ %i.dd, %._crit_edge.thread334 ], [ %.1198, %._crit_edge ] ; 2 uses
  %i.de = icmp slt i32 %.2199, 2
  br i1 %i.de, label %.thread338, label %bb.w

.thread338:                                       ; preds = %.loopexit, %bb.v
  tail call void @free(ptr noundef nonnull %.1196) #10
  %i.df = tail call ptr @__errno_location() #11
  store i32 312, ptr %i.df, align 4
  br label %.critedge242

bb.w:                                             ; preds = %bb.v
  %.not233 = icmp eq i32 %.2199, 3
  br i1 %.not233, label %.thread340, label %bb.x

.thread340:                                       ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.1196, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 0, ptr %i.dk, align 1
  br label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.dl = tail call ptr @pgtypes_alloc(i64 noundef 20) #10 ; 6 uses
  %.not234 = icmp eq ptr %i.dl, null
  br i1 %.not234, label %bb.y, label %.preheader250

.preheader250:                                    ; preds = %bb.x
  %i.dm = load ptr, ptr @pgtypes_date_months, align 8
  %.not235267 = icmp eq ptr %i.dm, null
  br i1 %.not235267, label %.critedge246, label %.preheader

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %.1196) #10
  br label %.critedge242

.preheader:                                       ; preds = %.preheader250, %bb.ah
  %i.dn = phi ptr [ %i.et, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ]
  %.0269 = phi ptr [ %.1, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ] ; 4 uses
  %.4208268 = phi i32 [ %i.er, %bb.ah ], [ 0, %.preheader250 ] ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %bb.z ], [ 0, %.preheader ] ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv280
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.dq) #10 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv280
  store i8 %i.dr, ptr %i.ds, align 1
  %.not236 = icmp ne i8 %i.dr, 0
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1
  %i.dt = icmp samesign ult i64 %indvars.iv280, 19
  %or.cond274 = select i1 %.not236, i1 %i.dt, i1 false
  br i1 %or.cond274, label %bb.z, label %bb.aa, !llvm.loop !9

bb.aa:                                            ; preds = %bb.z
  %i.du = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.1196, ptr noundef nonnull dereferenceable(1) %i.dl) #12 ; 2 uses
  %.not237 = icmp eq ptr %i.du, null
  br i1 %.not237, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.1196 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = load i32, ptr %i.a, align 16            ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %.3200.sroa.gep301, align 8 ; 3 uses
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.eb, ptr %.3200.sroa.gep302, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ed, ptr %i.ee, align 4
  store i32 %i.dz, ptr %.3200.sroa.gep301, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  store i32 %i.eg, ptr %i.ec, align 4
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
end_hunk_0
