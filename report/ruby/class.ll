Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/class?download=true
inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@unknown_keyword_error:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = call i64 @rb_hash_keys(i64 noundef %0) #18
  call fastcc void @rb_keyword_error(ptr noundef nonnull @.str.41, i64 noundef %i.g) #24
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -2147483648) i32 @rb_scan_args(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %4 = alloca %struct.rb_scan_args_t, align 4     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %i.a = load i8, ptr %2, align 1, !tbaa !65      ; 2 uses
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -48                    ; 4 uses
  %i.d = icmp ugt i32 %i.c, 9
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.c, ptr %i.e, align 4, !tbaa !115
  %i.f = getelementptr i8, ptr %2, i64 1          ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !65    ; 2 uses
  %i.h = sext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -48                    ; 3 uses
  %i.j = icmp ugt i32 %i.i, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.i, ptr %i.k, align 4, !tbaa !116
  %i.l = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %.pre.i = load i8, ptr %i.l, align 1, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.n = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.o = phi i8 [ %.pre.i, %bb.c ], [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 42                      ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.q, align 4, !tbaa !117
  %i.r = getelementptr i8, ptr %.0.i, i64 1       ; 2 uses
  %.pre29.i = load i8, ptr %i.r, align 1, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i8 [ %.pre29.i, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.1.i = phi ptr [ %i.r, %bb.e ], [ %.0.i, %bb.d ] ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 3 uses
  %i.v = icmp ugt i32 %i.u, 9
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.u, ptr %i.w, align 4, !tbaa !118
  %i.x = getelementptr i8, ptr %.1.i, i64 1       ; 2 uses
  %.pre30.i = load i8, ptr %i.x, align 1, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.u, %bb.g ], [ 0, %bb.f ]
  %i.z = phi i8 [ %.pre30.i, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %.2.i = phi ptr [ %i.x, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.aa = icmp eq i8 %i.z, 58
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ab, align 1, !tbaa !119
  %i.ac = getelementptr i8, ptr %.2.i, i64 1      ; 2 uses
  %.pr.i = load i8, ptr %i.ac, align 1, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i8 [ %.pr.i, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %.3.i = phi ptr [ %i.ac, %bb.i ], [ %.2.i, %bb.h ]
  %i.ae = icmp eq i8 %i.ad, 38
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 1, ptr %i.af, align 2, !tbaa !120
  %i.ag = getelementptr i8, ptr %.3.i, i64 1
  %.pre31.i = load i8, ptr %i.ag, align 1, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i8 [ %.pre31.i, %bb.k ], [ %i.ad, %bb.j ]
  %.not28.i = icmp eq i8 %i.ah, 0
  br i1 %.not28.i, label %rb_scan_args_parse.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.42, ptr noundef nonnull %2) #22
  unreachable

rb_scan_args_parse.exit:                          ; preds = %bb.l
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.ai = call fastcc i32 @rb_scan_args_assign(ptr noundef %4, i32 noundef %0, ptr noundef %1, ptr noundef %3) ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %rb_scan_args_result.exit, label %bb.n

bb.n:                                             ; preds = %rb_scan_args_parse.exit
  %i.ak = add nuw nsw i32 %i.y, %i.n              ; 2 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add nuw nsw i32 %i.ak, %i.m
  %i.an = select i1 %i.p, i32 -1, i32 %i.am
  call void @rb_error_arity(i32 noundef %i.al, i32 noundef %i.ak, i32 noundef %i.an) #22
  unreachable

rb_scan_args_result.exit:                         ; preds = %rb_scan_args_parse.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_scan_args_assign(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !115  ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116  ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118  ; 5 uses
  %i.g = add i32 %i.f, %i.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 4, !tbaa !117, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr i8, ptr %0, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !119, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 18
  %i.o = load i8, ptr %i.n, align 2, !tbaa !120, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.q, %i.m
  br i1 %or.cond, label %bb.b, label %rb_scan_args_keyword_p.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %0, align 4, !tbaa !121
  %i.s = zext nneg i32 %1 to i64
  %i.t = getelementptr [8 x i8], ptr %2, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19   ; 4 uses
  switch i32 %i.r, label %rb_scan_args_keyword_p.exit.thread [
    i32 0, label %rb_scan_args_keyword_p.exit
    i32 1, label %rb_scan_args_keyword_p.exit.thread111
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %i.v, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rb_scan_args_keyword_p.exit.thread, label %.split

.split:                                           ; preds = %bb.c
  %i.aa = inttoptr i64 %i.v to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 8
  br i1 %i.ad, label %rb_scan_args_keyword_p.exit.thread111, label %rb_scan_args_keyword_p.exit.thread

rb_scan_args_keyword_p.exit:                      ; preds = %bb.b
  %i.ae = tail call i32 @rb_keyword_given_p() #18
  %.not113 = icmp eq i32 %i.ae, 0
  br i1 %.not113, label %rb_scan_args_keyword_p.exit.thread, label %rb_scan_args_keyword_p.exit.thread111

rb_scan_args_keyword_p.exit.thread111:            ; preds = %bb.b, %.split, %rb_scan_args_keyword_p.exit
  %i.af = tail call i64 @rb_hash_dup(i64 noundef %i.v) #18
  %i.ag = add nsw i32 %1, -1
  br label %rb_scan_args_keyword_p.exit.thread

rb_scan_args_keyword_p.exit.thread:               ; preds = %bb.b, %bb.c, %.split, %rb_scan_args_keyword_p.exit, %rb_scan_args_keyword_p.exit.thread111, %bb.a
  %.187 = phi i32 [ %1, %bb.a ], [ %i.ag, %rb_scan_args_keyword_p.exit.thread111 ], [ %1, %rb_scan_args_keyword_p.exit ], [ %1, %.split ], [ %1, %bb.c ], [ %1, %bb.b ] ; 6 uses
  %.1 = phi i64 [ 4, %bb.a ], [ %i.af, %rb_scan_args_keyword_p.exit.thread111 ], [ 4, %rb_scan_args_keyword_p.exit ], [ 4, %.split ], [ 4, %bb.c ], [ 4, %bb.b ]
  %i.ah = icmp slt i32 %.187, %i.g
  br i1 %i.ah, label %bb.av, label %.preheader115

.preheader115:                                    ; preds = %rb_scan_args_keyword_p.exit.thread
  %i.ai = icmp sgt i32 %i.b, 0
  br i1 %i.ai, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader115
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.i, %.preheader115
  %.080.lcssa = phi i32 [ 0, %.preheader115 ], [ %i.b, %bb.i ] ; 2 uses
  %i.al = icmp sgt i32 %i.d, 0
  br i1 %i.al, label %.lr.ph120, label %._crit_edge

.lr.ph120:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = sub i32 %.187, %i.f
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %4 = load i32, ptr %3, align 8                  ; 3 uses
  %i.ap = icmp ult i32 %4, 41
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = zext nneg i32 %4 to i64
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar
  %i.at = add nuw nsw i32 %4, 8
  store i32 %i.at, ptr %3, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.aj, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi ptr [ %i.as, %bb.e ], [ %i.au, %bb.f ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !163 ; 2 uses
  %.not109 = icmp eq ptr %i.ax, null
  br i1 %.not109, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !160

bb.j:                                             ; preds = %.lr.ph120, %bb.s
  %.181119 = phi i32 [ %.080.lcssa, %.lr.ph120 ], [ %.2, %bb.s ] ; 5 uses
  %.183118 = phi i32 [ 0, %.lr.ph120 ], [ %i.bp, %bb.s ]
  %i.ba = load i32, ptr %3, align 8               ; 3 uses
  %i.bb = icmp ult i32 %i.ba, 41
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.an, align 8
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = add nuw nsw i32 %i.ba, 8
  store i32 %i.bf, ptr %3, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi ptr [ %i.be, %bb.k ], [ %i.bg, %bb.l ]
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !163 ; 3 uses
  %i.bk = icmp slt i32 %.181119, %i.ao
  %.not108 = icmp eq ptr %i.bj, null              ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = zext nneg i32 %.181119 to i64
  %i.bm = getelementptr [8 x i8], ptr %2, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = add nuw nsw i32 %.181119, 1
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  br i1 %.not108, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 4, ptr %i.bj, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.2 = phi i32 [ %i.bo, %bb.p ], [ %.181119, %bb.r ], [ %.181119, %bb.q ] ; 2 uses
  %i.bp = add nuw nsw i32 %.183118, 1             ; 2 uses
  %exitcond132.not = icmp eq i32 %i.bp, %i.d
  br i1 %exitcond132.not, label %._crit_edge, label %bb.j, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.181.lcssa = phi i32 [ %.080.lcssa, %.preheader ], [ %.2, %bb.s ] ; 6 uses
  br i1 %i.j, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %._crit_edge
  %i.bq = add i32 %i.f, %.181.lcssa
  %i.br = sub i32 %.187, %i.bq                    ; 3 uses
  %i.bs = load i32, ptr %3, align 8               ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 41
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = zext nneg i32 %i.bs to i64
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.bw
  %i.by = add nuw nsw i32 %i.bs, 8
  store i32 %i.by, ptr %3, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.bz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cc = phi ptr [ %i.bx, %bb.u ], [ %i.ca, %bb.v ]
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !163 ; 3 uses
  %i.ce = icmp sgt i32 %i.br, 0
  %.not103 = icmp eq ptr %i.cd, null              ; 2 uses
  br i1 %i.ce, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not103, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = zext nneg i32 %i.br to i64
  %i.cg = zext nneg i32 %.181.lcssa to i64
  %i.ch = getelementptr [8 x i8], ptr %2, i64 %i.cg
  %i.ci = tail call i64 @rb_ary_new_from_values(i64 noundef %i.cf, ptr noundef %i.ch) #18
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cj = add nuw i32 %i.br, %.181.lcssa
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  br i1 %.not103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = tail call i64 @rb_ary_new() #18
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %._crit_edge
  %.4 = phi i32 [ %.181.lcssa, %._crit_edge ], [ %i.cj, %bb.z ], [ %.181.lcssa, %bb.ab ], [ %.181.lcssa, %bb.aa ] ; 2 uses
  %i.cl = icmp sgt i32 %i.f, 0
  br i1 %i.cl, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph125, %bb.ai
  %.5123.a = phi i32 [ %.4, %.lr.ph125 ], [ %i.da, %bb.ai ] ; 2 uses
  %.284122.a = phi i32 [ 0, %.lr.ph125 ], [ %i.db, %bb.ai ]
  %5 = load i32, ptr %3, align 8                  ; 3 uses
  %i.co = icmp ult i32 %5, 41
  br i1 %i.co, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = zext nneg i32 %5 to i64
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq
  %i.cs = add nuw nsw i32 %5, 8
  store i32 %i.cs, ptr %3, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ct = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.cm, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cv = phi ptr [ %i.cr, %bb.ae ], [ %i.ct, %bb.af ]
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !163 ; 2 uses
  %.not106 = icmp eq ptr %i.cw, null
  br i1 %.not106, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = sext i32 %.5123.a to i64
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !19
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.da = add i32 %.5123.a, 1                     ; 2 uses
  %i.db = add nuw nsw i32 %.284122.a, 1           ; 2 uses
  %exitcond133.not = icmp eq i32 %i.db, %i.f
  br i1 %exitcond133.not, label %._crit_edge126, label %bb.ad, !llvm.loop !162

._crit_edge126:                                   ; preds = %bb.ai, %bb.ac
  %.5.lcssa = phi i32 [ %.4, %bb.ac ], [ %i.da, %bb.ai ]
  br i1 %i.m, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %._crit_edge126
  %i.dc = load i32, ptr %3, align 8               ; 3 uses
  %i.dd = icmp ult i32 %i.dc, 41
  br i1 %i.dd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = zext nneg i32 %i.dc to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.dc, 8
  store i32 %i.di, ptr %3, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.dj, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dm = phi ptr [ %i.dh, %bb.ak ], [ %i.dk, %bb.al ]
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !163 ; 2 uses
  %.not104 = icmp eq ptr %i.dn, null
  br i1 %.not104, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %.1, ptr %i.dn, align 8, !tbaa !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %._crit_edge126
  br i1 %i.p, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.do = load i32, ptr %3, align 8               ; 3 uses
  %i.dp = icmp ult i32 %i.do, 41
  br i1 %i.dp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = zext nneg i32 %i.do to i64
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds
  %i.du = add nuw nsw i32 %i.do, 8
  store i32 %i.du, ptr %3, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store ptr %i.dx, ptr %i.dv, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dy = phi ptr [ %i.dt, %bb.aq ], [ %i.dw, %bb.ar ]
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !163
  %i.ea = tail call i32 @rb_block_given_p() #18
  %.not105 = icmp eq i32 %i.ea, 0
  br i1 %.not105, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = tail call i64 @rb_block_proc() #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.as, %bb.at
  %.sink = phi i64 [ %i.eb, %bb.at ], [ 4, %bb.as ]
  store i64 %.sink, ptr %i.dz, align 8, !tbaa !19
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.ao
  %i.ec = icmp eq i32 %.5.lcssa, %.187
  br i1 %i.ec, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %rb_scan_args_keyword_p.exit.thread
  %i.ed = xor i32 %.187, -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.085 = phi i32 [ %i.ed, %bb.av ], [ %.187, %bb.au ]
  ret i32 %.085
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -2147483648) i32 @rb_scan_args_kw(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %5 = alloca %struct.rb_scan_args_t, align 4     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #18
  store i32 %0, ptr %5, align 4, !tbaa !121
  %i.b = load i8, ptr %3, align 1, !tbaa !65      ; 2 uses
  %i.c = sext i8 %i.b to i32
  %i.d = add nsw i32 %i.c, -48                    ; 4 uses
  %i.e = icmp ugt i32 %i.d, 9
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.d, ptr %i.f, align 4, !tbaa !115
  %i.g = getelementptr i8, ptr %3, i64 1          ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65    ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48                    ; 3 uses
  %i.k = icmp ugt i32 %i.j, 9
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.j, ptr %i.l, align 4, !tbaa !116
  %i.m = getelementptr i8, ptr %3, i64 2          ; 2 uses
  %.pre.i = load i8, ptr %i.m, align 1, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.o = phi i32 [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.p = phi i8 [ %.pre.i, %bb.c ], [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.q = icmp eq i8 %i.p, 42                      ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.r, align 4, !tbaa !117
  %i.s = getelementptr i8, ptr %.0.i, i64 1       ; 2 uses
  %.pre29.i = load i8, ptr %i.s, align 1, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ %.pre29.i, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %.1.i = phi ptr [ %i.s, %bb.e ], [ %.0.i, %bb.d ] ; 2 uses
  %i.u = sext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 3 uses
  %i.w = icmp ugt i32 %i.v, 9
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.v, ptr %i.x, align 4, !tbaa !118
  %i.y = getelementptr i8, ptr %.1.i, i64 1       ; 2 uses
  %.pre30.i = load i8, ptr %i.y, align 1, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi i32 [ %i.v, %bb.g ], [ 0, %bb.f ]
  %i.aa = phi i8 [ %.pre30.i, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %.2.i = phi ptr [ %i.y, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 58
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !119
  %i.ad = getelementptr i8, ptr %.2.i, i64 1      ; 2 uses
  %.pr.i = load i8, ptr %i.ad, align 1, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi i8 [ %.pr.i, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.3.i = phi ptr [ %i.ad, %bb.i ], [ %.2.i, %bb.h ]
  %i.af = icmp eq i8 %i.ae, 38
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 1, ptr %i.ag, align 2, !tbaa !120
  %i.ah = getelementptr i8, ptr %.3.i, i64 1
  %.pre31.i = load i8, ptr %i.ah, align 1, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi i8 [ %.pre31.i, %bb.k ], [ %i.ae, %bb.j ]
  %.not28.i = icmp eq i8 %i.ai, 0
  br i1 %.not28.i, label %rb_scan_args_parse.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.42, ptr noundef nonnull %3) #22
  unreachable

rb_scan_args_parse.exit:                          ; preds = %bb.l
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.aj = call fastcc i32 @rb_scan_args_assign(ptr noundef %5, i32 noundef %1, ptr noundef %2, ptr noundef %4) ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %rb_scan_args_result.exit, label %bb.n

end_hunk_0
