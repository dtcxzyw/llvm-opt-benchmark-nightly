Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaQbf?download=true
inline.NumInlined: 596
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Gia_ManGenWriteRel:bb.a
  %.not.i120.i = icmp eq ptr %i.hj, null
  br i1 %.not.i120.i, label %Vec_WrdFree.exit121.i, label %bb.ab

bb.ab:                                            ; preds = %Vec_WrdFree.exit119.i
  tail call void @free(ptr noundef nonnull %i.hj) #29
  br label %Vec_WrdFree.exit121.i

Vec_WrdFree.exit121.i:                            ; preds = %bb.ab, %Vec_WrdFree.exit119.i
  tail call void @free(ptr noundef nonnull %i.dw) #29
  %i.hk = load ptr, ptr %i.ax, align 8, !tbaa !97 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.hk, null
  br i1 %.not.i122.i, label %Vec_WrdFree.exit123.i, label %bb.ac

bb.ac:                                            ; preds = %Vec_WrdFree.exit121.i
  tail call void @free(ptr noundef nonnull %i.hk) #29
  br label %Vec_WrdFree.exit123.i

Vec_WrdFree.exit123.i:                            ; preds = %bb.ac, %Vec_WrdFree.exit121.i
  tail call void @free(ptr noundef nonnull %i.aq) #29
  %i.hl = load ptr, ptr %i.bc, align 8, !tbaa !97 ; 2 uses
  %.not.i124.i = icmp eq ptr %i.hl, null
  br i1 %.not.i124.i, label %Abc_RData2Rel.exit, label %bb.ad

bb.ad:                                            ; preds = %Vec_WrdFree.exit123.i
  tail call void @free(ptr noundef nonnull %i.hl) #29
  br label %Abc_RData2Rel.exit

Abc_RData2Rel.exit:                               ; preds = %Vec_WrdFree.exit123.i, %bb.ad
  tail call void @free(ptr noundef nonnull %i.ay) #29
  %i.hm = tail call ptr @Extra_FileNameGenericAppend(ptr noundef %3, ptr noundef nonnull @.str.51) #29
  tail call fastcc void @Abc_WritePla(ptr noundef %i.fo, ptr noundef %i.hm, i32 noundef 1)
  tail call fastcc void @Abc_RDataStop(ptr noundef %i.fo)
  tail call fastcc void @Abc_RDataStop(ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Abc_RDataStart(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #32 ; 9 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !103
  %i.d = ashr i32 %2, 6
  %i.e = and i32 %2, 63
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.d, %i.g                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !93
  %i.j = mul nsw i32 %i.h, %0                     ; 4 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.l = add i32 %i.j, -1
  %or.cond.i.i = icmp ult i32 %i.l, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.j ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !98
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #28
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !97
  store i32 %i.j, ptr %i.q, align 4, !tbaa !99
  %i.s = sext i32 %i.j to i64
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.u, align 8, !tbaa !94
  %i.v = shl nsw i32 %1, 1
  %i.w = mul nsw i32 %i.h, %i.v                   ; 4 uses
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.y = add i32 %i.w, -1
  %or.cond.i.i16 = icmp ult i32 %i.y, 15
  %spec.store.select.i.i17 = select i1 %or.cond.i.i16, i32 16, i32 %i.w ; 3 uses
  store i32 %spec.store.select.i.i17, ptr %i.x, align 8, !tbaa !98
  %.not.i.i18 = icmp eq i32 %spec.store.select.i.i17, 0
  br i1 %.not.i.i18, label %Vec_WrdStart.exit19, label %bb.c

bb.c:                                             ; preds = %Vec_WrdStart.exit
  %i.z = sext i32 %spec.store.select.i.i17 to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #28
  br label %Vec_WrdStart.exit19

Vec_WrdStart.exit19:                              ; preds = %Vec_WrdStart.exit, %bb.c
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ null, %Vec_WrdStart.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !97
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !99
  %i.af = sext i32 %i.w to i64
  %i.ag = shl nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !95
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !16
  store i32 16, ptr %i.ai, align 8, !tbaa !14
  %i.ak = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !104
  %i.an = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !16
  store i32 16, ptr %i.an, align 8, !tbaa !14
  %i.ap = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !105
  ret ptr %i.a
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc void @Abc_WritePla(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.62) ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef %1) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !100
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.64, i32 noundef %i.d) #29 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !101
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.65, i32 noundef %i.g) #29 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !103
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.66, i32 noundef %i.j) #29 ; 0 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !103
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader107.lr.ph, label %._crit_edge115

.preheader107.lr.ph:                              ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.not = icmp eq i32 %2, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not, label %.preheader107.us, label %.preheader107

.preheader107.us:                                 ; preds = %.preheader107.lr.ph, %.loopexit.us
  %.2113.us = phi i32 [ %i.bc, %.loopexit.us ], [ 0, %.preheader107.lr.ph ] ; 5 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !100
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.us, label %.preheader.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.d
  %.288108.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ad, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.t = load i32, ptr %i.o, align 4, !tbaa !93
  %i.u = mul nsw i32 %i.t, %.288108.us
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val104.us = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val104.us, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bg
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = lshr i32 %i.z, %i.bh
  %i.ab = and i32 %i.aa, 1
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.25, i32 noundef %i.ab) #29 ; 0 uses
  %i.ad = add nuw nsw i32 %.288108.us, 1          ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !100
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %.preheader.us, !llvm.loop !194

.preheader.us:                                    ; preds = %bb.d, %.preheader107.us
  %fputc.us = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !101
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph112.us, label %.loopexit.us

bb.e:                                             ; preds = %.lr.ph112.us, %bb.e
  %.3111.us = phi i32 [ 0, %.lr.ph112.us ], [ %i.az, %bb.e ] ; 2 uses
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.aj = shl nuw nsw i32 %.3111.us, 1            ; 2 uses
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !93  ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %.val103.us = load ptr, ptr %i.am, align 8, !tbaa !97 ; 2 uses
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val103.us, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bj
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  %3 = lshr i32 %i.aq, %i.bk
  %i.ar = or disjoint i32 %i.aj, 1
  %i.as = mul nsw i32 %i.ak, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %.val103.us, i64 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bj
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %4 = lshr i32 %i.aw, %i.bk                      ; 2 uses
  %i.ax = and i32 %4, 1
  %5 = trunc i32 %3 to i1
  %6 = trunc i32 %4 to i1
  %or.cond.us = select i1 %5, i1 %6, i1 false
  %7 = or disjoint i32 %i.ax, 48
  %i.ay = select i1 %or.cond.us, i32 45, i32 %7
  %fputc99.us.a = tail call i32 @fputc(i32 %i.ay, ptr nonnull %i.a) ; 0 uses
  %i.az = add nuw nsw i32 %.3111.us, 1            ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !101
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %.loopexit.us, !llvm.loop !195

.loopexit.us:                                     ; preds = %bb.e, %.preheader.us
  %fputc101.us = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.bc = add nuw nsw i32 %.2113.us, 1            ; 2 uses
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !103
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.preheader107.us, label %._crit_edge115, !llvm.loop !196

.lr.ph.us:                                        ; preds = %.preheader107.us
  %i.bf = lshr i32 %.2113.us, 5
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = and i32 %.2113.us, 31
  br label %bb.d

.lr.ph112.us:                                     ; preds = %.preheader.us
  %i.bi = lshr i32 %.2113.us, 5
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = and i32 %.2113.us, 31                   ; 2 uses
  br label %bb.e

.preheader107:                                    ; preds = %.preheader107.lr.ph, %.loopexit106
  %.2113 = phi i32 [ %i.cx, %.loopexit106 ], [ 0, %.preheader107.lr.ph ] ; 5 uses
  %i.bl = load i32, ptr %0, align 8, !tbaa !100
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %.preheader105

.lr.ph:                                           ; preds = %.preheader107
  %i.bn = lshr i32 %.2113, 5
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = and i32 %.2113, 31
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.288108 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.f ] ; 2 uses
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.br = load i32, ptr %i.o, align 4, !tbaa !93
  %i.bs = mul nsw i32 %i.br, %.288108
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val104 = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val104, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bo
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
  %i.by = lshr i32 %i.bx, %i.bp
  %i.bz = and i32 %i.by, 1
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.25, i32 noundef %i.bz) #29 ; 0 uses
  %i.cb = add nuw nsw i32 %.288108, 1             ; 2 uses
  %i.cc = load i32, ptr %0, align 8, !tbaa !100
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.f, label %.preheader105, !llvm.loop !194

.preheader105:                                    ; preds = %bb.f, %.preheader107
  %fputc = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  %i.ce = load i32, ptr %i.f, align 4, !tbaa !101
  %.not116 = icmp eq i32 %i.ce, 31
  br i1 %.not116, label %.loopexit106, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader105
  %i.cf = lshr i32 %.2113, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = and i32 %.2113, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph110, %bb.g
  %.4109 = phi i32 [ 0, %.lr.ph110 ], [ %i.ct, %bb.g ] ; 2 uses
  %i.ci = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.cj = load i32, ptr %i.o, align 4, !tbaa !93
  %i.ck = mul nsw i32 %i.cj, %.4109
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  %.val = load ptr, ptr %i.cl, align 8, !tbaa !97
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cg
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !17
  %i.cq = lshr i32 %i.cp, %i.ch
  %i.cr = and i32 %i.cq, 1
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.25, i32 noundef %i.cr) #29 ; 0 uses
  %i.ct = add nuw nsw i32 %.4109, 1               ; 2 uses
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !101
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = icmp slt i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.g, label %.loopexit106, !llvm.loop !197

.loopexit106:                                     ; preds = %bb.g, %.preheader105
  %fputc101 = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.cx = add nuw nsw i32 %.2113, 1               ; 2 uses
  %i.cy = load i32, ptr %i.i, align 8, !tbaa !103
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.preheader107, label %._crit_edge115, !llvm.loop !196

._crit_edge115:                                   ; preds = %.loopexit106, %.loopexit.us, %bb.c
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.68, i64 3, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.da = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge115, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Abc_RDataStop(ptr noundef captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not.i6 = icmp eq ptr %i.h, null
  br i1 %.not.i6, label %Vec_IntFree.exit7, label %bb.c

bb.c:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.h) #29
  br label %Vec_IntFree.exit7

Vec_IntFree.exit7:                                ; preds = %Vec_IntFree.exit, %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %.not.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i8, label %Vec_WrdFree.exit, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit7
  tail call void @free(ptr noundef nonnull %i.l) #29
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_IntFree.exit7, %bb.d
  tail call void @free(ptr noundef nonnull %i.j) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97   ; 2 uses
  %.not.i9 = icmp eq ptr %i.p, null
  br i1 %.not.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.p) #29
  br label %bb.f

bb.f:                                             ; preds = %Vec_WrdFree.exit, %bb.e
  tail call void @free(ptr noundef nonnull %i.n) #29
  tail call void @free(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManGenRel2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Gia_ManGenCombs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !16
  %i.d = sub nsw i32 %.val, %2
  tail call void @Gia_ManGenWriteRel(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %i.d, ptr noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #29
  br label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManCollectNodeTfos(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !16
  store i32 100, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !15
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #29
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 176
  %i.g = getelementptr i8, ptr %0, i64 624
  %.val57 = load ptr, ptr %i.g, align 8, !tbaa !90 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %.val56.pre = load i32, ptr %i.f, align 8, !tbaa !91 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %2, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c
end_hunk_0
