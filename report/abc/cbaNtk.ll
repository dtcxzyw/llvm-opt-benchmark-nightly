Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaNtk?download=true
inline.NumInlined: 1096
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Cba_NtkPrintDistrib:Vec_IntStart.exit
bb.bv:                                            ; preds = %.lr.ph603, %bb.cc
  %indvars.iv614 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next615, %bb.cc ] ; 4 uses
  %.val458 = load ptr, ptr %i.ahp, align 8, !tbaa !24
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %.val458, i64 %indvars.iv614
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !27 ; 3 uses
  %i.aht = lshr i64 %i.ahs, 42                    ; 3 uses
  %i.ahu = trunc nuw nsw i64 %i.aht to i32        ; 2 uses
  %i.ahv = lshr i64 %i.ahs, 21
  %i.ahw = trunc i64 %i.ahv to i32                ; 2 uses
  %i.ahx = and i32 %i.ahw, 2097151                ; 2 uses
  %i.ahy = trunc i64 %i.ahs to i32                ; 2 uses
  %i.ahz = trunc nuw nsw i64 %indvars.iv614 to i32 ; 2 uses
  %i.aia = urem i32 %i.ahz, 6
  %i.aib = icmp eq i32 %i.aia, 5
  %i.aic = icmp ne i64 %i.aht, 0                  ; 2 uses
  %or.cond4 = select i1 %i.aib, i1 %i.aic, i1 false
  br i1 %or.cond4, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aid = and i32 %i.ahz, 7
  %i.aie = icmp ne i32 %i.aid, 7
  %or.cond7 = select i1 %i.aie, i1 true, i1 %i.aic
  br i1 %or.cond7, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.aif = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.val457 = load ptr, ptr %i.ahq, align 8, !tbaa !24
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %.val457, i64 %indvars.iv614
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !27
  %i.aii = trunc i64 %i.aih to i32
  %i.aij = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.aii) ; 0 uses
  %i.aik = and i32 %i.ahy, 1
  %.not340 = icmp eq i32 %i.aik, 0
  %i.ail = select i1 %.not340, ptr @.str.9, ptr @.str.8
  %i.aim = lshr i32 %i.ahy, 1
  %i.ain = and i32 %i.aim, 1048575
  %i.aio = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.ail, i32 noundef %i.ain) ; 0 uses
  %.not341 = icmp eq i32 %i.ahx, 0
  br i1 %.not341, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aip = and i32 %i.ahw, 1
  %.not342 = icmp eq i32 %i.aip, 0
  %i.aiq = select i1 %.not342, ptr @.str.9, ptr @.str.8
  %i.air = lshr i32 %i.ahx, 1
  %i.ais = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %i.aiq, i32 noundef %i.air) ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.not343 = icmp eq i64 %i.aht, 0
  br i1 %.not343, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ait = and i32 %i.ahu, 1
  %.not344 = icmp eq i32 %i.ait, 0
  %i.aiu = select i1 %.not344, ptr @.str.9, ptr @.str.8
  %i.aiv = lshr i32 %i.ahu, 1
  %i.aiw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %i.aiu, i32 noundef %i.aiv) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %putchar345 = call i32 @putchar(i32 32)         ; 0 uses
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %.val354 = load i32, ptr %i.ahn, align 4, !tbaa !25
  %i.aix = sext i32 %.val354 to i64
  %i.aiy = icmp slt i64 %indvars.iv.next615, %i.aix
  br i1 %i.aiy, label %bb.bv, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %bb.cc, %Cba_NtkPrintDistribSortOne.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.br, %.critedge
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond620.not = icmp eq i64 %indvars.iv.next618, 90
  br i1 %exitcond620.not, label %bb.ce, label %bb.br, !llvm.loop !76

bb.ce:                                            ; preds = %bb.cd
  %.val11.i558 = load i32, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  %i.aiz = icmp sgt i32 %.val11.i558, 0
  br i1 %i.aiz, label %.lr.ph.i560.preheader, label %.critedge.i559

.lr.ph.i560.preheader:                            ; preds = %bb.ce
  %i.aja = zext nneg i32 %.val11.i558 to i64
  br label %.lr.ph.i560

.lr.ph.i560:                                      ; preds = %.lr.ph.i560.preheader, %bb.ch
  %indvars.iv.i561 = phi i64 [ %indvars.iv.next.i565, %bb.ch ], [ 0, %.lr.ph.i560.preheader ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %indvars.iv.i561
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !21 ; 3 uses
  %.not.i563 = icmp eq ptr %i.ajc, null
  br i1 %.not.i563, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i560
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aje, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef nonnull %i.aje) #27
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.cg, %bb.cf
  call void @free(ptr noundef nonnull %i.ajc) #27
  br label %bb.ch

bb.ch:                                            ; preds = %Vec_PtrFree.exit.i, %.lr.ph.i560
  %indvars.iv.next.i565 = add nuw nsw i64 %indvars.iv.i561, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next.i565, %i.aja
  br i1 %exitcond621.not, label %.critedge.i559.thread, label %.lr.ph.i560, !llvm.loop !77

.critedge.i559:                                   ; preds = %bb.ce
  %.not.i9.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %.critedge.i559.thread

.critedge.i559.thread:                            ; preds = %bb.ch, %.critedge.i559
  call void @free(ptr noundef nonnull %calloc.i) #27
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i559, %.critedge.i559.thread
  call void @free(ptr noundef nonnull %i.b) #27
  %.val11.i566 = load i32, ptr %i.f, align 4, !tbaa !47 ; 2 uses
  %i.ajf = icmp sgt i32 %.val11.i566, 0
  br i1 %i.ajf, label %.lr.ph.i569.preheader, label %.critedge.i567

.lr.ph.i569.preheader:                            ; preds = %Vec_VecFree.exit
  %i.ajg = zext nneg i32 %.val11.i566 to i64
  br label %.lr.ph.i569

.lr.ph.i569:                                      ; preds = %.lr.ph.i569.preheader, %bb.ck
  %indvars.iv.i571 = phi i64 [ %indvars.iv.next.i578, %bb.ck ], [ 0, %.lr.ph.i569.preheader ] ; 2 uses
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %calloc.i495, i64 %indvars.iv.i571
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !21 ; 3 uses
  %.not.i573 = icmp eq ptr %i.aji, null
  br i1 %.not.i573, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i569
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !20 ; 2 uses
  %.not.i.i574 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i574, label %Vec_PtrFree.exit.i575, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @free(ptr noundef nonnull %i.ajk) #27
  br label %Vec_PtrFree.exit.i575

Vec_PtrFree.exit.i575:                            ; preds = %bb.cj, %bb.ci
  call void @free(ptr noundef nonnull %i.aji) #27
  br label %bb.ck

bb.ck:                                            ; preds = %Vec_PtrFree.exit.i575, %.lr.ph.i569
  %indvars.iv.next.i578 = add nuw nsw i64 %indvars.iv.i571, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next.i578, %i.ajg
  br i1 %exitcond622.not, label %.critedge.i567.thread, label %.lr.ph.i569, !llvm.loop !77

.critedge.i567:                                   ; preds = %Vec_VecFree.exit
  %.not.i9.i568 = icmp eq ptr %calloc.i495, null
  br i1 %.not.i9.i568, label %Vec_VecFree.exit579, label %.critedge.i567.thread

.critedge.i567.thread:                            ; preds = %bb.ck, %.critedge.i567
  call void @free(ptr noundef nonnull %calloc.i495) #27
  br label %Vec_VecFree.exit579

Vec_VecFree.exit579:                              ; preds = %.critedge.i567, %.critedge.i567.thread
  call void @free(ptr noundef nonnull %i.e) #27
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.cl

bb.cl:                                            ; preds = %Vec_VecFree.exit579
  call void @free(ptr noundef nonnull %calloc) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_VecFree.exit579, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @Cba_ManCreatePrimMap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjLeft(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i.i = load i32, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.f = icmp slt i32 %.val.i.i.i, 1
  br i1 %i.f, label %Cba_FonLeft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.h = add nsw i32 %i.d, 1                      ; 4 uses
  %.not.i.not.i.i.i.i = icmp slt i32 %i.d, %.val.i.i.i
  br i1 %.not.i.not.i.i.i.i, label %Cba_FonRange.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %i.d, %i.j
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = zext nneg i32 %i.h to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.n) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  store ptr %i.q, ptr %i.k, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.i, %i.d
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.r, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.t, null
  %i.u = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = phi ptr [ %i.w, %bb.k ], [ %i.x, %bb.l ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.m ], [ %i.h, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.g, align 8, !tbaa !49
  %.pre.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.i, %bb.h
  %i.z = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %.val.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ] ; 2 uses
  %.not3.i.i.i.i = icmp sgt i32 %i.z, %i.d
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ac = sext i32 %i.z to i64                    ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.h to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ae = sub nsw i64 %wide.trip.count.i.i.i.i.i, %i.ac
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !48
  br label %Cba_FonRange.exit.i

Cba_FonRange.exit.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  %i.ag = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ah = sext i32 %i.d to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = ashr i32 %i.aj, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %Cba_FonLeft.exit, label %bb.n

bb.n:                                             ; preds = %Cba_FonRange.exit.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.aq = shl nsw i32 %i.ak, 2
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.i.i2.i = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val.i.i.i2.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !58
  br label %Cba_FonLeft.exit

Cba_FonLeft.exit:                                 ; preds = %bb.a, %Cba_FonRange.exit.i, %bb.n
  %i.av = phi i32 [ %i.au, %bb.n ], [ 0, %Cba_FonRange.exit.i ], [ 0, %bb.a ]
  ret i32 %i.av
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjRight(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i.i = load i32, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.f = icmp slt i32 %.val.i.i.i, 1
  br i1 %i.f, label %Cba_FonRight.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.h = add nsw i32 %i.d, 1                      ; 4 uses
  %.not.i.not.i.i.i.i = icmp slt i32 %i.d, %.val.i.i.i
  br i1 %.not.i.not.i.i.i.i, label %Cba_FonRange.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %i.d, %i.j
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = zext nneg i32 %i.h to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.n) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  store ptr %i.q, ptr %i.k, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.i, %i.d
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.r, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.t, null
  %i.u = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = phi ptr [ %i.w, %bb.k ], [ %i.x, %bb.l ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.m ], [ %i.h, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.g, align 8, !tbaa !49
  %.pre.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.i, %bb.h
  %i.z = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %.val.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.h ] ; 2 uses
  %.not3.i.i.i.i = icmp sgt i32 %i.z, %i.d
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ac = sext i32 %i.z to i64                    ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.h to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ae = sub nsw i64 %wide.trip.count.i.i.i.i.i, %i.ac
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !48
  br label %Cba_FonRange.exit.i

Cba_FonRange.exit.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  %i.ag = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ah = sext i32 %i.d to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = ashr i32 %i.aj, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %Cba_FonRight.exit, label %bb.n

bb.n:                                             ; preds = %Cba_FonRange.exit.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.aq = shl nsw i32 %i.ak, 2
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.i.i2.i = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val.i.i.i2.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  br label %Cba_FonRight.exit

Cba_FonRight.exit:                                ; preds = %bb.a, %Cba_FonRange.exit.i, %bb.n
  %i.aw = phi i32 [ %i.av, %bb.n ], [ 0, %Cba_FonRange.exit.i ], [ 0, %bb.a ]
  ret i32 %i.aw
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Cba_FonNameStr(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = add nsw i32 %1, 1                        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48   ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %1, %i.d
  br i1 %.not.i.not.i.i, label %Cba_FonName.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.f
  %.not.i.i.not.i.i = icmp sgt i32 %i.e, %1       ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.p, null
  %i.q = sext i32 %spec.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.b, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.a, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.v = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.d, %bb.i ], [ %i.d, %bb.h ], [ %i.d, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@Cba_NtkPrintStatsFull:bb.a
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sext i32 %i.bm to i64
  %i.br = sext i32 %i.bk to i64
  %i.bs = sext i32 %i.bi to i64
  %i.bt = sext i32 %i.bg to i64
  %i.bu = sext i32 %i.be to i64
  %i.bv = sext i32 %i.bc to i64
  %i.bw = sext i32 %i.ba to i64
  %i.bx = sext i32 %i.ay to i64
  %i.by = sext i32 %i.aw to i64
  %i.bz = sext i32 %i.au to i64
  %i.ca = sext i32 %i.as to i64
  %i.cb = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.am, i64 1
  %i.cd = insertelement <4 x i32> %i.cc, i32 %i.ao, i64 2
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.aq, i64 3
  %i.cf = sext <4 x i32> %i.ce to <4 x i64>
  %i.cg = shufflevector <4 x i64> %i.cf, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = insertelement <16 x i64> %i.cg, i64 %i.ca, i64 4
  %i.ci = insertelement <16 x i64> %i.ch, i64 %i.bz, i64 5
  %i.cj = insertelement <16 x i64> %i.ci, i64 %i.by, i64 6
  %i.ck = insertelement <16 x i64> %i.cj, i64 %i.bx, i64 7
  %i.cl = insertelement <16 x i64> %i.ck, i64 %i.bw, i64 8
  %i.cm = insertelement <16 x i64> %i.cl, i64 %i.bv, i64 9
  %i.cn = insertelement <16 x i64> %i.cm, i64 %i.bu, i64 10
  %i.co = insertelement <16 x i64> %i.cn, i64 %i.bt, i64 11
  %i.cp = insertelement <16 x i64> %i.co, i64 %i.bs, i64 12
  %i.cq = insertelement <16 x i64> %i.cp, i64 %i.br, i64 13
  %i.cr = insertelement <16 x i64> %i.cq, i64 %i.bq, i64 14
  %i.cs = insertelement <16 x i64> %i.cr, i64 %i.bp, i64 15
  %i.ct = uitofp <16 x i64> %i.cs to <16 x double>
  %i.cu = call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.ct, <16 x double> splat (double 4.000000e+00), <16 x double> splat (double 1.600000e+01))
  %i.cv = fptosi <16 x double> %i.cu to <16 x i32> ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.db = load i32, ptr %i.da, align 8, !tbaa !49
  %i.dc = sext i32 %i.ai to i64
  %i.dd = sext i32 %i.db to i64
  %i.de = sext i32 %i.cz to i64
  %i.df = sext i32 %i.cx to i64
  %i.dg = insertelement <4 x i64> poison, i64 %i.df, i64 0
  %i.dh = insertelement <4 x i64> %i.dg, i64 %i.de, i64 1
  %i.di = insertelement <4 x i64> %i.dh, i64 %i.dd, i64 2
  %i.dj = insertelement <4 x i64> %i.di, i64 %i.dc, i64 3
  %i.dk = uitofp <4 x i64> %i.dj to <4 x double>
  %i.dl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dk, <4 x double> <double 4.000000e+00, double 4.000000e+00, double 4.000000e+00, double 1.000000e+00>, <4 x double> splat (double 1.600000e+01))
  %i.dm = fptosi <4 x double> %i.dl to <4 x i32>
  %i.dn = shl <4 x i32> %i.dm, <i32 0, i32 0, i32 1, i32 0>
  %i.do = shufflevector <16 x i32> %i.cv, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %i.do, %i.dn
  %i.dp = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <16 x i32> %i.dp, <16 x i32> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dr = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.dq)
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ag)
  %op.rdx47 = add i32 %i.ds, 432
  %op.rdx48 = add i32 %op.rdx47, %i.dr
  %i.dt = sitofp i32 %op.rdx48 to double
  %i.du = fmul nnan double %i.dt, f0x3EB0000000000000
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.du) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @Cba_NtkPrintDistrib(ptr noundef nonnull %0, i32 poison)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not30 = icmp eq i32 %2, 0
  br i1 %.not30, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.j
  %indvars.iv = phi i64 [ 1, %bb.d ], [ %indvars.iv.next, %bb.j ] ; 7 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 832
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !40 ; 3 uses
  %.not31 = icmp eq i32 %i.dz, 0
  br i1 %.not31, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 1192 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !40 ; 2 uses
  %.not32 = icmp eq i32 %i.eb, 0
  br i1 %.not32, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !40 ; 2 uses
  %.not33 = icmp eq i32 %i.ed, 0
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !45
  %i.eg = sitofp i32 %i.ed to double
  %i.eh = fmul nnan double %i.eg, 1.000000e+02
  %i.ei = sitofp i32 %i.eb to double
  %i.ej = fdiv double %i.eh, %i.ei
  %i.ek = trunc nuw nsw i64 %indvars.iv to i32
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ek, ptr noundef %i.ef, i32 noundef %i.dz, double noundef %i.ej) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !45
  %i.eo = trunc nuw nsw i64 %indvars.iv to i32
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.eo, ptr noundef %i.en, i32 noundef %i.dz) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 90
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !80

.loopexit:                                        ; preds = %bb.j, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cba_NtkCollectDistrib(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.val16 = load i32, ptr %i.a, align 4, !tbaa !34
  %i.b = icmp sgt i32 %.val16, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %.val14, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !36    ; 3 uses
  %i.f = add i8 %i.e, -90
  %i.g = icmp ult i8 %i.f, -87
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i8 %i.e, 3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.h)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.e to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !34
  %i.r = sext i32 %.val to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjNtkId(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %.not = icmp eq i8 %i.d, 3
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 188        ; 3 uses
  %.val5 = load i32, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.f = icmp slt i32 %.val5, 1
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = add nsw i32 %1, 1                        ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %1, %.val5
  br i1 %.not.i.not.i.i, label %Cba_ObjFunc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.j
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, null
  %2 = zext nneg i32 %i.h to i64
  %i.m = shl nuw nsw i64 %2, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.m) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.m) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  store ptr %i.p, ptr %i.k, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i = select i1 %i.q, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.s, null
  %i.t = zext nneg i32 %spec.select.i.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.u) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = phi ptr [ %i.v, %bb.l ], [ %i.w, %bb.m ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.h, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %i.g, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.j, %bb.i
  %i.y = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val5, %bb.j ], [ %.val5, %bb.i ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.y, %1
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.h to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %scevgep.i.i = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.ad = sub nsw i64 %wide.trip.count.i.i.i, %i.ab
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ae, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !48
  br label %Cba_ObjFunc.exit

Cba_ObjFunc.exit:                                 ; preds = %bb.c, %._crit_edge.i.i.i
  %i.af = getelementptr i8, ptr %0, i64 192
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.b
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %Cba_ObjFunc.exit
  %i.ai = phi i32 [ %i.ah, %Cba_ObjFunc.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define void @Cba_NtkPrintDistribStat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %Cba_NtkBoxPrimNum.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load = load <4 x i8>, ptr %i.f, align 1, !tbaa !36
  %wide.load39 = load <4 x i8>, ptr %i.g, align 1, !tbaa !36
  %i.h = icmp sgt <4 x i8> %wide.load, splat (i8 3)
  %i.i = icmp sgt <4 x i8> %wide.load39, splat (i8 3)
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = zext <4 x i1> %i.i to <4 x i32>
  %i.l = add <4 x i32> %vec.phi, %i.j             ; 2 uses
  %i.m = add <4 x i32> %vec.phi38, %i.k           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Cba_NtkBoxPrimNum.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.09.i.i = phi i32 [ %i.t, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36
  %i.r = icmp sgt i8 %i.q, 3
  %i.s = zext i1 %i.r to i32
  %i.t = add nuw nsw i32 %.09.i.i, %i.s           ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Cba_NtkBoxPrimNum.exit, label %scalar.ph, !llvm.loop !82

Cba_NtkBoxPrimNum.exit:                           ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %.0.lcssa.i.i) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %Cba_NtkBoxPrimNum.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %Cba_NtkBoxPrimNum.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40   ; 2 uses
  %.not20 = icmp eq i32 %i.w, 0
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val22 = load ptr, ptr %0, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %.val22, i64 112
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %i.z, i32 noundef %i.w) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 90
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !83

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i, label %Cba_NtkBoxUserNum.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ab to i64 ; 3 uses
  %min.iters.check41 = icmp ult i32 %i.ab, 8
  br i1 %min.iters.check41, label %scalar.ph40.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.i.i
  %n.vec43 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next50, %vector.body44 ] ; 2 uses
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph42 ], [ %i.al, %vector.body44 ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %vector.ph42 ], [ %i.am, %vector.body44 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index45 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %wide.load48 = load <4 x i8>, ptr %i.af, align 1, !tbaa !36
  %wide.load49 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !36
  %i.ah = icmp eq <4 x i8> %wide.load48, splat (i8 3)
  %i.ai = icmp eq <4 x i8> %wide.load49, splat (i8 3)
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = add <4 x i32> %vec.phi46, %i.aj         ; 2 uses
  %i.am = add <4 x i32> %vec.phi47, %i.ak         ; 2 uses
  %index.next50 = add nuw i64 %index45, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.an, label %middle.block51, label %vector.body44, !llvm.loop !84

middle.block51:                                   ; preds = %vector.body44
  %bin.rdx52 = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx52) ; 2 uses
  %cmp.n53 = icmp eq i64 %n.vec43, %wide.trip.count.i.i.i
  br i1 %cmp.n53, label %Cba_NtkBoxUserNum.exit, label %scalar.ph40.preheader

scalar.ph40.preheader:                            ; preds = %.lr.ph.i.i.i, %middle.block51
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec43, %middle.block51 ]
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ao, %middle.block51 ]
  br label %scalar.ph40

scalar.ph40:                                      ; preds = %scalar.ph40.preheader, %scalar.ph40
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph40 ], [ %indvars.iv.i.i.i.ph, %scalar.ph40.preheader ] ; 2 uses
  %.09.i.i.i = phi i32 [ %i.at, %scalar.ph40 ], [ %.09.i.i.i.ph, %scalar.ph40.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.ar = icmp eq i8 %i.aq, 3
  %i.as = zext i1 %i.ar to i32
  %i.at = add nuw nsw i32 %.09.i.i.i, %i.as       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Cba_NtkBoxUserNum.exit, label %scalar.ph40, !llvm.loop !85

Cba_NtkBoxUserNum.exit:                           ; preds = %scalar.ph40, %middle.block51, %bb.e
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ao, %middle.block51 ], [ %i.at, %scalar.ph40 ]
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.0.lcssa.i.i.i) ; 0 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1564
  %.val2326 = load i32, ptr %i.aw, align 4, !tbaa !31
  %.not.not27 = icmp sgt i32 %.val2326, 1
  br i1 %.not.not27, label %Cba_ManNtk.exit, label %.critedge

Cba_ManNtk.exit:                                  ; preds = %Cba_NtkBoxUserNum.exit, %bb.g
  %i.ax = phi ptr [ %i.bi, %bb.g ], [ %i.av, %Cba_NtkBoxUserNum.exit ] ; 2 uses
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.g ], [ 1, %Cba_NtkBoxUserNum.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %.not19 = icmp eq i32 %i.az, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Cba_ManNtk.exit
  %i.ba = getelementptr i8, ptr %i.ax, i64 1568
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv31
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21 ; 2 uses
  %.val = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.bd = getelementptr i8, ptr %i.bc, i64 12
  %.val21 = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.be = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.bf = tail call ptr @Abc_NamStr(ptr noundef %.val.val, i32 noundef %.val21) #27
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %i.bf, i32 noundef %i.bg) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %Cba_ManNtk.exit, %bb.f
  %i.bi = phi ptr [ %i.ax, %Cba_ManNtk.exit ], [ %.pre, %bb.f ] ; 2 uses
end_hunk_1
begin_hunk_2_@Cba_ObjSetAttrs:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = phi ptr [ %i.u, %bb.l ], [ %i.v, %bb.m ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.n ], [ %i.d, %bb.h ]
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !49
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.j, %bb.i, %bb.d
  %i.x = phi i32 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.f, %bb.j ], [ %i.f, %bb.i ], [ %i.f, %bb.d ] ; 2 uses
  %.not4.i = icmp sgt i32 %i.x, %1
  br i1 %.not4.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.d to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep.i = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ac = sub nsw i64 %wide.trip.count.i.i, %i.aa
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ad, i1 false), !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !48
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.b, %._crit_edge.i.i
  %i.ae = getelementptr i8, ptr %0, i64 224
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.af = sext i32 %1 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.af
  store i32 %.val, ptr %i.ag, align 4, !tbaa !40
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !48  ; 7 uses
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !49
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %Vec_IntSetEntry.exit
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.r, %bb.q
  %i.ap = phi ptr [ %i.an, %bb.q ], [ %i.ao, %bb.r ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.o
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #29
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ay = phi ptr [ %i.aw, %bb.u ], [ %i.ax, %bb.v ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.w, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.w ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !49
  %.pre = load i32, ptr %i.c, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntSetEntry.exit, %bb.s, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %Vec_IntSetEntry.exit ], [ %i.ah, %bb.s ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39 ; 3 uses
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !48
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %3, ptr %i.be, align 4, !tbaa !40
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %.lr.ph.i, label %Vec_IntPushArray.exit

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %bb.x

bb.x:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %i.bg = phi ptr [ %i.bb, %.lr.ph.i ], [ %.pre7.i15, %Vec_IntPush.exit.i ] ; 7 uses
  %.pre.i8 = phi ptr [ %i.bb, %.lr.ph.i ], [ %.pre.i813, %Vec_IntPush.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !48  ; 7 uses
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !49
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.y, label %Vec_IntPush.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bm = icmp slt i32 %i.bj, 16
  br i1 %i.bm, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i11 = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i.i11, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ac:                                            ; preds = %bb.y
  %i.bp = icmp samesign ult i32 %i.bj, 1073741823
  %i.bq = shl nuw nsw i32 %i.bj, 1
  %spec.select.i.i9 = select i1 %i.bp, i32 %i.bq, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bj, %spec.select.i.i9
  br i1 %.not.i9.i.i, label %bb.ad, label %Vec_IntPush.exit.i

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i.i = icmp eq ptr %i.bg, null
  %i.br = zext nneg i32 %spec.select.i.i9 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef %i.bs) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.af, %bb.ae, %bb.ab, %bb.aa
  %i.bv = phi ptr [ %i.bo, %bb.ab ], [ %i.bn, %bb.aa ], [ %i.bt, %bb.ae ], [ %i.bu, %bb.af ] ; 3 uses
  %spec.select.sink.i.i10 = phi i32 [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i.i9, %bb.ae ], [ %spec.select.i.i9, %bb.af ]
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i10, ptr %i.b, align 8, !tbaa !49
  %.pre8.i = load i32, ptr %i.c, align 4, !tbaa !48
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.x, %Vec_IntGrow.exit11.sink.split.i.i, %bb.ac
  %.pre7.i15 = phi ptr [ %i.bv, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bg, %bb.ac ], [ %i.bg, %bb.x ]
  %.pre.i813 = phi ptr [ %i.bv, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bg, %bb.ac ], [ %.pre.i8, %bb.x ] ; 2 uses
  %i.bw = phi i32 [ %.pre8.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bj, %bb.ac ], [ %i.bj, %bb.x ] ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !48
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.pre.i813, i64 %i.by
  store i32 %i.bi, ptr %i.bz, align 4, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntPushArray.exit, label %bb.x, !llvm.loop !132

Vec_IntPushArray.exit:                            ; preds = %Vec_IntPush.exit.i, %Vec_IntPush.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @Cba_ObjAttrArray(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 220        ; 5 uses
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !48 ; 5 uses
  %i.b = icmp slt i32 %.val.i, 1
  br i1 %i.b, label %Cba_ObjAttr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.d = add nsw i32 %1, 1                        ; 8 uses
  %.not.i.not.i.i = icmp slt i32 %1, %.val.i
  br i1 %.not.i.not.i.i, label %Cba_ObjAttr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i = icmp sgt i32 %i.e, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.c, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h
  %i.v = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val.i, %bb.i ], [ %.val.i, %bb.h ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.v, %1
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub nsw i64 %wide.trip.count.i.i.i, %i.y
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ab, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  br label %Cba_ObjAttr.exit

Cba_ObjAttr.exit:                                 ; preds = %bb.b, %._crit_edge.i.i.i
  %.val.i4 = phi i32 [ %.val.i, %bb.b ], [ %i.d, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 4 uses
  %i.ad = sext i32 %1 to i64                      ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %Cba_ObjAttr.exit.thread, label %bb.n

bb.n:                                             ; preds = %Cba_ObjAttr.exit
  %.not.i.not.i.i5 = icmp slt i32 %1, %.val.i4
  br i1 %.not.i.not.i.i5, label %Cba_ObjAttr.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !49  ; 4 uses
  %i.ah = shl nsw i32 %i.ag, 1                    ; 2 uses
  %.not.i.i6 = icmp slt i32 %1, %i.ah
  br i1 %.not.i.i6, label %bb.p, label %Vec_IntGrow.exit.sink.split.i.i.i9

bb.p:                                             ; preds = %bb.o
  %.not.i.i.not.i.i7 = icmp sgt i32 %i.ag, %1
  br i1 %.not.i.i.not.i.i7, label %Vec_IntGrow.exit.i.i.i12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = icmp slt i32 %i.ag, 1073741823
  %spec.select.i.i.i20 = select i1 %i.ai, i32 %i.ah, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i21 = icmp slt i32 %i.ag, %spec.select.i.i.i20
  br i1 %.not.i22.i.i.i21, label %Vec_IntGrow.exit.sink.split.i.i.i9, label %Vec_IntGrow.exit.i.i.i12

Vec_IntGrow.exit.sink.split.i.i.i9:               ; preds = %bb.q, %bb.o
  %spec.select.i.i.i20.sink = phi i32 [ %i.d, %bb.o ], [ %spec.select.i.i.i20, %bb.q ] ; 2 uses
  %i.aj = zext nneg i32 %spec.select.i.i.i20.sink to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call ptr @realloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ak) #29 ; 2 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !39
  store i32 %spec.select.i.i.i20.sink, ptr %i.c, align 8, !tbaa !49
  %.pre.i.i11 = load i32, ptr %i.a, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i12

Vec_IntGrow.exit.i.i.i12:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i9, %bb.q, %bb.p
  %i.am = phi ptr [ %i.al, %Vec_IntGrow.exit.sink.split.i.i.i9 ], [ %.val.i.i, %bb.q ], [ %.val.i.i, %bb.p ] ; 2 uses
  %i.an = phi i32 [ %.pre.i.i11, %Vec_IntGrow.exit.sink.split.i.i.i9 ], [ %.val.i4, %bb.q ], [ %.val.i4, %bb.p ] ; 2 uses
  %.not3.i.i13 = icmp sgt i32 %i.an, %1
  br i1 %.not3.i.i13, label %._crit_edge.i.i.i17, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %Vec_IntGrow.exit.i.i.i12
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %wide.trip.count.i.i.i15 = zext nneg i32 %i.d to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %scevgep.i.i16 = getelementptr i8, ptr %i.am, i64 %i.ap
  %i.aq = sub nsw i64 %wide.trip.count.i.i.i15, %i.ao
  %i.ar = shl nuw nsw i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i16, i8 0, i64 %i.ar, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i17

._crit_edge.i.i.i17:                              ; preds = %.lr.ph.i.i.i14, %Vec_IntGrow.exit.i.i.i12
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ad
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %Cba_ObjAttr.exit23

Cba_ObjAttr.exit23:                               ; preds = %bb.n, %._crit_edge.i.i.i17
  %2 = phi i32 [ %.pre, %._crit_edge.i.i.i17 ], [ %i.af, %bb.n ]
  %i.as = getelementptr i8, ptr %0, i64 240
  %.val = load ptr, ptr %i.as, align 8, !tbaa !39
  %3 = sext i32 %2 to i64
  %i.at = getelementptr [4 x i8], ptr %.val, i64 %3
  %4 = getelementptr i8, ptr %i.at, i64 4
  br label %Cba_ObjAttr.exit.thread

Cba_ObjAttr.exit.thread:                          ; preds = %bb.a, %Cba_ObjAttr.exit, %Cba_ObjAttr.exit23
  %i.au = phi ptr [ %4, %Cba_ObjAttr.exit23 ], [ null, %Cba_ObjAttr.exit ], [ null, %bb.a ]
  ret ptr %i.au
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjAttrSize(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 220        ; 5 uses
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !48 ; 5 uses
  %i.b = icmp slt i32 %.val.i, 1
  br i1 %i.b, label %Cba_ObjAttr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.d = add nsw i32 %1, 1                        ; 8 uses
  %.not.i.not.i.i = icmp slt i32 %1, %.val.i
  br i1 %.not.i.not.i.i, label %Cba_ObjAttr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.f
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.c
  %.not.i.i.not.i.i = icmp sgt i32 %i.e, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.c, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h
  %i.v = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val.i, %bb.i ], [ %.val.i, %bb.h ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.v, %1
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub nsw i64 %wide.trip.count.i.i.i, %i.y
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ab, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  br label %Cba_ObjAttr.exit

Cba_ObjAttr.exit:                                 ; preds = %bb.b, %._crit_edge.i.i.i
  %.val.i4 = phi i32 [ %.val.i, %bb.b ], [ %i.d, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 4 uses
  %i.ad = sext i32 %1 to i64                      ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %Cba_ObjAttr.exit.thread, label %bb.n

bb.n:                                             ; preds = %Cba_ObjAttr.exit
  %.not.i.not.i.i5 = icmp slt i32 %1, %.val.i4
  br i1 %.not.i.not.i.i5, label %Cba_ObjAttr.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !49  ; 4 uses
  %i.ah = shl nsw i32 %i.ag, 1                    ; 2 uses
  %.not.i.i6 = icmp slt i32 %1, %i.ah
  br i1 %.not.i.i6, label %bb.p, label %Vec_IntGrow.exit.sink.split.i.i.i9

bb.p:                                             ; preds = %bb.o
  %.not.i.i.not.i.i7 = icmp sgt i32 %i.ag, %1
  br i1 %.not.i.i.not.i.i7, label %Vec_IntGrow.exit.i.i.i12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = icmp slt i32 %i.ag, 1073741823
  %spec.select.i.i.i20 = select i1 %i.ai, i32 %i.ah, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i21 = icmp slt i32 %i.ag, %spec.select.i.i.i20
  br i1 %.not.i22.i.i.i21, label %Vec_IntGrow.exit.sink.split.i.i.i9, label %Vec_IntGrow.exit.i.i.i12

Vec_IntGrow.exit.sink.split.i.i.i9:               ; preds = %bb.q, %bb.o
  %spec.select.i.i.i20.sink = phi i32 [ %i.d, %bb.o ], [ %spec.select.i.i.i20, %bb.q ] ; 2 uses
  %i.aj = zext nneg i32 %spec.select.i.i.i20.sink to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call ptr @realloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ak) #29 ; 2 uses
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !39
  store i32 %spec.select.i.i.i20.sink, ptr %i.c, align 8, !tbaa !49
  %.pre.i.i11 = load i32, ptr %i.a, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i12

Vec_IntGrow.exit.i.i.i12:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i9, %bb.q, %bb.p
  %i.am = phi ptr [ %i.al, %Vec_IntGrow.exit.sink.split.i.i.i9 ], [ %.val.i.i, %bb.q ], [ %.val.i.i, %bb.p ] ; 2 uses
  %i.an = phi i32 [ %.pre.i.i11, %Vec_IntGrow.exit.sink.split.i.i.i9 ], [ %.val.i4, %bb.q ], [ %.val.i4, %bb.p ] ; 2 uses
  %.not3.i.i13 = icmp sgt i32 %i.an, %1
  br i1 %.not3.i.i13, label %._crit_edge.i.i.i17, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %Vec_IntGrow.exit.i.i.i12
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %wide.trip.count.i.i.i15 = zext nneg i32 %i.d to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %scevgep.i.i16 = getelementptr i8, ptr %i.am, i64 %i.ap
  %i.aq = sub nsw i64 %wide.trip.count.i.i.i15, %i.ao
  %i.ar = shl nuw nsw i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i16, i8 0, i64 %i.ar, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i17

._crit_edge.i.i.i17:                              ; preds = %.lr.ph.i.i.i14, %Vec_IntGrow.exit.i.i.i12
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ad
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %Cba_ObjAttr.exit23

Cba_ObjAttr.exit23:                               ; preds = %bb.n, %._crit_edge.i.i.i17
  %2 = phi i32 [ %.pre, %._crit_edge.i.i.i17 ], [ %i.af, %bb.n ]
  %3 = sext i32 %2 to i64
  %i.as = getelementptr i8, ptr %0, i64 240
  %.val = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds [4 x i8], ptr %.val, i64 %3
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  br label %Cba_ObjAttr.exit.thread

Cba_ObjAttr.exit.thread:                          ; preds = %bb.a, %Cba_ObjAttr.exit, %Cba_ObjAttr.exit23
  %i.av = phi i32 [ %i.au, %Cba_ObjAttr.exit23 ], [ 0, %Cba_ObjAttr.exit ], [ 0, %bb.a ]
  ret i32 %i.av
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjAlloc(ptr nofree noundef %0, i32 noundef range(i32 0, 256) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 92         ; 4 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !34  ; 4 uses
  %trunc = trunc nuw i32 %1 to i8                 ; 2 uses
  switch i8 %trunc, label %bb.v [
    i8 1, label %bb.b
    i8 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 7 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !49
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %i.e, 16
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.j, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.i, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %i.e, 1073741823
  %i.o = shl nuw nsw i32 %i.e, 1
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.e, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %spec.select.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi ptr [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !49
  %.pre81 = load i32, ptr %i.d, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.w = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.g ], [ %.pre81, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = add nsw i32 %i.w, 1
  store i32 %i.z, ptr %i.d, align 4, !tbaa !48
  br label %thread-pre-split

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48 ; 7 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !49
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %Vec_IntPush.exit37

bb.m:                                             ; preds = %bb.l
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i35 = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i36

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i36

Vec_IntGrow.exit.i36:                             ; preds = %bb.p, %bb.o
  %i.ak = phi ptr [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.q:                                             ; preds = %bb.m
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i30 = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i31 = icmp samesign ult i32 %i.ac, %spec.select.i30
  br i1 %.not.i9.i31, label %bb.r, label %Vec_IntPush.exit37

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i32 = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i30 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not9.i10.i32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.aq) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = phi ptr [ %i.ar, %bb.s ], [ %i.as, %bb.t ]
  store ptr %i.at, ptr %i.an, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i33

Vec_IntGrow.exit11.sink.split.i33:                ; preds = %bb.u, %Vec_IntGrow.exit.i36
  %spec.select.sink.i34 = phi i32 [ %spec.select.i30, %bb.u ], [ 16, %Vec_IntGrow.exit.i36 ]
  store i32 %spec.select.sink.i34, ptr %i.aa, align 8, !tbaa !49
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !48
  br label %Vec_IntPush.exit37

Vec_IntPush.exit37:                               ; preds = %bb.l, %bb.q, %Vec_IntGrow.exit11.sink.split.i33
  %i.au = phi i32 [ %i.ac, %bb.l ], [ %i.ac, %bb.q ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i33 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = add nsw i32 %i.au, 1
  store i32 %i.ax, ptr %i.ab, align 4, !tbaa !48
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit37
  %.sink = phi i32 [ %i.w, %Vec_IntPush.exit ], [ %i.au, %Vec_IntPush.exit37 ]
  %.sink114 = phi ptr [ %i.y, %Vec_IntPush.exit ], [ %i.aw, %Vec_IntPush.exit37 ]
  %i.ay = sext i32 %.sink to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.sink114, i64 %i.ay
  store i32 %.val, ptr %i.az, align 4, !tbaa !40
  %.pr = load i32, ptr %i.b, align 4, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.a
  %i.ba = phi i32 [ %.pr, %thread-pre-split ], [ %.val, %bb.a ] ; 7 uses
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !63
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.w, label %Vec_StrPush.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp slt i32 %i.ba, 16
  br i1 %i.bd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i42 = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i42, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef 16) #29
  br label %Vec_StrGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.z, %bb.y
end_hunk_2
begin_hunk_3_@Cba_ManCollapse:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 224
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !39
  %wide.trip.count.i.i140 = zext nneg i32 %.val.i136 to i64
  %i.cv = shl nuw nsw i64 %wide.trip.count.i.i140, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cu, i8 0, i64 %i.cv, i1 false), !tbaa !40
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i139, %Vec_IntGrow.exit.i.i138
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 220
  store i32 %.val.i136, ptr %i.cw, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 232 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !49
  %.not.i.i3.i = icmp slt i32 %i.cy, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 240 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !39 ; 3 uses
  br i1 %.not.i.i3.i, label %bb.u, label %Cba_NtkCleanObjAttrs.exit

bb.u:                                             ; preds = %Vec_IntFill.exit.i
  %.not9.i.i9.i = icmp eq ptr %i.da, null
  br i1 %.not9.i.i9.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %i.da, i64 noundef 4) #29
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dc = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = phi ptr [ %i.db, %bb.v ], [ %i.dc, %bb.w ] ; 2 uses
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !39
  store i32 1, ptr %i.cx, align 8, !tbaa !49
  br label %Cba_NtkCleanObjAttrs.exit

Cba_NtkCleanObjAttrs.exit:                        ; preds = %Vec_IntFill.exit.i, %bb.x
  %i.de = phi ptr [ %i.dd, %bb.x ], [ %i.da, %Vec_IntFill.exit.i ]
  store i32 -1, ptr %i.de, align 4, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.ao, i64 236
  store i32 1, ptr %i.df, align 4, !tbaa !48
  %.val.i142.pr = load i32, ptr %i.cg, align 4, !tbaa !48
  %i.dg = icmp slt i32 %.val.i142.pr, 1
  br i1 %i.dg, label %Cba_ObjAttr.exit.thread, label %Cba_ObjAttr.exit

Cba_ObjAttr.exit:                                 ; preds = %Cba_NtkCleanObjAttrs.exit
  %i.dh = getelementptr i8, ptr %i.ab, i64 224
  %.val.i.i144 = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.di = load i32, ptr %.val.i.i144, align 4, !tbaa !40
  %.not99 = icmp eq i32 %i.di, 0
  br i1 %.not99, label %Cba_ObjAttr.exit.thread, label %bb.y

bb.y:                                             ; preds = %Cba_ObjAttr.exit
  %i.dj = call fastcc ptr @Cba_ObjAttrArray(ptr noundef nonnull %i.ab, i32 noundef 0)
  %i.dk = call fastcc i32 @Cba_ObjAttrSize(ptr noundef nonnull %i.ab, i32 noundef 0)
  call fastcc void @Cba_ObjSetAttrs(ptr noundef nonnull %i.ao, i32 noundef 0, ptr noundef %i.dj, i32 noundef %i.dk)
  br label %Cba_ObjAttr.exit.thread

Cba_ObjAttr.exit.thread:                          ; preds = %bb.o, %Cba_NtkCleanObjAttrs.exit, %bb.y, %Cba_ObjAttr.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 168 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %.val.i145 = load i32, ptr %i.dm, align 8, !tbaa !63 ; 6 uses
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !49
  %.not.i.i.i146 = icmp slt i32 %i.dn, %.val.i145
  br i1 %.not.i.i.i146, label %bb.z, label %Vec_IntGrow.exit.i.i147

bb.z:                                             ; preds = %Cba_ObjAttr.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.ab, i64 176 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i151 = icmp eq ptr %i.dp, null
  %i.dq = sext i32 %.val.i145 to i64
  %i.dr = shl nsw i64 %i.dq, 2                    ; 2 uses
  br i1 %.not9.i.i.i151, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = call ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef %i.dr) #29
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dt = call noalias ptr @malloc(i64 noundef %i.dr) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.du = phi ptr [ %i.ds, %bb.aa ], [ %i.dt, %bb.ab ]
  store ptr %i.du, ptr %i.do, align 8, !tbaa !39
  store i32 %.val.i145, ptr %i.dl, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.i.i147

Vec_IntGrow.exit.i.i147:                          ; preds = %bb.ac, %Cba_ObjAttr.exit.thread
  %i.dv = icmp sgt i32 %.val.i145, 0
  br i1 %i.dv, label %.lr.ph.i.i149, label %Cba_NtkCleanObjCopies.exit

.lr.ph.i.i149:                                    ; preds = %Vec_IntGrow.exit.i.i147
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !39
  %wide.trip.count.i.i150 = zext nneg i32 %.val.i145 to i64
  %i.dy = shl nuw nsw i64 %wide.trip.count.i.i150, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dx, i8 -1, i64 %i.dy, i1 false), !tbaa !40
  br label %Cba_NtkCleanObjCopies.exit

Cba_NtkCleanObjCopies.exit:                       ; preds = %Vec_IntGrow.exit.i.i147, %.lr.ph.i.i149
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 172
  store i32 %.val.i145, ptr %i.dz, align 4, !tbaa !48
  %.val112322 = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.ea = icmp sgt i32 %.val112322, 0
  br i1 %i.ea, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %Cba_NtkCleanObjCopies.exit
  %i.eb = getelementptr i8, ptr %i.ab, i64 32
  %i.ec = getelementptr i8, ptr %i.ab, i64 128
  %i.ed = getelementptr i8, ptr %i.ao, i64 128    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ab, i64 200 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ab, i64 208    ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 200 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ao, i64 204 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.ao, i64 208    ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ab, i64 264 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ab, i64 272    ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 264 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 268 ; 3 uses
  %i.en = getelementptr i8, ptr %i.ao, i64 272    ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 216 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ab, i64 224    ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Cba_ObjAttr.exit222.thread
  %i.eq = phi ptr [ %i.ae, %.critedge.lr.ph ], [ %i.fm, %Cba_ObjAttr.exit222.thread ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %Cba_ObjAttr.exit222.thread ] ; 2 uses
  %.val116 = load ptr, ptr %i.eb, align 8, !tbaa !39
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv
  %i.es = load i32, ptr %i.er, align 4, !tbaa !40 ; 14 uses
  %.val109 = load ptr, ptr %i.ec, align 8, !tbaa !39
  %i.et = sext i32 %i.es to i64                   ; 3 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.val109, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !40 ; 6 uses
  %i.ew = call fastcc i32 @Cba_ObjDup(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ab, i32 noundef %i.es) ; 7 uses
  %.val108 = load ptr, ptr %i.ed, align 8, !tbaa !39
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %.val108, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !40
  %i.fa = load i32, ptr %i.ad, align 4, !tbaa !48 ; 7 uses
  %i.fb = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ad, label %Vec_IntPush.exit

bb.ad:                                            ; preds = %.critedge
  %i.fd = icmp slt i32 %i.fa, 16
  br i1 %i.fd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not9.i.i = icmp eq ptr %i.eq, null
  br i1 %.not9.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ae
  %i.ff = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ah:                                            ; preds = %bb.ad
  %i.fg = icmp samesign ult i32 %i.fa, 1073741823
  %i.fh = shl nuw nsw i32 %i.fa, 1
  %spec.select.i = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.fa, %spec.select.i
  br i1 %.not.i9.i, label %bb.ai, label %Vec_IntPush.exit

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i = icmp eq ptr %i.eq, null
  %i.fi = zext nneg i32 %spec.select.i to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.fj) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ak:                                            ; preds = %bb.ai
  %i.fl = call noalias ptr @malloc(i64 noundef %i.fj) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aj, %bb.ak, %bb.af, %bb.ag
  %storemerge = phi ptr [ %i.ff, %bb.ag ], [ %i.fe, %bb.af ], [ %i.fk, %bb.aj ], [ %i.fl, %bb.ak ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i, %bb.aj ], [ %spec.select.i, %bb.ak ]
  store ptr %storemerge, ptr %i.af, align 8, !tbaa !39
  store i32 %spec.select.sink.i, ptr %i.ac, align 8, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge, %bb.ah, %Vec_IntGrow.exit11.sink.split.i
  %i.fm = phi ptr [ %i.eq, %.critedge ], [ %i.eq, %bb.ah ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.fn = add nsw i32 %i.fa, 1
  store i32 %i.fn, ptr %i.ad, align 4, !tbaa !48
  %i.fo = sext i32 %i.fa to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  store i32 %i.ez, ptr %i.fp, align 4, !tbaa !40
  %.val124 = load i32, ptr %i.ay, align 4, !tbaa !48 ; 4 uses
  %i.fq = icmp slt i32 %.val124, 1
  br i1 %i.fq, label %bb.bf, label %bb.al

bb.al:                                            ; preds = %Vec_IntPush.exit
  %i.fr = add nsw i32 %i.es, 1                    ; 5 uses
  %.not.i.not.i.i = icmp slt i32 %i.es, %.val124
  br i1 %.not.i.not.i.i, label %Cba_ObjName.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = load i32, ptr %i.ee, align 8, !tbaa !49 ; 4 uses
  %i.ft = shl nsw i32 %i.fs, 1                    ; 2 uses
  %.not.i.i152 = icmp slt i32 %i.es, %i.ft
  br i1 %.not.i.i152, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fu = load ptr, ptr %i.ef, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.fu, null
  %1 = zext nneg i32 %i.fr to i64
  %i.fv = shl nuw nsw i64 %1, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = call ptr @realloc(ptr noundef nonnull %i.fu, i64 noundef %i.fv) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fx = call noalias ptr @malloc(i64 noundef %i.fv) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.aq:                                            ; preds = %bb.am
  %.not.i.i.not.i.i = icmp sgt i32 %i.fs, %i.es
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fy = icmp slt i32 %i.fs, 1073741823
  %spec.select.i.i.i = select i1 %i.fy, i32 %i.ft, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.fs, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.as, label %Vec_IntGrow.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.ef, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.fz, null
  %i.ga = zext nneg i32 %spec.select.i.i.i to i64
  %i.gb = shl nuw nsw i64 %i.ga, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = call ptr @realloc(ptr noundef nonnull %i.fz, i64 noundef %i.gb) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gb) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.at, %bb.au, %bb.ao, %bb.ap
  %storemerge402 = phi ptr [ %i.fx, %bb.ap ], [ %i.fw, %bb.ao ], [ %i.gc, %bb.at ], [ %i.gd, %bb.au ]
  %spec.select.sink.i.i.i = phi i32 [ %i.fr, %bb.ap ], [ %i.fr, %bb.ao ], [ %spec.select.i.i.i, %bb.at ], [ %spec.select.i.i.i, %bb.au ]
  store ptr %storemerge402, ptr %i.ef, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i, ptr %i.ee, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.ay, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ar, %bb.aq
  %i.ge = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val124, %bb.ar ], [ %.val124, %bb.aq ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.ge, %i.es
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.gf = load ptr, ptr %i.ef, align 8, !tbaa !39
  %i.gg = sext i32 %i.ge to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.fr to i64
  %i.gh = shl nsw i64 %i.gg, 2
  %scevgep.i.i = getelementptr i8, ptr %i.gf, i64 %i.gh
  %i.gi = sub nsw i64 %wide.trip.count.i.i.i, %i.gg
  %i.gj = shl nuw nsw i64 %i.gi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.gj, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.fr, ptr %i.ay, align 4, !tbaa !48
  br label %Cba_ObjName.exit

Cba_ObjName.exit:                                 ; preds = %bb.al, %._crit_edge.i.i.i
  %.val.i.i153 = load ptr, ptr %i.ef, align 8, !tbaa !39
  %i.gk = getelementptr inbounds [4 x i8], ptr %.val.i.i153, i64 %i.et
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !40
  %i.gm = add nsw i32 %i.ew, 1                    ; 5 uses
  %i.gn = load i32, ptr %i.eh, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i154 = icmp slt i32 %i.ew, %i.gn
  br i1 %.not.i.not.i.i154, label %Cba_ObjSetName.exit, label %bb.av

bb.av:                                            ; preds = %Cba_ObjName.exit
  %i.go = load i32, ptr %i.eg, align 8, !tbaa !49 ; 4 uses
  %i.gp = shl nsw i32 %i.go, 1                    ; 2 uses
  %.not.i.i155 = icmp slt i32 %i.ew, %i.gp
  %.not.i.i.not.i.i156 = icmp sgt i32 %i.go, %i.ew ; 2 uses
  br i1 %.not.i.i155, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not.i.i.not.i.i156, label %Vec_IntGrow.exit.i.i.i161, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = load ptr, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i157 = icmp eq ptr %i.gq, null
  %i.gr = sext i32 %i.gm to i64
  %i.gs = shl nsw i64 %i.gr, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i157, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gt = call ptr @realloc(ptr noundef nonnull %i.gq, i64 noundef %i.gs) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i158

bb.az:                                            ; preds = %bb.ax
  %i.gu = call noalias ptr @malloc(i64 noundef %i.gs) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i158

bb.ba:                                            ; preds = %bb.av
  br i1 %.not.i.i.not.i.i156, label %Vec_IntGrow.exit.i.i.i161, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = icmp slt i32 %i.go, 1073741823
  %spec.select.i.i.i167 = select i1 %i.gv, i32 %i.gp, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i168 = icmp slt i32 %i.go, %spec.select.i.i.i167
  br i1 %.not.i22.i.i.i168, label %bb.bc, label %Vec_IntGrow.exit.i.i.i161

bb.bc:                                            ; preds = %bb.bb
  %i.gw = load ptr, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i169 = icmp eq ptr %i.gw, null
  %i.gx = sext i32 %spec.select.i.i.i167 to i64
  %i.gy = shl nuw nsw i64 %i.gx, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i169, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = call ptr @realloc(ptr noundef nonnull %i.gw, i64 noundef %i.gy) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i158

bb.be:                                            ; preds = %bb.bc
  %i.ha = call noalias ptr @malloc(i64 noundef %i.gy) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i158

Vec_IntGrow.exit.sink.split.i.i.i158:             ; preds = %bb.bd, %bb.be, %bb.ay, %bb.az
  %storemerge403 = phi ptr [ %i.gu, %bb.az ], [ %i.gt, %bb.ay ], [ %i.gz, %bb.bd ], [ %i.ha, %bb.be ]
  %spec.select.sink.i.i.i159 = phi i32 [ %i.gm, %bb.az ], [ %i.gm, %bb.ay ], [ %spec.select.i.i.i167, %bb.bd ], [ %spec.select.i.i.i167, %bb.be ]
  store ptr %storemerge403, ptr %i.ei, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i159, ptr %i.eg, align 8, !tbaa !49
  %.pre.i.i160 = load i32, ptr %i.eh, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i161

Vec_IntGrow.exit.i.i.i161:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i158, %bb.bb, %bb.ba, %bb.aw
  %i.hb = phi i32 [ %.pre.i.i160, %Vec_IntGrow.exit.sink.split.i.i.i158 ], [ %i.gn, %bb.bb ], [ %i.gn, %bb.ba ], [ %i.gn, %bb.aw ] ; 2 uses
  %.not4.i.i = icmp sgt i32 %i.hb, %i.ew
  br i1 %.not4.i.i, label %._crit_edge.i.i.i165, label %.lr.ph.i.i.i162

.lr.ph.i.i.i162:                                  ; preds = %Vec_IntGrow.exit.i.i.i161
  %i.hc = load ptr, ptr %i.ei, align 8, !tbaa !39
  %i.hd = sext i32 %i.hb to i64                   ; 2 uses
  %wide.trip.count.i.i.i163 = sext i32 %i.gm to i64
  %i.he = shl nsw i64 %i.hd, 2
  %scevgep.i.i164 = getelementptr i8, ptr %i.hc, i64 %i.he
  %i.hf = sub nsw i64 %wide.trip.count.i.i.i163, %i.hd
  %i.hg = shl nuw nsw i64 %i.hf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i164, i8 0, i64 %i.hg, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i165

._crit_edge.i.i.i165:                             ; preds = %.lr.ph.i.i.i162, %Vec_IntGrow.exit.i.i.i161
  store i32 %i.gm, ptr %i.eh, align 4, !tbaa !48
  br label %Cba_ObjSetName.exit

Cba_ObjSetName.exit:                              ; preds = %Cba_ObjName.exit, %._crit_edge.i.i.i165
  %.val.i.i166 = load ptr, ptr %i.ei, align 8, !tbaa !39
  %i.hh = getelementptr inbounds [4 x i8], ptr %.val.i.i166, i64 %i.ex
  store i32 %i.gl, ptr %i.hh, align 4, !tbaa !40
  br label %bb.bf

bb.bf:                                            ; preds = %Cba_ObjSetName.exit, %Vec_IntPush.exit
  %.val127 = load i32, ptr %i.bp, align 4, !tbaa !48 ; 4 uses
  %i.hi = icmp slt i32 %.val127, 1
  br i1 %i.hi, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val107 = load ptr, ptr %i.ed, align 8, !tbaa !39
  %i.hj = getelementptr inbounds [4 x i8], ptr %.val107, i64 %i.ex
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !40 ; 6 uses
  %i.hl = add nsw i32 %i.ev, 1                    ; 5 uses
  %.not.i.not.i.i170 = icmp slt i32 %i.ev, %.val127
  br i1 %.not.i.not.i.i170, label %Cba_FonName.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = load i32, ptr %i.ej, align 8, !tbaa !49 ; 4 uses
  %i.hn = shl nsw i32 %i.hm, 1                    ; 2 uses
  %.not.i.i171 = icmp slt i32 %i.ev, %i.hn
  br i1 %.not.i.i171, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = load ptr, ptr %i.ek, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i173 = icmp eq ptr %i.ho, null
  %2 = zext nneg i32 %i.hl to i64
  %i.hp = shl nuw nsw i64 %2, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i173, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hq = call ptr @realloc(ptr noundef nonnull %i.ho, i64 noundef %i.hp) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i174

bb.bk:                                            ; preds = %bb.bi
  %i.hr = call noalias ptr @malloc(i64 noundef %i.hp) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i174

bb.bl:                                            ; preds = %bb.bh
  %.not.i.i.not.i.i172 = icmp sgt i32 %i.hm, %i.ev
  br i1 %.not.i.i.not.i.i172, label %Vec_IntGrow.exit.i.i.i177, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hs = icmp slt i32 %i.hm, 1073741823
  %spec.select.i.i.i184 = select i1 %i.hs, i32 %i.hn, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i185 = icmp slt i32 %i.hm, %spec.select.i.i.i184
  br i1 %.not.i22.i.i.i185, label %bb.bn, label %Vec_IntGrow.exit.i.i.i177

bb.bn:                                            ; preds = %bb.bm
  %i.ht = load ptr, ptr %i.ek, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i186 = icmp eq ptr %i.ht, null
  %i.hu = zext nneg i32 %spec.select.i.i.i184 to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i186, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hw = call ptr @realloc(ptr noundef nonnull %i.ht, i64 noundef %i.hv) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i174

bb.bp:                                            ; preds = %bb.bn
  %i.hx = call noalias ptr @malloc(i64 noundef %i.hv) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i174

Vec_IntGrow.exit.sink.split.i.i.i174:             ; preds = %bb.bo, %bb.bp, %bb.bj, %bb.bk
  %storemerge404 = phi ptr [ %i.hr, %bb.bk ], [ %i.hq, %bb.bj ], [ %i.hw, %bb.bo ], [ %i.hx, %bb.bp ]
  %spec.select.sink.i.i.i175 = phi i32 [ %i.hl, %bb.bk ], [ %i.hl, %bb.bj ], [ %spec.select.i.i.i184, %bb.bo ], [ %spec.select.i.i.i184, %bb.bp ]
  store ptr %storemerge404, ptr %i.ek, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i175, ptr %i.ej, align 8, !tbaa !49
  %.pre.i.i176 = load i32, ptr %i.bp, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i177

Vec_IntGrow.exit.i.i.i177:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i174, %bb.bm, %bb.bl
  %i.hy = phi i32 [ %.pre.i.i176, %Vec_IntGrow.exit.sink.split.i.i.i174 ], [ %.val127, %bb.bm ], [ %.val127, %bb.bl ] ; 2 uses
  %.not3.i.i178 = icmp sgt i32 %i.hy, %i.ev
  br i1 %.not3.i.i178, label %._crit_edge.i.i.i182, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %Vec_IntGrow.exit.i.i.i177
  %i.hz = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.ia = sext i32 %i.hy to i64                   ; 2 uses
  %wide.trip.count.i.i.i180 = zext nneg i32 %i.hl to i64
  %i.ib = shl nsw i64 %i.ia, 2
  %scevgep.i.i181 = getelementptr i8, ptr %i.hz, i64 %i.ib
  %i.ic = sub nsw i64 %wide.trip.count.i.i.i180, %i.ia
  %i.id = shl nuw nsw i64 %i.ic, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i181, i8 0, i64 %i.id, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i182

._crit_edge.i.i.i182:                             ; preds = %.lr.ph.i.i.i179, %Vec_IntGrow.exit.i.i.i177
  store i32 %i.hl, ptr %i.bp, align 4, !tbaa !48
  br label %Cba_FonName.exit

Cba_FonName.exit:                                 ; preds = %bb.bg, %._crit_edge.i.i.i182
  %.val.i.i183 = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.ie = sext i32 %i.ev to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %.val.i.i183, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !40
  %i.ih = add nsw i32 %i.hk, 1                    ; 5 uses
  %i.ii = load i32, ptr %i.em, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i187 = icmp slt i32 %i.hk, %i.ii
  br i1 %.not.i.not.i.i187, label %Cba_FonSetName.exit, label %bb.bq

bb.bq:                                            ; preds = %Cba_FonName.exit
  %i.ij = load i32, ptr %i.el, align 8, !tbaa !49 ; 4 uses
  %i.ik = shl nsw i32 %i.ij, 1                    ; 2 uses
  %.not.i.i188 = icmp slt i32 %i.hk, %i.ik
  %.not.i.i.not.i.i189 = icmp sgt i32 %i.ij, %i.hk ; 2 uses
  br i1 %.not.i.i188, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %.not.i.i.not.i.i189, label %Vec_IntGrow.exit.i.i.i194, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.il = load ptr, ptr %i.en, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i190 = icmp eq ptr %i.il, null
  %i.im = sext i32 %i.ih to i64
  %i.in = shl nsw i64 %i.im, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i190, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.io = call ptr @realloc(ptr noundef nonnull %i.il, i64 noundef %i.in) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i191

bb.bu:                                            ; preds = %bb.bs
  %i.ip = call noalias ptr @malloc(i64 noundef %i.in) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i191

bb.bv:                                            ; preds = %bb.bq
  br i1 %.not.i.i.not.i.i189, label %Vec_IntGrow.exit.i.i.i194, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iq = icmp slt i32 %i.ij, 1073741823
  %spec.select.i.i.i201 = select i1 %i.iq, i32 %i.ik, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i202 = icmp slt i32 %i.ij, %spec.select.i.i.i201
  br i1 %.not.i22.i.i.i202, label %bb.bx, label %Vec_IntGrow.exit.i.i.i194

bb.bx:                                            ; preds = %bb.bw
  %i.ir = load ptr, ptr %i.en, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i203 = icmp eq ptr %i.ir, null
  %i.is = sext i32 %spec.select.i.i.i201 to i64
  %i.it = shl nuw nsw i64 %i.is, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i203, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iu = call ptr @realloc(ptr noundef nonnull %i.ir, i64 noundef %i.it) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i191

bb.bz:                                            ; preds = %bb.bx
  %i.iv = call noalias ptr @malloc(i64 noundef %i.it) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i191

Vec_IntGrow.exit.sink.split.i.i.i191:             ; preds = %bb.by, %bb.bz, %bb.bt, %bb.bu
  %storemerge405 = phi ptr [ %i.ip, %bb.bu ], [ %i.io, %bb.bt ], [ %i.iu, %bb.by ], [ %i.iv, %bb.bz ]
  %spec.select.sink.i.i.i192 = phi i32 [ %i.ih, %bb.bu ], [ %i.ih, %bb.bt ], [ %spec.select.i.i.i201, %bb.by ], [ %spec.select.i.i.i201, %bb.bz ]
  store ptr %storemerge405, ptr %i.en, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i192, ptr %i.el, align 8, !tbaa !49
  %.pre.i.i193 = load i32, ptr %i.em, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i194

Vec_IntGrow.exit.i.i.i194:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i191, %bb.bw, %bb.bv, %bb.br
  %i.iw = phi i32 [ %.pre.i.i193, %Vec_IntGrow.exit.sink.split.i.i.i191 ], [ %i.ii, %bb.bw ], [ %i.ii, %bb.bv ], [ %i.ii, %bb.br ] ; 2 uses
  %.not4.i.i195 = icmp sgt i32 %i.iw, %i.hk
  br i1 %.not4.i.i195, label %._crit_edge.i.i.i199, label %.lr.ph.i.i.i196

.lr.ph.i.i.i196:                                  ; preds = %Vec_IntGrow.exit.i.i.i194
  %i.ix = load ptr, ptr %i.en, align 8, !tbaa !39
  %i.iy = sext i32 %i.iw to i64                   ; 2 uses
  %wide.trip.count.i.i.i197 = sext i32 %i.ih to i64
  %i.iz = shl nsw i64 %i.iy, 2
  %scevgep.i.i198 = getelementptr i8, ptr %i.ix, i64 %i.iz
  %i.ja = sub nsw i64 %wide.trip.count.i.i.i197, %i.iy
  %i.jb = shl nuw nsw i64 %i.ja, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i198, i8 0, i64 %i.jb, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i199

._crit_edge.i.i.i199:                             ; preds = %.lr.ph.i.i.i196, %Vec_IntGrow.exit.i.i.i194
  store i32 %i.ih, ptr %i.em, align 4, !tbaa !48
  br label %Cba_FonSetName.exit

Cba_FonSetName.exit:                              ; preds = %Cba_FonName.exit, %._crit_edge.i.i.i199
  %.val.i.i200 = load ptr, ptr %i.en, align 8, !tbaa !39
  %i.jc = sext i32 %i.hk to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %.val.i.i200, i64 %i.jc
  store i32 %i.ig, ptr %i.jd, align 4, !tbaa !40
  br label %bb.ca

bb.ca:                                            ; preds = %Cba_FonSetName.exit, %bb.bf
  %.val.i204 = load i32, ptr %i.cg, align 4, !tbaa !48 ; 4 uses
  %i.je = icmp slt i32 %.val.i204, 1
  br i1 %i.je, label %Cba_ObjAttr.exit222.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jf = add nsw i32 %i.es, 1                    ; 5 uses
  %.not.i.not.i.i205 = icmp slt i32 %i.es, %.val.i204
  br i1 %.not.i.not.i.i205, label %Cba_ObjAttr.exit222, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jg = load i32, ptr %i.eo, align 8, !tbaa !49 ; 4 uses
  %i.jh = shl nsw i32 %i.jg, 1                    ; 2 uses
  %.not.i.i206 = icmp slt i32 %i.es, %i.jh
  br i1 %.not.i.i206, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ji = load ptr, ptr %i.ep, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i208 = icmp eq ptr %i.ji, null
  %i.jj = zext nneg i32 %i.jf to i64
  %i.jk = shl nuw nsw i64 %i.jj, 2                ; 2 uses
  br i1 %.not9.i.i.i.i208, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jl = call ptr @realloc(ptr noundef nonnull %i.ji, i64 noundef %i.jk) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i209

bb.cf:                                            ; preds = %bb.cd
  %i.jm = call noalias ptr @malloc(i64 noundef %i.jk) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i209

bb.cg:                                            ; preds = %bb.cc
  %.not.i.i.not.i.i207 = icmp sgt i32 %i.jg, %i.es
  br i1 %.not.i.i.not.i.i207, label %Vec_IntGrow.exit.i.i.i212, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jn = icmp slt i32 %i.jg, 1073741823
  %spec.select.i.i.i219 = select i1 %i.jn, i32 %i.jh, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i220 = icmp slt i32 %i.jg, %spec.select.i.i.i219
  br i1 %.not.i22.i.i.i220, label %bb.ci, label %Vec_IntGrow.exit.i.i.i212

bb.ci:                                            ; preds = %bb.ch
  %i.jo = load ptr, ptr %i.ep, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i221 = icmp eq ptr %i.jo, null
  %i.jp = zext nneg i32 %spec.select.i.i.i219 to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i221, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jr = call ptr @realloc(ptr noundef nonnull %i.jo, i64 noundef %i.jq) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i209

bb.ck:                                            ; preds = %bb.ci
  %i.js = call noalias ptr @malloc(i64 noundef %i.jq) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i209

Vec_IntGrow.exit.sink.split.i.i.i209:             ; preds = %bb.cj, %bb.ck, %bb.ce, %bb.cf
  %storemerge406 = phi ptr [ %i.jm, %bb.cf ], [ %i.jl, %bb.ce ], [ %i.jr, %bb.cj ], [ %i.js, %bb.ck ]
  %spec.select.sink.i.i.i210 = phi i32 [ %i.jf, %bb.cf ], [ %i.jf, %bb.ce ], [ %spec.select.i.i.i219, %bb.cj ], [ %spec.select.i.i.i219, %bb.ck ]
  store ptr %storemerge406, ptr %i.ep, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i210, ptr %i.eo, align 8, !tbaa !49
  %.pre.i.i211 = load i32, ptr %i.cg, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i212

Vec_IntGrow.exit.i.i.i212:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i209, %bb.ch, %bb.cg
  %i.jt = phi i32 [ %.pre.i.i211, %Vec_IntGrow.exit.sink.split.i.i.i209 ], [ %.val.i204, %bb.ch ], [ %.val.i204, %bb.cg ] ; 2 uses
  %.not3.i.i213 = icmp sgt i32 %i.jt, %i.es
  br i1 %.not3.i.i213, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i214

.lr.ph.i.i.i214:                                  ; preds = %Vec_IntGrow.exit.i.i.i212
  %i.ju = load ptr, ptr %i.ep, align 8, !tbaa !39
  %i.jv = sext i32 %i.jt to i64                   ; 2 uses
  %wide.trip.count.i.i.i215 = zext nneg i32 %i.jf to i64
  %i.jw = shl nsw i64 %i.jv, 2
  %scevgep.i.i216 = getelementptr i8, ptr %i.ju, i64 %i.jw
  %i.jx = sub nsw i64 %wide.trip.count.i.i.i215, %i.jv
  %i.jy = shl nuw nsw i64 %i.jx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i216, i8 0, i64 %i.jy, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i217

._crit_edge.i.i.i217:                             ; preds = %.lr.ph.i.i.i214, %Vec_IntGrow.exit.i.i.i212
  store i32 %i.jf, ptr %i.cg, align 4, !tbaa !48
  br label %Cba_ObjAttr.exit222

Cba_ObjAttr.exit222:                              ; preds = %bb.cb, %._crit_edge.i.i.i217
  %.val.i.i218 = load ptr, ptr %i.ep, align 8, !tbaa !39
  %i.jz = getelementptr inbounds [4 x i8], ptr %.val.i.i218, i64 %i.et
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !40
  %.not105 = icmp eq i32 %i.ka, 0
  br i1 %.not105, label %Cba_ObjAttr.exit222.thread, label %bb.cl

bb.cl:                                            ; preds = %Cba_ObjAttr.exit222
  %i.kb = call fastcc ptr @Cba_ObjAttrArray(ptr noundef nonnull %i.ab, i32 noundef %i.es)
  %i.kc = call fastcc i32 @Cba_ObjAttrSize(ptr noundef nonnull %i.ab, i32 noundef %i.es)
  call fastcc void @Cba_ObjSetAttrs(ptr noundef nonnull %i.ao, i32 noundef %i.ew, ptr noundef %i.kb, i32 noundef %i.kc)
  br label %Cba_ObjAttr.exit222.thread

Cba_ObjAttr.exit222.thread:                       ; preds = %bb.ca, %Cba_ObjAttr.exit222, %bb.cl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val112 = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.kd = sext i32 %.val112 to i64
  %i.ke = icmp slt i64 %indvars.iv.next, %i.kd
  br i1 %i.ke, label %.critedge, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %Cba_ObjAttr.exit222.thread, %Cba_NtkCleanObjCopies.exit
  call void @Cba_NtkCollapse_rec(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac)
  %.val114324 = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.kf = icmp sgt i32 %.val114324, 0
  br i1 %i.kf, label %.critedge2.lr.ph, label %._crit_edge326

.critedge2.lr.ph:                                 ; preds = %._crit_edge
  %i.kg = getelementptr i8, ptr %i.ab, i64 48
  %i.kh = getelementptr i8, ptr %i.ab, i64 112
  %i.ki = getelementptr i8, ptr %i.ab, i64 144
  %i.kj = getelementptr i8, ptr %i.ao, i64 112
  %i.kk = getelementptr i8, ptr %i.ao, i64 144
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ab, i64 200 ; 2 uses
  %i.km = getelementptr i8, ptr %i.ab, i64 208    ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ao, i64 200 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ao, i64 204 ; 3 uses
  %i.kp = getelementptr i8, ptr %i.ao, i64 208    ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ab, i64 264 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.ab, i64 272    ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ao, i64 264 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ao, i64 268 ; 3 uses
  %i.ku = getelementptr i8, ptr %i.ao, i64 272    ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ab, i64 216 ; 2 uses
  %i.kw = getelementptr i8, ptr %i.ab, i64 224    ; 5 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.lr.ph, %Cba_ObjAttr.exit316.thread
  %indvars.iv328 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next329, %Cba_ObjAttr.exit316.thread ] ; 3 uses
  %.val117 = load ptr, ptr %i.kg, align 8, !tbaa !39
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.val117, i64 %indvars.iv328
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !40 ; 14 uses
  %.val110 = load ptr, ptr %i.kh, align 8, !tbaa !39
  %.val111 = load ptr, ptr %i.ki, align 8, !tbaa !39
  %i.kz = sext i32 %i.ky to i64                   ; 3 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %.val110, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !40
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %.val111, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !40 ; 6 uses
  %i.lf = call fastcc i32 @Cba_ObjDup(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ab, i32 noundef %i.ky) ; 7 uses
  %.val106 = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv328 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !40
  %.val119 = load ptr, ptr %i.kj, align 8, !tbaa !39
  %.val120 = load ptr, ptr %i.kk, align 8, !tbaa !39
  %i.li = sext i32 %i.lf to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %.val119, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !40
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %.val120, i64 %i.ll
  store i32 %i.lh, ptr %i.lm, align 4, !tbaa !40
  %.val123 = load i32, ptr %i.ay, align 4, !tbaa !48 ; 4 uses
  %i.ln = icmp slt i32 %.val123, 1
  br i1 %i.ln, label %bb.dg, label %bb.cm

bb.cm:                                            ; preds = %.critedge2
  %i.lo = add nsw i32 %i.ky, 1                    ; 5 uses
  %.not.i.not.i.i223 = icmp slt i32 %i.ky, %.val123
  br i1 %.not.i.not.i.i223, label %Cba_ObjName.exit241, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lp = load i32, ptr %i.kl, align 8, !tbaa !49 ; 4 uses
  %i.lq = shl nsw i32 %i.lp, 1                    ; 2 uses
  %.not.i.i224 = icmp slt i32 %i.ky, %i.lq
  br i1 %.not.i.i224, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lr = load ptr, ptr %i.km, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i226 = icmp eq ptr %i.lr, null
  %3 = zext nneg i32 %i.lo to i64
  %i.ls = shl nuw nsw i64 %3, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i226, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lt = call ptr @realloc(ptr noundef nonnull %i.lr, i64 noundef %i.ls) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i227

bb.cq:                                            ; preds = %bb.co
  %i.lu = call noalias ptr @malloc(i64 noundef %i.ls) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i227

bb.cr:                                            ; preds = %bb.cn
  %.not.i.i.not.i.i225 = icmp sgt i32 %i.lp, %i.ky
  br i1 %.not.i.i.not.i.i225, label %Vec_IntGrow.exit.i.i.i230, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lv = icmp slt i32 %i.lp, 1073741823
  %spec.select.i.i.i238 = select i1 %i.lv, i32 %i.lq, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i239 = icmp slt i32 %i.lp, %spec.select.i.i.i238
  br i1 %.not.i22.i.i.i239, label %bb.ct, label %Vec_IntGrow.exit.i.i.i230

bb.ct:                                            ; preds = %bb.cs
  %i.lw = load ptr, ptr %i.km, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i240 = icmp eq ptr %i.lw, null
  %i.lx = zext nneg i32 %spec.select.i.i.i238 to i64
  %i.ly = shl nuw nsw i64 %i.lx, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i240, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lz = call ptr @realloc(ptr noundef nonnull %i.lw, i64 noundef %i.ly) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i227

bb.cv:                                            ; preds = %bb.ct
  %i.ma = call noalias ptr @malloc(i64 noundef %i.ly) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i227

Vec_IntGrow.exit.sink.split.i.i.i227:             ; preds = %bb.cu, %bb.cv, %bb.cp, %bb.cq
  %storemerge407 = phi ptr [ %i.lu, %bb.cq ], [ %i.lt, %bb.cp ], [ %i.lz, %bb.cu ], [ %i.ma, %bb.cv ]
  %spec.select.sink.i.i.i228 = phi i32 [ %i.lo, %bb.cq ], [ %i.lo, %bb.cp ], [ %spec.select.i.i.i238, %bb.cu ], [ %spec.select.i.i.i238, %bb.cv ]
  store ptr %storemerge407, ptr %i.km, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i228, ptr %i.kl, align 8, !tbaa !49
  %.pre.i.i229 = load i32, ptr %i.ay, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i230

Vec_IntGrow.exit.i.i.i230:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i227, %bb.cs, %bb.cr
  %i.mb = phi i32 [ %.pre.i.i229, %Vec_IntGrow.exit.sink.split.i.i.i227 ], [ %.val123, %bb.cs ], [ %.val123, %bb.cr ] ; 2 uses
  %.not3.i.i231 = icmp sgt i32 %i.mb, %i.ky
  br i1 %.not3.i.i231, label %._crit_edge.i.i.i235, label %.lr.ph.i.i.i232

.lr.ph.i.i.i232:                                  ; preds = %Vec_IntGrow.exit.i.i.i230
  %i.mc = load ptr, ptr %i.km, align 8, !tbaa !39
  %i.md = sext i32 %i.mb to i64                   ; 2 uses
  %wide.trip.count.i.i.i233 = zext nneg i32 %i.lo to i64
  %i.me = shl nsw i64 %i.md, 2
  %scevgep.i.i234 = getelementptr i8, ptr %i.mc, i64 %i.me
  %i.mf = sub nsw i64 %wide.trip.count.i.i.i233, %i.md
  %i.mg = shl nuw nsw i64 %i.mf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i234, i8 0, i64 %i.mg, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i235

._crit_edge.i.i.i235:                             ; preds = %.lr.ph.i.i.i232, %Vec_IntGrow.exit.i.i.i230
  store i32 %i.lo, ptr %i.ay, align 4, !tbaa !48
  br label %Cba_ObjName.exit241

Cba_ObjName.exit241:                              ; preds = %bb.cm, %._crit_edge.i.i.i235
  %.val.i.i237 = load ptr, ptr %i.km, align 8, !tbaa !39
  %i.mh = getelementptr inbounds [4 x i8], ptr %.val.i.i237, i64 %i.kz
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !40
  %i.mj = add nsw i32 %i.lf, 1                    ; 5 uses
  %i.mk = load i32, ptr %i.ko, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i242 = icmp slt i32 %i.lf, %i.mk
  br i1 %.not.i.not.i.i242, label %Cba_ObjSetName.exit259, label %bb.cw

bb.cw:                                            ; preds = %Cba_ObjName.exit241
  %i.ml = load i32, ptr %i.kn, align 8, !tbaa !49 ; 4 uses
  %i.mm = shl nsw i32 %i.ml, 1                    ; 2 uses
  %.not.i.i243 = icmp slt i32 %i.lf, %i.mm
  %.not.i.i.not.i.i244 = icmp sgt i32 %i.ml, %i.lf ; 2 uses
  br i1 %.not.i.i243, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %.not.i.i.not.i.i244, label %Vec_IntGrow.exit.i.i.i249, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mn = load ptr, ptr %i.kp, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i245 = icmp eq ptr %i.mn, null
  %i.mo = sext i32 %i.mj to i64
  %i.mp = shl nsw i64 %i.mo, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i245, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mq = call ptr @realloc(ptr noundef nonnull %i.mn, i64 noundef %i.mp) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i246

bb.da:                                            ; preds = %bb.cy
  %i.mr = call noalias ptr @malloc(i64 noundef %i.mp) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i246

bb.db:                                            ; preds = %bb.cw
  br i1 %.not.i.i.not.i.i244, label %Vec_IntGrow.exit.i.i.i249, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ms = icmp slt i32 %i.ml, 1073741823
  %spec.select.i.i.i256 = select i1 %i.ms, i32 %i.mm, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i257 = icmp slt i32 %i.ml, %spec.select.i.i.i256
  br i1 %.not.i22.i.i.i257, label %bb.dd, label %Vec_IntGrow.exit.i.i.i249

bb.dd:                                            ; preds = %bb.dc
  %i.mt = load ptr, ptr %i.kp, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i258 = icmp eq ptr %i.mt, null
  %i.mu = sext i32 %spec.select.i.i.i256 to i64
  %i.mv = shl nuw nsw i64 %i.mu, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i258, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mw = call ptr @realloc(ptr noundef nonnull %i.mt, i64 noundef %i.mv) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i246

bb.df:                                            ; preds = %bb.dd
  %i.mx = call noalias ptr @malloc(i64 noundef %i.mv) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i246

Vec_IntGrow.exit.sink.split.i.i.i246:             ; preds = %bb.de, %bb.df, %bb.cz, %bb.da
  %storemerge408 = phi ptr [ %i.mr, %bb.da ], [ %i.mq, %bb.cz ], [ %i.mw, %bb.de ], [ %i.mx, %bb.df ]
  %spec.select.sink.i.i.i247 = phi i32 [ %i.mj, %bb.da ], [ %i.mj, %bb.cz ], [ %spec.select.i.i.i256, %bb.de ], [ %spec.select.i.i.i256, %bb.df ]
  store ptr %storemerge408, ptr %i.kp, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i247, ptr %i.kn, align 8, !tbaa !49
  %.pre.i.i248 = load i32, ptr %i.ko, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i249

Vec_IntGrow.exit.i.i.i249:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i246, %bb.dc, %bb.db, %bb.cx
  %i.my = phi i32 [ %.pre.i.i248, %Vec_IntGrow.exit.sink.split.i.i.i246 ], [ %i.mk, %bb.dc ], [ %i.mk, %bb.db ], [ %i.mk, %bb.cx ] ; 2 uses
  %.not4.i.i250 = icmp sgt i32 %i.my, %i.lf
  br i1 %.not4.i.i250, label %._crit_edge.i.i.i254, label %.lr.ph.i.i.i251

.lr.ph.i.i.i251:                                  ; preds = %Vec_IntGrow.exit.i.i.i249
  %i.mz = load ptr, ptr %i.kp, align 8, !tbaa !39
  %i.na = sext i32 %i.my to i64                   ; 2 uses
  %wide.trip.count.i.i.i252 = sext i32 %i.mj to i64
  %i.nb = shl nsw i64 %i.na, 2
  %scevgep.i.i253 = getelementptr i8, ptr %i.mz, i64 %i.nb
  %i.nc = sub nsw i64 %wide.trip.count.i.i.i252, %i.na
  %i.nd = shl nuw nsw i64 %i.nc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i253, i8 0, i64 %i.nd, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i254

._crit_edge.i.i.i254:                             ; preds = %.lr.ph.i.i.i251, %Vec_IntGrow.exit.i.i.i249
  store i32 %i.mj, ptr %i.ko, align 4, !tbaa !48
  br label %Cba_ObjSetName.exit259

Cba_ObjSetName.exit259:                           ; preds = %Cba_ObjName.exit241, %._crit_edge.i.i.i254
  %.val.i.i255 = load ptr, ptr %i.kp, align 8, !tbaa !39
  %i.ne = getelementptr inbounds [4 x i8], ptr %.val.i.i255, i64 %i.li
  store i32 %i.mi, ptr %i.ne, align 4, !tbaa !40
  br label %bb.dg

bb.dg:                                            ; preds = %Cba_ObjSetName.exit259, %.critedge2
  %.val126 = load i32, ptr %i.bp, align 4, !tbaa !48 ; 4 uses
  %i.nf = icmp slt i32 %.val126, 1
  br i1 %i.nf, label %bb.eb, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ng = load i32, ptr %i.lg, align 4, !tbaa !40 ; 6 uses
  %i.nh = add nsw i32 %i.le, 1                    ; 5 uses
  %.not.i.not.i.i260 = icmp slt i32 %i.le, %.val126
  br i1 %.not.i.not.i.i260, label %Cba_FonName.exit278, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ni = load i32, ptr %i.kq, align 8, !tbaa !49 ; 4 uses
  %i.nj = shl nsw i32 %i.ni, 1                    ; 2 uses
  %.not.i.i261 = icmp slt i32 %i.le, %i.nj
  br i1 %.not.i.i261, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nk = load ptr, ptr %i.kr, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i263 = icmp eq ptr %i.nk, null
  %4 = zext nneg i32 %i.nh to i64
  %i.nl = shl nuw nsw i64 %4, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i263, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nm = call ptr @realloc(ptr noundef nonnull %i.nk, i64 noundef %i.nl) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i264

bb.dl:                                            ; preds = %bb.dj
  %i.nn = call noalias ptr @malloc(i64 noundef %i.nl) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i264

bb.dm:                                            ; preds = %bb.di
  %.not.i.i.not.i.i262 = icmp sgt i32 %i.ni, %i.le
  br i1 %.not.i.i.not.i.i262, label %Vec_IntGrow.exit.i.i.i267, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.no = icmp slt i32 %i.ni, 1073741823
  %spec.select.i.i.i275 = select i1 %i.no, i32 %i.nj, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i276 = icmp slt i32 %i.ni, %spec.select.i.i.i275
  br i1 %.not.i22.i.i.i276, label %bb.do, label %Vec_IntGrow.exit.i.i.i267

bb.do:                                            ; preds = %bb.dn
  %i.np = load ptr, ptr %i.kr, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i277 = icmp eq ptr %i.np, null
  %i.nq = zext nneg i32 %spec.select.i.i.i275 to i64
  %i.nr = shl nuw nsw i64 %i.nq, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i277, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ns = call ptr @realloc(ptr noundef nonnull %i.np, i64 noundef %i.nr) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i264

bb.dq:                                            ; preds = %bb.do
  %i.nt = call noalias ptr @malloc(i64 noundef %i.nr) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i264

Vec_IntGrow.exit.sink.split.i.i.i264:             ; preds = %bb.dp, %bb.dq, %bb.dk, %bb.dl
  %storemerge409 = phi ptr [ %i.nn, %bb.dl ], [ %i.nm, %bb.dk ], [ %i.ns, %bb.dp ], [ %i.nt, %bb.dq ]
  %spec.select.sink.i.i.i265 = phi i32 [ %i.nh, %bb.dl ], [ %i.nh, %bb.dk ], [ %spec.select.i.i.i275, %bb.dp ], [ %spec.select.i.i.i275, %bb.dq ]
  store ptr %storemerge409, ptr %i.kr, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i265, ptr %i.kq, align 8, !tbaa !49
  %.pre.i.i266 = load i32, ptr %i.bp, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i267

Vec_IntGrow.exit.i.i.i267:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i264, %bb.dn, %bb.dm
  %i.nu = phi i32 [ %.pre.i.i266, %Vec_IntGrow.exit.sink.split.i.i.i264 ], [ %.val126, %bb.dn ], [ %.val126, %bb.dm ] ; 2 uses
  %.not3.i.i268 = icmp sgt i32 %i.nu, %i.le
  br i1 %.not3.i.i268, label %._crit_edge.i.i.i272, label %.lr.ph.i.i.i269

.lr.ph.i.i.i269:                                  ; preds = %Vec_IntGrow.exit.i.i.i267
  %i.nv = load ptr, ptr %i.kr, align 8, !tbaa !39
  %i.nw = sext i32 %i.nu to i64                   ; 2 uses
  %wide.trip.count.i.i.i270 = zext nneg i32 %i.nh to i64
  %i.nx = shl nsw i64 %i.nw, 2
  %scevgep.i.i271 = getelementptr i8, ptr %i.nv, i64 %i.nx
  %i.ny = sub nsw i64 %wide.trip.count.i.i.i270, %i.nw
  %i.nz = shl nuw nsw i64 %i.ny, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i271, i8 0, i64 %i.nz, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i272

._crit_edge.i.i.i272:                             ; preds = %.lr.ph.i.i.i269, %Vec_IntGrow.exit.i.i.i267
  store i32 %i.nh, ptr %i.bp, align 4, !tbaa !48
  br label %Cba_FonName.exit278

Cba_FonName.exit278:                              ; preds = %bb.dh, %._crit_edge.i.i.i272
  %.val.i.i274 = load ptr, ptr %i.kr, align 8, !tbaa !39
  %i.oa = sext i32 %i.le to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %.val.i.i274, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !40
  %i.od = add nsw i32 %i.ng, 1                    ; 5 uses
  %i.oe = load i32, ptr %i.kt, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i279 = icmp slt i32 %i.ng, %i.oe
  br i1 %.not.i.not.i.i279, label %Cba_FonSetName.exit296, label %bb.dr

bb.dr:                                            ; preds = %Cba_FonName.exit278
  %i.of = load i32, ptr %i.ks, align 8, !tbaa !49 ; 4 uses
  %i.og = shl nsw i32 %i.of, 1                    ; 2 uses
  %.not.i.i280 = icmp slt i32 %i.ng, %i.og
  %.not.i.i.not.i.i281 = icmp sgt i32 %i.of, %i.ng ; 2 uses
  br i1 %.not.i.i280, label %bb.dw, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not.i.i.not.i.i281, label %Vec_IntGrow.exit.i.i.i286, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oh = load ptr, ptr %i.ku, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i282 = icmp eq ptr %i.oh, null
  %i.oi = sext i32 %i.od to i64
  %i.oj = shl nsw i64 %i.oi, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i282, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ok = call ptr @realloc(ptr noundef nonnull %i.oh, i64 noundef %i.oj) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i283

bb.dv:                                            ; preds = %bb.dt
  %i.ol = call noalias ptr @malloc(i64 noundef %i.oj) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i283

bb.dw:                                            ; preds = %bb.dr
  br i1 %.not.i.i.not.i.i281, label %Vec_IntGrow.exit.i.i.i286, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.om = icmp slt i32 %i.of, 1073741823
  %spec.select.i.i.i293 = select i1 %i.om, i32 %i.og, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i294 = icmp slt i32 %i.of, %spec.select.i.i.i293
  br i1 %.not.i22.i.i.i294, label %bb.dy, label %Vec_IntGrow.exit.i.i.i286

bb.dy:                                            ; preds = %bb.dx
  %i.on = load ptr, ptr %i.ku, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i295 = icmp eq ptr %i.on, null
  %i.oo = sext i32 %spec.select.i.i.i293 to i64
  %i.op = shl nuw nsw i64 %i.oo, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i295, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.oq = call ptr @realloc(ptr noundef nonnull %i.on, i64 noundef %i.op) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i283

bb.ea:                                            ; preds = %bb.dy
  %i.or = call noalias ptr @malloc(i64 noundef %i.op) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i283

Vec_IntGrow.exit.sink.split.i.i.i283:             ; preds = %bb.dz, %bb.ea, %bb.du, %bb.dv
  %storemerge410 = phi ptr [ %i.ol, %bb.dv ], [ %i.ok, %bb.du ], [ %i.oq, %bb.dz ], [ %i.or, %bb.ea ]
  %spec.select.sink.i.i.i284 = phi i32 [ %i.od, %bb.dv ], [ %i.od, %bb.du ], [ %spec.select.i.i.i293, %bb.dz ], [ %spec.select.i.i.i293, %bb.ea ]
  store ptr %storemerge410, ptr %i.ku, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i284, ptr %i.ks, align 8, !tbaa !49
  %.pre.i.i285 = load i32, ptr %i.kt, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i286

Vec_IntGrow.exit.i.i.i286:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i283, %bb.dx, %bb.dw, %bb.ds
  %i.os = phi i32 [ %.pre.i.i285, %Vec_IntGrow.exit.sink.split.i.i.i283 ], [ %i.oe, %bb.dx ], [ %i.oe, %bb.dw ], [ %i.oe, %bb.ds ] ; 2 uses
  %.not4.i.i287 = icmp sgt i32 %i.os, %i.ng
  br i1 %.not4.i.i287, label %._crit_edge.i.i.i291, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %Vec_IntGrow.exit.i.i.i286
  %i.ot = load ptr, ptr %i.ku, align 8, !tbaa !39
  %i.ou = sext i32 %i.os to i64                   ; 2 uses
  %wide.trip.count.i.i.i289 = sext i32 %i.od to i64
  %i.ov = shl nsw i64 %i.ou, 2
  %scevgep.i.i290 = getelementptr i8, ptr %i.ot, i64 %i.ov
  %i.ow = sub nsw i64 %wide.trip.count.i.i.i289, %i.ou
  %i.ox = shl nuw nsw i64 %i.ow, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i290, i8 0, i64 %i.ox, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i291

._crit_edge.i.i.i291:                             ; preds = %.lr.ph.i.i.i288, %Vec_IntGrow.exit.i.i.i286
  store i32 %i.od, ptr %i.kt, align 4, !tbaa !48
  br label %Cba_FonSetName.exit296

Cba_FonSetName.exit296:                           ; preds = %Cba_FonName.exit278, %._crit_edge.i.i.i291
  %.val.i.i292 = load ptr, ptr %i.ku, align 8, !tbaa !39
  %i.oy = sext i32 %i.ng to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %.val.i.i292, i64 %i.oy
  store i32 %i.oc, ptr %i.oz, align 4, !tbaa !40
  br label %bb.eb

bb.eb:                                            ; preds = %Cba_FonSetName.exit296, %bb.dg
  %.val.i297 = load i32, ptr %i.cg, align 4, !tbaa !48 ; 4 uses
  %i.pa = icmp slt i32 %.val.i297, 1
  br i1 %i.pa, label %Cba_ObjAttr.exit316.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pb = add nsw i32 %i.ky, 1                    ; 5 uses
  %.not.i.not.i.i298 = icmp slt i32 %i.ky, %.val.i297
  br i1 %.not.i.not.i.i298, label %Cba_ObjAttr.exit316, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pc = load i32, ptr %i.kv, align 8, !tbaa !49 ; 4 uses
  %i.pd = shl nsw i32 %i.pc, 1                    ; 2 uses
  %.not.i.i299 = icmp slt i32 %i.ky, %i.pd
  br i1 %.not.i.i299, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.pe = load ptr, ptr %i.kw, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i301 = icmp eq ptr %i.pe, null
  %i.pf = zext nneg i32 %i.pb to i64
  %i.pg = shl nuw nsw i64 %i.pf, 2                ; 2 uses
  br i1 %.not9.i.i.i.i301, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ph = call ptr @realloc(ptr noundef nonnull %i.pe, i64 noundef %i.pg) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i302

bb.eg:                                            ; preds = %bb.ee
  %i.pi = call noalias ptr @malloc(i64 noundef %i.pg) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i302

bb.eh:                                            ; preds = %bb.ed
  %.not.i.i.not.i.i300 = icmp sgt i32 %i.pc, %i.ky
  br i1 %.not.i.i.not.i.i300, label %Vec_IntGrow.exit.i.i.i305, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pj = icmp slt i32 %i.pc, 1073741823
  %spec.select.i.i.i313 = select i1 %i.pj, i32 %i.pd, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i314 = icmp slt i32 %i.pc, %spec.select.i.i.i313
  br i1 %.not.i22.i.i.i314, label %bb.ej, label %Vec_IntGrow.exit.i.i.i305

bb.ej:                                            ; preds = %bb.ei
  %i.pk = load ptr, ptr %i.kw, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i315 = icmp eq ptr %i.pk, null
  %i.pl = zext nneg i32 %spec.select.i.i.i313 to i64
  %i.pm = shl nuw nsw i64 %i.pl, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i315, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pn = call ptr @realloc(ptr noundef nonnull %i.pk, i64 noundef %i.pm) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i302

bb.el:                                            ; preds = %bb.ej
  %i.po = call noalias ptr @malloc(i64 noundef %i.pm) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i302

Vec_IntGrow.exit.sink.split.i.i.i302:             ; preds = %bb.ek, %bb.el, %bb.ef, %bb.eg
  %storemerge411 = phi ptr [ %i.pi, %bb.eg ], [ %i.ph, %bb.ef ], [ %i.pn, %bb.ek ], [ %i.po, %bb.el ]
  %spec.select.sink.i.i.i303 = phi i32 [ %i.pb, %bb.eg ], [ %i.pb, %bb.ef ], [ %spec.select.i.i.i313, %bb.ek ], [ %spec.select.i.i.i313, %bb.el ]
  store ptr %storemerge411, ptr %i.kw, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i303, ptr %i.kv, align 8, !tbaa !49
  %.pre.i.i304 = load i32, ptr %i.cg, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i305

Vec_IntGrow.exit.i.i.i305:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i302, %bb.ei, %bb.eh
  %i.pp = phi i32 [ %.pre.i.i304, %Vec_IntGrow.exit.sink.split.i.i.i302 ], [ %.val.i297, %bb.ei ], [ %.val.i297, %bb.eh ] ; 2 uses
  %.not3.i.i306 = icmp sgt i32 %i.pp, %i.ky
  br i1 %.not3.i.i306, label %._crit_edge.i.i.i310, label %.lr.ph.i.i.i307

.lr.ph.i.i.i307:                                  ; preds = %Vec_IntGrow.exit.i.i.i305
  %i.pq = load ptr, ptr %i.kw, align 8, !tbaa !39
  %i.pr = sext i32 %i.pp to i64                   ; 2 uses
  %wide.trip.count.i.i.i308 = zext nneg i32 %i.pb to i64
  %i.ps = shl nsw i64 %i.pr, 2
  %scevgep.i.i309 = getelementptr i8, ptr %i.pq, i64 %i.ps
  %i.pt = sub nsw i64 %wide.trip.count.i.i.i308, %i.pr
  %i.pu = shl nuw nsw i64 %i.pt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i309, i8 0, i64 %i.pu, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i310

._crit_edge.i.i.i310:                             ; preds = %.lr.ph.i.i.i307, %Vec_IntGrow.exit.i.i.i305
  store i32 %i.pb, ptr %i.cg, align 4, !tbaa !48
  br label %Cba_ObjAttr.exit316

Cba_ObjAttr.exit316:                              ; preds = %bb.ec, %._crit_edge.i.i.i310
  %.val.i.i312 = load ptr, ptr %i.kw, align 8, !tbaa !39
  %i.pv = getelementptr inbounds [4 x i8], ptr %.val.i.i312, i64 %i.kz
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !40
  %.not102 = icmp eq i32 %i.pw, 0
  br i1 %.not102, label %Cba_ObjAttr.exit316.thread, label %bb.em

bb.em:                                            ; preds = %Cba_ObjAttr.exit316
  %i.px = call fastcc ptr @Cba_ObjAttrArray(ptr noundef nonnull %i.ab, i32 noundef %i.ky)
  %i.py = call fastcc i32 @Cba_ObjAttrSize(ptr noundef nonnull %i.ab, i32 noundef %i.ky)
  call fastcc void @Cba_ObjSetAttrs(ptr noundef nonnull %i.ao, i32 noundef %i.lf, ptr noundef %i.px, i32 noundef %i.py)
  br label %Cba_ObjAttr.exit316.thread

Cba_ObjAttr.exit316.thread:                       ; preds = %bb.eb, %Cba_ObjAttr.exit316, %bb.em
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %.val114 = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.pz = sext i32 %.val114 to i64
  %i.qa = icmp slt i64 %indvars.iv.next329, %i.pz
  br i1 %i.qa, label %.critedge2, label %._crit_edge326.thread, !llvm.loop !136

._crit_edge326:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.not.i317 = icmp eq ptr %.pre, null
  br i1 %.not.i317, label %Vec_IntFree.exit, label %._crit_edge326.thread

._crit_edge326.thread:                            ; preds = %Cba_ObjAttr.exit316.thread, %._crit_edge326
  %i.qb = phi ptr [ %.pre, %._crit_edge326 ], [ %.val106, %Cba_ObjAttr.exit316.thread ]
  call void @free(ptr noundef nonnull %i.qb) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge326, %._crit_edge326.thread
  call void @free(ptr noundef nonnull %i.ac) #27
  call fastcc void @Cba_NtkMissingFonNames(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret ptr %i.s
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias noundef ptr @Cba_ManAlloc(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1624) ptr @calloc(i64 noundef 1, i64 noundef 1624) #31 ; 11 uses
  %i.b = tail call ptr @Extra_FileDesignName(ptr noundef %0) #27
  store ptr %i.b, ptr %i.a, align 8, !tbaa !138
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #30
  %i.d = add i64 %i.c, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #28 ; 2 uses
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(1) %0) #27 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !66
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.i = tail call ptr @Abc_NamStart(i32 noundef 1000, i32 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %2, %Abc_UtilStrsav.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !60
  %.not28 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @Abc_NamStart(i32 noundef 100, i32 noundef 24) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ %3, %bb.d ]   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !61
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @Abc_NamStart(i32 noundef 100, i32 noundef 24) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.o, %bb.g ], [ %4, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.p, ptr %i.q, align 8, !tbaa !68
  %.not30 = icmp eq ptr %5, null
  br i1 %.not30, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #31 ; 4 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.i
  %.012.i.i = phi i32 [ 1099, %bb.i ], [ %i.s, %.critedge.i.i.backedge ] ; 3 uses
  %i.s = add i32 %.012.i.i, 1                     ; 7 uses
  %i.t = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.s, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.u = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.v = mul nuw nsw i32 %i.u, %i.u
  %.not.i.i = icmp ugt i32 %i.v, %i.s
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !137

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.j
  %.01116.i.i = phi i32 [ %i.u, %bb.j ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.w = urem i32 %i.s, %.01116.i.i
  %i.x = icmp eq i32 %i.w, 0
end_hunk_3
begin_hunk_4_@Cba_NtkCollectGroupStats:bb.a
  %.022.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ak, %.critedge.loopexit.unr-lcssa ]
  %.01421.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ad, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %.val17, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.as = add i32 %i.aq, %.01421.epil.init
  %i.at = sub i32 %i.as, %i.ar
  %i.au = getelementptr [4 x i8], ptr %.val18, i64 %i.an ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !40
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !40
  %i.ay = add i32 %i.aw, %.022.epil.init
  %i.az = sub i32 %i.ay, %i.ax
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %.critedge.loopexit.unr-lcssa ], [ %i.at, %.epil.preheader ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ak, %.critedge.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  store i32 %.014.lcssa, ptr %2, align 4, !tbaa !40
  store i32 %.0.lcssa, ptr %3, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cba_ManExtractGroupInt(ptr noundef %0, ptr nofree noundef initializes((172, 176), (252, 256)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !63 ; 6 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !49
  %.not.i.i.i = icmp slt i32 %i.c, %.val.i
  br i1 %.not.i.i.i, label %bb.b, label %Vec_IntGrow.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %.val.i to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  br i1 %.not9.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.g) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !39
  store i32 %.val.i, ptr %i.a, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.e, %bb.a
  %i.k = icmp sgt i32 %.val.i, 0
  br i1 %i.k, label %.lr.ph.i.i, label %Cba_NtkCleanObjCopies.exit

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64
  %i.n = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 -1, i64 %i.n, i1 false), !tbaa !40
  br label %Cba_NtkCleanObjCopies.exit

Cba_NtkCleanObjCopies.exit:                       ; preds = %Vec_IntGrow.exit.i.i, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 4 uses
  store i32 %.val.i, ptr %i.o, align 4, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i134 = load i32, ptr %i.q, align 8, !tbaa !49 ; 6 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !49
  %.not.i.i.i135 = icmp slt i32 %i.r, %.val.i134
  br i1 %.not.i.i.i135, label %bb.f, label %Vec_IntGrow.exit.i.i136

bb.f:                                             ; preds = %Cba_NtkCleanObjCopies.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i139 = icmp eq ptr %i.t, null
  %i.u = sext i32 %.val.i134 to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  br i1 %.not9.i.i.i139, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %i.w, %bb.g ], [ %i.x, %bb.h ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !39
  store i32 %.val.i134, ptr %i.p, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.i.i136

Vec_IntGrow.exit.i.i136:                          ; preds = %bb.i, %Cba_NtkCleanObjCopies.exit
  %i.z = icmp sgt i32 %.val.i134, 0
  br i1 %i.z, label %.lr.ph.i.i137, label %Cba_NtkCleanFonCopies.exit

.lr.ph.i.i137:                                    ; preds = %Vec_IntGrow.exit.i.i136
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %wide.trip.count.i.i138 = zext nneg i32 %.val.i134 to i64
  %i.ac = shl nuw nsw i64 %wide.trip.count.i.i138, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.ac, i1 false), !tbaa !40
  br label %Cba_NtkCleanFonCopies.exit

Cba_NtkCleanFonCopies.exit:                       ; preds = %Vec_IntGrow.exit.i.i136, %.lr.ph.i.i137
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 252
  store i32 %.val.i134, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr i8, ptr %3, i64 4         ; 2 uses
  %.val109319 = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.af = icmp sgt i32 %.val109319, 0
  br i1 %i.af, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Cba_NtkCleanFonCopies.exit
  %i.ag = getelementptr i8, ptr %3, i64 8
  %i.ah = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 256
  %i.aj = getelementptr i8, ptr %1, i64 204       ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 208       ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.ap = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.aq = getelementptr i8, ptr %1, i64 268       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 272       ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 272       ; 5 uses
  br label %bb.j

.critedge.preheader:                              ; preds = %bb.ba, %Cba_NtkCleanFonCopies.exit
  %i.aw = getelementptr i8, ptr %2, i64 4         ; 3 uses
  %.val108326 = load i32, ptr %i.aw, align 4, !tbaa !48
  %i.ax = icmp sgt i32 %.val108326, 0
  br i1 %i.ax, label %.lr.ph328, label %.critedge4.preheader

.lr.ph328:                                        ; preds = %.critedge.preheader
  %i.ay = getelementptr i8, ptr %2, i64 8
  %i.az = getelementptr i8, ptr %1, i64 204       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 208       ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.be = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.bf = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 128
  %i.bh = getelementptr i8, ptr %1, i64 256
  %i.bi = getelementptr i8, ptr %1, i64 268       ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 272       ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.bn = getelementptr i8, ptr %0, i64 272       ; 5 uses
  br label %bb.bb

bb.j:                                             ; preds = %.lr.ph, %bb.ba
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ba ] ; 2 uses
  %.val113 = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val113, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40 ; 8 uses
  %i.bq = tail call fastcc i32 @Cba_ObjAlloc(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 1) ; 6 uses
  %.val117 = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %.val117, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %.val122 = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.bu = sext i32 %i.bp to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val122, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !40
  %.val131 = load i32, ptr %i.aj, align 4, !tbaa !48 ; 4 uses
  %i.bw = icmp slt i32 %.val131, 1
  br i1 %i.bw, label %bb.af, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp slt i32 %i.bp, 1
  br i1 %i.bx, label %Cba_FonObj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i140 = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.by = zext nneg i32 %i.bp to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.val.i140, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  br label %Cba_FonObj.exit

Cba_FonObj.exit:                                  ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %i.ca, %bb.l ], [ 0, %bb.k ]  ; 6 uses
  %i.cc = add nsw i32 %i.cb, 1                    ; 5 uses
  %.not.i.not.i.i = icmp slt i32 %i.cb, %.val131
  br i1 %.not.i.not.i.i, label %Cba_ObjName.exit, label %bb.m

bb.m:                                             ; preds = %Cba_FonObj.exit
  %i.cd = load i32, ptr %i.al, align 8, !tbaa !49 ; 4 uses
  %i.ce = shl nsw i32 %i.cd, 1                    ; 2 uses
  %.not.i.i = icmp slt i32 %i.cb, %i.ce
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.cf, null
  %5 = zext nneg i32 %i.cc to i64
  %i.cg = shl nuw nsw i64 %5, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef %i.cg) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.cg) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.q:                                             ; preds = %bb.m
  %.not.i.i.not.i.i = icmp sgt i32 %i.cd, %i.cb
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = icmp slt i32 %i.cd, 1073741823
  %spec.select.i.i.i = select i1 %i.cj, i32 %i.ce, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.cd, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.s, label %Vec_IntGrow.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = zext nneg i32 %spec.select.i.i.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef %i.cm) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cm) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.t, %bb.u, %bb.o, %bb.p
  %storemerge = phi ptr [ %i.ci, %bb.p ], [ %i.ch, %bb.o ], [ %i.cn, %bb.t ], [ %i.co, %bb.u ]
  %spec.select.sink.i.i.i = phi i32 [ %i.cc, %bb.p ], [ %i.cc, %bb.o ], [ %spec.select.i.i.i, %bb.t ], [ %spec.select.i.i.i, %bb.u ]
  store ptr %storemerge, ptr %i.am, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i, ptr %i.al, align 8, !tbaa !49
  %.pre.i.i = load i32, ptr %i.aj, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.r, %bb.q
  %i.cp = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val131, %bb.r ], [ %.val131, %bb.q ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.cp, %i.cb
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.cc to i64
  %i.cs = shl nsw i64 %i.cr, 2
  %scevgep.i.i = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.ct = sub nsw i64 %wide.trip.count.i.i.i, %i.cr
  %i.cu = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.cu, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.cc, ptr %i.aj, align 4, !tbaa !48
  br label %Cba_ObjName.exit

Cba_ObjName.exit:                                 ; preds = %Cba_FonObj.exit, %._crit_edge.i.i.i
  %.val.i.i = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.cv = sext i32 %i.cb to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.cy = add nsw i32 %i.bq, 1                    ; 5 uses
  %i.cz = load i32, ptr %i.ao, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i141 = icmp slt i32 %i.bq, %i.cz
  br i1 %.not.i.not.i.i141, label %Cba_ObjSetName.exit, label %bb.v

bb.v:                                             ; preds = %Cba_ObjName.exit
  %i.da = load i32, ptr %i.an, align 8, !tbaa !49 ; 4 uses
  %i.db = shl nsw i32 %i.da, 1                    ; 2 uses
  %.not.i.i142 = icmp slt i32 %i.bq, %i.db
  %.not.i.i.not.i.i143 = icmp sgt i32 %i.da, %i.bq ; 2 uses
  br i1 %.not.i.i142, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i.not.i.i143, label %Vec_IntGrow.exit.i.i.i148, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i144 = icmp eq ptr %i.dc, null
  %i.dd = sext i32 %i.cy to i64
  %i.de = shl nsw i64 %i.dd, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i144, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = tail call ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef %i.de) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i145

bb.z:                                             ; preds = %bb.x
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.de) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i145

bb.aa:                                            ; preds = %bb.v
  br i1 %.not.i.i.not.i.i143, label %Vec_IntGrow.exit.i.i.i148, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp slt i32 %i.da, 1073741823
  %spec.select.i.i.i154 = select i1 %i.dh, i32 %i.db, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i155 = icmp slt i32 %i.da, %spec.select.i.i.i154
  br i1 %.not.i22.i.i.i155, label %bb.ac, label %Vec_IntGrow.exit.i.i.i148

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i156 = icmp eq ptr %i.di, null
  %i.dj = sext i32 %spec.select.i.i.i154 to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i156, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call ptr @realloc(ptr noundef nonnull %i.di, i64 noundef %i.dk) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i145

bb.ae:                                            ; preds = %bb.ac
  %i.dm = tail call noalias ptr @malloc(i64 noundef %i.dk) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i145

Vec_IntGrow.exit.sink.split.i.i.i145:             ; preds = %bb.ad, %bb.ae, %bb.y, %bb.z
  %storemerge437 = phi ptr [ %i.dg, %bb.z ], [ %i.df, %bb.y ], [ %i.dl, %bb.ad ], [ %i.dm, %bb.ae ]
  %spec.select.sink.i.i.i146 = phi i32 [ %i.cy, %bb.z ], [ %i.cy, %bb.y ], [ %spec.select.i.i.i154, %bb.ad ], [ %spec.select.i.i.i154, %bb.ae ]
  store ptr %storemerge437, ptr %i.ap, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i146, ptr %i.an, align 8, !tbaa !49
  %.pre.i.i147 = load i32, ptr %i.ao, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i148

Vec_IntGrow.exit.i.i.i148:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i145, %bb.ab, %bb.aa, %bb.w
  %i.dn = phi i32 [ %.pre.i.i147, %Vec_IntGrow.exit.sink.split.i.i.i145 ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.w ] ; 2 uses
  %.not4.i.i = icmp sgt i32 %i.dn, %i.bq
  br i1 %.not4.i.i, label %._crit_edge.i.i.i152, label %.lr.ph.i.i.i149

.lr.ph.i.i.i149:                                  ; preds = %Vec_IntGrow.exit.i.i.i148
  %i.do = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.dp = sext i32 %i.dn to i64                   ; 2 uses
  %wide.trip.count.i.i.i150 = sext i32 %i.cy to i64
  %i.dq = shl nsw i64 %i.dp, 2
  %scevgep.i.i151 = getelementptr i8, ptr %i.do, i64 %i.dq
  %i.dr = sub nsw i64 %wide.trip.count.i.i.i150, %i.dp
  %i.ds = shl nuw nsw i64 %i.dr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i151, i8 0, i64 %i.ds, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i152

._crit_edge.i.i.i152:                             ; preds = %.lr.ph.i.i.i149, %Vec_IntGrow.exit.i.i.i148
  store i32 %i.cy, ptr %i.ao, align 4, !tbaa !48
  br label %Cba_ObjSetName.exit

Cba_ObjSetName.exit:                              ; preds = %Cba_ObjName.exit, %._crit_edge.i.i.i152
  %.val.i.i153 = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.dt = getelementptr inbounds [4 x i8], ptr %.val.i.i153, i64 %i.br
  store i32 %i.cx, ptr %i.dt, align 4, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %Cba_ObjSetName.exit, %bb.j
  %.val133 = load i32, ptr %i.aq, align 4, !tbaa !48 ; 4 uses
  %i.du = icmp slt i32 %.val133, 1
  br i1 %i.du, label %bb.ba, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val116 = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.dv = getelementptr inbounds [4 x i8], ptr %.val116, i64 %i.br
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40 ; 6 uses
  %i.dx = add nsw i32 %i.bp, 1                    ; 5 uses
  %.not.i.not.i.i157 = icmp slt i32 %i.bp, %.val133
  br i1 %.not.i.not.i.i157, label %Cba_FonName.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i32, ptr %i.ar, align 8, !tbaa !49 ; 4 uses
  %i.dz = shl nsw i32 %i.dy, 1                    ; 2 uses
  %.not.i.i158 = icmp slt i32 %i.bp, %i.dz
  br i1 %.not.i.i158, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i160 = icmp eq ptr %i.ea, null
  %6 = zext nneg i32 %i.dx to i64
  %i.eb = shl nuw nsw i64 %6, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i160, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = tail call ptr @realloc(ptr noundef nonnull %i.ea, i64 noundef %i.eb) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i161

bb.ak:                                            ; preds = %bb.ai
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.eb) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i161

bb.al:                                            ; preds = %bb.ah
  %.not.i.i.not.i.i159 = icmp sgt i32 %i.dy, %i.bp
  br i1 %.not.i.i.not.i.i159, label %Vec_IntGrow.exit.i.i.i164, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = icmp slt i32 %i.dy, 1073741823
  %spec.select.i.i.i171 = select i1 %i.ee, i32 %i.dz, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i172 = icmp slt i32 %i.dy, %spec.select.i.i.i171
  br i1 %.not.i22.i.i.i172, label %bb.an, label %Vec_IntGrow.exit.i.i.i164

bb.an:                                            ; preds = %bb.am
  %i.ef = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i173 = icmp eq ptr %i.ef, null
  %i.eg = zext nneg i32 %spec.select.i.i.i171 to i64
  %i.eh = shl nuw nsw i64 %i.eg, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i173, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = tail call ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef %i.eh) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i161

bb.ap:                                            ; preds = %bb.an
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.eh) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i161

Vec_IntGrow.exit.sink.split.i.i.i161:             ; preds = %bb.ao, %bb.ap, %bb.aj, %bb.ak
  %storemerge438 = phi ptr [ %i.ed, %bb.ak ], [ %i.ec, %bb.aj ], [ %i.ei, %bb.ao ], [ %i.ej, %bb.ap ]
  %spec.select.sink.i.i.i162 = phi i32 [ %i.dx, %bb.ak ], [ %i.dx, %bb.aj ], [ %spec.select.i.i.i171, %bb.ao ], [ %spec.select.i.i.i171, %bb.ap ]
  store ptr %storemerge438, ptr %i.as, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i162, ptr %i.ar, align 8, !tbaa !49
  %.pre.i.i163 = load i32, ptr %i.aq, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i164

Vec_IntGrow.exit.i.i.i164:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i161, %bb.am, %bb.al
  %i.ek = phi i32 [ %.pre.i.i163, %Vec_IntGrow.exit.sink.split.i.i.i161 ], [ %.val133, %bb.am ], [ %.val133, %bb.al ] ; 2 uses
  %.not3.i.i165 = icmp sgt i32 %i.ek, %i.bp
  br i1 %.not3.i.i165, label %._crit_edge.i.i.i169, label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %Vec_IntGrow.exit.i.i.i164
  %i.el = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.em = sext i32 %i.ek to i64                   ; 2 uses
  %wide.trip.count.i.i.i167 = zext nneg i32 %i.dx to i64
  %i.en = shl nsw i64 %i.em, 2
  %scevgep.i.i168 = getelementptr i8, ptr %i.el, i64 %i.en
  %i.eo = sub nsw i64 %wide.trip.count.i.i.i167, %i.em
  %i.ep = shl nuw nsw i64 %i.eo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i168, i8 0, i64 %i.ep, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i169

._crit_edge.i.i.i169:                             ; preds = %.lr.ph.i.i.i166, %Vec_IntGrow.exit.i.i.i164
  store i32 %i.dx, ptr %i.aq, align 4, !tbaa !48
  br label %Cba_FonName.exit

Cba_FonName.exit:                                 ; preds = %bb.ag, %._crit_edge.i.i.i169
  %.val.i.i170 = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.eq = getelementptr inbounds [4 x i8], ptr %.val.i.i170, i64 %i.bu
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40
  %i.es = add nsw i32 %i.dw, 1                    ; 5 uses
  %i.et = load i32, ptr %i.au, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i174 = icmp slt i32 %i.dw, %i.et
  br i1 %.not.i.not.i.i174, label %Cba_FonSetName.exit, label %bb.aq

bb.aq:                                            ; preds = %Cba_FonName.exit
  %i.eu = load i32, ptr %i.at, align 8, !tbaa !49 ; 4 uses
  %i.ev = shl nsw i32 %i.eu, 1                    ; 2 uses
  %.not.i.i175 = icmp slt i32 %i.dw, %i.ev
  %.not.i.i.not.i.i176 = icmp sgt i32 %i.eu, %i.dw ; 2 uses
  br i1 %.not.i.i175, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i176, label %Vec_IntGrow.exit.i.i.i181, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i177 = icmp eq ptr %i.ew, null
  %i.ex = sext i32 %i.es to i64
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i177, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ez = tail call ptr @realloc(ptr noundef nonnull %i.ew, i64 noundef %i.ey) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i178

bb.au:                                            ; preds = %bb.as
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ey) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i178

bb.av:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i176, label %Vec_IntGrow.exit.i.i.i181, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fb = icmp slt i32 %i.eu, 1073741823
  %spec.select.i.i.i188 = select i1 %i.fb, i32 %i.ev, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i189 = icmp slt i32 %i.eu, %spec.select.i.i.i188
  br i1 %.not.i22.i.i.i189, label %bb.ax, label %Vec_IntGrow.exit.i.i.i181

bb.ax:                                            ; preds = %bb.aw
  %i.fc = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i190 = icmp eq ptr %i.fc, null
  %i.fd = sext i32 %spec.select.i.i.i188 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i190, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = tail call ptr @realloc(ptr noundef nonnull %i.fc, i64 noundef %i.fe) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i178

bb.az:                                            ; preds = %bb.ax
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.fe) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i178

Vec_IntGrow.exit.sink.split.i.i.i178:             ; preds = %bb.ay, %bb.az, %bb.at, %bb.au
  %storemerge439 = phi ptr [ %i.fa, %bb.au ], [ %i.ez, %bb.at ], [ %i.ff, %bb.ay ], [ %i.fg, %bb.az ]
  %spec.select.sink.i.i.i179 = phi i32 [ %i.es, %bb.au ], [ %i.es, %bb.at ], [ %spec.select.i.i.i188, %bb.ay ], [ %spec.select.i.i.i188, %bb.az ]
  store ptr %storemerge439, ptr %i.av, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i179, ptr %i.at, align 8, !tbaa !49
  %.pre.i.i180 = load i32, ptr %i.au, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i181

Vec_IntGrow.exit.i.i.i181:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i178, %bb.aw, %bb.av, %bb.ar
  %i.fh = phi i32 [ %.pre.i.i180, %Vec_IntGrow.exit.sink.split.i.i.i178 ], [ %i.et, %bb.aw ], [ %i.et, %bb.av ], [ %i.et, %bb.ar ] ; 2 uses
  %.not4.i.i182 = icmp sgt i32 %i.fh, %i.dw
  br i1 %.not4.i.i182, label %._crit_edge.i.i.i186, label %.lr.ph.i.i.i183

.lr.ph.i.i.i183:                                  ; preds = %Vec_IntGrow.exit.i.i.i181
  %i.fi = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.fj = sext i32 %i.fh to i64                   ; 2 uses
  %wide.trip.count.i.i.i184 = sext i32 %i.es to i64
  %i.fk = shl nsw i64 %i.fj, 2
  %scevgep.i.i185 = getelementptr i8, ptr %i.fi, i64 %i.fk
  %i.fl = sub nsw i64 %wide.trip.count.i.i.i184, %i.fj
  %i.fm = shl nuw nsw i64 %i.fl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i185, i8 0, i64 %i.fm, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i186

._crit_edge.i.i.i186:                             ; preds = %.lr.ph.i.i.i183, %Vec_IntGrow.exit.i.i.i181
  store i32 %i.es, ptr %i.au, align 4, !tbaa !48
  br label %Cba_FonSetName.exit

Cba_FonSetName.exit:                              ; preds = %Cba_FonName.exit, %._crit_edge.i.i.i186
  %.val.i.i187 = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.fn = sext i32 %i.dw to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %.val.i.i187, i64 %i.fn
  store i32 %i.er, ptr %i.fo, align 4, !tbaa !40
  br label %bb.ba

bb.ba:                                            ; preds = %bb.af, %Cba_FonSetName.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val109 = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.fp = sext i32 %.val109 to i64
  %i.fq = icmp slt i64 %indvars.iv.next, %i.fp
  br i1 %i.fq, label %bb.j, label %.critedge.preheader, !llvm.loop !152

.critedge2.preheader:                             ; preds = %.critedge
  %i.fr = icmp sgt i32 %.val108, 0
  br i1 %i.fr, label %.lr.ph334, label %.critedge4.preheader

.lr.ph334:                                        ; preds = %.critedge2.preheader
  %i.fs = getelementptr i8, ptr %2, i64 8
  %i.ft = getelementptr i8, ptr %1, i64 176       ; 5 uses
  %i.fu = getelementptr i8, ptr %1, i64 112
  %i.fv = getelementptr i8, ptr %1, i64 144
  %i.fw = getelementptr i8, ptr %1, i64 256
  %i.fx = getelementptr i8, ptr %0, i64 112
  %i.fy = getelementptr i8, ptr %0, i64 144
  br label %bb.cv

bb.bb:                                            ; preds = %.lr.ph328, %.critedge
  %indvars.iv342 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next343, %.critedge ] ; 2 uses
  %.val112 = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv342
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !40 ; 8 uses
  %i.gb = tail call fastcc i32 @Cba_ObjDup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ga) ; 7 uses
  %.val130 = load i32, ptr %i.az, align 4, !tbaa !48 ; 4 uses
  %i.gc = icmp slt i32 %.val130, 1
  br i1 %i.gc, label %._crit_edge357, label %bb.bc

._crit_edge357:                                   ; preds = %bb.bb
  %.pre358 = sext i32 %i.ga to i64
  br label %bb.bw

bb.bc:                                            ; preds = %bb.bb
  %i.gd = add nsw i32 %i.ga, 1                    ; 5 uses
  %.not.i.not.i.i191 = icmp slt i32 %i.ga, %.val130
  br i1 %.not.i.not.i.i191, label %Cba_ObjName.exit208, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = load i32, ptr %i.ba, align 8, !tbaa !49 ; 4 uses
  %i.gf = shl nsw i32 %i.ge, 1                    ; 2 uses
  %.not.i.i192 = icmp slt i32 %i.ga, %i.gf
  br i1 %.not.i.i192, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gg = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i194 = icmp eq ptr %i.gg, null
  %7 = zext nneg i32 %i.gd to i64
  %i.gh = shl nuw nsw i64 %7, 2                   ; 2 uses
  br i1 %.not9.i.i.i.i194, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gi = tail call ptr @realloc(ptr noundef nonnull %i.gg, i64 noundef %i.gh) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i195

bb.bg:                                            ; preds = %bb.be
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gh) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i195

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.not.i.i193 = icmp sgt i32 %i.ge, %i.ga
  br i1 %.not.i.i.not.i.i193, label %Vec_IntGrow.exit.i.i.i198, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = icmp slt i32 %i.ge, 1073741823
  %spec.select.i.i.i205 = select i1 %i.gk, i32 %i.gf, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i206 = icmp slt i32 %i.ge, %spec.select.i.i.i205
  br i1 %.not.i22.i.i.i206, label %bb.bj, label %Vec_IntGrow.exit.i.i.i198

bb.bj:                                            ; preds = %bb.bi
  %i.gl = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i207 = icmp eq ptr %i.gl, null
  %i.gm = zext nneg i32 %spec.select.i.i.i205 to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i207, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.go = tail call ptr @realloc(ptr noundef nonnull %i.gl, i64 noundef %i.gn) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i195

bb.bl:                                            ; preds = %bb.bj
  %i.gp = tail call noalias ptr @malloc(i64 noundef %i.gn) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i195

Vec_IntGrow.exit.sink.split.i.i.i195:             ; preds = %bb.bk, %bb.bl, %bb.bf, %bb.bg
  %storemerge440 = phi ptr [ %i.gj, %bb.bg ], [ %i.gi, %bb.bf ], [ %i.go, %bb.bk ], [ %i.gp, %bb.bl ]
  %spec.select.sink.i.i.i196 = phi i32 [ %i.gd, %bb.bg ], [ %i.gd, %bb.bf ], [ %spec.select.i.i.i205, %bb.bk ], [ %spec.select.i.i.i205, %bb.bl ]
  store ptr %storemerge440, ptr %i.bb, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i196, ptr %i.ba, align 8, !tbaa !49
  %.pre.i.i197 = load i32, ptr %i.az, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i198

Vec_IntGrow.exit.i.i.i198:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i195, %bb.bi, %bb.bh
  %i.gq = phi i32 [ %.pre.i.i197, %Vec_IntGrow.exit.sink.split.i.i.i195 ], [ %.val130, %bb.bi ], [ %.val130, %bb.bh ] ; 2 uses
  %.not3.i.i199 = icmp sgt i32 %i.gq, %i.ga
  br i1 %.not3.i.i199, label %._crit_edge.i.i.i203, label %.lr.ph.i.i.i200

.lr.ph.i.i.i200:                                  ; preds = %Vec_IntGrow.exit.i.i.i198
  %i.gr = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.gs = sext i32 %i.gq to i64                   ; 2 uses
  %wide.trip.count.i.i.i201 = zext nneg i32 %i.gd to i64
  %i.gt = shl nsw i64 %i.gs, 2
  %scevgep.i.i202 = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gu = sub nsw i64 %wide.trip.count.i.i.i201, %i.gs
  %i.gv = shl nuw nsw i64 %i.gu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i202, i8 0, i64 %i.gv, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i203

._crit_edge.i.i.i203:                             ; preds = %.lr.ph.i.i.i200, %Vec_IntGrow.exit.i.i.i198
  store i32 %i.gd, ptr %i.az, align 4, !tbaa !48
  br label %Cba_ObjName.exit208

Cba_ObjName.exit208:                              ; preds = %bb.bc, %._crit_edge.i.i.i203
  %.val.i.i204 = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.gw = sext i32 %i.ga to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %.val.i.i204, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !40
  %i.gz = add nsw i32 %i.gb, 1                    ; 5 uses
  %i.ha = load i32, ptr %i.bd, align 4, !tbaa !48 ; 4 uses
  %.not.i.not.i.i209 = icmp slt i32 %i.gb, %i.ha
  br i1 %.not.i.not.i.i209, label %Cba_ObjSetName.exit226, label %bb.bm

bb.bm:                                            ; preds = %Cba_ObjName.exit208
  %i.hb = load i32, ptr %i.bc, align 8, !tbaa !49 ; 4 uses
  %i.hc = shl nsw i32 %i.hb, 1                    ; 2 uses
  %.not.i.i210 = icmp slt i32 %i.gb, %i.hc
  %.not.i.i.not.i.i211 = icmp sgt i32 %i.hb, %i.gb ; 2 uses
  br i1 %.not.i.i210, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i211, label %Vec_IntGrow.exit.i.i.i216, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hd = load ptr, ptr %i.be, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i212 = icmp eq ptr %i.hd, null
  %i.he = sext i32 %i.gz to i64
  %i.hf = shl nsw i64 %i.he, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i212, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hg = tail call ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef %i.hf) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i213

bb.bq:                                            ; preds = %bb.bo
  %i.hh = tail call noalias ptr @malloc(i64 noundef %i.hf) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i213

bb.br:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i211, label %Vec_IntGrow.exit.i.i.i216, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hi = icmp slt i32 %i.hb, 1073741823
  %spec.select.i.i.i223 = select i1 %i.hi, i32 %i.hc, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i224 = icmp slt i32 %i.hb, %spec.select.i.i.i223
  br i1 %.not.i22.i.i.i224, label %bb.bt, label %Vec_IntGrow.exit.i.i.i216

bb.bt:                                            ; preds = %bb.bs
  %i.hj = load ptr, ptr %i.be, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i225 = icmp eq ptr %i.hj, null
  %i.hk = sext i32 %spec.select.i.i.i223 to i64
  %i.hl = shl nuw nsw i64 %i.hk, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i225, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hm = tail call ptr @realloc(ptr noundef nonnull %i.hj, i64 noundef %i.hl) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i213

bb.bv:                                            ; preds = %bb.bt
  %i.hn = tail call noalias ptr @malloc(i64 noundef %i.hl) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i213

Vec_IntGrow.exit.sink.split.i.i.i213:             ; preds = %bb.bu, %bb.bv, %bb.bp, %bb.bq
  %storemerge441 = phi ptr [ %i.hh, %bb.bq ], [ %i.hg, %bb.bp ], [ %i.hm, %bb.bu ], [ %i.hn, %bb.bv ]
  %spec.select.sink.i.i.i214 = phi i32 [ %i.gz, %bb.bq ], [ %i.gz, %bb.bp ], [ %spec.select.i.i.i223, %bb.bu ], [ %spec.select.i.i.i223, %bb.bv ]
  store ptr %storemerge441, ptr %i.be, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i214, ptr %i.bc, align 8, !tbaa !49
  %.pre.i.i215 = load i32, ptr %i.bd, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i216

Vec_IntGrow.exit.i.i.i216:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i213, %bb.bs, %bb.br, %bb.bn
  %i.ho = phi i32 [ %.pre.i.i215, %Vec_IntGrow.exit.sink.split.i.i.i213 ], [ %i.ha, %bb.bs ], [ %i.ha, %bb.br ], [ %i.ha, %bb.bn ] ; 2 uses
  %.not4.i.i217 = icmp sgt i32 %i.ho, %i.gb
  br i1 %.not4.i.i217, label %._crit_edge.i.i.i221, label %.lr.ph.i.i.i218

.lr.ph.i.i.i218:                                  ; preds = %Vec_IntGrow.exit.i.i.i216
  %i.hp = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.hq = sext i32 %i.ho to i64                   ; 2 uses
  %wide.trip.count.i.i.i219 = sext i32 %i.gz to i64
  %i.hr = shl nsw i64 %i.hq, 2
  %scevgep.i.i220 = getelementptr i8, ptr %i.hp, i64 %i.hr
  %i.hs = sub nsw i64 %wide.trip.count.i.i.i219, %i.hq
  %i.ht = shl nuw nsw i64 %i.hs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i220, i8 0, i64 %i.ht, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i221

._crit_edge.i.i.i221:                             ; preds = %.lr.ph.i.i.i218, %Vec_IntGrow.exit.i.i.i216
  store i32 %i.gz, ptr %i.bd, align 4, !tbaa !48
  br label %Cba_ObjSetName.exit226

Cba_ObjSetName.exit226:                           ; preds = %Cba_ObjName.exit208, %._crit_edge.i.i.i221
  %.val.i.i222 = load ptr, ptr %i.be, align 8, !tbaa !39
  %i.hu = sext i32 %i.gb to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.val.i.i222, i64 %i.hu
  store i32 %i.gy, ptr %i.hv, align 4, !tbaa !40
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge357, %Cba_ObjSetName.exit226
  %.pre-phi359 = phi i64 [ %.pre358, %._crit_edge357 ], [ %i.gw, %Cba_ObjSetName.exit226 ] ; 2 uses
  %.val115 = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %.val115, i64 %.pre-phi359 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !40 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hw, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !40
  %i.ia = icmp slt i32 %i.hx, %i.hz
  br i1 %i.ia, label %.lr.ph325, label %.critedge

.lr.ph325:                                        ; preds = %bb.bw
  %i.ib = sext i32 %i.gb to i64
  %i.ic = sext i32 %i.hx to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph325, %bb.cu
  %.val114354 = phi ptr [ %.val115, %.lr.ph325 ], [ %.val114, %bb.cu ]
  %indvars.iv339 = phi i64 [ %i.ic, %.lr.ph325 ], [ %indvars.iv.next340.pre-phi, %bb.cu ] ; 8 uses
  %.0100322 = phi i32 [ 0, %.lr.ph325 ], [ %i.kh, %bb.cu ] ; 3 uses
  %.val124 = load ptr, ptr %i.bg, align 8, !tbaa !39
  %i.id = getelementptr inbounds [4 x i8], ptr %.val124, i64 %i.ib ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !40
  %i.if = add nsw i32 %i.ie, %.0100322
  %.val121 = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.ig = getelementptr inbounds [4 x i8], ptr %.val121, i64 %indvars.iv339
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !40
  %.val132 = load i32, ptr %i.bi, align 4, !tbaa !48 ; 2 uses
  %i.ih = icmp slt i32 %.val132, 1
  br i1 %i.ih, label %._crit_edge, label %bb.by

._crit_edge:                                      ; preds = %bb.bx
  %.pre360 = add nsw i64 %indvars.iv339, 1
  br label %bb.cu

bb.by:                                            ; preds = %bb.bx
  %i.ii = load i32, ptr %i.id, align 4, !tbaa !40
  %i.ij = add nsw i32 %i.ii, %.0100322            ; 6 uses
  %i.ik = add nsw i64 %indvars.iv339, 1           ; 5 uses
  %i.il = zext nneg i32 %.val132 to i64           ; 3 uses
  %.not.i.not.i.i227 = icmp slt i64 %indvars.iv339, %i.il
  br i1 %.not.i.not.i.i227, label %Cba_FonName.exit244, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.im = load i32, ptr %i.bj, align 8, !tbaa !49 ; 4 uses
  %i.in = shl nsw i32 %i.im, 1                    ; 2 uses
  %i.io = sext i32 %i.in to i64
  %.not.i.i228 = icmp slt i64 %indvars.iv339, %i.io
  br i1 %.not.i.i228, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ip = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i.i230 = icmp eq ptr %i.ip, null
  %i.iq = shl nuw nsw i64 %i.ik, 2                ; 2 uses
  br i1 %.not9.i.i.i.i230, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ir = tail call ptr @realloc(ptr noundef nonnull %i.ip, i64 noundef %i.iq) #29
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.is = tail call noalias ptr @malloc(i64 noundef %i.iq) #28
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.it = phi ptr [ %i.ir, %bb.cb ], [ %i.is, %bb.cc ]
  store ptr %i.it, ptr %i.bk, align 8, !tbaa !39
  %i.iu = trunc nuw nsw i64 %i.ik to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i231

bb.ce:                                            ; preds = %bb.bz
  %i.iv = sext i32 %i.im to i64
  %.not.i.i.not.i.i229 = icmp slt i64 %indvars.iv339, %i.iv
  br i1 %.not.i.i.not.i.i229, label %Vec_IntGrow.exit.i.i.i234, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iw = icmp slt i32 %i.im, 1073741823
  %spec.select.i.i.i241 = select i1 %i.iw, i32 %i.in, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i242 = icmp slt i32 %i.im, %spec.select.i.i.i241
  br i1 %.not.i22.i.i.i242, label %bb.cg, label %Vec_IntGrow.exit.i.i.i234

bb.cg:                                            ; preds = %bb.cf
  %i.ix = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %.not9.i23.i.i.i243 = icmp eq ptr %i.ix, null
  %i.iy = sext i32 %spec.select.i.i.i241 to i64
  %i.iz = shl nuw nsw i64 %i.iy, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i243, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ja = tail call ptr @realloc(ptr noundef nonnull %i.ix, i64 noundef %i.iz) #29
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.jb = tail call noalias ptr @malloc(i64 noundef %i.iz) #28
  br label %bb.cj

end_hunk_4
begin_hunk_5_@Cba_ManInsertGroup:bb.a
  %i.pw = getelementptr i8, ptr %i.ap, i64 256
  %.val23.i108.i.i = load ptr, ptr %i.pw, align 8, !tbaa !39
  %i.px = getelementptr i8, ptr %i.ap, i64 288
  %i.py = getelementptr i8, ptr %i.bw, i64 288
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %.lr.ph.i107.i.i
  %.val1928.i109.i.i = phi i32 [ %.val1925.i106.i.i, %.lr.ph.i107.i.i ], [ %.val19.i112.i.i, %bb.dd ] ; 3 uses
  %indvars.iv.i110.i.i = phi i64 [ 0, %.lr.ph.i107.i.i ], [ %indvars.iv.next.i113.i.i, %bb.dd ] ; 4 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.val23.i108.i.i, i64 %indvars.iv.i110.i.i
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !40 ; 3 uses
  %i.qb = icmp sgt i32 %i.qa, 0
  %i.qc = icmp slt i32 %i.qa, %.val35.i.i
  %or.cond.i111.i.i = and i1 %i.qb, %i.qc
  br i1 %or.cond.i111.i.i, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %.val.i114.i.i = load i32, ptr %i.pg, align 4, !tbaa !48
  %i.qd = sext i32 %.val.i114.i.i to i64
  %i.qe = icmp slt i64 %indvars.iv.i110.i.i, %i.qd
  br i1 %i.qe, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %.val22.i115.i.i = load ptr, ptr %i.px, align 8, !tbaa !39
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.val22.i115.i.i, i64 %indvars.iv.i110.i.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !40 ; 2 uses
  %.not.i116.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not.i116.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val24.i117.i.i = load ptr, ptr %i.py, align 8, !tbaa !39
  %i.qh = zext nneg i32 %i.qa to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.val24.i117.i.i, i64 %i.qh
  store i32 %i.qg, ptr %i.qi, align 4, !tbaa !40
  %.val19.pre.i118.i.i = load i32, ptr %i.da, align 4, !tbaa !48
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.val19.i112.i.i = phi i32 [ %.val1928.i109.i.i, %bb.cz ], [ %.val1928.i109.i.i, %bb.da ], [ %.val1928.i109.i.i, %bb.db ], [ %.val19.pre.i118.i.i, %bb.dc ] ; 2 uses
  %indvars.iv.next.i113.i.i = add nuw nsw i64 %indvars.iv.i110.i.i, 1 ; 2 uses
  %i.qj = sext i32 %.val19.i112.i.i to i64
  %i.qk = icmp slt i64 %indvars.iv.next.i113.i.i, %i.qj
  br i1 %i.qk, label %bb.cz, label %Vec_IntRemapArray.exit122.i.i, !llvm.loop !200

Vec_IntRemapArray.exit122.i.i:                    ; preds = %bb.dd, %Vec_IntFill.exit.i105.i.i, %Vec_IntRemapArray.exit101.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bw, i64 232 ; 2 uses
  %i.qm = getelementptr i8, ptr %i.ap, i64 236    ; 2 uses
  %.val7.i.i.i = load i32, ptr %i.qm, align 4, !tbaa !48
  %i.qn = icmp sgt i32 %.val7.i.i.i, 0
  br i1 %i.qn, label %.lr.ph.i123.i.i, label %Vec_IntAppend.exit.i.i

.lr.ph.i123.i.i:                                  ; preds = %Vec_IntRemapArray.exit122.i.i
  %i.qo = getelementptr i8, ptr %i.ap, i64 240
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bw, i64 236 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bw, i64 240 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %Vec_IntPush.exit.i.i.i, %.lr.ph.i123.i.i
  %indvars.iv.i124.i.i = phi i64 [ 0, %.lr.ph.i123.i.i ], [ %indvars.iv.next.i125.i.i, %Vec_IntPush.exit.i.i.i ] ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.qo, align 8, !tbaa !39
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %indvars.iv.i124.i.i
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !40
  %i.qt = load i32, ptr %i.qp, align 4, !tbaa !48 ; 7 uses
  %i.qu = load i32, ptr %i.ql, align 8, !tbaa !49
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.df, label %.Vec_IntPush.exit_crit_edge.i.i.i

.Vec_IntPush.exit_crit_edge.i.i.i:                ; preds = %bb.de
  %.pre.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !39
  br label %Vec_IntPush.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.qw = icmp slt i32 %i.qt, 16
  br i1 %i.qw, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.qx = load ptr, ptr %i.qq, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i127.i.i = icmp eq ptr %i.qx, null
  br i1 %.not9.i.i.i127.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.qx, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.qz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.dj:                                            ; preds = %bb.df
  %i.ra = icmp samesign ult i32 %i.qt, 1073741823
  %i.rb = shl nuw nsw i32 %i.qt, 1
  %spec.select.i.i.i.i = select i1 %i.ra, i32 %i.rb, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.i = icmp samesign ult i32 %i.qt, %spec.select.i.i.i.i
  %.pre10.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !39 ; 3 uses
  br i1 %.not.i9.i.i.i.i, label %bb.dk, label %Vec_IntPush.exit.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %.not9.i10.i.i.i.i = icmp eq ptr %.pre10.i.i.i, null
  %i.rc = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.rd = shl nuw nsw i64 %i.rc, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.re = call ptr @realloc(ptr noundef nonnull %.pre10.i.i.i, i64 noundef %i.rd) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.rf = call noalias ptr @malloc(i64 noundef %i.rd) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i.i:            ; preds = %bb.dm, %bb.dl, %bb.di, %bb.dh
  %i.rg = phi ptr [ %i.qz, %bb.di ], [ %i.qy, %bb.dh ], [ %i.re, %bb.dl ], [ %i.rf, %bb.dm ] ; 2 uses
  %spec.select.sink.i.i.i.i = phi i32 [ 16, %bb.di ], [ 16, %bb.dh ], [ %spec.select.i.i.i.i, %bb.dl ], [ %spec.select.i.i.i.i, %bb.dm ]
  store ptr %i.rg, ptr %i.qq, align 8, !tbaa !39
  store i32 %spec.select.sink.i.i.i.i, ptr %i.ql, align 8, !tbaa !49
  %.pre11.i.i.i = load i32, ptr %i.qp, align 4, !tbaa !48
  br label %Vec_IntPush.exit.i.i.i

Vec_IntPush.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i.i, %bb.dj, %.Vec_IntPush.exit_crit_edge.i.i.i
  %i.rh = phi i32 [ %i.qt, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %i.qt, %bb.dj ], [ %.pre11.i.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i.i ] ; 2 uses
  %i.ri = phi ptr [ %.pre.i.i.i, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %.pre10.i.i.i, %bb.dj ], [ %i.rg, %Vec_IntGrow.exit11.sink.split.i.i.i.i ]
  %i.rj = add nsw i32 %i.rh, 1
  store i32 %i.rj, ptr %i.qp, align 4, !tbaa !48
  %i.rk = sext i32 %i.rh to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rk
  store i32 %i.qs, ptr %i.rl, align 4, !tbaa !40
  %indvars.iv.next.i125.i.i = add nuw nsw i64 %indvars.iv.i124.i.i, 1 ; 2 uses
  %.val.i126.i.i = load i32, ptr %i.qm, align 4, !tbaa !48
  %i.rm = sext i32 %.val.i126.i.i to i64
  %i.rn = icmp slt i64 %indvars.iv.next.i125.i.i, %i.rm
  br i1 %i.rn, label %bb.de, label %Vec_IntAppend.exit.i.i, !llvm.loop !201

Vec_IntAppend.exit.i.i:                           ; preds = %Vec_IntPush.exit.i.i.i, %Vec_IntRemapArray.exit122.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ap, i64 392
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !205 ; 3 uses
  %.not.i28.i = icmp eq ptr %i.rp, null
  br i1 %.not.i28.i, label %Cba_NtkDupAttrs.exit.i, label %bb.dn

bb.dn:                                            ; preds = %Vec_IntAppend.exit.i.i
  %i.rq = getelementptr i8, ptr %i.rp, i64 4      ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.rq, align 4, !tbaa !47 ; 3 uses
  %i.rr = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.rs = add i32 %.val8.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.rs, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val8.i.i.i ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 4 ; 2 uses
  store i32 0, ptr %i.rt, align 4, !tbaa !31
  store i32 %spec.store.select.i.i.i.i, ptr %i.rr, align 8, !tbaa !30
  %.not.i.i128.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i128.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ru = sext i32 %spec.store.select.i.i.i.i to i64
  %i.rv = shl nsw i64 %i.ru, 3
  %i.rw = call noalias ptr @malloc(i64 noundef %i.rv) #28
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.do, %bb.dn
  %.promoted16.i.i.i = phi ptr [ %i.rw, %bb.do ], [ null, %bb.dn ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  store ptr %.promoted16.i.i.i, ptr %i.rx, align 8, !tbaa !20
  %i.ry = icmp sgt i32 %.val8.i.i.i, 0
  br i1 %i.ry, label %.lr.ph.i129.i.i, label %Cba_NtkDupAttrs.exit.i

.lr.ph.i129.i.i:                                  ; preds = %Vec_PtrAlloc.exit.i.i.i
  %i.rz = getelementptr i8, ptr %i.rp, i64 8
  br label %bb.dp

bb.dp:                                            ; preds = %Vec_PtrPush.exit.i.i.i, %.lr.ph.i129.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph.i129.i.i ], [ %indvars.iv.next20.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 7 uses
  %storemerge17.i.i.i = phi ptr [ %.promoted16.i.i.i, %.lr.ph.i129.i.i ], [ %storemerge18.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 6 uses
  %spec.select.sink.i15.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i129.i.i ], [ %spec.select.sink.i14.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.rz, align 8, !tbaa !206
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i, i64 %indvars.iv19.i.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !21 ; 3 uses
  %i.sc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !31 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !31
  %i.sg = load i32, ptr %i.sb, align 8, !tbaa !30 ; 3 uses
  store i32 %i.sg, ptr %i.sc, align 8, !tbaa !30
  %.not.i10.i.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i10.i.i.i, label %Vec_PtrDup.exit.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sh = sext i32 %i.sg to i64
  %i.si = shl nsw i64 %i.sh, 3
  %i.sj = call noalias ptr @malloc(i64 noundef %i.si) #28
  br label %Vec_PtrDup.exit.i.i.i

Vec_PtrDup.exit.i.i.i:                            ; preds = %bb.dq, %bb.dp
  %i.sk = phi ptr [ %i.sj, %bb.dq ], [ null, %bb.dp ] ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !20
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !20
  %i.so = sext i32 %i.se to i64
  %i.sp = shl nsw i64 %i.so, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.sk, ptr align 8 %i.sn, i64 %i.sp, i1 false)
  %i.sq = trunc nsw i64 %indvars.iv19.i.i.i to i32
  %i.sr = icmp eq i32 %spec.select.sink.i15.i.i.i, %i.sq
  br i1 %i.sr, label %bb.dr, label %Vec_PtrPush.exit.i.i.i

bb.dr:                                            ; preds = %Vec_PtrDup.exit.i.i.i
  %i.ss = icmp samesign ult i64 %indvars.iv19.i.i.i, 16
  br i1 %i.ss, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %.not9.i.i.i134.i.i = icmp eq ptr %storemerge17.i.i.i, null
  br i1 %.not9.i.i.i134.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.st = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef 128) #29
  br label %Vec_PtrPush.exit.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.su = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_PtrPush.exit.i.i.i

bb.dv:                                            ; preds = %bb.dr
  %i.sv = icmp samesign ult i64 %indvars.iv19.i.i.i, 1073741823
  %i.sw = shl nuw nsw i32 %spec.select.sink.i15.i.i.i, 1
  %spec.select.i.i133.i.i = select i1 %i.sv, i32 %i.sw, i32 2147483647 ; 3 uses
  %i.sx = zext nneg i32 %spec.select.i.i133.i.i to i64 ; 2 uses
  %.not.i10.i.i.i.i = icmp samesign ult i64 %indvars.iv19.i.i.i, %i.sx
  br i1 %.not.i10.i.i.i.i, label %bb.dw, label %Vec_PtrPush.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  %.not9.i11.i.i.i.i = icmp eq ptr %storemerge17.i.i.i, null
  %i.sy = shl nuw nsw i64 %i.sx, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.sz = call ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef %i.sy) #29
  br label %Vec_PtrPush.exit.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.ta = call noalias ptr @malloc(i64 noundef %i.sy) #28
  br label %Vec_PtrPush.exit.i.i.i

Vec_PtrPush.exit.i.i.i:                           ; preds = %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.dt, %Vec_PtrDup.exit.i.i.i
  %storemerge18.i.i.i = phi ptr [ %storemerge17.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %storemerge17.i.i.i, %bb.dv ], [ %i.su, %bb.du ], [ %i.st, %bb.dt ], [ %i.sz, %bb.dx ], [ %i.ta, %bb.dy ] ; 3 uses
  %spec.select.sink.i14.i.i.i = phi i32 [ %spec.select.sink.i15.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %spec.select.sink.i15.i.i.i, %bb.dv ], [ 16, %bb.du ], [ 16, %bb.dt ], [ %spec.select.i.i133.i.i, %bb.dx ], [ %spec.select.i.i133.i.i, %bb.dy ] ; 2 uses
  %indvars.iv.next20.i.i.i = add nuw nsw i64 %indvars.iv19.i.i.i, 1 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i.i.i, i64 %indvars.iv19.i.i.i
  store ptr %i.sc, ptr %i.tb, align 8, !tbaa !21
  %.val.i132.i.i = load i32, ptr %i.rq, align 4, !tbaa !47
  %i.tc = sext i32 %.val.i132.i.i to i64
  %i.td = icmp slt i64 %indvars.iv.next20.i.i.i, %i.tc
  br i1 %i.td, label %bb.dp, label %..critedge_crit_edge.i.i.i, !llvm.loop !202

..critedge_crit_edge.i.i.i:                       ; preds = %Vec_PtrPush.exit.i.i.i
  %i.te = trunc nsw i64 %indvars.iv.next20.i.i.i to i32
  store i32 %i.te, ptr %i.rt, align 4, !tbaa !31
  store i32 %spec.select.sink.i14.i.i.i, ptr %i.rr, align 8
  store ptr %storemerge18.i.i.i, ptr %i.rx, align 8
  br label %Cba_NtkDupAttrs.exit.i

Cba_NtkDupAttrs.exit.i:                           ; preds = %..critedge_crit_edge.i.i.i, %Vec_PtrAlloc.exit.i.i.i, %Vec_IntAppend.exit.i.i
  %i.tf = phi ptr [ null, %Vec_IntAppend.exit.i.i ], [ %i.rr, %Vec_PtrAlloc.exit.i.i.i ], [ %i.rr, %..critedge_crit_edge.i.i.i ]
  %i.tg = getelementptr inbounds nuw i8, ptr %i.bw, i64 392
  store ptr %i.tf, ptr %i.tg, align 8, !tbaa !205
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.v, align 4, !tbaa !31
  %i.th = sext i32 %.val21.i to i64
  %.not.not.i = icmp slt i64 %indvars.iv.next.i, %i.th
  br i1 %.not.not.i, label %Cba_ManNtk.exit.i, label %Cba_ManDup.exit, !llvm.loop !203

Cba_ManDup.exit:                                  ; preds = %Cba_NtkDupAttrs.exit.i, %Cba_ManRoot.exit9
  %i.ti = getelementptr i8, ptr %i.aj, i64 1564
  %.val.i = load i32, ptr %i.ti, align 4, !tbaa !31
  %i.tj = add nsw i32 %.val.i, -1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.aj, i64 1552
  store i32 %i.tj, ptr %i.tk, align 8, !tbaa !64
  ret ptr %i.aj
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Cba_FonRangeSize(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.b = xor i32 %1, -1
  %i.c = tail call ptr @Abc_NamStr(ptr noundef %.val.val, i32 noundef range(i32 -2147483648, 2147483647) %i.b) #27
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #27, !inline_history !5
  %i.e = trunc i64 %i.d to i32
  br label %Cba_NtkRangeSize.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !48 ; 4 uses
  %i.g = icmp slt i32 %.val.i.i, 1
  br i1 %i.g, label %Cba_NtkRangeSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.i = add nuw nsw i32 %1, 1                    ; 4 uses
  %.not.i.not.i.i.i = icmp samesign ult i32 %1, %.val.i.i
  br i1 %.not.i.not.i.i.i, label %Cba_FonRange.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 8, !tbaa !49   ; 4 uses
  %i.k = shl nsw i32 %i.j, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.k
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = zext nneg i32 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.j, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = icmp slt i32 %i.j, 1073741823
  %spec.select.i.i.i.i = select i1 %i.s, i32 %i.k, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.j, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = phi ptr [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.o ], [ %i.i, %bb.i ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.h, align 8, !tbaa !49
  %.pre.i.i.i = load i32, ptr %i.f, align 4, !tbaa !48
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.k, %bb.j
  %i.aa = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val.i.i, %bb.k ], [ %.val.i.i, %bb.j ] ; 2 uses
  %.not3.i.i.i = icmp sgt i32 %i.aa, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.af = sub nsw i64 %wide.trip.count.i.i.i.i, %i.ad
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.i, ptr %i.f, align 4, !tbaa !48
  br label %Cba_FonRange.exit

Cba_FonRange.exit:                                ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.ah = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.al = ashr i32 %i.ak, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %Cba_NtkRangeSize.exit, label %bb.p

bb.p:                                             ; preds = %Cba_FonRange.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.ar = shl nsw i32 %i.al, 2
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.ay = sub nsw i32 %i.av, %i.ax
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = add nuw nsw i32 %i.az, 1
  br label %Cba_NtkRangeSize.exit

Cba_NtkRangeSize.exit:                            ; preds = %bb.c, %bb.p, %Cba_FonRange.exit, %bb.b
  %i.bb = phi i32 [ %i.e, %bb.b ], [ %i.ba, %bb.p ], [ 1, %Cba_FonRange.exit ], [ 1, %bb.c ]
  ret i32 %i.bb
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare ptr @Abc_NamStr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

declare ptr @Extra_FileDesignName(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Cba_NtkAddMissingFonNames(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
end_hunk_5
