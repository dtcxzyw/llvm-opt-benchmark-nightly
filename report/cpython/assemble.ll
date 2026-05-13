inline.NumInlined: 78
inline.NumDeleted: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opcode_metadata = type { i8, i8, i32 }
%struct.anon.1 = type { i32, i8 }
%struct._PyCodeConstructor = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.assembler = type { ptr, i32, ptr, i32, i32, ptr, i32 }

@_PyOpcode_opcode_metadata = external local_unnamed_addr constant [267 x %struct.opcode_metadata], align 16
@_PyOpcode_Caches = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden ptr @_PyAssemble_MakeCodeObject(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %8 = alloca [6 x %struct.anon.1], align 16      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %9 = alloca %struct._PyCodeConstructor, align 8 ; 22 uses
  %10 = alloca %struct.assembler, align 8         ; 24 uses
  %i.j = tail call i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef %4) #5
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.dc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %4, i64 28         ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %resolve_jump_offsets.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.m to i64  ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.q = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.i, %i.t         ; 2 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !24   ; 13 uses
  switch i32 %i.v, label %bb.f [
    i32 257, label %bb.d
    i32 260, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = select i1 %i.u, i32 77, i32 75
  store i32 %i.w, ptr %i.q, align 4, !tbaa !24
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.x = select i1 %i.u, i32 77, i32 76
  store i32 %i.x, ptr %i.q, align 4, !tbaa !24
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = and i32 %i.ab, 8
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ne i32 %i.v, 261
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ne i32 %i.v, 266
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ne i32 %i.v, 256
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ne i32 %i.v, 257
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp ne i32 %i.v, 260
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ne i32 %i.v, 258
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp ne i32 %i.v, 259
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ne i32 %i.v, 264
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ne i32 %i.v, 263
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp ne i32 %i.v, 265
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ne i32 %i.v, 262
  tail call void @llvm.assume(i1 %i.an)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i16.preheader, label %bb.c, !llvm.loop !27

.lr.ph.i16.preheader:                             ; preds = %bb.h
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ao = icmp eq i32 %i.m, 1
  br i1 %i.ao, label %.lr.ph.i16.epil.preheader, label %.lr.ph.i16.preheader.new

.lr.ph.i16.preheader.new:                         ; preds = %.lr.ph.i16.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i16

.preheader.us.i:                                  ; preds = %.lr.ph66.us.i, %bb.o
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.o ], [ 0, %.lr.ph66.us.i ] ; 2 uses
  %.04569.us.i = phi i32 [ %.2.us.i, %bb.o ], [ 0, %.lr.ph66.us.i ] ; 2 uses
  %.04867.us.i = phi i32 [ %i.be, %bb.o ], [ 0, %.lr.ph66.us.i ]
  %i.ap = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv85.i ; 3 uses
  %.val58.us.i = load i32, ptr %i.ap, align 4, !tbaa !24 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %.val59.us.i = load i32, ptr %i.aq, align 4, !tbaa !20 ; 3 uses
  %i.ar = icmp sgt i32 %.val59.us.i, 16777215
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp sgt i32 %.val59.us.i, 65535
  %i.au = icmp sgt i32 %.val59.us.i, 255
  %i.av = zext i1 %i.au to i32
  %i.aw = sext i32 %.val58.us.i to i64            ; 2 uses
  %i.ax = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32
  %i.ba = select i1 %i.at, i32 2, i32 1
  %i.bb = add nuw nsw i32 %i.ba, %i.as
  %i.bc = add nuw nsw i32 %i.bb, %i.av            ; 2 uses
  %i.bd = add i32 %.04867.us.i, %i.az
  %i.be = add i32 %i.bd, %i.bc                    ; 5 uses
  %i.bf = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.aw
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !25
  %i.bi = and i32 %i.bh, 8
  %.not54.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not54.us.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.preheader.us.i
  %i.bj = getelementptr i8, ptr %i.ap, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !30
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [44 x i8], ptr %i.p, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31 ; 4 uses
  %i.bp = icmp eq i32 %.val58.us.i, 68
  br i1 %i.bp, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp slt i32 %i.bo, %i.be
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = sub i32 %i.bo, %i.be
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bs = sub i32 %i.be, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bt = add i32 %i.be, -5
  %i.bu = sub i32 %i.bt, %i.bo
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink.i = phi i32 [ %i.bu, %bb.m ], [ %i.bs, %bb.l ], [ %i.br, %bb.k ] ; 4 uses
  store i32 %.sink.i, ptr %i.aq, align 4, !tbaa !20
  %i.bv = icmp sgt i32 %.sink.i, 16777215
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp sgt i32 %.sink.i, 65535
  %i.by = icmp sgt i32 %.sink.i, 255
  %i.bz = zext i1 %i.by to i32
  %i.ca = select i1 %i.bx, i32 2, i32 1
  %i.cb = add nuw nsw i32 %i.ca, %i.bw
  %i.cc = add nuw nsw i32 %i.cb, %i.bz
  %.not55.us.i = icmp eq i32 %i.cc, %i.bc
  %spec.select.us.i = select i1 %.not55.us.i, i32 %.04569.us.i, i32 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.us.i
  %.2.us.i = phi i32 [ %spec.select.us.i, %bb.n ], [ %.04569.us.i, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count.i
  br i1 %exitcond89.not.i, label %._crit_edge.us.i, label %.preheader.us.i, !llvm.loop !32

.lr.ph66.us.i:                                    ; preds = %.lr.ph66.us.i.backedge, %.lr.ph66.us.i.preheader
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph66.us.i.preheader ], [ %indvars.iv80.i.be, %.lr.ph66.us.i.backedge ] ; 2 uses
  %.04665.us.i = phi i32 [ 0, %.lr.ph66.us.i.preheader ], [ %.04665.us.i.be, %.lr.ph66.us.i.backedge ] ; 2 uses
  %i.cd = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv80.i ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 40
  store i32 %.04665.us.i, ptr %i.ce, align 4, !tbaa !31
  %.val60.us.i = load i32, ptr %i.cd, align 4, !tbaa !24
  %i.cf = getelementptr i8, ptr %i.cd, i64 4
  %.val61.us.i = load i32, ptr %i.cf, align 4, !tbaa !20 ; 3 uses
  %i.cg = icmp sgt i32 %.val61.us.i, 16777215
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp sgt i32 %.val61.us.i, 65535
  %i.cj = icmp sgt i32 %.val61.us.i, 255
  %i.ck = zext i1 %i.cj to i32
  %i.cl = sext i32 %.val60.us.i to i64
  %i.cm = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i32
  %i.cp = select i1 %i.ci, i32 2, i32 1
  %i.cq = add i32 %.04665.us.i, %i.ch
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = add i32 %i.cr, %i.ck
  %i.ct = add i32 %i.cs, %i.co
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count.i
  br i1 %exitcond84.not.i, label %.preheader.us.i, label %.lr.ph66.us.i.backedge

.lr.ph66.us.i.backedge:                           ; preds = %.lr.ph66.us.i, %._crit_edge.us.i
  %indvars.iv80.i.be = phi i64 [ %indvars.iv.next81.i, %.lr.ph66.us.i ], [ 0, %._crit_edge.us.i ]
  %.04665.us.i.be = phi i32 [ %i.ct, %.lr.ph66.us.i ], [ 0, %._crit_edge.us.i ]
  br label %.lr.ph66.us.i, !llvm.loop !33

._crit_edge.us.i:                                 ; preds = %bb.o
  %.not.us.i = icmp eq i32 %.2.us.i, 0
end_hunk_0
begin_hunk_1_@_PyAssemble_MakeCodeObject:bb.a
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.pre.i.i, %._crit_edge83.i.i ], [ %i.jr, %bb.au ]
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.jp, i64 28
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.9.0..sroa_idx.i.i = getelementptr i8, ptr %i.jp, i64 32
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i35.i
  %.pre86.i.i = phi i32 [ %.pre85.i.i, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.aw ]
  %i.jz = phi i32 [ %i.jn, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.aw ] ; 2 uses
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.072.i.i, %.lr.ph.i35.i ], [ %.sroa.9.0.copyload.i.i, %bb.aw ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.073.i.i, %.lr.ph.i35.i ], [ %.sroa.6.0.copyload.i.i, %bb.aw ] ; 2 uses
  %.sroa.0.1.i39.i = phi i32 [ %.sroa.0.074.i.i, %.lr.ph.i35.i ], [ %.sroa.0.0.copyload.i.i, %bb.aw ] ; 3 uses
  %.131.i.i = phi i32 [ %.03076.i.i, %.lr.ph.i35.i ], [ %.02777.i.i, %bb.aw ] ; 2 uses
  %.val.i40.i = load i32, ptr %i.jp, align 4, !tbaa !24
  %i.ka = getelementptr i8, ptr %i.jp, i64 4
  %.val42.i.i = load i32, ptr %i.ka, align 4, !tbaa !20 ; 3 uses
  %i.kb = icmp sgt i32 %.val42.i.i, 16777215
  %i.kc = zext i1 %i.kb to i32
  %i.kd = icmp sgt i32 %.val42.i.i, 65535
  %i.ke = icmp sgt i32 %.val42.i.i, 255
  %i.kf = zext i1 %i.ke to i32
  %i.kg = sext i32 %.val.i40.i to i64
  %i.kh = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !29
  %i.kj = zext i8 %i.ki to i32
  %i.kk = select i1 %i.kd, i32 2, i32 1
  %i.kl = add i32 %.02777.i.i, %i.kc
  %i.km = add i32 %i.kl, %i.kk
  %i.kn = add i32 %i.km, %i.kf
  %i.ko = add i32 %i.kn, %i.kj                    ; 2 uses
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %i.kp = sext i32 %i.jz to i64
  %.not41.i.i = icmp slt i64 %indvars.iv.next.i41.i, %i.kp
  br i1 %.not41.i.i, label %.lr.ph.i35.i, label %._crit_edge.i42.i, !llvm.loop !52

._crit_edge.i42.i:                                ; preds = %bb.ax
  %i.kq = icmp sgt i32 %.sroa.0.1.i39.i, -1
  br i1 %i.kq, label %bb.ay, label %assemble_exception_table.exit.i

bb.ay:                                            ; preds = %._crit_edge.i42.i
  %i.kr = load ptr, ptr %i.he, align 8, !tbaa !19
  %i.ks = zext nneg i32 %.sroa.0.1.i39.i to i64
  %i.kt = getelementptr [44 x i8], ptr %i.kr, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 40
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !31
  %i.kw = call fastcc i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %10, i32 noundef %.131.i.i, i32 noundef %i.ko, i32 noundef %i.kv, i32 %.sroa.6.1.i.i, i32 %.sroa.9.1.i.i)
  %i.kx = icmp sgt i32 %i.kw, -1
  br i1 %i.kx, label %assemble_exception_table.exit.i, label %assemble_emit.exit.thread

assemble_exception_table.exit.i:                  ; preds = %bb.ay, %._crit_edge.i42.i, %bb.at, %.preheader.i.i, %assemble_emit_instr.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !53
  %i.la = sext i32 %i.kz to i64
  %i.lb = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ef, i64 noundef %i.la) #5
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %assemble_emit.exit.thread, label %bb.az

bb.az:                                            ; preds = %assemble_exception_table.exit.i
  %i.ld = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.ef) #5
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %assemble_emit.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lf = load i32, ptr %i.ee, align 8, !tbaa !54
  %i.lg = sext i32 %i.lf to i64
  %i.lh = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ed, i64 noundef %i.lg) #5
  %i.li = icmp slt i32 %i.lh, 0
  br i1 %i.li, label %assemble_emit.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lj = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.ed) #5
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %assemble_emit.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ll = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !45
  %i.ln = sext i32 %i.lm to i64
  %i.lo = shl nsw i64 %i.ln, 1
  %i.lp = call i32 @_PyBytes_Resize(ptr noundef nonnull %10, i64 noundef %i.lo) #5
  %i.lq = icmp slt i32 %i.lp, 0
  br i1 %i.lq, label %assemble_emit.exit.thread, label %assemble_emit.exit

assemble_emit.exit:                               ; preds = %bb.bc
  %i.lr = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %10) #5
  %i.ls = icmp sgt i32 %i.lr, -1
  br i1 %i.ls, label %bb.bd, label %assemble_emit.exit.thread

bb.bd:                                            ; preds = %assemble_emit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store ptr null, ptr %i.i, align 8, !tbaa !55
  %i.lt = getelementptr i8, ptr %0, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 0, ptr %i.f, align 8, !tbaa !57
  %i.lv = getelementptr i8, ptr %i.lu, i64 16
  %.val.i.i24 = load i64, ptr %i.lv, align 8, !tbaa !58
  %i.lw = call ptr @PyTuple_New(i64 noundef %.val.i.i24) #5 ; 6 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %.thread.i, label %.preheader.i.i25

.preheader.i.i25:                                 ; preds = %bb.bd
  %i.ly = call i32 @PyDict_Next(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not13.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not13.i.i, label %.loopexit60.i, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.preheader.i.i25
  %i.lz = getelementptr i8, ptr %i.lw, i64 32
  br label %bb.be

bb.be:                                            ; preds = %_Py_NewRef.exit.i.i, %.lr.ph.i.i26
  %i.ma = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.mb = call i64 @PyLong_AsSsize_t(ptr noundef %i.ma) #5 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, -1
  br i1 %i.mc, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.md = call ptr @PyErr_Occurred() #5
  %.not12.i.i = icmp eq ptr %i.md, null
  br i1 %.not12.i.i, label %bb.bi, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bf
  %i.me = load i32, ptr %i.lw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i32 = icmp sgt i32 %i.me, -1
  br i1 %.not.i.i.i32, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %.critedge.i.i
  %i.mf = add nsw i32 %i.me, -1                   ; 2 uses
  store i32 %i.mf, ptr %i.lw, align 8, !tbaa !29
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.lw) #5
  br label %.thread.i

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.mh = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !29 ; 2 uses
  %i.mj = icmp ugt i32 %i.mi, -1073741825
  br i1 %i.mj, label %_Py_NewRef.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mk = add nuw i32 %i.mi, 1
  store i32 %i.mk, ptr %i.mh, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.bj, %bb.bi
  %i.ml = getelementptr [8 x i8], ptr %i.lz, i64 %i.mb
  store ptr %i.mh, ptr %i.ml, align 8, !tbaa !55
  %i.mm = call i32 @PyDict_Next(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not.i.i27 = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i27, label %.loopexit60.i, label %bb.be, !llvm.loop !62

.thread.i:                                        ; preds = %bb.bh, %bb.bg, %.critedge.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.g, align 8, !tbaa !55
  br label %Py_XDECREF.exit.i

.loopexit60.i:                                    ; preds = %_Py_NewRef.exit.i.i, %.preheader.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  store ptr %i.lw, ptr %i.g, align 8, !tbaa !55
  %i.mn = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.g) #5
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %bb.cg, label %bb.bk

bb.bk:                                            ; preds = %.loopexit60.i
  %i.mp = call ptr @PyList_AsTuple(ptr noundef %2) #5 ; 2 uses
  store ptr %i.mp, ptr %i.h, align 8, !tbaa !55
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.cg, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mr = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.h) #5
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %bb.cg, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mt = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !63
  %i.mv = trunc i64 %i.mu to i32                  ; 2 uses
  %i.mw = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !64
  %i.my = trunc i64 %i.mx to i32
  %i.mz = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !65
  %i.nb = trunc i64 %i.na to i32
  %i.nc = sext i32 %5 to i64                      ; 2 uses
  %i.nd = call ptr @PyTuple_New(i64 noundef %i.nc) #5 ; 6 uses
  store ptr %i.nd, ptr %i.i, align 8, !tbaa !55
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.cg, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nf = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.nc) #5 ; 9 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.cg, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.nh = load i64, ptr %i.mt, align 8, !tbaa !63
  %i.ni = trunc i64 %i.nh to i32
  store i32 %i.ni, ptr %8, align 16, !tbaa !66
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 2, ptr %i.nj, align 4, !tbaa !68
  %i.nk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nl = load i64, ptr %i.mw, align 8, !tbaa !64
  %i.nm = trunc i64 %i.nl to i32
  store i32 %i.nm, ptr %i.nk, align 8, !tbaa !66
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 6, ptr %i.nn, align 4, !tbaa !68
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.np = load i64, ptr %i.mz, align 8, !tbaa !65
  %i.nq = trunc i64 %i.np to i32
  store i32 %i.nq, ptr %i.no, align 16, !tbaa !66
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 4, ptr %i.nr, align 4, !tbaa !68
  %i.ns = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.nt = lshr i32 %6, 2
  %.lobit.i.i = and i32 %i.nt, 1
  store i32 %.lobit.i.i, ptr %i.ns, align 8, !tbaa !66
  %i.nu = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 10, ptr %i.nu, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.nw = lshr i32 %6, 3
  %.lobit68.i.i = and i32 %i.nw, 1
  store i32 %.lobit68.i.i, ptr %i.nv, align 16, !tbaa !66
  %i.nx = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i8 12, ptr %i.nx, align 4, !tbaa !68
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 -1, ptr %i.ny, align 8, !tbaa !66
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.oa = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ob = getelementptr i8, ptr %0, i64 56
  %i.oc = getelementptr i8, ptr %0, i64 40        ; 3 uses
  store i32 0, ptr %i.nz, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge.i36.i, %bb.bo
  %indvars.iv.i.i28 = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.i.i29, %.critedge.i36.i ] ; 2 uses
  %.05591.i.i = phi i32 [ 0, %bb.bo ], [ %spec.select.i.i, %.critedge.i36.i ]
  %i.od = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.i.i28 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !66 ; 2 uses
  %i.of = icmp slt i32 %i.oe, 0
  %i.og = add i32 %i.oe, %.05591.i.i
  %spec.select.i.i = select i1 %i.of, i32 2147483647, i32 %i.og ; 2 uses
  %i.oh = sext i32 %spec.select.i.i to i64        ; 2 uses
  %i.oi = load i64, ptr %i.c, align 8, !tbaa !57
  %i.oj = icmp slt i64 %i.oi, %i.oh
  br i1 %i.oj, label %.lr.ph.i38.i, label %.critedge.i36.i

.lr.ph.i38.i:                                     ; preds = %bb.bp
  %i.ok = getelementptr i8, ptr %i.od, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bv, %.lr.ph.i38.i
  %i.ol = load ptr, ptr %i.oa, align 8, !tbaa !69
  %i.om = call i32 @PyDict_Next(ptr noundef %i.ol, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not.i39.i = icmp eq i32 %i.om, 0
  br i1 %.not.i39.i, label %.critedge.i36.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.on = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.oo = call i32 @PyLong_AsInt(ptr noundef %i.on) #5 ; 2 uses
  %i.op = icmp eq i32 %i.oo, -1
  br i1 %i.op, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.oq = call ptr @PyErr_Occurred() #5
  %.not69.i.i = icmp eq ptr %i.oq, null
  br i1 %.not69.i.i, label %bb.bt, label %compute_localsplus_info.exit.thread.i

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.or = load i8, ptr %i.ok, align 4, !tbaa !68
  %i.os = load ptr, ptr %i.ob, align 8, !tbaa !70
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ou = call i32 @PyDict_Contains(ptr noundef %i.os, ptr noundef %i.ot) #5 ; 2 uses
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %compute_localsplus_info.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ow = load ptr, ptr %i.oc, align 8, !tbaa !71
  %i.ox = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.oy = call i32 @PyDict_Contains(ptr noundef %i.ow, ptr noundef %i.ox) #5 ; 2 uses
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %compute_localsplus_info.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not70.i.i = icmp eq i32 %i.ou, 0
  %spec.select77.v.i.i = select i1 %.not70.i.i, i8 32, i8 48
  %spec.select77.i.i = or i8 %spec.select77.v.i.i, %i.or ; 2 uses
  %.not71.i.i = icmp eq i32 %i.oy, 0
  %i.pa = or i8 %spec.select77.i.i, 64
  %spec.select78.i.i = select i1 %.not71.i.i, i8 %spec.select77.i.i, i8 %i.pa
  %i.pb = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.oo, ptr noundef %i.pb, i8 noundef zeroext %spec.select78.i.i, ptr noundef nonnull %i.nd, ptr noundef nonnull %i.nf) #5
  %i.pc = load i64, ptr %i.c, align 8, !tbaa !57
  %i.pd = icmp slt i64 %i.pc, %i.oh
  br i1 %i.pd, label %bb.bq, label %.critedge.i36.i, !llvm.loop !72

.critedge.i36.i:                                  ; preds = %bb.bv, %bb.bq, %bb.bp
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i29, 6
  br i1 %exitcond.i.i, label %.critedge81.i.i, label %bb.bp, !llvm.loop !73

.critedge81.i.i:                                  ; preds = %.critedge.i36.i
  %i.pe = load ptr, ptr %i.oa, align 8, !tbaa !69
  %i.pf = getelementptr i8, ptr %i.pe, i64 16
  %.val.i37.i = load i64, ptr %i.pf, align 8, !tbaa !58
  %i.pg = trunc i64 %.val.i37.i to i32            ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.ph = load ptr, ptr %i.oc, align 8, !tbaa !71
  %i.pi = call i32 @PyDict_Next(ptr noundef %i.ph, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7292.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not7292.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %.critedge81.i.i, %bb.cb
  %.053.neg94.i.i = phi i32 [ %.053.neg.i.i, %bb.cb ], [ 0, %.critedge81.i.i ]
  %.05393.i.i = phi i32 [ %.154.i.i, %bb.cb ], [ 0, %.critedge81.i.i ] ; 2 uses
  %i.pj = load ptr, ptr %i.oa, align 8, !tbaa !69
  %i.pk = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.pl = call i32 @PyDict_Contains(ptr noundef %i.pj, ptr noundef %i.pk) #5 ; 2 uses
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %compute_localsplus_info.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph95.i.i
  %.not75.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not75.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pn = add i32 %.05393.i.i, 1
  br label %bb.cb, !llvm.loop !74

bb.by:                                            ; preds = %bb.bw
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.pp = call i32 @PyLong_AsInt(ptr noundef %i.po) #5 ; 2 uses
  %i.pq = icmp eq i32 %i.pp, -1
  br i1 %i.pq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pr = call ptr @PyErr_Occurred() #5
  %.not76.i.i = icmp eq ptr %i.pr, null
  br i1 %.not76.i.i, label %bb.ca, label %compute_localsplus_info.exit.thread.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ps = add i32 %.053.neg94.i.i, %i.pg
  %i.pt = add i32 %i.ps, %i.pp
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.pt, ptr noundef %i.pu, i8 noundef zeroext 64, ptr noundef nonnull %i.nd, ptr noundef nonnull %i.nf) #5
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.154.i.i = phi i32 [ %.05393.i.i, %bb.ca ], [ %i.pn, %bb.bx ] ; 2 uses
  %.053.neg.i.i = sub i32 0, %.154.i.i            ; 2 uses
  %i.pv = load ptr, ptr %i.oc, align 8, !tbaa !71
  %i.pw = call i32 @PyDict_Next(ptr noundef %i.pv, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not72.i.i = icmp eq i32 %i.pw, 0
  br i1 %.not72.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

._crit_edge.i.i30:                                ; preds = %bb.cb, %.critedge81.i.i
  %.053.neg.lcssa.i.i = phi i32 [ 0, %.critedge81.i.i ], [ %.053.neg.i.i, %bb.cb ]
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.px = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !75
  %i.pz = call i32 @PyDict_Next(ptr noundef %i.py, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7396.i.i = icmp eq i32 %i.pz, 0
  br i1 %.not7396.i.i, label %.loopexit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %._crit_edge.i.i30
  %i.qa = add i32 %.053.neg.lcssa.i.i, %i.pg
  br label %bb.cc

bb.cc:                                            ; preds = %.critedge83.i.i, %.lr.ph98.i.i
  %i.qb = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.qc = call i32 @PyLong_AsInt(ptr noundef %i.qb) #5 ; 2 uses
  %i.qd = icmp eq i32 %i.qc, -1
  br i1 %i.qd, label %bb.cd, label %.critedge83.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.qe = call ptr @PyErr_Occurred() #5
  %.not74.i.i = icmp eq ptr %i.qe, null
  br i1 %.not74.i.i, label %.critedge83.i.i, label %..critedge80.loopexit_crit_edge100.i.i, !llvm.loop !76

.critedge83.i.i:                                  ; preds = %bb.cd, %bb.cc
  %i.qf = add i32 %i.qa, %i.qc
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.qf, ptr noundef %i.qg, i8 noundef zeroext -128, ptr noundef nonnull %i.nd, ptr noundef nonnull %i.nf) #5
  %i.qh = load ptr, ptr %i.px, align 8, !tbaa !75
  %i.qi = call i32 @PyDict_Next(ptr noundef %i.qh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not73.i.i = icmp eq i32 %i.qi, 0
  br i1 %.not73.i.i, label %.loopexit.i, label %bb.cc

..critedge80.loopexit_crit_edge100.i.i:           ; preds = %bb.cd
  br label %compute_localsplus_info.exit.thread.i, !llvm.loop !76

compute_localsplus_info.exit.thread.i:            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bz, %.lr.ph95.i.i, %..critedge80.loopexit_crit_edge100.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.cg

.loopexit.i:                                      ; preds = %.critedge83.i.i, %._crit_edge.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  store ptr %7, ptr %9, align 8, !tbaa !77
  %i.qj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qk = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  store ptr %i.qk, ptr %i.qj, align 8, !tbaa !80
  %i.ql = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qm = getelementptr i8, ptr %0, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !81 ; 2 uses
  %.not35.i = icmp eq ptr %i.qn, null
  %spec.select.i = select i1 %.not35.i, ptr %i.qk, ptr %i.qn
  store ptr %spec.select.i, ptr %i.ql, align 8, !tbaa !82
  %i.qo = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %6, ptr %i.qo, align 8, !tbaa !83
  %i.qp = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %i.qp, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.qr = load ptr, ptr %10, align 8, !tbaa !40
  store ptr %i.qr, ptr %i.qq, align 8, !tbaa !84
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.qt = load i32, ptr %i.dz, align 8, !tbaa !35
  store i32 %i.qt, ptr %i.qs, align 8, !tbaa !85
  %i.qu = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.qu, align 4
  %i.qv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.qw = load ptr, ptr %i.ed, align 8, !tbaa !41
  store ptr %i.qw, ptr %i.qv, align 8, !tbaa !86
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.qy = load ptr, ptr %i.h, align 8, !tbaa !55
  store ptr %i.qy, ptr %i.qx, align 8, !tbaa !87
  %i.qz = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ra = load ptr, ptr %i.g, align 8, !tbaa !55
  store ptr %i.ra, ptr %i.qz, align 8, !tbaa !88
  %i.rb = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  store ptr %i.nd, ptr %i.rb, align 8, !tbaa !89
  %i.rc = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.nf, ptr %i.rc, align 8, !tbaa !90
  %i.rd = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.re = add i32 %i.my, %i.mv
  store i32 %i.re, ptr %i.rd, align 8, !tbaa !91
  %i.rf = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 %i.mv, ptr %i.rf, align 4, !tbaa !92
  %i.rg = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 %i.nb, ptr %i.rg, align 8, !tbaa !93
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 %3, ptr %i.rh, align 4, !tbaa !94
  %i.ri = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.rj = load ptr, ptr %i.ef, align 8, !tbaa !42
  store ptr %i.rj, ptr %i.ri, align 8, !tbaa !95
  %i.rk = call i32 @_PyCode_Validate(ptr noundef nonnull %9) #5
  %i.rl = icmp slt i32 %i.rk, 0
  br i1 %i.rl, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i
  %i.rm = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.i) #5
  %i.rn = icmp slt i32 %i.rm, 0
  br i1 %i.rn, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ro = load ptr, ptr %i.i, align 8, !tbaa !55
  store ptr %i.ro, ptr %i.rb, align 8, !tbaa !89
  %i.rp = call ptr @_PyCode_New(ptr noundef nonnull %9) #5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.loopexit.i, %compute_localsplus_info.exit.thread.i, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %.loopexit60.i
  %.032.ph.i = phi ptr [ %i.nf, %bb.cf ], [ %i.nf, %bb.ce ], [ %i.nf, %.loopexit.i ], [ %i.nf, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %.loopexit60.i ] ; 4 uses
  %.0.ph.i = phi ptr [ %i.rp, %bb.cf ], [ null, %bb.ce ], [ null, %.loopexit.i ], [ null, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %.loopexit60.i ] ; 4 uses
  %.pr.i31 = load ptr, ptr %i.g, align 8, !tbaa !55 ; 4 uses
  %.not.i40.i = icmp eq ptr %.pr.i31, null
  br i1 %.not.i40.i, label %Py_XDECREF.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rq = load i32, ptr %.pr.i31, align 8, !tbaa !29 ; 2 uses
  %.not.i.i41.i = icmp sgt i32 %i.rq, -1
  br i1 %.not.i.i41.i, label %bb.ci, label %Py_XDECREF.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.rr = add nsw i32 %i.rq, -1                   ; 2 uses
  store i32 %i.rr, ptr %.pr.i31, align 8, !tbaa !29
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.cj, label %Py_XDECREF.exit.i

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i31) #5
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %.thread.i
  %.058.i = phi ptr [ null, %.thread.i ], [ %.0.ph.i, %bb.cg ], [ %.0.ph.i, %bb.ch ], [ %.0.ph.i, %bb.ci ], [ %.0.ph.i, %bb.cj ]
  %.03257.i = phi ptr [ null, %.thread.i ], [ %.032.ph.i, %bb.cg ], [ %.032.ph.i, %bb.ch ], [ %.032.ph.i, %bb.ci ], [ %.032.ph.i, %bb.cj ] ; 4 uses
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !55  ; 4 uses
  %.not.i42.i = icmp eq ptr %i.rt, null
  br i1 %.not.i42.i, label %Py_XDECREF.exit44.i, label %bb.ck

bb.ck:                                            ; preds = %Py_XDECREF.exit.i
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !29 ; 2 uses
  %.not.i.i43.i = icmp sgt i32 %i.ru, -1
  br i1 %.not.i.i43.i, label %bb.cl, label %Py_XDECREF.exit44.i

bb.cl:                                            ; preds = %bb.ck
  %i.rv = add nsw i32 %i.ru, -1                   ; 2 uses
  store i32 %i.rv, ptr %i.rt, align 8, !tbaa !29
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.cm, label %Py_XDECREF.exit44.i

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.rt) #5
  br label %Py_XDECREF.exit44.i

Py_XDECREF.exit44.i:                              ; preds = %bb.cm, %bb.cl, %bb.ck, %Py_XDECREF.exit.i
  %i.rx = load ptr, ptr %i.i, align 8, !tbaa !55  ; 4 uses
  %.not.i45.i = icmp eq ptr %i.rx, null
  br i1 %.not.i45.i, label %Py_XDECREF.exit47.i, label %bb.cn

bb.cn:                                            ; preds = %Py_XDECREF.exit44.i
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !29 ; 2 uses
  %.not.i.i46.i = icmp sgt i32 %i.ry, -1
  br i1 %.not.i.i46.i, label %bb.co, label %Py_XDECREF.exit47.i

bb.co:                                            ; preds = %bb.cn
  %i.rz = add nsw i32 %i.ry, -1                   ; 2 uses
  store i32 %i.rz, ptr %i.rx, align 8, !tbaa !29
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.cp, label %Py_XDECREF.exit47.i

bb.cp:                                            ; preds = %bb.co
  call void @_Py_Dealloc(ptr noundef nonnull %i.rx) #5
  br label %Py_XDECREF.exit47.i

Py_XDECREF.exit47.i:                              ; preds = %bb.cp, %bb.co, %bb.cn, %Py_XDECREF.exit44.i
  %.not.i48.i = icmp eq ptr %.03257.i, null
  br i1 %.not.i48.i, label %makecode.exit, label %bb.cq

bb.cq:                                            ; preds = %Py_XDECREF.exit47.i
  %i.sb = load i32, ptr %.03257.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i49.i = icmp sgt i32 %i.sb, -1
  br i1 %.not.i.i49.i, label %bb.cr, label %makecode.exit

bb.cr:                                            ; preds = %bb.cq
  %i.sc = add nsw i32 %i.sb, -1                   ; 2 uses
  store i32 %i.sc, ptr %.03257.i, align 8, !tbaa !29
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.cs, label %makecode.exit

bb.cs:                                            ; preds = %bb.cr
  call void @_Py_Dealloc(ptr noundef nonnull %.03257.i) #5
  br label %makecode.exit

makecode.exit:                                    ; preds = %Py_XDECREF.exit47.i, %bb.cq, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %assemble_emit.exit.thread

assemble_emit.exit.thread:                        ; preds = %bb.ag, %bb.af, %assemble_emit_location.exit.i.i, %.lr.ph.i.i.i, %.lr.ph.i59.i.i, %bb.av, %assemble_emit_location.exit61.i.i, %bb.ac, %bb.ab, %Py_XDECREF.exit17.i.i, %bb.bb, %bb.ba, %bb.az, %assemble_exception_table.exit.i, %bb.bc, %bb.ay, %bb.ad, %makecode.exit, %assemble_emit.exit
  %.015 = phi ptr [ %.058.i, %makecode.exit ], [ null, %assemble_emit.exit ], [ null, %bb.ad ], [ null, %bb.ay ], [ null, %bb.bc ], [ null, %.lr.ph.i59.i.i ], [ null, %assemble_exception_table.exit.i ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.bb ], [ null, %.lr.ph.i.i.i ], [ null, %assemble_emit_location.exit.i.i ], [ null, %Py_XDECREF.exit17.i.i ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.av ], [ null, %assemble_emit_location.exit61.i.i ], [ null, %bb.af ], [ null, %bb.ag ]
  %i.se = load ptr, ptr %10, align 8, !tbaa !40   ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.se, null
  br i1 %.not.i.i33, label %Py_XDECREF.exit.i35, label %bb.ct

bb.ct:                                            ; preds = %assemble_emit.exit.thread
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i34 = icmp sgt i32 %i.sf, -1
  br i1 %.not.i.i.i34, label %bb.cu, label %Py_XDECREF.exit.i35

bb.cu:                                            ; preds = %bb.ct
  %i.sg = add nsw i32 %i.sf, -1                   ; 2 uses
  store i32 %i.sg, ptr %i.se, align 8, !tbaa !29
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %bb.cv, label %Py_XDECREF.exit.i35

bb.cv:                                            ; preds = %bb.cu
  call void @_Py_Dealloc(ptr noundef nonnull %i.se) #5
  br label %Py_XDECREF.exit.i35

Py_XDECREF.exit.i35:                              ; preds = %bb.cv, %bb.cu, %bb.ct, %assemble_emit.exit.thread
  %i.si = load ptr, ptr %i.ed, align 8, !tbaa !41 ; 4 uses
  %.not.i3.i = icmp eq ptr %i.si, null
  br i1 %.not.i3.i, label %Py_XDECREF.exit5.i, label %bb.cw

bb.cw:                                            ; preds = %Py_XDECREF.exit.i35
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !29 ; 2 uses
  %.not.i.i4.i = icmp sgt i32 %i.sj, -1
  br i1 %.not.i.i4.i, label %bb.cx, label %Py_XDECREF.exit5.i

bb.cx:                                            ; preds = %bb.cw
  %i.sk = add nsw i32 %i.sj, -1                   ; 2 uses
  store i32 %i.sk, ptr %i.si, align 8, !tbaa !29
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %bb.cy, label %Py_XDECREF.exit5.i

bb.cy:                                            ; preds = %bb.cx
  call void @_Py_Dealloc(ptr noundef nonnull %i.si) #5
  br label %Py_XDECREF.exit5.i

Py_XDECREF.exit5.i:                               ; preds = %bb.cy, %bb.cx, %bb.cw, %Py_XDECREF.exit.i35
  %i.sm = load ptr, ptr %i.ef, align 8, !tbaa !42 ; 4 uses
  %.not.i6.i = icmp eq ptr %i.sm, null
  br i1 %.not.i6.i, label %assemble_free.exit, label %bb.cz

bb.cz:                                            ; preds = %Py_XDECREF.exit5.i
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !29 ; 2 uses
  %.not.i.i7.i = icmp sgt i32 %i.sn, -1
  br i1 %.not.i.i7.i, label %bb.da, label %assemble_free.exit

bb.da:                                            ; preds = %bb.cz
  %i.so = add nsw i32 %i.sn, -1                   ; 2 uses
  store i32 %i.so, ptr %i.sm, align 8, !tbaa !29
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.db, label %assemble_free.exit

bb.db:                                            ; preds = %bb.da
  call void @_Py_Dealloc(ptr noundef nonnull %i.sm) #5
  br label %assemble_free.exit

assemble_free.exit:                               ; preds = %Py_XDECREF.exit5.i, %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %bb.dc

bb.dc:                                            ; preds = %bb.a, %assemble_free.exit
  %.0 = phi ptr [ %.015, %assemble_free.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_PyCompile_ConstCacheMergeOne(ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_1
