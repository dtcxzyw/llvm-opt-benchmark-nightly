Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCSatP?download=true
inline.NumInlined: 198
inline.NumDeleted: 70
begin_hunk_0_@CbsP_ManSolveMiterNc:bb.a
  ret ptr %i.r
}

declare void @Gia_ManCreateRefs(ptr noundef) local_unnamed_addr #18

declare void @Gia_ManCleanMark0(ptr noundef) local_unnamed_addr #18

declare void @Gia_ManCleanMark1(ptr noundef) local_unnamed_addr #18

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #18

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #18

declare void @Cec_ManSatAddToStore(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @CbsP_ManAnalyze(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 12 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %CbsP_QuePush.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %i.c, 1                      ; 3 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = sext i32 %i.g to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #27
  %.pre12.pre.i = load i32, ptr %i.b, align 4, !tbaa !77
  %.pre.pre = load i32, ptr %i.d, align 8, !tbaa !78
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %i.g, %bb.d ]
  %.pre12.i = phi i32 [ %.pre12.pre.i, %bb.c ], [ %i.c, %bb.d ]
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !79
  br label %CbsP_QuePush.exit

CbsP_QuePush.exit:                                ; preds = %._crit_edge.i, %bb.e
  %i.o = phi i32 [ %i.e, %._crit_edge.i ], [ %.pre, %bb.e ] ; 3 uses
  %i.p = phi i32 [ %i.c, %._crit_edge.i ], [ %.pre12.i, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.r = add nsw i32 %i.p, 1                      ; 3 uses
  store i32 %i.r, ptr %i.b, align 4, !tbaa !77
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  store ptr null, ptr %i.t, align 8, !tbaa !75
  %i.u = icmp eq i32 %i.r, %i.o
  br i1 %i.u, label %bb.f, label %CbsP_QuePush.exit17

bb.f:                                             ; preds = %CbsP_QuePush.exit
  %i.v = shl nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.v, ptr %i.d, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = sext i32 %i.v to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.y) #27 ; 2 uses
  %.pre12.pre.i15 = load i32, ptr %i.b, align 4, !tbaa !77
  %.pre32.pre = load i32, ptr %i.d, align 8, !tbaa !78
  store ptr %i.z, ptr %i.w, align 8, !tbaa !79
  br label %CbsP_QuePush.exit17

CbsP_QuePush.exit17:                              ; preds = %CbsP_QuePush.exit, %bb.f
  %i.aa = phi i32 [ %.pre32.pre, %bb.f ], [ %i.o, %CbsP_QuePush.exit ] ; 2 uses
  %i.ab = phi i32 [ %.pre12.pre.i15, %bb.f ], [ %i.r, %CbsP_QuePush.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.f ], [ %i.q, %CbsP_QuePush.exit ] ; 3 uses
  %i.ad = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !77
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %2, ptr %i.af, align 8, !tbaa !75
  %i.ag = icmp eq i32 %i.ad, %i.aa
  br i1 %i.ag, label %bb.g, label %CbsP_QuePush.exit24

bb.g:                                             ; preds = %CbsP_QuePush.exit17
  %i.ah = shl nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = sext i32 %i.ah to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #27 ; 2 uses
  %.pre12.pre.i22 = load i32, ptr %i.b, align 4, !tbaa !77
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !79
  br label %CbsP_QuePush.exit24

CbsP_QuePush.exit24:                              ; preds = %CbsP_QuePush.exit17, %bb.g
  %i.am = phi i32 [ %.pre12.pre.i22, %bb.g ], [ %i.ad, %CbsP_QuePush.exit17 ] ; 2 uses
  %i.an = phi ptr [ %i.al, %bb.g ], [ %i.ac, %CbsP_QuePush.exit17 ] ; 3 uses
  %i.ao = add nsw i32 %i.am, 1                    ; 4 uses
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !77
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  store ptr %3, ptr %i.aq, align 8, !tbaa !75
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %CbsP_QuePush.exit24
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !78
  %i.as = icmp eq i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.i, label %CbsP_QuePush.exit31

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i32 %i.ao, 1                    ; 2 uses
  store i32 %i.at, ptr %i.d, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.an, i64 noundef %i.aw) #27 ; 2 uses
  %.pre12.pre.i29 = load i32, ptr %i.b, align 4, !tbaa !77
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !79
  br label %CbsP_QuePush.exit31

CbsP_QuePush.exit31:                              ; preds = %bb.h, %bb.i
  %i.ay = phi i32 [ %.pre12.pre.i29, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %bb.i ], [ %i.an, %bb.h ]
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !77
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %4, ptr %i.bc, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %CbsP_QuePush.exit31, %CbsP_QuePush.exit24
  tail call fastcc void @CbsP_ManDeriveReason(ptr noundef nonnull %0, i32 noundef %1)
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !91
  %i.be = load i32, ptr %i.b, align 4, !tbaa !77  ; 4 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !78
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  br label %CbsP_QueFinish.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = shl nsw i32 %i.be, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !79 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 3                    ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #27
  %.pre12.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !77
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre12.i.i = phi i32 [ %.pre12.pre.i.i, %bb.l ], [ %i.be, %bb.m ]
  %i.bo = phi ptr [ %i.bm, %bb.l ], [ %i.bn, %bb.m ] ; 2 uses
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !79
  br label %CbsP_QueFinish.exit

CbsP_QueFinish.exit:                              ; preds = %._crit_edge.i.i, %bb.n
  %i.bp = phi i32 [ %i.be, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.n ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bo, %bb.n ]
  %i.br = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.br, ptr %i.b, align 4, !tbaa !77
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store ptr null, ptr %i.bt, align 8, !tbaa !75
  store i32 %i.br, ptr %i.a, align 8, !tbaa !91
  ret i32 %i.bd
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @CbsP_ManDeriveReason(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.e = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 8 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.o = sext i32 %i.e to i64
  %i.p = add nsw i64 %i.o, 1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %i.q = phi ptr [ %.pre, %.lr.ph ], [ %i.dq, %bb.w ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.061 = phi i32 [ %i.f, %.lr.ph ], [ %.1, %bb.w ] ; 6 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 8 uses
  %i.t = load i64, ptr %i.s, align 4              ; 2 uses
  %i.u = and i64 %i.t, 1073741824
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i64 %i.t, -1073741825
  store i64 %i.v, ptr %i.s, align 4
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !54   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51   ; 7 uses
  %i.z = load i32, ptr %i.w, align 8, !tbaa !52
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp slt i32 %i.y, 16
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 128) #27
  br label %Vec_PtrGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.af, %bb.g ]
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !53
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.y, 1073741823
  %i.ai = shl nuw nsw i32 %i.y, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.y, %spec.select.i
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ak, null
  %i.al = zext nneg i32 %spec.select.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef %i.am) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ao, %bb.k ]
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !53
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.l, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.w, align 8, !tbaa !52
  %.pre70 = load i32, ptr %i.x, align 4, !tbaa !51
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %i.aq = phi i32 [ %i.y, %bb.c ], [ %i.y, %bb.h ], [ %.pre70, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = add nsw i32 %i.aq, 1
  store i32 %i.at, ptr %i.x, align 4, !tbaa !51
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.s, ptr %i.av, align 8, !tbaa !158
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 3 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !55  ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !94
  %i.bb = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.bc = ptrtoint ptr %.val.i to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 12
  %i.bf = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %i.bf, 30
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !72
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.bk = mul nsw i32 %i.bi, 3
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val4.i = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 3 uses
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val4.i, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.bp = icmp slt i32 %i.bo, %1
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Vec_PtrPush.exit
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.br = add nsw i32 %.061, 1
  br label %.sink.split

bb.n:                                             ; preds = %Vec_PtrPush.exit
  %i.bs = getelementptr i8, ptr %i.bn, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !72 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %.idx = mul nsw i64 %i.bu, 12
  %i.bv = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %i.bw = icmp eq i32 %i.bt, 0
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.by = load i32, ptr %i.a, align 8, !tbaa !91
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bz = load i32, ptr %i.g, align 4, !tbaa !77  ; 4 uses
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !78
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !79
  br label %CbsP_QuePush.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = shl nsw i32 %i.bz, 1                    ; 2 uses
  store i32 %i.cc, ptr %i.n, align 8, !tbaa !78
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !79  ; 2 uses
  %.not.i = icmp eq ptr %i.cd, null
  %i.ce = sext i32 %i.cc to i64
  %i.cf = shl nsw i64 %i.ce, 3                    ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = tail call ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef %i.cf) #27
  %.pre12.pre.i = load i32, ptr %i.g, align 4, !tbaa !77
  %.pre71.pre = load ptr, ptr %i.k, align 8, !tbaa !71
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre71.pre, i64 8
  %.pre72.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !47
  %.pre73.pre = load ptr, ptr %i.l, align 8, !tbaa !55
  %.pre74.pre = load ptr, ptr %i.m, align 8, !tbaa !49
  %.phi.trans.insert75.phi.trans.insert = getelementptr i8, ptr %.pre74.pre, i64 8
  %.val5.i51.pre.pre = load ptr, ptr %.phi.trans.insert75.phi.trans.insert, align 8, !tbaa !47
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cf) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val5.i51.pre = phi ptr [ %.val5.i51.pre.pre, %bb.r ], [ %.val4.i, %bb.s ]
  %.pre73 = phi ptr [ %.pre73.pre, %bb.r ], [ %i.az, %bb.s ]
  %.pre72 = phi ptr [ %.pre72.pre, %bb.r ], [ %i.ay, %bb.s ]
  %.pre12.i = phi i32 [ %.pre12.pre.i, %bb.r ], [ %i.bz, %bb.s ]
  %i.ci = phi ptr [ %i.cg, %bb.r ], [ %i.ch, %bb.s ] ; 2 uses
  store ptr %i.ci, ptr %i.j, align 8, !tbaa !79
  br label %CbsP_QuePush.exit

CbsP_QuePush.exit:                                ; preds = %._crit_edge.i, %bb.t
  %.val5.i51 = phi ptr [ %.val4.i, %._crit_edge.i ], [ %.val5.i51.pre, %bb.t ]
  %i.cj = phi ptr [ %i.az, %._crit_edge.i ], [ %.pre73, %bb.t ]
  %i.ck = phi ptr [ %i.ay, %._crit_edge.i ], [ %.pre72, %bb.t ]
  %i.cl = phi i32 [ %i.bz, %._crit_edge.i ], [ %.pre12.i, %bb.t ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ci, %bb.t ] ; 4 uses
  %i.cn = add nsw i32 %i.cl, 1                    ; 4 uses
  store i32 %i.cn, ptr %i.g, align 4, !tbaa !77
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  store ptr %i.bv, ptr %i.cp, align 8, !tbaa !75
  %i.cq = getelementptr i8, ptr %i.cj, i64 32
  %.val.i50 = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cr = ptrtoint ptr %.val.i50 to i64
  %i.cs = sub i64 %i.bb, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 12
  %i.cu = shl i64 %i.ct, 32
  %i.cv = ashr exact i64 %i.cu, 30
  %i.cw = getelementptr inbounds i8, ptr %i.ck, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !72
  %i.cy = mul nsw i32 %i.cx, 3
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr %.val5.i51, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !72 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx59 = mul nsw i64 %i.dd, 12
  %i.de = getelementptr inbounds i8, ptr %i.s, i64 %.idx59
  %.not47 = icmp eq i32 %i.dc, 0
  br i1 %.not47, label %bb.w, label %bb.u

bb.u:                                             ; preds = %CbsP_QuePush.exit
  %i.df = load i32, ptr %i.n, align 8, !tbaa !78
  %i.dg = icmp eq i32 %i.cn, %i.df
  br i1 %i.dg, label %bb.v, label %CbsP_QuePush.exit58

bb.v:                                             ; preds = %bb.u
  %i.dh = shl nsw i32 %i.cn, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.n, align 8, !tbaa !78
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  %i.dk = tail call ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef %i.dj) #27 ; 2 uses
  %.pre12.pre.i56 = load i32, ptr %i.g, align 4, !tbaa !77
  store ptr %i.dk, ptr %i.j, align 8, !tbaa !79
  br label %CbsP_QuePush.exit58

CbsP_QuePush.exit58:                              ; preds = %bb.u, %bb.v
  %i.dl = phi i32 [ %.pre12.pre.i56, %bb.v ], [ %i.cn, %bb.u ] ; 2 uses
  %i.dm = phi ptr [ %i.dk, %bb.v ], [ %i.cm, %bb.u ]
  %i.dn = add nsw i32 %i.dl, 1
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !77
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o, %CbsP_QuePush.exit58
  %.sink101 = phi i32 [ %i.dl, %CbsP_QuePush.exit58 ], [ %i.by, %bb.o ], [ %.061, %bb.m ]
  %.sink99 = phi ptr [ %i.dm, %CbsP_QuePush.exit58 ], [ %i.bx, %bb.o ], [ %i.bq, %bb.m ] ; 2 uses
  %.sink = phi ptr [ %i.de, %CbsP_QuePush.exit58 ], [ %i.s, %bb.o ], [ %i.s, %bb.m ]
  %.1.ph = phi i32 [ %.061, %CbsP_QuePush.exit58 ], [ %.061, %bb.o ], [ %i.br, %bb.m ]
  %i.do = sext i32 %.sink101 to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sink99, i64 %i.do
  store ptr %.sink, ptr %i.dp, align 8, !tbaa !75
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %CbsP_QuePush.exit, %bb.b
  %i.dq = phi ptr [ %i.q, %bb.b ], [ %i.cm, %CbsP_QuePush.exit ], [ %.sink99, %.sink.split ]
  %.1 = phi i32 [ %.061, %bb.b ], [ %.061, %CbsP_QuePush.exit ], [ %.1.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dr = load i32, ptr %i.g, align 4, !tbaa !77
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !156

._crit_edge.loopexit:                             ; preds = %bb.w
  %.pre77 = load ptr, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %2 = phi ptr [ %i.c, %bb.a ], [ %.pre77, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.f, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  store i32 %.0.lcssa, ptr %i.g, align 4, !tbaa !77
  %.phi.trans.insert78 = getelementptr i8, ptr %2, i64 4
  %.val62.pre = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !51
  %i.du = icmp sgt i32 %.val62.pre, 0
  br i1 %i.du, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %._crit_edge, %.lr.ph65
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph65 ], [ 0, %._crit_edge ] ; 2 uses
  %i.dv = phi ptr [ %i.eb, %.lr.ph65 ], [ %2, %._crit_edge ]
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %.val48 = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val48, i64 %indvars.iv67
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !158 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 4
  %i.ea = or i64 %i.dz, 1073741824
  store i64 %i.ea, ptr %i.dy, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val = load i32, ptr %i.ec, align 4, !tbaa !51
  %i.ed = sext i32 %.val to i64
  %i.ee = icmp slt i64 %indvars.iv.next68, %i.ed
  br i1 %i.ee, label %.lr.ph65, label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %.lr.ph65, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #20

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #18

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !76}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"CbsP_Par_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !6, i64 168, !6, i64 172, !6, i64 176}
!11 = !{!10, !6, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 28}
!14 = !{!10, !6, i64 40}
!15 = !{!10, !6, i64 44}
!16 = !{!10, !6, i64 52}
!17 = !{!10, !6, i64 64}
!18 = !{!10, !6, i64 76}
!19 = !{!10, !6, i64 168}
!20 = !{!10, !6, i64 172}
!21 = !{!10, !6, i64 176}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"p1 _ZTS10Gia_Man_t_", !22, i64 0}
!24 = !{!"any p2 pointer", !22, i64 0}
!25 = !{!"p2 _ZTS10Gia_Obj_t_", !24, i64 0}
!26 = !{!"CbsP_Que_t_", !6, i64 0, !6, i64 4, !6, i64 8, !25, i64 16}
!27 = !{!"p1 _ZTS10Vec_Int_t_", !22, i64 0}
!28 = !{!"p1 _ZTS10Vec_Ptr_t_", !22, i64 0}
!29 = !{!"CbsP_Man_t_", !10, i64 0, !23, i64 184, !26, i64 192, !26, i64 216, !26, i64 240, !25, i64 264, !27, i64 272, !27, i64 280, !27, i64 288, !28, i64 296, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360}
!30 = !{!29, !6, i64 0}
!31 = !{!10, !6, i64 72}
!32 = !{!10, !6, i64 80}
!33 = !{!10, !6, i64 60}
!34 = !{!10, !6, i64 68}
!35 = !{!10, !6, i64 84}
!36 = !{!10, !6, i64 88}
!37 = !{!10, !6, i64 92}
!38 = !{!29, !25, i64 208}
!39 = !{!29, !25, i64 232}
!40 = !{!29, !25, i64 256}
!41 = !{!29, !6, i64 244}
!42 = !{!29, !6, i64 240}
!43 = !{!"p1 int", !22, i64 0}
!44 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !43, i64 8}
!45 = !{!44, !6, i64 4}
!46 = !{!44, !6, i64 0}
!47 = !{!44, !43, i64 8}
!48 = !{!29, !27, i64 288}
!49 = !{!29, !27, i64 272}
!50 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !24, i64 8}
!51 = !{!50, !6, i64 4}
!52 = !{!50, !6, i64 0}
!53 = !{!50, !24, i64 8}
!54 = !{!29, !28, i64 296}
!55 = !{!29, !23, i64 184}
!56 = !{!"p1 omnipotent char", !22, i64 0}
!57 = !{!"p1 _ZTS10Gia_Obj_t_", !22, i64 0}
!58 = !{!"p1 _ZTS10Gia_Rpr_t_", !22, i64 0}
!59 = !{!"p1 _ZTS10Vec_Wec_t_", !22, i64 0}
!60 = !{!"p1 _ZTS10Vec_Str_t_", !22, i64 0}
!61 = !{!"p1 _ZTS10Abc_Cex_t_", !22, i64 0}
!62 = !{!"p1 _ZTS10Gia_Plc_t_", !22, i64 0}
!63 = !{!"p1 _ZTS10Vec_Flt_t_", !22, i64 0}
!64 = !{!"float", !5, i64 0}
!65 = !{!"p1 _ZTS10Vec_Vec_t_", !22, i64 0}
!66 = !{!"p1 _ZTS10Vec_Wrd_t_", !22, i64 0}
!67 = !{!"p1 _ZTS10Vec_Bit_t_", !22, i64 0}
!68 = !{!"p1 _ZTS10Gia_Dat_t_", !22, i64 0}
!69 = !{!"Gia_Man_t_", !56, i64 0, !56, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !57, i64 32, !43, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !27, i64 64, !27, i64 72, !44, i64 80, !44, i64 96, !6, i64 112, !6, i64 116, !6, i64 120, !44, i64 128, !43, i64 144, !43, i64 152, !27, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !43, i64 184, !58, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !6, i64 224, !6, i64 228, !43, i64 232, !6, i64 240, !27, i64 248, !27, i64 256, !27, i64 264, !59, i64 272, !59, i64 280, !27, i64 288, !22, i64 296, !27, i64 304, !27, i64 312, !60, i64 320, !56, i64 328, !27, i64 336, !27, i64 344, !27, i64 352, !27, i64 360, !27, i64 368, !61, i64 376, !61, i64 384, !28, i64 392, !44, i64 400, !44, i64 416, !27, i64 432, !27, i64 440, !27, i64 448, !27, i64 456, !27, i64 464, !27, i64 472, !27, i64 480, !27, i64 488, !27, i64 496, !27, i64 504, !27, i64 512, !56, i64 520, !62, i64 528, !23, i64 536, !63, i64 544, !63, i64 552, !27, i64 560, !27, i64 568, !27, i64 576, !27, i64 584, !27, i64 592, !6, i64 600, !64, i64 604, !64, i64 608, !27, i64 616, !43, i64 624, !6, i64 632, !28, i64 640, !28, i64 648, !28, i64 656, !27, i64 664, !27, i64 672, !27, i64 680, !27, i64 688, !27, i64 696, !27, i64 704, !27, i64 712, !27, i64 720, !27, i64 728, !65, i64 736, !63, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !9, i64 776, !9, i64 784, !22, i64 792, !43, i64 800, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !66, i64 856, !66, i64 864, !66, i64 872, !66, i64 880, !27, i64 888, !27, i64 896, !27, i64 904, !67, i64 912, !6, i64 920, !6, i64 924, !6, i64 928, !27, i64 936, !6, i64 944, !6, i64 948, !27, i64 952, !27, i64 960, !28, i64 968, !66, i64 976, !27, i64 984, !27, i64 992, !6, i64 1000, !6, i64 1004, !66, i64 1008, !44, i64 1016, !44, i64 1032, !44, i64 1048, !68, i64 1064, !60, i64 1072, !60, i64 1080, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !60, i64 1104, !27, i64 1112, !27, i64 1120, !27, i64 1128, !28, i64 1136}
!70 = !{!69, !6, i64 24}
!71 = !{!29, !27, i64 280}
!72 = !{!6, !6, i64 0}
!73 = !{!29, !6, i64 192}
!74 = !{!29, !6, i64 196}
!75 = !{!57, !57, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!26, !6, i64 4}
!78 = !{!26, !6, i64 8}
!79 = !{!26, !25, i64 16}
!80 = !{!29, !6, i64 56}
!81 = !{!29, !6, i64 176}
!82 = !{!29, !6, i64 216}
!83 = !{!29, !6, i64 220}
!84 = !{!29, !6, i64 48}
!85 = !{!29, !6, i64 168}
!86 = !{!29, !6, i64 52}
!87 = !{!29, !6, i64 172}
!88 = !{!29, !6, i64 16}
!89 = !{!29, !6, i64 4}
!90 = !{!29, !6, i64 8}
!91 = !{!26, !6, i64 0}
!92 = !{!29, !6, i64 28}
!93 = !{!29, !6, i64 32}
!94 = !{!69, !57, i64 32}
!95 = !{!69, !43, i64 144}
!96 = !{!29, !6, i64 12}
!97 = !{!29, !6, i64 20}
!98 = !{!29, !6, i64 24}
!99 = !{!"timespec", !9, i64 0, !9, i64 8}
!100 = !{!99, !9, i64 0}
!101 = !{!99, !9, i64 8}
!102 = !{!29, !6, i64 308}
!103 = !{!29, !9, i64 344}
!104 = !{!29, !6, i64 324}
!105 = !{!29, !6, i64 304}
!106 = !{!29, !9, i64 336}
!107 = !{!29, !6, i64 320}
!108 = !{!29, !6, i64 312}
!109 = !{!29, !9, i64 352}
!110 = !{!29, !6, i64 328}
!111 = !{!69, !27, i64 72}
!112 = !{!29, !6, i64 316}
!113 = !{!29, !9, i64 360}
!114 = !{!10, !6, i64 36}
!115 = !{!10, !9, i64 96}
!116 = !{!10, !9, i64 120}
!117 = !{!10, !9, i64 144}
!118 = !{!10, !9, i64 104}
!119 = !{!10, !9, i64 128}
!120 = !{!10, !9, i64 152}
!121 = !{!10, !9, i64 112}
!122 = !{!10, !9, i64 136}
!123 = !{!10, !9, i64 160}
!124 = !{!29, !6, i64 248}
!125 = !{!29, !6, i64 224}
!126 = !{!29, !6, i64 200}
!127 = distinct !{!127, !76}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !76}
!130 = distinct !{!130, !76}
!131 = distinct !{!131, !76}
!132 = !{!29, !6, i64 36}
!133 = distinct !{!133, !76}
!134 = distinct !{!134, !76}
end_hunk_0
