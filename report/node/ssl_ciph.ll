inline.NumInlined: 82
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ssl_cipher_strength_sort:bb.a
  %.not3039 = icmp eq ptr %.138, null
  br i1 %.not3039, label %.lr.ph44.preheader, label %.lr.ph41

.lr.ph44.preheader:                               ; preds = %bb.e, %.preheader33
  %i.l = zext nneg i32 %.026.lcssa to i64
  br label %.lr.ph44

.lr.ph41:                                         ; preds = %.preheader33, %bb.e
  %.140 = phi ptr [ %.1, %bb.e ], [ %.138, %.preheader33 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.140, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !143
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph41
  %i.o = load ptr, ptr %.140, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !156
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !5
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph41
  %i.v = getelementptr inbounds nuw i8, ptr %.140, i64 16
  %.1 = load ptr, ptr %i.v, align 8, !tbaa !150   ; 2 uses
  %.not30 = icmp eq ptr %.1, null
  br i1 %.not30, label %.lr.ph44.preheader, label %.lr.ph41, !llvm.loop !160

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.l, %.lr.ph44.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !5
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph44
  %i.z = load ptr, ptr %0, align 8, !tbaa !150    ; 4 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !150   ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp eq ptr %i.z, null
  %or.cond174.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond174.i, label %ssl_cipher_apply_rule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.backedge.i
  %.1177.i = phi ptr [ %i.ae, %.backedge.i ], [ %i.z, %bb.f ] ; 9 uses
  %.0161176.i = phi ptr [ %.0161.be.i, %.backedge.i ], [ %i.aa, %bb.f ] ; 5 uses
  %.0163175.i = phi ptr [ %.0163.be.i, %.backedge.i ], [ %i.z, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1177.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !150 ; 6 uses
  %i.af = load ptr, ptr %.1177.i, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !156
  %i.ai = zext i32 %i.ah to i64
  %.not116.i = icmp eq i64 %indvars.iv, %i.ai
  br i1 %.not116.i, label %bb.g, label %.backedge.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.1177.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !143
  %.not121.i = icmp eq i32 %i.ak, 0
  %i.al = icmp eq ptr %.1177.i, %.0161176.i
  %or.cond172.i = select i1 %.not121.i, i1 true, i1 %i.al
  br i1 %or.cond172.i, label %.backedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp eq ptr %.1177.i, %.0163175.i
  %..0163175202.i = select i1 %i.am, ptr %i.ae, ptr %.0163175.i
  %i.an = getelementptr inbounds nuw i8, ptr %.1177.i, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !145 ; 3 uses
  %.not.i123.i = icmp eq ptr %i.ao, null
  br i1 %.not.i123.i, label %._crit_edge.i126.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !146
  br label %._crit_edge.i126.i

._crit_edge.i126.i:                               ; preds = %bb.i, %bb.h
  %.not21.i127.i = icmp eq ptr %i.ae, null
  br i1 %.not21.i127.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i126.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i126.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0161176.i, i64 16
  store ptr %.1177.i, ptr %i.ar, align 8, !tbaa !146
  store ptr %.0161176.i, ptr %i.an, align 8, !tbaa !145
  store ptr null, ptr %i.ad, align 8, !tbaa !146
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.k, %bb.g, %.lr.ph.i
  %.0163.be.i = phi ptr [ %.0163175.i, %bb.g ], [ %.0163175.i, %.lr.ph.i ], [ %..0163175202.i, %bb.k ] ; 2 uses
  %.0161.be.i = phi ptr [ %.0161176.i, %bb.g ], [ %.0161176.i, %.lr.ph.i ], [ %.1177.i, %bb.k ] ; 2 uses
  %i.as = icmp eq ptr %.1177.i, %i.aa
  %i.at = icmp eq ptr %i.ae, null
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i, label %ssl_cipher_apply_rule.exit, label %.lr.ph.i

ssl_cipher_apply_rule.exit:                       ; preds = %.backedge.i, %bb.f
  %.0163.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %.0163.be.i, %.backedge.i ]
  %.0161.lcssa.i = phi ptr [ %i.aa, %bb.f ], [ %.0161.be.i, %.backedge.i ]
  store ptr %.0163.lcssa.i, ptr %0, align 8, !tbaa !150
  store ptr %.0161.lcssa.i, ptr %1, align 8, !tbaa !150
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph44, %ssl_cipher_apply_rule.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.au = icmp sgt i64 %indvars.iv, 0
  br i1 %i.au, label %.lr.ph44, label %._crit_edge45, !llvm.loop !161

._crit_edge45:                                    ; preds = %bb.l
  tail call void @CRYPTO_free(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.12, i32 noundef 951) #12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %._crit_edge45
  %.024 = phi i32 [ 1, %._crit_edge45 ], [ 0, %._crit_edge ]
  ret i32 %.024
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_cipher_process_rulestr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 152
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.f
  %.0210.ph = phi ptr [ %i.m, %bb.f ], [ %0, %bb.a ] ; 2 uses
  %.0201.ph = phi i32 [ %.0201, %bb.f ], [ 1, %bb.a ]
  %.pr = load i8, ptr %.0210.ph, align 1, !tbaa !114
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split, %.critedge30
  %i.b = phi i8 [ %.pr, %thread-pre-split ], [ %i.cf, %.critedge30 ]
  %.0210 = phi ptr [ %.0210.ph, %thread-pre-split ], [ %.8, %.critedge30 ] ; 7 uses
  %.0201 = phi i32 [ %.0201.ph, %thread-pre-split ], [ %.2203, %.critedge30 ] ; 10 uses
  switch i8 %i.b, label %.preheader.split.preheader [
    i8 0, label %.loopexit
    i8 45, label %bb.c
    i8 43, label %bb.d
    i8 33, label %bb.e
    i8 64, label %.preheader.split.us.preheader
    i8 59, label %bb.f
    i8 58, label %bb.f
    i8 44, label %bb.f
    i8 32, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  br label %.preheader.split.preheader

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  br label %.preheader.split.preheader

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  br label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.1211421426 = phi ptr [ %.0210, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %.0205422425 = phi i32 [ 1, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 2, %bb.e ]
  br label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0210, i64 1 ; 3 uses
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %.critedge.us
  %.3213.us = phi ptr [ %i.k, %.critedge.us ], [ %i.f, %.preheader.split.us.preheader ] ; 3 uses
  %.0198.us = phi i32 [ %i.l, %.critedge.us ], [ 0, %.preheader.split.us.preheader ] ; 2 uses
  %.0196.us = load i8, ptr %.3213.us, align 1, !tbaa !114
  %.0196.fr.us = freeze i8 %.0196.us              ; 3 uses
  %i.g = add i8 %.0196.fr.us, -48
  %or.cond14.us = icmp ult i8 %i.g, 10
  %i.h = and i8 %.0196.fr.us, -33
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %or.cond344.us = or i1 %i.j, %or.cond14.us
  br i1 %or.cond344.us, label %.critedge.us, label %switch.early.test.us

switch.early.test.us:                             ; preds = %.preheader.split.us
  switch i8 %.0196.fr.us, label %5 [
    i8 95, label %.critedge.us
    i8 61, label %.critedge.us
    i8 46, label %.critedge.us
    i8 45, label %.critedge.us
  ]

5:                                                ; preds = %switch.early.test.us
  switch i32 %.0198.us, label %.thread.sink.split [
    i32 0, label %.split.us
    i32 8, label %bb.aj
    i32 10, label %bb.ak
  ]

.critedge.us:                                     ; preds = %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %.preheader.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %.3213.us, i64 1
  %i.l = add nuw nsw i32 %.0198.us, 1
  br label %.preheader.split.us, !llvm.loop !162

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  br label %thread-pre-split

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.ai
  %.0230 = phi i32 [ %.1231, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.0227 = phi i32 [ %.1228, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.0224 = phi i32 [ %.1225, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.0221 = phi i32 [ %.1222, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.0217 = phi i32 [ %.2219, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.0214 = phi i32 [ %.1215, %bb.ai ], [ 0, %.preheader.split.preheader ] ; 4 uses
  %.2212 = phi ptr [ %i.u, %bb.ai ], [ %.1211421426, %.preheader.split.preheader ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %.preheader.split
  %.3213 = phi ptr [ %.2212, %.preheader.split ], [ %i.r, %.critedge ] ; 6 uses
  %.0198 = phi i32 [ 0, %.preheader.split ], [ %i.s, %.critedge ] ; 3 uses
  %.0196 = load i8, ptr %.3213, align 1, !tbaa !114
  %.0196.fr = freeze i8 %.0196                    ; 4 uses
  %i.n = add i8 %.0196.fr, -48
  %or.cond14 = icmp ult i8 %i.n, 10
  %i.o = and i8 %.0196.fr, -33
  %i.p = add i8 %i.o, -65
  %i.q = icmp ult i8 %i.p, 26
  %or.cond344 = or i1 %i.q, %or.cond14
  br i1 %or.cond344, label %.critedge, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %.0196.fr, label %bb.h [
    i8 95, label %.critedge
    i8 61, label %.critedge
    i8 46, label %.critedge
    i8 45, label %.critedge
  ]

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.3213, i64 1
  %i.s = add nuw nsw i32 %.0198, 1
  br label %bb.g, !llvm.loop !162

bb.h:                                             ; preds = %switch.early.test
  %i.t = icmp eq i32 %.0198, 0
  br i1 %i.t, label %.split.us, label %bb.i

.split.us:                                        ; preds = %5, %bb.h
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.12, i32 noundef 1023, ptr noundef nonnull @__func__.ssl_cipher_process_rulestr) #12
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 280, ptr noundef null) #12
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.not279 = icmp eq i8 %.0196.fr, 43             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.3213, i64 1 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !151    ; 2 uses
  %.not367 = icmp eq ptr %i.v, null
  br i1 %.not367, label %.critedge284, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.w = zext nneg i32 %.0198 to i64              ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ]
  %i.x = phi ptr [ %i.v, %.lr.ph ], [ %i.an, %bb.o ] ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !163  ; 2 uses
  %i.aa = tail call i32 @strncmp(ptr noundef %.2212, ptr noundef %i.z, i64 noundef %i.w) #13
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !114
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !164 ; 3 uses
  %.not255 = icmp eq ptr %i.ag, null
  br i1 %.not255, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i32 @strncmp(ptr noundef %.2212, ptr noundef nonnull %i.ag, i64 noundef %i.w) #13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.w
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !114
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge284, label %bb.j, !llvm.loop !165

bb.p:                                             ; preds = %bb.k, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !137 ; 3 uses
  %.not257 = icmp eq i32 %i.ap, 0
  br i1 %.not257, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not258 = icmp eq i32 %.0230, 0
  br i1 %.not258, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = and i32 %i.ap, %.0230                   ; 2 uses
  %.not259 = icmp eq i32 %i.aq, 0
  br i1 %.not259, label %.critedge284, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.1231 = phi i32 [ %i.aq, %bb.r ], [ %.0230, %bb.p ], [ %i.ap, %bb.q ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !138 ; 3 uses
  %.not260 = icmp eq i32 %i.as, 0
  br i1 %.not260, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not261 = icmp eq i32 %.0227, 0
  br i1 %.not261, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = and i32 %i.as, %.0227                   ; 2 uses
  %.not262 = icmp eq i32 %i.at, 0
  br i1 %.not262, label %.critedge284, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.1228 = phi i32 [ %i.at, %bb.u ], [ %.0227, %bb.s ], [ %i.as, %bb.t ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !64 ; 3 uses
  %.not263 = icmp eq i32 %i.av, 0
  br i1 %.not263, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not264 = icmp eq i32 %.0224, 0
  br i1 %.not264, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = and i32 %i.av, %.0224                   ; 2 uses
  %.not265 = icmp eq i32 %i.aw, 0
  br i1 %.not265, label %.critedge284, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.1225 = phi i32 [ %i.aw, %bb.x ], [ %.0224, %bb.v ], [ %i.av, %bb.w ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !66 ; 3 uses
  %.not266 = icmp eq i32 %i.ay, 0
  br i1 %.not266, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not267 = icmp eq i32 %.0221, 0
  br i1 %.not267, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = and i32 %i.ay, %.0221                   ; 2 uses
  %.not268 = icmp eq i32 %i.az, 0
  br i1 %.not268, label %.critedge284, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.1222 = phi i32 [ %i.az, %bb.aa ], [ %.0221, %bb.y ], [ %i.ay, %bb.z ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !158 ; 3 uses
  %i.bc = and i32 %i.bb, 31                       ; 2 uses
  %.not269 = icmp eq i32 %i.bc, 0
  br i1 %.not269, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = and i32 %.0217, 31
  %.not270 = icmp eq i32 %i.bd, 0
  br i1 %.not270, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = or i32 %i.bb, -32
  %i.bf = and i32 %i.be, %.0217                   ; 2 uses
  %i.bg = and i32 %i.bf, 31
  %.not271 = icmp eq i32 %i.bg, 0
  br i1 %.not271, label %.critedge284, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.1218 = phi i32 [ %i.bf, %bb.ad ], [ %.0217, %bb.ab ], [ %i.bc, %bb.ac ] ; 3 uses
  %i.bh = and i32 %i.bb, 32
  %.not272 = icmp ne i32 %i.bh, 0
  %i.bi = and i32 %.1218, 32
  %.not273 = icmp eq i32 %i.bi, 0
  %or.cond290 = select i1 %.not272, i1 %.not273, i1 false
  %i.bj = or disjoint i32 %.1218, 32
  %.2219 = select i1 %or.cond290, i32 %i.bj, i32 %.1218 ; 2 uses
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !136
  %.not274 = icmp eq i32 %i.bk, 0
  br i1 %.not274, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !157
  br label %bb.ai
end_hunk_0
