Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaBound?download=true
inline.NumInlined: 564
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Bnd_ManCheckExtBound:bb.a
  store i32 %.val30, ptr %i.d, align 4, !tbaa !27
  %i.z = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val2836 = load i32, ptr %i.z, align 4, !tbaa !27
  %i.aa = icmp sgt i32 %.val2836, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.ab = getelementptr i8, ptr %2, i64 8
  br label %bb.f

.critedge.preheader:                              ; preds = %Vec_IntSetEntry.exit, %Vec_IntFill.exit
  %i.ac = phi ptr [ %i.x, %Vec_IntFill.exit ], [ %.val.i, %Vec_IntSetEntry.exit ]
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val2738 = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.af = icmp sgt i32 %.val2738, 0
  br i1 %i.af, label %.lr.ph40, label %.critedge2

.lr.ph40:                                         ; preds = %.critedge.preheader
  %i.ag = getelementptr i8, ptr %1, i64 8
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph, %Vec_IntSetEntry.exit
  %.val.i46 = phi ptr [ %i.x, %.lr.ph ], [ %.val.i, %Vec_IntSetEntry.exit ] ; 8 uses
  %i.ah = phi i32 [ %.val30, %.lr.ph ], [ %i.bc, %Vec_IntSetEntry.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntSetEntry.exit ] ; 2 uses
  %.val26 = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22 ; 6 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 5 uses
  %.not.i.not.i = icmp slt i32 %i.aj, %i.ah
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.b, align 8, !tbaa !52  ; 4 uses
  %i.am = shl nsw i32 %i.al, 1                    ; 2 uses
  %.not.i32 = icmp slt i32 %i.aj, %i.am
  %.not.i.i.not.i = icmp sgt i32 %i.al, %i.aj     ; 2 uses
  br i1 %.not.i32, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i = icmp eq ptr %.val.i46, null
  %i.an = sext i32 %i.ak to i64
  %i.ao = shl nsw i64 %i.an, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.val.i46, i64 noundef %i.ao) #25
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #24
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.l:                                             ; preds = %bb.g
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = icmp slt i32 %i.al, 1073741823
  %spec.select.i.i = select i1 %i.ar, i32 %i.am, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp slt i32 %i.al, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.n, label %Vec_IntGrow.exit.i.i

bb.n:                                             ; preds = %bb.m
  %.not9.i23.i.i = icmp eq ptr %.val.i46, null
  %i.as = sext i32 %spec.select.i.i to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr @realloc(ptr noundef nonnull %.val.i46, i64 noundef %i.at) #25
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #24
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.o, %bb.p, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.au, %bb.o ], [ %i.av, %bb.p ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ %i.ak, %bb.k ], [ %i.ak, %bb.j ], [ %spec.select.i.i, %bb.o ], [ %spec.select.i.i, %bb.p ]
  store ptr %storemerge, ptr %i.y, align 8, !tbaa !21
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !52
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.m, %bb.l, %bb.h
  %.val.i48 = phi ptr [ %storemerge, %Vec_IntGrow.exit.sink.split.i.i ], [ %.val.i46, %bb.m ], [ %.val.i46, %bb.l ], [ %.val.i46, %bb.h ] ; 2 uses
  %i.aw = sext i32 %i.ah to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep.i.i = getelementptr i8, ptr %.val.i48, i64 %i.ax
  %i.ay = sub i32 %i.aj, %i.ah
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bb, i1 false), !tbaa !22
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !27
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.f, %Vec_IntGrow.exit.i.i
  %.val.i = phi ptr [ %.val.i46, %bb.f ], [ %.val.i48, %Vec_IntGrow.exit.i.i ] ; 3 uses
  %i.bc = phi i32 [ %i.ah, %bb.f ], [ %i.ak, %Vec_IntGrow.exit.i.i ]
  %i.bd = sext i32 %i.aj to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bd
  store i32 2, ptr %i.be, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val28 = load i32, ptr %i.z, align 4, !tbaa !27
  %i.bf = sext i32 %.val28 to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.f, label %.critedge.preheader, !llvm.loop !118

bb.q:                                             ; preds = %.lr.ph40, %.critedge
  %.val2749 = phi i32 [ %.val2738, %.lr.ph40 ], [ %.val27, %.critedge ]
  %indvars.iv43 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next44, %.critedge ] ; 2 uses
  %.val25 = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val25, i64 %indvars.iv43
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22
  %.val = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val31 = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.bn = getelementptr inbounds [12 x i8], ptr %.val31, i64 %i.bj
  %i.bo = tail call i32 @Bnd_CheckFlagRec(ptr noundef %0, ptr noundef %i.bn, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %.critedge2.loopexit, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.r
  %.val27.pre = load i32, ptr %i.ae, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.q
  %.val27 = phi i32 [ %.val27.pre, %..critedge_crit_edge ], [ %.val2749, %bb.q ] ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bp = sext i32 %.val27 to i64
  %i.bq = icmp slt i64 %indvars.iv.next44, %i.bp
  br i1 %i.bq, label %bb.q, label %.critedge2.loopexit, !llvm.loop !119

.critedge2.loopexit:                              ; preds = %bb.r, %.critedge
  %.024.ph = phi i32 [ 1, %.critedge ], [ 0, %bb.r ]
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !21
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge.preheader
  %i.br = phi ptr [ %i.ac, %.critedge.preheader ], [ %.pre, %.critedge2.loopexit ] ; 2 uses
  %.024 = phi i32 [ 1, %.critedge.preheader ], [ %.024.ph, %.critedge2.loopexit ]
  %.not.i33 = icmp eq ptr %i.br, null
  br i1 %.not.i33, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.br) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.s
  tail call void @free(ptr noundef nonnull %i.b) #26
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define void @Bnd_ManFindBound(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !27
  store i32 16, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !21
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  store i32 0, ptr %i.f, align 4, !tbaa !27
  store i32 16, ptr %i.e, align 8, !tbaa !52
  %i.g = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = load ptr, ptr @pBnd, align 8, !tbaa !10  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 18 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 23 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !49
  store i32 16, ptr %i.ab, align 8, !tbaa !50
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #24 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 15 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.val258 = load i32, ptr %i.af, align 8, !tbaa !45 ; 10 uses
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 15 uses
  %i.ah = add i32 %.val258, -1
  %or.cond.i = icmp ult i32 %i.ah, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val258 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 12 uses
  store i32 %spec.store.select.i, ptr %i.ag, align 8, !tbaa !52
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit.thread, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.aj = sext i32 %spec.store.select.i to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #24 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !21
  %.not.i.i = icmp slt i32 %spec.store.select.i, %.val258
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

Vec_IntAlloc.exit.thread:                         ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr null, ptr %i.an, align 8, !tbaa !21
  %.not.i.i507 = icmp sgt i32 %.val258, 0
  br i1 %.not.i.i507, label %.thread, label %Vec_IntFill.exit

.thread:                                          ; preds = %Vec_IntAlloc.exit.thread
  %i.ao = zext nneg i32 %.val258 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  br label %bb.d

bb.b:                                             ; preds = %Vec_IntAlloc.exit
  %.not9.i.i = icmp eq ptr %i.al, null
  %i.aq = sext i32 %.val258 to i64
  %i.ar = shl nsw i64 %i.aq, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.ar) #25
  br label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  %i.at = phi i64 [ %i.ap, %.thread ], [ %i.ar, %bb.b ]
  %i.au = phi ptr [ %i.an, %.thread ], [ %i.am, %bb.b ]
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %i.am, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %i.ax = phi ptr [ %i.as, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !21
  store i32 %.val258, ptr %i.ag, align 8, !tbaa !52
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %Vec_IntAlloc.exit
  %i.ay = phi ptr [ %i.al, %Vec_IntAlloc.exit ], [ %i.ax, %bb.e ]
  %i.az = phi ptr [ %i.am, %Vec_IntAlloc.exit ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ba = icmp sgt i32 %.val258, 0
  br i1 %i.ba, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %.val258 to i64
  %i.bb = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %i.bb, i1 false), !tbaa !22
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntAlloc.exit.thread, %Vec_IntGrow.exit.i
  %i.bc = phi ptr [ %i.an, %Vec_IntAlloc.exit.thread ], [ %i.az, %Vec_IntGrow.exit.i ], [ %i.az, %.lr.ph.i ] ; 15 uses
  store i32 %.val258, ptr %i.ai, align 4, !tbaa !27
  tail call void @Gia_ManStaticFanoutStart(ptr noundef nonnull %0) #26
  %i.bd = getelementptr i8, ptr %0, i64 56
  %.val247 = load i32, ptr %i.bd, align 8, !tbaa !47
  %.not = icmp ne i32 %.val247, 0
  %.pre = load i32, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 32        ; 13 uses
  %i.bf = icmp sgt i32 %.pre, 0
  %or.cond = select i1 %.not, i1 %i.bf, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ab
  %i.bk = phi i32 [ %.pre, %.lr.ph ], [ %i.dm, %bb.ab ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 4 uses
  %.0200537 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ab ] ; 3 uses
  %.val265 = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %.not207 = icmp eq ptr %.val265, null
  br i1 %.not207, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.val265, i64 %indvars.iv
  %.val271 = load i64, ptr %i.bl, align 4         ; 3 uses
  %i.bm = trunc i64 %.val271 to i32
  %i.bn = and i32 %i.bm, 536870911                ; 3 uses
  %i.bo = lshr i64 %.val271, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 536870911
  %i.br = icmp ne i32 %i.bn, %i.bq
  %.not.i282 = icmp eq i32 %i.bn, 536870911
  %or.cond.not.i.not510 = or i1 %.not.i282, %i.br
  %i.bs = and i64 %.val271, 2147483648
  %.not4.i = icmp ne i64 %i.bs, 0
  %narrow.i.not = or i1 %.not4.i, %or.cond.not.i.not510
  br i1 %narrow.i.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr @pBnd, align 8, !tbaa !10
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !75
  %i.bv = icmp slt i32 %.0200537, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.bw = trunc nsw i64 %indvars.iv to i32
  %i.bx = sub i32 %i.bw, %i.bn
  %i.by = load i32, ptr %i.bi, align 4, !tbaa !27 ; 7 uses
  %i.bz = load i32, ptr %i.m, align 8, !tbaa !52
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.j, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.i
  %.pre685 = load ptr, ptr %i.bj, align 8, !tbaa !21
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i32 %i.by, 16
  br i1 %i.cb, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i283 = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i283, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ce = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.cf = icmp samesign ult i32 %i.by, 1073741823
  %i.cg = shl nuw nsw i32 %i.by, 1
  %spec.select.i = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.by, %spec.select.i
  %.pre686 = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %.pre686, null
  %i.ch = zext nneg i32 %spec.select.i to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %.pre686, i64 noundef %i.ci) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.ci) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %i.cl = phi ptr [ %i.ce, %bb.m ], [ %i.cd, %bb.l ], [ %i.cj, %bb.p ], [ %i.ck, %bb.q ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ]
  store ptr %i.cl, ptr %i.bj, align 8, !tbaa !21
  store i32 %spec.select.sink.i, ptr %i.m, align 8, !tbaa !52
  %.pre687 = load i32, ptr %i.bi, align 4, !tbaa !27
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.cm = phi i32 [ %i.by, %.Vec_IntPush.exit_crit_edge ], [ %i.by, %bb.n ], [ %.pre687, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cn = phi ptr [ %.pre685, %.Vec_IntPush.exit_crit_edge ], [ %.pre686, %bb.n ], [ %i.cl, %Vec_IntGrow.exit11.sink.split.i ]
  %i.co = add nsw i32 %i.cm, 1
  store i32 %i.co, ptr %i.bi, align 4, !tbaa !27
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %i.bx, ptr %i.cq, align 4, !tbaa !22
  br label %bb.aa

bb.r:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.bg, align 4, !tbaa !27 ; 7 uses
  %i.cs = load i32, ptr %i.o, align 8, !tbaa !52
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.s, label %.Vec_IntPush.exit292_crit_edge

.Vec_IntPush.exit292_crit_edge:                   ; preds = %bb.r
  %.pre682 = load ptr, ptr %i.bh, align 8, !tbaa !21
  br label %Vec_IntPush.exit292

bb.s:                                             ; preds = %bb.r
  %i.cu = icmp slt i32 %i.cr, 16
  br i1 %i.cu, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i290 = icmp eq ptr %i.cv, null
  br i1 %.not9.i.i290, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cv, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i288

bb.v:                                             ; preds = %bb.t
  %i.cx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i288

bb.w:                                             ; preds = %bb.s
  %i.cy = icmp samesign ult i32 %i.cr, 1073741823
  %i.cz = shl nuw nsw i32 %i.cr, 1
  %spec.select.i285 = select i1 %i.cy, i32 %i.cz, i32 2147483647 ; 4 uses
  %.not.i9.i286 = icmp samesign ult i32 %i.cr, %spec.select.i285
  %.pre683 = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i9.i286, label %bb.x, label %Vec_IntPush.exit292

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i287 = icmp eq ptr %.pre683, null
  %i.da = zext nneg i32 %spec.select.i285 to i64
  %i.db = shl nuw nsw i64 %i.da, 2                ; 2 uses
  br i1 %.not9.i10.i287, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %.pre683, i64 noundef %i.db) #25
  br label %Vec_IntGrow.exit11.sink.split.i288

bb.z:                                             ; preds = %bb.x
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #24
  br label %Vec_IntGrow.exit11.sink.split.i288

Vec_IntGrow.exit11.sink.split.i288:               ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %i.de = phi ptr [ %i.cx, %bb.v ], [ %i.cw, %bb.u ], [ %i.dc, %bb.y ], [ %i.dd, %bb.z ] ; 2 uses
  %spec.select.sink.i289 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i285, %bb.y ], [ %spec.select.i285, %bb.z ]
  store ptr %i.de, ptr %i.bh, align 8, !tbaa !21
  store i32 %spec.select.sink.i289, ptr %i.o, align 8, !tbaa !52
  %.pre684 = load i32, ptr %i.bg, align 4, !tbaa !27
  br label %Vec_IntPush.exit292

Vec_IntPush.exit292:                              ; preds = %.Vec_IntPush.exit292_crit_edge, %bb.w, %Vec_IntGrow.exit11.sink.split.i288
  %i.df = phi i32 [ %i.cr, %.Vec_IntPush.exit292_crit_edge ], [ %i.cr, %bb.w ], [ %.pre684, %Vec_IntGrow.exit11.sink.split.i288 ] ; 2 uses
  %i.dg = phi ptr [ %.pre682, %.Vec_IntPush.exit292_crit_edge ], [ %.pre683, %bb.w ], [ %i.de, %Vec_IntGrow.exit11.sink.split.i288 ]
  %i.dh = add nsw i32 %i.df, 1
  store i32 %i.dh, ptr %i.bg, align 4, !tbaa !27
  %i.di = sext i32 %i.df to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  %i.dk = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_IntPush.exit292, %Vec_IntPush.exit
  %i.dl = add nsw i32 %.0200537, 1
  %.pre688 = load i32, ptr %i.af, align 8, !tbaa !45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.dm = phi i32 [ %.pre688, %bb.aa ], [ %i.bk, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.dl, %bb.aa ], [ %.0200537, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %bb.f, label %.critedge, !llvm.loop !120

.critedge:                                        ; preds = %bb.f, %bb.ab, %Vec_IntFill.exit
  %i.dp = getelementptr i8, ptr %i.o, i64 4       ; 4 uses
  %.val246539 = load i32, ptr %i.dp, align 4, !tbaa !27
  %i.dq = icmp sgt i32 %.val246539, 0
  br i1 %i.dq, label %.lr.ph541, label %.critedge2

.lr.ph541:                                        ; preds = %.critedge
  %i.dr = getelementptr i8, ptr %i.o, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph541, %bb.av
  %i.du = phi ptr [ %i.ad, %.lr.ph541 ], [ %i.fx, %bb.av ] ; 3 uses
  %i.dv = phi ptr [ %i.ad, %.lr.ph541 ], [ %i.fy, %bb.av ] ; 5 uses
  %indvars.iv633 = phi i64 [ 0, %.lr.ph541 ], [ %indvars.iv.next634, %bb.av ] ; 2 uses
  %.val232 = load ptr, ptr %i.dr, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val232, i64 %indvars.iv633
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22 ; 2 uses
  %i.dy = load ptr, ptr @pBnd, align 8, !tbaa !10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %.val.i = load ptr, ptr %i.ed, align 8, !tbaa !21
  %i.ee = sext i32 %i.dx to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22
  %i.eh = getelementptr i8, ptr %i.ea, i64 8
  %.val1.i = load ptr, ptr %i.eh, align 8, !tbaa !25
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.val1.i, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %.val2.i = load i32, ptr %i.el, align 4, !tbaa !27
  %i.em = icmp eq i32 %.val2.i, 0
  br i1 %i.em, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %.val264 = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.en = getelementptr inbounds [12 x i8], ptr %.val264, i64 %i.ee
  %i.eo = load i32, ptr %i.ac, align 4, !tbaa !49 ; 7 uses
  %i.ep = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.eq = icmp eq i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ae, label %Vec_PtrPush.exit

bb.ae:                                            ; preds = %bb.ad
  %i.er = icmp slt i32 %i.eo, 16
  br i1 %i.er, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i295 = icmp eq ptr %i.dv, null
  br i1 %.not9.i.i295, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dv, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ah:                                            ; preds = %bb.af
  %i.et = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ai:                                            ; preds = %bb.ae
  %i.eu = icmp samesign ult i32 %i.eo, 1073741823
  %i.ev = shl nuw nsw i32 %i.eo, 1
  %spec.select.i293 = select i1 %i.eu, i32 %i.ev, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.eo, %spec.select.i293
  br i1 %.not.i10.i, label %bb.aj, label %Vec_PtrPush.exit

bb.aj:                                            ; preds = %bb.ai
  %.not9.i11.i = icmp eq ptr %i.dv, null
  %i.ew = zext nneg i32 %spec.select.i293 to i64
  %i.ex = shl nuw nsw i64 %i.ew, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = tail call ptr @realloc(ptr noundef nonnull %i.dv, i64 noundef %i.ex) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ex) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ak, %bb.al, %bb.ag, %bb.ah
  %storemerge526 = phi ptr [ %i.et, %bb.ah ], [ %i.es, %bb.ag ], [ %i.ey, %bb.ak ], [ %i.ez, %bb.al ] ; 2 uses
  %spec.select.sink.i294 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i293, %bb.ak ], [ %spec.select.i293, %bb.al ]
  store ptr %storemerge526, ptr %i.ae, align 8, !tbaa !25
  store i32 %spec.select.sink.i294, ptr %i.ab, align 8, !tbaa !50
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.ad, %bb.ai, %Vec_PtrGrow.exit12.sink.split.i
  %i.fa = phi ptr [ %i.du, %bb.ad ], [ %i.du, %bb.ai ], [ %storemerge526, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.fb = add nsw i32 %i.eo, 1
  store i32 %i.fb, ptr %i.ac, align 4, !tbaa !49
  %i.fc = sext i32 %i.eo to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fc
  store ptr %i.en, ptr %i.fd, align 8, !tbaa !26
  br label %bb.av

bb.am:                                            ; preds = %bb.ac
  %i.fe = load i32, ptr %i.ds, align 4, !tbaa !27 ; 7 uses
  %i.ff = load i32, ptr %i.s, align 8, !tbaa !52
  %i.fg = icmp eq i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.an, label %.Vec_IntPush.exit303_crit_edge

.Vec_IntPush.exit303_crit_edge:                   ; preds = %bb.am
  %.pre689 = load ptr, ptr %i.dt, align 8, !tbaa !21
  br label %Vec_IntPush.exit303

bb.an:                                            ; preds = %bb.am
  %i.fh = icmp slt i32 %i.fe, 16
  br i1 %i.fh, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i301 = icmp eq ptr %i.fi, null
  br i1 %.not9.i.i301, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fi, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i299

bb.aq:                                            ; preds = %bb.ao
  %i.fk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i299

bb.ar:                                            ; preds = %bb.an
  %i.fl = icmp samesign ult i32 %i.fe, 1073741823
  %i.fm = shl nuw nsw i32 %i.fe, 1
  %spec.select.i296 = select i1 %i.fl, i32 %i.fm, i32 2147483647 ; 4 uses
  %.not.i9.i297 = icmp samesign ult i32 %i.fe, %spec.select.i296
  %.pre690 = load ptr, ptr %i.dt, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i9.i297, label %bb.as, label %Vec_IntPush.exit303

bb.as:                                            ; preds = %bb.ar
  %.not9.i10.i298 = icmp eq ptr %.pre690, null
  %i.fn = zext nneg i32 %spec.select.i296 to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2                ; 2 uses
  br i1 %.not9.i10.i298, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = tail call ptr @realloc(ptr noundef nonnull %.pre690, i64 noundef %i.fo) #25
  br label %Vec_IntGrow.exit11.sink.split.i299

bb.au:                                            ; preds = %bb.as
  %i.fq = tail call noalias ptr @malloc(i64 noundef %i.fo) #24
  br label %Vec_IntGrow.exit11.sink.split.i299

Vec_IntGrow.exit11.sink.split.i299:               ; preds = %bb.at, %bb.au, %bb.ap, %bb.aq
  %i.fr = phi ptr [ %i.fk, %bb.aq ], [ %i.fj, %bb.ap ], [ %i.fp, %bb.at ], [ %i.fq, %bb.au ] ; 2 uses
  %spec.select.sink.i300 = phi i32 [ 16, %bb.aq ], [ 16, %bb.ap ], [ %spec.select.i296, %bb.at ], [ %spec.select.i296, %bb.au ]
  store ptr %i.fr, ptr %i.dt, align 8, !tbaa !21
  store i32 %spec.select.sink.i300, ptr %i.s, align 8, !tbaa !52
  %.pre691 = load i32, ptr %i.ds, align 4, !tbaa !27
  br label %Vec_IntPush.exit303

Vec_IntPush.exit303:                              ; preds = %.Vec_IntPush.exit303_crit_edge, %bb.ar, %Vec_IntGrow.exit11.sink.split.i299
  %i.fs = phi i32 [ %i.fe, %.Vec_IntPush.exit303_crit_edge ], [ %i.fe, %bb.ar ], [ %.pre691, %Vec_IntGrow.exit11.sink.split.i299 ] ; 2 uses
  %i.ft = phi ptr [ %.pre689, %.Vec_IntPush.exit303_crit_edge ], [ %.pre690, %bb.ar ], [ %i.fr, %Vec_IntGrow.exit11.sink.split.i299 ]
  %i.fu = add nsw i32 %i.fs, 1
  store i32 %i.fu, ptr %i.ds, align 4, !tbaa !27
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  store i32 %i.dx, ptr %i.fw, align 4, !tbaa !22
  br label %bb.av

bb.av:                                            ; preds = %Vec_PtrPush.exit, %Vec_IntPush.exit303
  %i.fx = phi ptr [ %i.fa, %Vec_PtrPush.exit ], [ %i.du, %Vec_IntPush.exit303 ] ; 2 uses
  %i.fy = phi ptr [ %i.fa, %Vec_PtrPush.exit ], [ %i.dv, %Vec_IntPush.exit303 ]
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %.val246 = load i32, ptr %i.dp, align 4, !tbaa !27
  %i.fz = sext i32 %.val246 to i64
  %i.ga = icmp slt i64 %indvars.iv.next634, %i.fz
  br i1 %i.ga, label %bb.ac, label %.critedge2, !llvm.loop !121

.critedge2:                                       ; preds = %bb.av, %.critedge
  %i.gb = phi ptr [ %i.ad, %.critedge ], [ %i.fx, %bb.av ] ; 2 uses
  %i.gc = load ptr, ptr @pBnd, align 8, !tbaa !10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !70
  %.not208 = icmp eq i32 %i.ge, 0
  %.val255.pre = load i32, ptr %i.ac, align 4, !tbaa !49 ; 6 uses
  br i1 %.not208, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge2
  %i.gf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %.val255.pre) ; 0 uses
  %.pre693 = load ptr, ptr @pBnd, align 8, !tbaa !10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge2
  %i.gg = phi ptr [ %.pre693, %bb.aw ], [ %i.gc, %.critedge2 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %.val255.pre, ptr %i.gh, align 4, !tbaa !78
  %i.gi = icmp sgt i32 %.val255.pre, 0
  br i1 %i.gi, label %.lr.ph557, label %._crit_edge

.lr.ph557:                                        ; preds = %bb.ax
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.gl = getelementptr i8, ptr %0, i64 248       ; 2 uses
  %i.gm = getelementptr i8, ptr %0, i64 256
  br label %bb.ay

.thread-pre-split.loopexit_crit_edge:             ; preds = %Vec_PtrPush.exit334
  %i.gn = trunc nsw i64 %indvars.iv.next637 to i32 ; 2 uses
  store i32 %i.gn, ptr %i.ac, align 4, !tbaa !49
  store i32 %spec.select.sink.i331551, ptr %i.ab, align 8
  store ptr %storemerge525555, ptr %i.ae, align 8
  br label %thread-pre-split, !llvm.loop !122

thread-pre-split:                                 ; preds = %.preheader527, %.thread-pre-split.loopexit_crit_edge, %Vec_IntPush.exit325, %bb.ay
  %.val253.pr = phi i32 [ %.val253.pr.pre700, %.preheader527 ], [ %i.gn, %.thread-pre-split.loopexit_crit_edge ], [ %.val253.pr.pre, %Vec_IntPush.exit325 ], [ %i.gq, %bb.ay ] ; 3 uses
  %i.go = phi ptr [ %.promoted553, %.preheader527 ], [ %storemerge525555, %.thread-pre-split.loopexit_crit_edge ], [ %.promoted553, %Vec_IntPush.exit325 ], [ %.promoted553, %bb.ay ] ; 2 uses
  %i.gp = icmp sgt i32 %.val253.pr, 0
  br i1 %i.gp, label %bb.ay, label %._crit_edge.loopexit

bb.ay:                                            ; preds = %.lr.ph557, %thread-pre-split
  %.promoted553 = phi ptr [ %i.gb, %.lr.ph557 ], [ %i.go, %thread-pre-split ] ; 5 uses
  %.val253556 = phi i32 [ %.val255.pre, %.lr.ph557 ], [ %.val253.pr, %thread-pre-split ]
  %i.gq = add nsw i32 %.val253556, -1             ; 3 uses
  store i32 %i.gq, ptr %i.ac, align 4, !tbaa !49
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.promoted553, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !26
  %.val268 = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.gu = ptrtoint ptr %i.gt to i64               ; 3 uses
  %i.gv = ptrtoint ptr %.val268 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = sdiv exact i64 %i.gw, 12                ; 2 uses
  %i.gy = trunc i64 %i.gx to i32                  ; 7 uses
  %.val231 = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 6 uses
  %sext522 = shl i64 %i.gx, 32
  %i.gz = ashr exact i64 %sext522, 32             ; 3 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %.val231, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !22
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %thread-pre-split, label %bb.az, !llvm.loop !122

bb.az:                                            ; preds = %bb.ay
  %i.hd = add nsw i32 %i.gy, 1                    ; 2 uses
  %i.he = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %.not.i.not.i = icmp sgt i32 %i.he, %i.gy
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hf = load i32, ptr %i.ag, align 8, !tbaa !52 ; 4 uses
  %i.hg = shl nsw i32 %i.hf, 1                    ; 2 uses
  %.not.i304 = icmp sgt i32 %i.hg, %i.gy
  %.not.i.i.not.i = icmp sgt i32 %i.hf, %i.gy     ; 2 uses
  br i1 %.not.i304, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %Vec_IntGrow.exit.sink.split.i.i

bb.bc:                                            ; preds = %bb.ba
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hh = icmp slt i32 %i.hf, 1073741823
  %spec.select.i.i = select i1 %i.hh, i32 %i.hg, i32 2147483647 ; 2 uses
  %.not.i22.i.i = icmp slt i32 %i.hf, %spec.select.i.i
  br i1 %.not.i22.i.i, label %Vec_IntGrow.exit.sink.split.i.i, label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.bd, %bb.bb
  %spec.select.i.i.sink = phi i32 [ %i.hd, %bb.bb ], [ %spec.select.i.i, %bb.bd ] ; 2 uses
  %i.hi = sext i32 %spec.select.i.i.sink to i64
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %.val231, i64 noundef %i.hj) #25 ; 2 uses
  store ptr %i.hk, ptr %i.bc, align 8, !tbaa !21
  store i32 %spec.select.i.i.sink, ptr %i.ag, align 8, !tbaa !52
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.bd, %bb.bc, %bb.bb
  %i.hl = phi ptr [ %i.hk, %Vec_IntGrow.exit.sink.split.i.i ], [ %.val231, %bb.bd ], [ %.val231, %bb.bc ], [ %.val231, %bb.bb ] ; 2 uses
  %i.hm = sext i32 %i.he to i64
  %i.hn = shl nsw i64 %i.hm, 2
  %scevgep.i.i = getelementptr i8, ptr %i.hl, i64 %i.hn
  %i.ho = sub i32 %i.gy, %i.he
  %i.hp = zext i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.hr, i1 false), !tbaa !22
  store i32 %i.hd, ptr %i.ai, align 4, !tbaa !27
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.az, %Vec_IntGrow.exit.i.i
  %.val.i306 = phi ptr [ %.val231, %bb.az ], [ %i.hl, %Vec_IntGrow.exit.i.i ]
  %i.hs = getelementptr inbounds [4 x i8], ptr %.val.i306, i64 %i.gz
  store i32 1, ptr %i.hs, align 4, !tbaa !22
  %i.ht = load ptr, ptr @pBnd, align 8, !tbaa !10 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !18
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
end_hunk_0
