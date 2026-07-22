inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitread_working_state = type { ptr, i64, i64, i32, ptr }
%struct.savable_state = type { i32, [4 x i32] }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_phuff_decoder(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 1, i64 noundef 120) #5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !35
  store ptr @start_pass_phuff_decoder, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !tbaa !41
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = shl nsw i32 %i.j, 7
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call ptr %i.h(ptr noundef %0, i32 noundef 1, i64 noundef %i.m) #5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.n, ptr %i.o, align 8, !tbaa !43
  %i.p = load i32, ptr %i.i, align 8, !tbaa !42
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a, %.preheader
  %.pn = phi ptr [ %indvars.iv, %.preheader ], [ %i.n, %bb.a ] ; 2 uses
  %.01926 = phi i32 [ %i.r, %.preheader ], [ 0, %bb.a ]
  %indvars.iv = getelementptr i8, ptr %.pn, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %.pn, i8 -1, i64 256, i1 false), !tbaa !3
  %i.r = add nuw nsw i32 %.01926, 1               ; 2 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !42
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.preheader, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff_decoder(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 3 uses
  %i.e = icmp eq i32 %i.d, 0                      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not121 = icmp ne i32 %i.g, 0
  br label %._crit_edge165

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.d, %i.g
  %i.i = icmp sgt i32 %i.g, 63
  %or.cond = or i1 %i.h, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %.not = icmp ne i32 %i.k, 1
  %narrow = select i1 %.not, i1 true, i1 %or.cond
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %bb.c, %bb.b
  %.1.in = phi i1 [ %narrow, %bb.c ], [ %.not121, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49   ; 2 uses
  %.not122 = icmp ne i32 %i.m, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %.not123 = icmp ne i32 %.pre, %i.n
  %.not174 = select i1 %.not122, i1 %.not123, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.p = icmp sgt i32 %.pre, 13
  %i.q = select i1 %i.p, i1 true, i1 %.not174
  %.not124.not = select i1 %i.q, i1 true, i1 %.1.in
  br i1 %.not124.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge165
  %i.r = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 17, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i32 %i.d, ptr %i.t, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.v = load i32, ptr %i.u, align 8, !tbaa !47
  %i.w = load ptr, ptr %0, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 %i.v, ptr %i.x, align 4, !tbaa !54
  %i.y = load i32, ptr %i.l, align 4, !tbaa !49
  %i.z = load ptr, ptr %0, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !54
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !50
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !54
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  tail call void %i.af(ptr noundef nonnull %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge165
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge151.critedge

.lr.ph146:                                        ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph146, %._crit_edge143
  %indvars.iv156 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next157, %._crit_edge143 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv156
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !56 ; 4 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [256 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.al, align 8, !tbaa !42
  %i.aw = add nsw i32 %i.av, %i.ar
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [256 x i8], ptr %i.as, i64 %i.ax
  br i1 %i.e, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 118, ptr %i.bc, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  store i32 %i.ar, ptr %i.bd, align 4, !tbaa !54
  %i.be = load ptr, ptr %0, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  %i.bg = load ptr, ptr %0, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !46
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 1)
  %smin = sext i32 %i.bk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %smin, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.bl = load i32, ptr %i.an, align 4, !tbaa !59
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.sink = phi i32 [ %i.bo, %bb.i ], [ 0, %.lr.ph ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 %.sink, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %spec.select131 = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 9)
  %i.br = zext nneg i32 %spec.select131 to i64
  %.not125.not = icmp slt i64 %indvars.iv, %i.br
  br i1 %.not125.not, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.j
  %.pre166 = load i32, ptr %i.c, align 4, !tbaa !46 ; 2 uses
  %.not126139 = icmp sgt i32 %.pre166, %i.bq
  br i1 %.not126139, label %._crit_edge143, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %._crit_edge
  %i.bs = sext i32 %.pre166 to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %bb.l
  %indvars.iv153 = phi i64 [ %i.bs, %.lr.ph142.preheader ], [ %indvars.iv.next154, %bb.l ] ; 4 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv153 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %spec.select132 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !49
  %.not127 = icmp eq i32 %i.bv, %spec.select132
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph142
  %i.bw = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 118, ptr %i.bx, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  store i32 %i.ar, ptr %i.by, align 4, !tbaa !54
  %i.bz = load ptr, ptr %0, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = trunc nsw i64 %indvars.iv153 to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !54
  %i.cc = load ptr, ptr %0, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !58
  tail call void %i.ce(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph142
  %i.cf = load i32, ptr %i.o, align 8, !tbaa !50
  store i32 %i.cf, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !47
  %i.ch = sext i32 %i.cg to i64
  %.not126.not = icmp slt i64 %indvars.iv153, %i.ch
  br i1 %.not126.not, label %.lr.ph142, label %._crit_edge143, !llvm.loop !61

._crit_edge143:                                   ; preds = %bb.l, %._crit_edge
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
end_hunk_0
