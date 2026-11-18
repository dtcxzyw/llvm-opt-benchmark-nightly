Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcExtract?download=true
inline.NumInlined: 355
inline.NumDeleted: 73
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Abc_NtkSharePrint:bb.a
  %i.ba = phi ptr [ %i.bg, %.critedge ], [ %i.l, %.critedge.preheader ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.critedge ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph105
  %i.be = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.be, i32 noundef %i.bc) ; 0 uses
  %.pre138 = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph105, %bb.d
  %i.bg = phi ptr [ %i.ba, %.lr.ph105 ], [ %.pre138, %bb.d ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val83 = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bi = sext i32 %.val83 to i64
  %i.bj = icmp slt i64 %indvars.iv.next128, %i.bi
  br i1 %i.bj, label %.lr.ph105, label %.critedge._crit_edge, !llvm.loop !100

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !64 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %.critedge._crit_edge
  %wide.trip.count = zext nneg i32 %i.bl to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bl, 8
  br i1 %min.iters.check, label %.lr.ph109.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph109.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !56
  %wide.load143 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !56
  %i.bp = add <4 x i32> %vec.phi, splat (i32 -1)
  %i.bq = add <4 x i32> %vec.phi142, splat (i32 -1)
  %i.br = add <4 x i32> %i.bp, %wide.load         ; 2 uses
  %i.bs = add <4 x i32> %i.bq, %wide.load143      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge110, label %.lr.ph109.preheader144

.lr.ph109.preheader144:                           ; preds = %.lr.ph109.preheader, %middle.block
  %indvars.iv130.ph = phi i64 [ 0, %.lr.ph109.preheader ], [ %n.vec, %middle.block ]
  %.0107.ph = phi i32 [ 0, %.lr.ph109.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader144, %.lr.ph109
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.lr.ph109 ], [ %indvars.iv130.ph, %.lr.ph109.preheader144 ] ; 2 uses
  %.0107 = phi i32 [ %i.by, %.lr.ph109 ], [ %.0107.ph, %.lr.ph109.preheader144 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv130
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !56
  %i.bx = add i32 %.0107, -1
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !102

._crit_edge110:                                   ; preds = %.lr.ph109, %middle.block, %.critedge._crit_edge
  %.0.lcssa = phi i32 [ 0, %.critedge._crit_edge ], [ %i.bu, %middle.block ], [ %i.by, %.lr.ph109 ] ; 2 uses
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.0.lcssa) ; 0 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val82 = load i32, ptr %i.cb, align 4, !tbaa !19
  %i.cc = load i32, ptr %i.bk, align 8, !tbaa !64
  %i.cd = add i32 %.val82, %.0.lcssa
  %i.ce = sub i32 %i.cd, %i.cc
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ce) ; 0 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge110
  tail call void @free(ptr noundef nonnull %i.g) #17
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge110, %bb.e
  %.not71 = icmp eq ptr %i.f, null
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %.val73112 = load i32, ptr %i.ci, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %.val73112, 0
  br i1 %i.cj, label %.lr.ph115, label %.critedge6

.lr.ph115:                                        ; preds = %bb.h, %.lr.ph115
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %.lr.ph115 ], [ 0, %bb.h ] ; 2 uses
  %i.ck = phi ptr [ %i.cq, %.lr.ph115 ], [ %i.ch, %bb.h ]
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val76 = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val76, i64 %indvars.iv133
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val = load i32, ptr %i.co, align 4, !tbaa !26
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.val) ; 0 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val73 = load i32, ptr %i.cr, align 4, !tbaa !26
  %i.cs = sext i32 %.val73 to i64
  %i.ct = icmp slt i64 %indvars.iv.next134, %i.cs
  br i1 %i.ct, label %.lr.ph115, label %.critedge6, !llvm.loop !103

.critedge6:                                       ; preds = %.lr.ph115, %bb.h
  %putchar72 = tail call i32 @putchar(i32 10)     ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Abc_NtkDumpBlif(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #17 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.12, i64 7, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %.val6973 = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.f = getelementptr i8, ptr %.val6973, i64 4
  %.val69.val74 = load i32, ptr %i.f, align 4, !tbaa !26
  %i.g = icmp sgt i32 %.val69.val74, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.05075 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13, i32 noundef %.05075) #17 ; 0 uses
  %i.i = add nuw nsw i32 %.05075, 1               ; 2 uses
  %.val69 = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.j = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.j, align 4, !tbaa !26
  %i.k = icmp slt i32 %i.i, %.val69.val
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.b) ; 0 uses
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 8, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val6676 = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.m = getelementptr i8, ptr %.val6676, i64 4
  %.val66.val77 = load i32, ptr %i.m, align 4, !tbaa !26
  %i.n = icmp sgt i32 %.val66.val77, 0
  br i1 %i.n, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge, %.lr.ph80
  %.15178 = phi i32 [ %i.p, %.lr.ph80 ], [ 0, %._crit_edge ] ; 2 uses
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.15, i32 noundef %.15178) #17 ; 0 uses
  %i.p = add nuw nsw i32 %.15178, 1               ; 2 uses
  %.val66 = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.q = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.q, align 4, !tbaa !26
  %i.r = icmp slt i32 %i.p, %.val66.val
  br i1 %i.r, label %.lr.ph80, label %._crit_edge81, !llvm.loop !105

._crit_edge81:                                    ; preds = %.lr.ph80, %._crit_edge
  %fputc56 = tail call i32 @fputc(i32 10, ptr nonnull %i.b) ; 0 uses
  %.val6882 = load ptr, ptr %i.e, align 8, !tbaa !110 ; 2 uses
  %i.s = getelementptr i8, ptr %.val6882, i64 4
  %.val68.val83 = load i32, ptr %i.s, align 4, !tbaa !26
  %i.t = icmp sgt i32 %.val68.val83, 0
  br i1 %i.t, label %.lr.ph87, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph87, %._crit_edge81
  %.lcssa82 = phi ptr [ undef, %._crit_edge81 ], [ %i.y, %.lr.ph87 ]
  store ptr %.lcssa82, ptr %i.a, align 8
  %.val6595 = load ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %i.u = getelementptr i8, ptr %.val6595, i64 4
  %.val65.val96 = load i32, ptr %i.u, align 4, !tbaa !26
  %i.v = icmp sgt i32 %.val65.val96, 0
  br i1 %i.v, label %.lr.ph99, label %.critedge._crit_edge

.lr.ph87:                                         ; preds = %._crit_edge81, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph87 ], [ 0, %._crit_edge81 ] ; 3 uses
  %.val6885 = phi ptr [ %.val68, %.lr.ph87 ], [ %.val6882, %._crit_edge81 ]
  %i.w = getelementptr i8, ptr %.val6885, i64 8
  %.val70.val = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val70.val, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val68 = load ptr, ptr %i.e, align 8, !tbaa !110 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val68, i64 4
  %.val68.val = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ac = sext i32 %.val68.val to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph87, label %.critedge.preheader, !llvm.loop !106

.lr.ph99:                                         ; preds = %.critedge.preheader, %Vec_PtrFree.exit
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %Vec_PtrFree.exit ], [ 0, %.critedge.preheader ] ; 3 uses
  %.val6598 = phi ptr [ %.val65, %Vec_PtrFree.exit ], [ %.val6595, %.critedge.preheader ]
  %i.ae = getelementptr i8, ptr %.val6598, i64 8
  %.val67.val = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val67.val, i64 %indvars.iv107
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !55
  %i.ah = call ptr @Abc_NtkNodeSupport(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #17 ; 5 uses
  %fwrite58 = call i64 @fwrite(ptr nonnull @.str.16, i64 6, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4      ; 4 uses
  %.val6288 = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.aj = icmp sgt i32 %.val6288, 0
  br i1 %i.aj, label %.lr.ph91, label %.critedge2

.lr.ph91:                                         ; preds = %.lr.ph99
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph91, %bb.d
  %indvars.iv101 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next102, %bb.d ] ; 2 uses
  %.val64 = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv101
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !65
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13, i32 noundef %i.ao) #17 ; 0 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.val62 = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.aq = sext i32 %.val62 to i64
  %i.ar = icmp slt i64 %indvars.iv.next102, %i.aq
  br i1 %i.ar, label %bb.d, label %.critedge2, !llvm.loop !107

.critedge2:                                       ; preds = %bb.d, %.lr.ph99
  %i.as = trunc nuw nsw i64 %indvars.iv107 to i32
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.17, i32 noundef %i.as) #17 ; 0 uses
  %.val92 = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.au = icmp sgt i32 %.val92, 0
  br i1 %i.au, label %.lr.ph94, label %.critedge4

.lr.ph94:                                         ; preds = %.critedge2
  %i.av = getelementptr i8, ptr %i.ah, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %bb.e
  %indvars.iv104 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next105, %bb.e ] ; 2 uses
  %.val63 = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val63, i64 %indvars.iv104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !55
  %fputc61 = call i32 @fputc(i32 49, ptr nonnull %i.b) ; 0 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %.val = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ay = sext i32 %.val to i64
  %i.az = icmp slt i64 %indvars.iv.next105, %i.ay
  br i1 %i.az, label %bb.e, label %.critedge4, !llvm.loop !108

.critedge4:                                       ; preds = %bb.e, %.critedge2
  %fwrite59 = call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  call void @free(ptr noundef nonnull %i.bb) #17
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge4, %bb.f
  call void @free(ptr noundef nonnull %i.ah) #17
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %.val65 = load ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %i.bc = getelementptr i8, ptr %.val65, i64 4
  %.val65.val = load i32, ptr %i.bc, align 4, !tbaa !26
  %i.bd = sext i32 %.val65.val to i64
  %i.be = icmp slt i64 %indvars.iv.next108, %i.bd
  br i1 %i.be, label %.lr.ph99, label %.critedge._crit_edge, !llvm.loop !109

.critedge._crit_edge:                             ; preds = %Vec_PtrFree.exit, %.critedge.preheader
  %fwrite57 = call i64 @fwrite(ptr nonnull @.str.20, i64 6, i64 1, ptr nonnull %i.b) ; 0 uses
  %i.bf = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare ptr @Abc_NtkNodeSupport(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_NtkShareFindBestMatch(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(320) ptr @malloc(i64 noundef 320) #16 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val84 = load i32, ptr %i.b, align 4, !tbaa !26 ; 2 uses
  %i.c = icmp sgt i32 %.val84, 0
  br i1 %i.c, label %.lr.ph121, label %.critedge4

.lr.ph121:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = zext nneg i32 %.val84 to i64
  br label %bb.b

..critedge2.loopexit_crit_edge:                   ; preds = %bb.c
  %i.f = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %..critedge2.loopexit_crit_edge, %bb.b
  %.promoted115167 = phi ptr [ %storemerge117, %..critedge2.loopexit_crit_edge ], [ %.promoted115, %bb.b ] ; 2 uses
  %.promoted111165 = phi i32 [ %spec.select.sink.i112, %..critedge2.loopexit_crit_edge ], [ %.promoted111, %bb.b ]
  %.promoted163 = phi i32 [ %i.f, %..critedge2.loopexit_crit_edge ], [ %.promoted, %bb.b ] ; 2 uses
  %i.g = icmp sgt i64 %indvars.iv153, 1
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !111

bb.b:                                             ; preds = %.lr.ph121, %.critedge2.loopexit
  %.promoted115 = phi ptr [ %i.a, %.lr.ph121 ], [ %.promoted115167, %.critedge2.loopexit ] ; 2 uses
  %.promoted111 = phi i32 [ 40, %.lr.ph121 ], [ %.promoted111165, %.critedge2.loopexit ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph121 ], [ %.promoted163, %.critedge2.loopexit ] ; 3 uses
  %indvars.iv153 = phi i64 [ %i.e, %.lr.ph121 ], [ %indvars.iv.next154, %.critedge2.loopexit ] ; 2 uses
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, -1 ; 2 uses
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv.next154
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %.val83108 = load i32, ptr %i.j, align 4, !tbaa !26
  %i.k = icmp sgt i32 %.val83108, 0
  br i1 %i.k, label %.lr.ph, label %.critedge2.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = sext i32 %.promoted to i64
  %i.n = sub i32 39, %.promoted
  %wide.trip.count = zext i32 %i.n to i64
  br label %bb.d

bb.c:                                             ; preds = %Vec_PtrPush.exit
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %.val83 = load i32, ptr %i.j, align 4, !tbaa !26
  %i.o = sext i32 %.val83 to i64
  %i.p = icmp slt i64 %indvars.iv.next149, %i.o
  br i1 %i.p, label %bb.d, label %..critedge2.loopexit_crit_edge, !llvm.loop !112

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 7 uses
  %storemerge116 = phi ptr [ %.promoted115, %.lr.ph ], [ %storemerge117, %bb.c ] ; 6 uses
  %spec.select.sink.i113 = phi i32 [ %.promoted111, %.lr.ph ], [ %spec.select.sink.i112, %bb.c ] ; 3 uses
  %.val89 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %indvars.iv148
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = trunc nsw i64 %indvars.iv to i32
  %i.t = icmp eq i32 %spec.select.sink.i113, %i.s
  br i1 %i.t, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp slt i64 %indvars.iv, 16
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge116, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge116, i64 noundef 128) #18
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.x = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.y = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 4 uses
  %i.z = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit
end_hunk_0
