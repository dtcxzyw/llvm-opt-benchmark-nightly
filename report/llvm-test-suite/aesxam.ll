inline.NumInlined: 2
begin_hunk_0_@encfile:bb.a
bb.i:                                             ; preds = %.preheader52.preheader
  %i.be = call i32 @feof(ptr noundef %0) #8
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.peel.next, label %._crit_edge, !llvm.loop !14

.peel.next:                                       ; preds = %bb.h, %bb.i
  %i.bf = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef %0) ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  br i1 %i.bg, label %._crit_edge, label %.preheader52.preheader

.preheader52.preheader:                           ; preds = %.peel.next
  %i.bh = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %i.bi = load <16 x i8>, ptr %i.a, align 16, !tbaa !10
  %i.bj = xor <16 x i8> %i.bi, %i.bh
  store <16 x i8> %i.bj, ptr %i.a, align 16, !tbaa !10
  %i.bk = call signext i16 @encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2) #8 ; 0 uses
  %i.bl = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %.not33 = icmp eq i64 %i.bl, 16
  br i1 %.not33, label %bb.i, label %.sink.split, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.i, %.peel.next, %.lr.ph, %bb.h
  %.lcssa.ph = phi i64 [ 1, %.lr.ph ], [ 0, %bb.h ], [ 0, %.peel.next ], [ 0, %bb.i ]
  %.2.ph = phi i64 [ %i.aw, %.lr.ph ], [ 16, %bb.h ], [ 16, %bb.i ], [ %i.bf, %.peel.next ]
  %i.bm = add nuw nsw i64 %.2.ph, %.lcssa.ph      ; 3 uses
  %.not34 = icmp eq i64 %i.bm, 0
  br i1 %.not34, label %bb.j, label %.preheader51

.preheader51:                                     ; preds = %._crit_edge
  %i.bn = icmp samesign ult i64 %i.bm, 16
  br i1 %i.bn, label %.lr.ph64.preheader, label %.preheader

.lr.ph64.preheader:                               ; preds = %fillrand.exit50, %.preheader51
  %spec.select7476 = phi i64 [ %i.bm, %.preheader51 ], [ 1, %fillrand.exit50 ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %spec.select7476
  %i.bo = sub nuw nsw i64 16, %spec.select7476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.bo, i1 false), !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph64.preheader, %.preheader51
  %i.bp = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %i.bq = load <16 x i8>, ptr %i.a, align 16, !tbaa !10
  %i.br = xor <16 x i8> %i.bq, %i.bp
  store <16 x i8> %i.br, ptr %i.a, align 16, !tbaa !10
  %i.bs = call signext i16 @encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2) #8 ; 0 uses
  %i.bt = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %.not35 = icmp eq i64 %i.bt, 16
  br i1 %.not35, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %.preheader52.preheader, %.preheader, %.preheader52.preheader.peel
  %.031.ph = phi i32 [ -7, %.preheader52.preheader.peel ], [ -8, %.preheader ], [ -7, %.preheader52.preheader ]
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %3) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge, %.preheader
  %.031 = phi i32 [ 0, %.preheader ], [ 0, %._crit_edge ], [ %.031.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.031
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare signext i16 @encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -12, 10) i32 @decfile(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %.not = icmp eq i64 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %3) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %i.g = and i64 %i.f, 4294967279
  %or.cond.not = icmp eq i64 %i.g, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = call signext i16 @decrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %2) #8 ; 0 uses
  %i.j = load <16 x i8>, ptr %i.a, align 16, !tbaa !10
  %i.k = load <16 x i8>, ptr %i.c, align 16, !tbaa !10
  %i.l = xor <16 x i8> %i.k, %i.j                 ; 2 uses
  store <16 x i8> %i.l, ptr %i.c, align 16, !tbaa !10
  %i.m = extractelement <16 x i8> %i.l, i64 0
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %i.q = and i64 %i.p, 4294967295
  %.not4452 = icmp eq i64 %i.q, 16                ; 3 uses
  br i1 %.not4452, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.s = call i64 @fwrite(ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef 15, ptr noundef %1)
  %.not45.peel = icmp eq i64 %i.s, 15
  br i1 %.not45.peel, label %.loopexit.peel, label %.loopexit59

.loopexit.peel:                                   ; preds = %.lr.ph
  %i.t = call signext i16 @decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %2) #8 ; 0 uses
  %i.u = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %i.v = load <16 x i8>, ptr %i.c, align 16, !tbaa !10
  %i.w = xor <16 x i8> %i.v, %i.u
  store <16 x i8> %i.w, ptr %i.c, align 16, !tbaa !10
  %i.x = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %i.y = and i64 %i.x, 4294967295
  %.not44.peel = icmp eq i64 %i.y, 16
  br i1 %.not44.peel, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %.loopexit.peel, %.loopexit
  %.04154 = phi ptr [ %.04253, %.loopexit ], [ %i.a, %.loopexit.peel ] ; 3 uses
  %.04253 = phi ptr [ %.04154, %.loopexit ], [ %i.b, %.loopexit.peel ] ; 2 uses
  %i.z = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %.not45 = icmp eq i64 %i.z, 16
  br i1 %.not45, label %.loopexit, label %.loopexit59

.loopexit59:                                      ; preds = %.peel.next, %.lr.ph
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4) ; 0 uses
  br label %bb.h

.loopexit:                                        ; preds = %.peel.next
  %i.ab = call signext i16 @decrypt(ptr noundef nonnull %.04253, ptr noundef nonnull %i.c, ptr noundef %2) #8 ; 0 uses
  %i.ac = load <16 x i8>, ptr %.04154, align 16, !tbaa !10
  %i.ad = load <16 x i8>, ptr %i.c, align 16, !tbaa !10
  %i.ae = xor <16 x i8> %i.ad, %i.ac
  store <16 x i8> %i.ae, ptr %i.c, align 16, !tbaa !10
  %i.af = call i64 @fread(ptr noundef nonnull %.04154, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %i.ag = and i64 %i.af, 4294967295
  %.not44 = icmp eq i64 %i.ag, 16
  br i1 %.not44, label %.peel.next, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.peel, %bb.e
  %i.ah = zext i1 %.not4452 to i32
  %i.ai = add nuw nsw i32 %i.ah, %i.o             ; 2 uses
  %.not46 = icmp eq i32 %i.ai, 0
  br i1 %.not46, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %not..not4452 = xor i1 %.not4452, true
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %not..not4452 to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = call i64 @fwrite(ptr noundef nonnull %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 noundef 1, i64 noundef %i.aj, ptr noundef %1)
  %.not47 = icmp eq i64 %i.ak, %i.aj
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.g, %.loopexit59, %bb.d, %bb.b
  %.040 = phi i32 [ 9, %bb.b ], [ -10, %bb.d ], [ -12, %bb.g ], [ -11, %.loopexit59 ], [ 0, %bb.f ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.040
}

declare signext i16 @decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -12, 10) i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %2 = alloca [1 x %struct.aes], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_toupper_loc() #9  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = and i32 %i.i, -2
  %switch = icmp eq i32 %i.j, 68
  br i1 %switch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %puts74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.thread93

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.k
  %.053104 = phi ptr [ %i.l, %bb.d ], [ %i.n, %bb.k ] ; 2 uses
  %.054103 = phi i32 [ 0, %bb.d ], [ %i.w, %bb.k ] ; 3 uses
  %.055102 = phi i32 [ 0, %bb.d ], [ %.1, %bb.k ]
  %i.m = load i8, ptr %.053104, align 1, !tbaa !10 ; 2 uses
  %.not66 = icmp eq i8 %i.m, 0
  br i1 %.not66, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.053104, i64 1 ; 2 uses
  %i.o = sext i8 %i.m to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %sext = shl i32 %i.q, 24
  %i.r = ashr exact i32 %sext, 24                 ; 3 uses
  %i.s = add nsw i32 %i.r, -48
  %or.cond = icmp ult i32 %i.s, 10
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.r, -65
  %or.cond5 = icmp ult i32 %i.t, 6
  br i1 %or.cond5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.thread93

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink115 = phi i32 [ -48, %bb.f ], [ -55, %bb.g ]
  %i.u = shl i32 %.055102, 4
  %i.v = add i32 %i.u, %.sink115
  %.1 = add i32 %i.v, %i.r                        ; 2 uses
  %i.w = add nuw nsw i32 %.054103, 1              ; 3 uses
  %i.x = and i32 %.054103, 1
  %.not73 = icmp eq i32 %i.x, 0
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = trunc i32 %.1 to i8
  %i.z = lshr exact i32 %i.w, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.a, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  store i8 %i.y, ptr %i.ac, align 1, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %exitcond.not = icmp eq i32 %i.w, 64
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !22

.critedge:                                        ; preds = %bb.k
  %.pr = load i8, ptr %i.n, align 1, !tbaa !10
  %.not67 = icmp eq i8 %.pr, 0
  br i1 %.not67, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %.critedge
  %puts71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.thread93

.critedge.thread:                                 ; preds = %bb.e, %.critedge
  %.054101 = phi i32 [ 64, %.critedge ], [ %.054103, %bb.e ] ; 3 uses
  %i.ad = icmp samesign ugt i32 %.054101, 31
  %i.ae = and i32 %.054101, 15
  %.not68 = icmp eq i32 %i.ae, 0
  %or.cond77 = and i1 %i.ad, %.not68
  br i1 %or.cond77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.thread93

bb.n:                                             ; preds = %.critedge.thread
  %i.af = lshr exact i32 %.054101, 1              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = tail call noalias ptr @fopen(ptr noundef %i.ah, ptr noundef nonnull @.str.7) ; 4 uses
  %.not69 = icmp eq ptr %i.ai, null
  br i1 %.not69, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.aj) ; 0 uses
  br label %.thread93

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = tail call noalias ptr @fopen(ptr noundef %i.am, ptr noundef nonnull @.str.9) ; 3 uses
  %.not70 = icmp eq ptr %i.an, null
  br i1 %.not70, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = icmp eq i32 %i.at, 69
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = call signext i16 @set_key(ptr noundef nonnull %i.a, i32 noundef %i.af, i32 noundef 1, ptr noundef nonnull %2) #8 ; 0 uses
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ax = call i32 @encfile(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.an, ptr noundef nonnull %2, ptr noundef %i.aw)
  br label %.thread85

bb.s:                                             ; preds = %bb.q
  %i.ay = call signext i16 @set_key(ptr noundef nonnull %i.a, i32 noundef %i.af, i32 noundef 2, ptr noundef nonnull %2) #8 ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.bc = call i32 @decfile(ptr noundef nonnull %i.ai, ptr noundef %i.az, ptr noundef nonnull %2, ptr noundef %i.ba, ptr noundef %i.bb)
  br label %.thread85

.thread85:                                        ; preds = %bb.r, %bb.s
  %.056 = phi i32 [ %i.ax, %bb.r ], [ %i.bc, %bb.s ]
  %i.bd = call i32 @fclose(ptr noundef nonnull %i.an) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.be) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread85
  %.0568390 = phi i32 [ %.056, %.thread85 ], [ -6, %bb.t ]
  %i.bg = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  br label %.thread93

.thread93:                                        ; preds = %bb.c, %bb.h, %bb.l, %bb.m, %bb.o, %bb.u
  %.0568391 = phi i32 [ %.0568390, %bb.u ], [ -1, %bb.c ], [ -2, %bb.h ], [ -3, %bb.l ], [ -4, %bb.m ], [ -5, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0568391
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare signext i16 @set_key(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = distinct !{!16, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 int", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !19, i64 0}
!22 = distinct !{!22, !12}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
end_hunk_0
