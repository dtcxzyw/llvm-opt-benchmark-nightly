inline.NumInlined: 78
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
define hidden ptr @_PyAssemble_MakeCodeObject(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
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
  br i1 %i.k, label %bb.db, label %bb.b

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

.preheader.us.i:                                  ; preds = %.lr.ph66.us.i.a, %11
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %11 ], [ 0, %.lr.ph66.us.i.a ] ; 2 uses
  %.04569.us.i = phi i32 [ %.2.us.i, %11 ], [ 0, %.lr.ph66.us.i.a ] ; 2 uses
  %.04867.us.i = phi i32 [ %i.be, %11 ], [ 0, %.lr.ph66.us.i.a ]
  %i.ap = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv78.i ; 3 uses
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
  br i1 %.not54.us.i, label %11, label %bb.i

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
  br label %11

11:                                               ; preds = %bb.n, %.preheader.us.i
  %.2.us.i = phi i32 [ %spec.select.us.i, %bb.n ], [ %.04569.us.i, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count.i
  br i1 %exitcond82.not.i, label %._crit_edge.us.i, label %.preheader.us.i, !llvm.loop !32

.lr.ph66.us.i.a:                                  ; preds = %.lr.ph66.us.i.backedge, %.lr.ph66.us.i.preheader
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph66.us.i.preheader ], [ %indvars.iv73.i.be, %.lr.ph66.us.i.backedge ] ; 2 uses
  %.04665.us.i.a = phi i32 [ 0, %.lr.ph66.us.i.preheader ], [ %.04665.us.i.be, %.lr.ph66.us.i.backedge ] ; 2 uses
  %12 = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv73.i ; 3 uses
  %13 = getelementptr i8, ptr %12, i64 40
  store i32 %.04665.us.i.a, ptr %13, align 4, !tbaa !31
  %.val60.us.i = load i32, ptr %12, align 4, !tbaa !24
  %14 = getelementptr i8, ptr %12, i64 4
  %.val61.us.i = load i32, ptr %14, align 4, !tbaa !20 ; 3 uses
  %15 = icmp sgt i32 %.val61.us.i, 16777215
  %16 = zext i1 %15 to i32
  %17 = icmp sgt i32 %.val61.us.i, 65535
  %18 = icmp sgt i32 %.val61.us.i, 255
  %19 = zext i1 %18 to i32
  %20 = sext i32 %.val60.us.i to i64
  %21 = getelementptr i8, ptr @_PyOpcode_Caches, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !29
  %23 = zext i8 %22 to i32
  %24 = select i1 %17, i32 2, i32 1
  %25 = add i32 %.04665.us.i.a, %16
  %26 = add i32 %25, %24
  %27 = add i32 %26, %19
  %28 = add i32 %27, %23
  %indvars.iv.next74.i.a = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i.a = icmp eq i64 %indvars.iv.next74.i.a, %wide.trip.count.i
  br i1 %exitcond77.not.i.a, label %.preheader.us.i, label %.lr.ph66.us.i.backedge

.lr.ph66.us.i.backedge:                           ; preds = %.lr.ph66.us.i.a, %._crit_edge.us.i
  %indvars.iv73.i.be = phi i64 [ %indvars.iv.next74.i.a, %.lr.ph66.us.i.a ], [ 0, %._crit_edge.us.i ]
  %.04665.us.i.be = phi i32 [ %28, %.lr.ph66.us.i.a ], [ 0, %._crit_edge.us.i ]
  br label %.lr.ph66.us.i.a, !llvm.loop !33

._crit_edge.us.i:                                 ; preds = %11
  %.not.us.i = icmp eq i32 %.2.us.i, 0
  br i1 %.not.us.i, label %resolve_jump_offsets.exit, label %.lr.ph66.us.i.backedge

.lr.ph.i16:                                       ; preds = %bb.q, %.lr.ph.i16.preheader.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i16.preheader.new ], [ %indvars.iv.next.i19.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.preheader.new ], [ %niter.next.1, %bb.q ]
  %i.cd = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !24
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cj = and i32 %i.ci, 8
  %.not56.i = icmp eq i32 %i.cj, 0
  br i1 %.not56.i, label %.lr.ph.i16.1, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i16
  %i.ck = getelementptr i8, ptr %i.cd, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20
  %i.cm = getelementptr i8, ptr %i.cd, i64 36
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !30
  br label %.lr.ph.i16.1

.lr.ph.i16.1:                                     ; preds = %bb.o, %.lr.ph.i16
  %i.cn = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !24
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !25
  %i.cu = and i32 %i.ct, 8
  %.not56.i.1 = icmp eq i32 %i.cu, 0
  br i1 %.not56.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i16.1
  %i.cv = getelementptr i8, ptr %i.cn, i64 48
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !20
  %i.cx = getelementptr i8, ptr %i.cn, i64 80
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i16.1
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph66.us.i.preheader.unr-lcssa, label %.lr.ph.i16, !llvm.loop !34

.lr.ph66.us.i.preheader.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.us.i.preheader, label %.lr.ph.i16.epil.preheader

.lr.ph.i16.epil.preheader:                        ; preds = %.lr.ph66.us.i.preheader.unr-lcssa, %.lr.ph.i16.preheader
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i16.preheader ], [ %indvars.iv.next.i19.1, %.lr.ph66.us.i.preheader.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cy = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18.epil.init ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !24
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !25
  %i.de = and i32 %i.dd, 8
  %.not56.i.epil = icmp eq i32 %i.de, 0
  br i1 %.not56.i.epil, label %.lr.ph66.us.i.preheader, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i16.epil.preheader
  %i.df = getelementptr i8, ptr %i.cy, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !20
  %i.dh = getelementptr i8, ptr %i.cy, i64 36
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !30
  br label %.lr.ph66.us.i.preheader

.lr.ph66.us.i.preheader:                          ; preds = %.lr.ph.i16.epil.preheader, %bb.r, %.lr.ph66.us.i.preheader.unr-lcssa
  br label %.lr.ph66.us.i.a

resolve_jump_offsets.exit:                        ; preds = %._crit_edge.us.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.di = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, i8 0, i64 40, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.dp = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 128) #5 ; 5 uses
  store ptr %i.dp, ptr %10, align 8, !tbaa !40
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %Py_XDECREF.exit.i.i, label %bb.s

bb.s:                                             ; preds = %resolve_jump_offsets.exit
  %i.dr = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 32) #5 ; 2 uses
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !41
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 16) #5 ; 2 uses
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !42
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.u, label %assemble_init.exit.preheader.i

assemble_init.exit.preheader.i:                   ; preds = %bb.t
  %i.dv = load i32, ptr %i.l, align 4, !tbaa !11  ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i21, label %assemble_emit_instr.exit.i

.lr.ph.i21:                                       ; preds = %assemble_init.exit.preheader.i
  %i.dx = getelementptr i8, ptr %4, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.ad

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dz = load i32, ptr %i.dp, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.dz, -1
  br i1 %.not.i.i.i.i, label %bb.v, label %Py_XDECREF.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dp, align 8, !tbaa !29
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.w, label %Py_XDECREF.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dp) #5
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.w, %bb.v, %bb.u, %resolve_jump_offsets.exit
  %i.ec = load ptr, ptr %i.dm, align 8, !tbaa !41 ; 4 uses
  %.not.i15.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i15.i.i, label %Py_XDECREF.exit17.i.i, label %bb.x

bb.x:                                             ; preds = %Py_XDECREF.exit.i.i
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %.not.i.i16.i.i = icmp sgt i32 %i.ed, -1
  br i1 %.not.i.i16.i.i, label %bb.y, label %Py_XDECREF.exit17.i.i

bb.y:                                             ; preds = %bb.x
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !29
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %Py_XDECREF.exit17.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ec) #5
  br label %Py_XDECREF.exit17.i.i

Py_XDECREF.exit17.i.i:                            ; preds = %bb.z, %bb.y, %bb.x, %Py_XDECREF.exit.i.i
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !42 ; 4 uses
  %.not.i18.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i18.i.i, label %assemble_emit.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %Py_XDECREF.exit17.i.i
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !29 ; 2 uses
  %.not.i.i19.i.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i.i19.i.i, label %bb.ab, label %assemble_emit.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !29
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ac, label %assemble_emit.exit.thread

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #5
  br label %assemble_emit.exit.thread

bb.ad:                                            ; preds = %assemble_init.exit.i, %.lr.ph.i21
  %indvars.iv.i22 = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i23, %assemble_init.exit.i ] ; 2 uses
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !19
  %i.el = getelementptr [44 x i8], ptr %i.ek, i64 %indvars.iv.i22 ; 3 uses
  %i.em = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %.val17.i.i = load i64, ptr %i.en, align 8, !tbaa !43 ; 3 uses
  %.val.i.i = load i32, ptr %i.el, align 4, !tbaa !24 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.el, i64 4      ; 2 uses
  %.val16.i.i = load i32, ptr %i.eo, align 4, !tbaa !20 ; 4 uses
  %i.ep = icmp sgt i32 %.val16.i.i, 16777215
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp sgt i32 %.val16.i.i, 65535
  %i.es = icmp sgt i32 %.val16.i.i, 255
  %i.et = zext i1 %i.es to i32
  %i.eu = sext i32 %.val.i.i to i64
  %i.ev = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !29  ; 2 uses
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = select i1 %i.er, i32 2, i32 1
  %i.ez = add nuw nsw i32 %i.ey, %i.eq
  %i.fa = add nuw nsw i32 %i.ez, %i.et
  %i.fb = add nuw nsw i32 %i.fa, %i.ex            ; 3 uses
  %i.fc = load i32, ptr %i.dy, align 8, !tbaa !45 ; 2 uses
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sdiv i64 %.val17.i.i, 2
  %.not.i.i = icmp sgt i64 %i.ff, %i.fe
  br i1 %.not.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fg = icmp sgt i64 %.val17.i.i, 4611686018427387903
  br i1 %i.fg, label %assemble_emit.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = shl i64 %.val17.i.i, 1
  %i.fi = call i32 @_PyBytes_Resize(ptr noundef nonnull %10, i64 noundef %i.fh) #5
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %assemble_emit.exit.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.af
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !40
  %.pre20.i.i = load i32, ptr %i.dy, align 8, !tbaa !45 ; 2 uses
  %.val18.pre.i.i = load i32, ptr %i.el, align 4, !tbaa !24 ; 2 uses
  %.val19.pre.i.i = load i32, ptr %i.eo, align 4, !tbaa !20
  %.phi.trans.insert.i.i = sext i32 %.val18.pre.i.i to i64
  %.phi.trans.insert23.i.i = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.phi.trans.insert.i.i
  %.pre24.i.i = load i8, ptr %.phi.trans.insert23.i.i, align 1, !tbaa !29 ; 2 uses
  %.pre25.i.i = add i32 %.pre20.i.i, %i.fb
  %.pre27.i.i = zext i8 %.pre24.i.i to i32
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i, %bb.ad
  %.pre-phi28.i.i = phi i32 [ %.pre27.i.i, %._crit_edge.i.i ], [ %i.ex, %bb.ad ]
  %.pre-phi.i.i = phi i32 [ %.pre25.i.i, %._crit_edge.i.i ], [ %i.fd, %bb.ad ]
  %i.fk = phi i8 [ %.pre24.i.i, %._crit_edge.i.i ], [ %i.ew, %bb.ad ] ; 2 uses
  %.val19.i.i = phi i32 [ %.val19.pre.i.i, %._crit_edge.i.i ], [ %.val16.i.i, %bb.ad ] ; 4 uses
  %.val18.i.i = phi i32 [ %.val18.pre.i.i, %._crit_edge.i.i ], [ %.val.i.i, %bb.ad ]
  %i.fl = phi i32 [ %.pre20.i.i, %._crit_edge.i.i ], [ %i.fc, %bb.ad ]
  %i.fm = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.em, %bb.ad ]
  %i.fn = getelementptr i8, ptr %i.fm, i64 32
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr [2 x i8], ptr %i.fn, i64 %i.fo ; 6 uses
  store i32 %.pre-phi.i.i, ptr %i.dy, align 8, !tbaa !45
  %i.fq = sub nsw i32 %i.fb, %.pre-phi28.i.i
  switch i32 %i.fq, label %bb.al [
    i32 4, label %bb.ah
    i32 3, label %bb.ai
    i32 2, label %bb.aj
    i32 1, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  store i8 69, ptr %i.fp, align 2, !tbaa !29
  %i.fr = lshr i32 %.val19.i.i, 24
  %i.fs = trunc nuw i32 %i.fr to i8
  %i.ft = getelementptr i8, ptr %i.fp, i64 1
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !29
  %i.fu = getelementptr i8, ptr %i.fp, i64 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.025.i.i.i = phi ptr [ %i.fu, %bb.ah ], [ %i.fp, %bb.ag ] ; 3 uses
  store i8 69, ptr %.025.i.i.i, align 2, !tbaa !29
  %i.fv = lshr i32 %.val19.i.i, 16
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = getelementptr i8, ptr %.025.i.i.i, i64 1
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !29
  %i.fy = getelementptr i8, ptr %.025.i.i.i, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.1.i.i.i = phi ptr [ %i.fy, %bb.ai ], [ %i.fp, %bb.ag ] ; 3 uses
  store i8 69, ptr %.1.i.i.i, align 2, !tbaa !29
  %i.fz = lshr i32 %.val19.i.i, 8
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = getelementptr i8, ptr %.1.i.i.i, i64 1
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !29
  %i.gc = getelementptr i8, ptr %.1.i.i.i, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.2.i.i.i = phi ptr [ %i.gc, %bb.aj ], [ %i.fp, %bb.ag ] ; 3 uses
  %i.gd = trunc i32 %.val18.i.i to i8
  store i8 %i.gd, ptr %.2.i.i.i, align 2, !tbaa !29
  %i.ge = trunc i32 %.val19.i.i to i8
  %i.gf = getelementptr i8, ptr %.2.i.i.i, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !29
  %.not1.i.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not1.i.i.i, label %assemble_init.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ak
  %scevgep.i.i.i = getelementptr i8, ptr %.2.i.i.i, i64 2
  %i.gg = zext i8 %i.fk to i64
  %i.gh = shl nuw nsw i64 %i.gg, 1
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i.i.i, i8 0, i64 %i.gh, i1 false), !tbaa !29
  br label %assemble_init.exit.i

bb.al:                                            ; preds = %bb.ag
  unreachable

assemble_init.exit.i:                             ; preds = %.lr.ph.preheader.i.i.i, %bb.ak
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %i.gi = load i32, ptr %i.l, align 4, !tbaa !11  ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i23, %i.gj
  br i1 %i.gk, label %bb.ad, label %assemble_emit_instr.exit.i, !llvm.loop !46

assemble_emit_instr.exit.i:                       ; preds = %assemble_init.exit.i, %assemble_init.exit.preheader.i
  %i.gl = phi i32 [ %i.dv, %assemble_init.exit.preheader.i ], [ %i.gi, %assemble_init.exit.i ]
  %.04486.i.i = add i32 %i.gl, -1                 ; 2 uses
  %i.gm = icmp sgt i32 %.04486.i.i, -1
  br i1 %i.gm, label %.lr.ph.i.i, label %assemble_exception_table.exit.i

.lr.ph.i.i:                                       ; preds = %assemble_emit_instr.exit.i
  %i.gn = getelementptr i8, ptr %4, i64 16        ; 4 uses
  %i.go = zext nneg i32 %.04486.i.i to i64
  br label %bb.am

.preheader.i.i:                                   ; preds = %same_location.exit.thread.i.i
  %.pre.i32.i = load i32, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %.not88.i.i = icmp sgt i32 %.pre.i32.i, 0
  br i1 %.not88.i.i, label %.lr.ph93.i.i, label %assemble_exception_table.exit.i

bb.am:                                            ; preds = %same_location.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.go, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %same_location.exit.thread.i.i ] ; 3 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !19
  %i.gq = getelementptr [44 x i8], ptr %i.gp, i64 %indvars.iv.i.i ; 4 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8      ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 4
  %i.gt = getelementptr i8, ptr %i.gq, i64 16
  %i.gu = load i64, ptr %i.gt, align 4            ; 2 uses
  %or.cond.i.i.i = icmp eq i64 %i.gs, -4294967298
  %i.gv = and i64 %i.gu, 4294967295
  %i.gw = icmp eq i64 %i.gv, 4294967294
  %.unshifted5.i.i.i = xor i64 %i.gu, -8589934592
  %i.gx = icmp ult i64 %.unshifted5.i.i.i, 4294967296
  %i.gy = and i1 %i.gw, %i.gx
  %or.cond.i.i = select i1 %or.cond.i.i.i, i1 %i.gy, i1 false
  br i1 %or.cond.i.i, label %bb.an, label %same_location.exit.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.gz = load i32, ptr %i.gq, align 4, !tbaa !24 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !25
  %.fr77.i.i = freeze i32 %i.hd
  %i.he = and i32 %.fr77.i.i, 8
  %.not46.not.i.i = icmp eq i32 %i.he, 0
  br i1 %.not46.not.i.i, label %switch.early.test.i.i, label %bb.ao

switch.early.test.i.i:                            ; preds = %bb.an
  switch i32 %i.gz, label %bb.ap [
    i32 105, label %bb.ao
    i32 104, label %bb.ao
    i32 35, label %bb.ao
  ]

bb.ao:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i8 -1, i64 16, i1 false)
  br label %same_location.exit.thread.i.i

bb.ap:                                            ; preds = %switch.early.test.i.i
  %i.hf = getelementptr i8, ptr %i.gq, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %i.hf, i64 16, i1 false), !tbaa.struct !47
  br label %same_location.exit.thread.i.i

same_location.exit.thread.i.i:                    ; preds = %bb.ap, %bb.ao, %bb.am
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.hg = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.hg, label %bb.am, label %.preheader.i.i, !llvm.loop !48

.lr.ph93.i.i:                                     ; preds = %.preheader.i.i, %assemble_emit_location.exit.thread63.i.i
  %.pre105106.i.i = phi i32 [ %.pre105107.i.i, %assemble_emit_location.exit.thread63.i.i ], [ %.pre.i32.i, %.preheader.i.i ] ; 3 uses
  %i.hh = phi i32 [ %i.hx, %assemble_emit_location.exit.thread63.i.i ], [ %.pre.i32.i, %.preheader.i.i ]
  %indvars.iv100.i.i = phi i64 [ %indvars.iv.next101.i.i, %assemble_emit_location.exit.thread63.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.04091.i.i = phi i32 [ %i.im, %assemble_emit_location.exit.thread63.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %.sroa.7.090.i.i = phi i64 [ %.sroa.7.1.i.i, %assemble_emit_location.exit.thread63.i.i ], [ -1, %.preheader.i.i ] ; 4 uses
  %.sroa.0.089.i.i = phi i64 [ %.sroa.0.1.i.i, %assemble_emit_location.exit.thread63.i.i ], [ -1, %.preheader.i.i ] ; 4 uses
  %i.hi = load ptr, ptr %i.gn, align 8, !tbaa !19
  %i.hj = getelementptr [44 x i8], ptr %i.hi, i64 %indvars.iv100.i.i ; 4 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 8      ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 4            ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hj, i64 16     ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 4            ; 2 uses
  %or.cond.i51.i.i = icmp eq i64 %.sroa.0.089.i.i, %i.hl
  %i.ho = icmp eq i64 %.sroa.7.090.i.i, %i.hn
  %or.cond75.i.i = select i1 %or.cond.i51.i.i, i1 %i.ho, i1 false
  br i1 %or.cond75.i.i, label %assemble_emit_location.exit.thread63.i.i, label %same_location.exit54.thread.i.i

same_location.exit54.thread.i.i:                  ; preds = %.lr.ph93.i.i
  %i.hp = icmp eq i32 %.04091.i.i, 0
  br i1 %i.hp, label %assemble_emit_location.exit.thread63.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %same_location.exit54.thread.i.i
  %i.hq = icmp sgt i32 %.04091.i.i, 8
  br i1 %i.hq, label %.lr.ph.i.i.i, label %assemble_emit_location.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.aq
  %.011.i.i.i = phi i32 [ %i.ht, %bb.aq ], [ %.04091.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.hr = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.089.i.i, i64 %.sroa.7.090.i.i, i32 noundef 8)
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %assemble_emit.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.ht = add nsw i32 %.011.i.i.i, -8             ; 2 uses
  %i.hu = icmp sgt i32 %.011.i.i.i, 16
  br i1 %i.hu, label %.lr.ph.i.i.i, label %assemble_emit_location.exit.i.i, !llvm.loop !49

assemble_emit_location.exit.i.i:                  ; preds = %bb.aq, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %.04091.i.i, %.preheader.i.i.i ], [ %i.ht, %bb.aq ]
  %i.hv = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.089.i.i, i64 %.sroa.7.090.i.i, i32 noundef %.0.lcssa.i.i.i)
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %assemble_emit.exit.thread, label %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i

assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i: ; preds = %assemble_emit_location.exit.i.i
  %.sroa.0.0.copyload24.pre.i.i = load i64, ptr %i.hk, align 4
  %.sroa.7.0.copyload25.pre.i.i = load i64, ptr %i.hm, align 4
  %.pre105.pre.i.i = load i32, ptr %i.l, align 4, !tbaa !11 ; 2 uses
  br label %assemble_emit_location.exit.thread63.i.i

assemble_emit_location.exit.thread63.i.i:         ; preds = %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i, %same_location.exit54.thread.i.i, %.lr.ph93.i.i
  %.pre105107.i.i = phi i32 [ %.pre105106.i.i, %.lr.ph93.i.i ], [ %.pre105.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %.pre105106.i.i, %same_location.exit54.thread.i.i ] ; 2 uses
  %i.hx = phi i32 [ %i.hh, %.lr.ph93.i.i ], [ %.pre105.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %.pre105106.i.i, %same_location.exit54.thread.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.089.i.i, %.lr.ph93.i.i ], [ %.sroa.0.0.copyload24.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %i.hl, %same_location.exit54.thread.i.i ] ; 3 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.090.i.i, %.lr.ph93.i.i ], [ %.sroa.7.0.copyload25.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %i.hn, %same_location.exit54.thread.i.i ] ; 3 uses
  %.141.i.i = phi i32 [ %.04091.i.i, %.lr.ph93.i.i ], [ 0, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ 0, %same_location.exit54.thread.i.i ]
  %.val.i33.i = load i32, ptr %i.hj, align 4, !tbaa !24
  %i.hy = getelementptr i8, ptr %i.hj, i64 4
  %.val49.i.i = load i32, ptr %i.hy, align 4, !tbaa !20 ; 3 uses
  %i.hz = icmp sgt i32 %.val49.i.i, 16777215
  %i.ia = zext i1 %i.hz to i32
  %i.ib = icmp sgt i32 %.val49.i.i, 65535
  %i.ic = icmp sgt i32 %.val49.i.i, 255
  %i.id = zext i1 %i.ic to i32
  %i.ie = sext i32 %.val.i33.i to i64
  %i.if = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !29
  %i.ih = zext i8 %i.ig to i32
  %i.ii = select i1 %i.ib, i32 2, i32 1
  %i.ij = add i32 %.141.i.i, %i.ia
  %i.ik = add i32 %i.ij, %i.ii
  %i.il = add i32 %i.ik, %i.id
  %i.im = add i32 %i.il, %i.ih                    ; 5 uses
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 2 uses
  %i.in = sext i32 %i.hx to i64
  %.not.i34.i = icmp slt i64 %indvars.iv.next101.i.i, %i.in
  br i1 %.not.i34.i, label %.lr.ph93.i.i, label %.thread69.i.i, !llvm.loop !50

.thread69.i.i:                                    ; preds = %assemble_emit_location.exit.thread63.i.i
  %i.io = icmp eq i32 %i.im, 0
  br i1 %i.io, label %bb.as, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %.thread69.i.i
  %i.ip = icmp sgt i32 %i.im, 8
  br i1 %i.ip, label %.lr.ph.i59.i.i, label %assemble_emit_location.exit61.i.i

.lr.ph.i59.i.i:                                   ; preds = %.preheader.i55.i.i, %bb.ar
  %.011.i60.i.i = phi i32 [ %i.is, %bb.ar ], [ %i.im, %.preheader.i55.i.i ] ; 2 uses
  %i.iq = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.1.i.i, i64 %.sroa.7.1.i.i, i32 noundef 8)
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %assemble_emit.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i59.i.i
  %i.is = add nsw i32 %.011.i60.i.i, -8           ; 2 uses
  %i.it = icmp sgt i32 %.011.i60.i.i, 16
  br i1 %i.it, label %.lr.ph.i59.i.i, label %assemble_emit_location.exit61.i.i, !llvm.loop !49

assemble_emit_location.exit61.i.i:                ; preds = %bb.ar, %.preheader.i55.i.i
  %.0.lcssa.i57.i.i = phi i32 [ %i.im, %.preheader.i55.i.i ], [ %i.is, %bb.ar ]
  %i.iu = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.1.i.i, i64 %.sroa.7.1.i.i, i32 noundef %.0.lcssa.i57.i.i)
  %.fr.i.i = freeze i32 %i.iu
  %i.iv = icmp slt i32 %.fr.i.i, 0
  br i1 %i.iv, label %assemble_emit.exit.thread, label %assemble_emit_location.exit61.i._crit_edge.i

assemble_emit_location.exit61.i._crit_edge.i:     ; preds = %assemble_emit_location.exit61.i.i
  %.pr.pre.i = load i32, ptr %i.l, align 4, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %assemble_emit_location.exit61.i._crit_edge.i, %.thread69.i.i
  %.pr.i = phi i32 [ %.pr.pre.i, %assemble_emit_location.exit61.i._crit_edge.i ], [ %.pre105107.i.i, %.thread69.i.i ] ; 3 uses
  %.not4171.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %.not4171.i.i, label %.lr.ph.i35.i, label %assemble_exception_table.exit.i

.lr.ph.i35.i:                                     ; preds = %bb.as, %bb.aw
  %.pre85.i.i = phi i32 [ %.pre86.i.i, %bb.aw ], [ %.pr.i, %bb.as ] ; 2 uses
  %i.iw = phi i32 [ %i.ji, %bb.aw ], [ %.pr.i, %bb.as ]
  %indvars.iv.i36.i = phi i64 [ %indvars.iv.next.i41.i, %bb.aw ], [ 0, %bb.as ] ; 2 uses
  %.02777.i.i = phi i32 [ %i.jx, %bb.aw ], [ 0, %bb.as ] ; 3 uses
  %.03076.i.i = phi i32 [ %.131.i.i, %bb.aw ], [ -1, %bb.as ] ; 2 uses
  %.sroa.0.074.i.i = phi i32 [ %.sroa.0.1.i39.i, %bb.aw ], [ -1, %bb.as ] ; 4 uses
  %.sroa.6.073.i.i = phi i32 [ %.sroa.6.1.i.i, %bb.aw ], [ -1, %bb.as ] ; 2 uses
  %.sroa.9.072.i.i = phi i32 [ %.sroa.9.1.i.i, %bb.aw ], [ -1, %bb.as ] ; 2 uses
  %i.ix = load ptr, ptr %i.gn, align 8, !tbaa !19 ; 2 uses
  %i.iy = getelementptr [44 x i8], ptr %i.ix, i64 %indvars.iv.i36.i ; 5 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 24     ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !51 ; 2 uses
  %.not.i37.i = icmp eq i32 %i.ja, %.sroa.0.074.i.i
  br i1 %.not.i37.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i35.i
  %i.jb = icmp sgt i32 %.sroa.0.074.i.i, -1
  br i1 %i.jb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jc = zext nneg i32 %.sroa.0.074.i.i to i64
  %i.jd = getelementptr [44 x i8], ptr %i.ix, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 40
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !31
  %i.jg = call fastcc i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %10, i32 noundef %.03076.i.i, i32 noundef %.02777.i.i, i32 noundef %i.jf, i32 %.sroa.6.073.i.i, i32 %.sroa.9.072.i.i)
  %i.jh = icmp sgt i32 %i.jg, -1
  br i1 %i.jh, label %._crit_edge83.i.i, label %assemble_emit.exit.thread

._crit_edge83.i.i:                                ; preds = %bb.au
  %.sroa.0.0.copyload.pre.i.i = load i32, ptr %i.iz, align 4, !tbaa !7
  %.pre.pre.i.i = load i32, ptr %i.l, align 4, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge83.i.i, %bb.at
  %.pre.i38.i = phi i32 [ %.pre.pre.i.i, %._crit_edge83.i.i ], [ %.pre85.i.i, %bb.at ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.pre.i.i, %._crit_edge83.i.i ], [ %i.ja, %bb.at ]
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.iy, i64 28
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.9.0..sroa_idx.i.i = getelementptr i8, ptr %i.iy, i64 32
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i35.i
  %.pre86.i.i = phi i32 [ %.pre85.i.i, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.av ]
  %i.ji = phi i32 [ %i.iw, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.av ] ; 2 uses
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.072.i.i, %.lr.ph.i35.i ], [ %.sroa.9.0.copyload.i.i, %bb.av ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.073.i.i, %.lr.ph.i35.i ], [ %.sroa.6.0.copyload.i.i, %bb.av ] ; 2 uses
  %.sroa.0.1.i39.i = phi i32 [ %.sroa.0.074.i.i, %.lr.ph.i35.i ], [ %.sroa.0.0.copyload.i.i, %bb.av ] ; 3 uses
  %.131.i.i = phi i32 [ %.03076.i.i, %.lr.ph.i35.i ], [ %.02777.i.i, %bb.av ] ; 2 uses
  %.val.i40.i = load i32, ptr %i.iy, align 4, !tbaa !24
  %i.jj = getelementptr i8, ptr %i.iy, i64 4
  %.val42.i.i = load i32, ptr %i.jj, align 4, !tbaa !20 ; 3 uses
  %i.jk = icmp sgt i32 %.val42.i.i, 16777215
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp sgt i32 %.val42.i.i, 65535
  %i.jn = icmp sgt i32 %.val42.i.i, 255
  %i.jo = zext i1 %i.jn to i32
  %i.jp = sext i32 %.val.i40.i to i64
  %i.jq = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !29
  %i.js = zext i8 %i.jr to i32
  %i.jt = select i1 %i.jm, i32 2, i32 1
  %i.ju = add i32 %.02777.i.i, %i.jl
  %i.jv = add i32 %i.ju, %i.jt
  %i.jw = add i32 %i.jv, %i.jo
  %i.jx = add i32 %i.jw, %i.js                    ; 2 uses
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %i.jy = sext i32 %i.ji to i64
  %.not41.i.i = icmp slt i64 %indvars.iv.next.i41.i, %i.jy
  br i1 %.not41.i.i, label %.lr.ph.i35.i, label %._crit_edge.i42.i, !llvm.loop !52

._crit_edge.i42.i:                                ; preds = %bb.aw
  %i.jz = icmp sgt i32 %.sroa.0.1.i39.i, -1
  br i1 %i.jz, label %bb.ax, label %assemble_exception_table.exit.i

bb.ax:                                            ; preds = %._crit_edge.i42.i
  %i.ka = load ptr, ptr %i.gn, align 8, !tbaa !19
  %i.kb = zext nneg i32 %.sroa.0.1.i39.i to i64
  %i.kc = getelementptr [44 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 40
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !31
  %i.kf = call fastcc i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %10, i32 noundef %.131.i.i, i32 noundef %i.jx, i32 noundef %i.ke, i32 %.sroa.6.1.i.i, i32 %.sroa.9.1.i.i)
  %i.kg = icmp sgt i32 %i.kf, -1
  br i1 %i.kg, label %assemble_exception_table.exit.i, label %assemble_emit.exit.thread

assemble_exception_table.exit.i:                  ; preds = %bb.ax, %._crit_edge.i42.i, %bb.as, %.preheader.i.i, %assemble_emit_instr.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !53
  %i.kj = sext i32 %i.ki to i64
  %i.kk = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.do, i64 noundef %i.kj) #5
  %i.kl = icmp slt i32 %i.kk, 0
  br i1 %i.kl, label %assemble_emit.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %assemble_exception_table.exit.i
  %i.km = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.do) #5
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %assemble_emit.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ko = load i32, ptr %i.dn, align 8, !tbaa !54
  %i.kp = sext i32 %i.ko to i64
  %i.kq = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.dm, i64 noundef %i.kp) #5
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %assemble_emit.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ks = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.dm) #5
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %assemble_emit.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !45
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 1
  %i.ky = call i32 @_PyBytes_Resize(ptr noundef nonnull %10, i64 noundef %i.kx) #5
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %assemble_emit.exit.thread, label %assemble_emit.exit

assemble_emit.exit:                               ; preds = %bb.bb
  %i.la = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %10) #5
  %i.lb = icmp sgt i32 %i.la, -1
  br i1 %i.lb, label %bb.bc, label %assemble_emit.exit.thread

bb.bc:                                            ; preds = %assemble_emit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store ptr null, ptr %i.i, align 8, !tbaa !55
  %i.lc = getelementptr i8, ptr %0, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 0, ptr %i.f, align 8, !tbaa !57
  %i.le = getelementptr i8, ptr %i.ld, i64 16
  %.val.i.i24 = load i64, ptr %i.le, align 8, !tbaa !58
  %i.lf = call ptr @PyTuple_New(i64 noundef %.val.i.i24) #5 ; 6 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.thread.i, label %.preheader.i.i25

.preheader.i.i25:                                 ; preds = %bb.bc
  %i.lh = call i32 @PyDict_Next(ptr noundef nonnull %i.ld, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not13.i.i = icmp eq i32 %i.lh, 0
  br i1 %.not13.i.i, label %.loopexit60.i, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.preheader.i.i25
  %i.li = getelementptr i8, ptr %i.lf, i64 32
  br label %bb.bd

bb.bd:                                            ; preds = %_Py_NewRef.exit.i.i, %.lr.ph.i.i26
  %i.lj = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.lk = call i64 @PyLong_AsSsize_t(ptr noundef %i.lj) #5 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, -1
  br i1 %i.ll, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.lm = call ptr @PyErr_Occurred() #5
  %.not12.i.i = icmp eq ptr %i.lm, null
  br i1 %.not12.i.i, label %bb.bh, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.be
  %i.ln = load i32, ptr %i.lf, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i32 = icmp sgt i32 %i.ln, -1
  br i1 %.not.i.i.i32, label %bb.bf, label %.thread.i

bb.bf:                                            ; preds = %.critedge.i.i
  %i.lo = add nsw i32 %i.ln, -1                   ; 2 uses
  store i32 %i.lo, ptr %i.lf, align 8, !tbaa !29
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %i.lf) #5
  br label %.thread.i

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.lq = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !29 ; 2 uses
  %i.ls = icmp ugt i32 %i.lr, -1073741825
  br i1 %i.ls, label %_Py_NewRef.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lt = add nuw i32 %i.lr, 1
  store i32 %i.lt, ptr %i.lq, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.bi, %bb.bh
  %i.lu = getelementptr [8 x i8], ptr %i.li, i64 %i.lk
  store ptr %i.lq, ptr %i.lu, align 8, !tbaa !55
  %i.lv = call i32 @PyDict_Next(ptr noundef nonnull %i.ld, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not.i.i27 = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i27, label %.loopexit60.i, label %bb.bd, !llvm.loop !62

.thread.i:                                        ; preds = %bb.bg, %bb.bf, %.critedge.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.g, align 8, !tbaa !55
  br label %Py_XDECREF.exit.i

.loopexit60.i:                                    ; preds = %_Py_NewRef.exit.i.i, %.preheader.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  store ptr %i.lf, ptr %i.g, align 8, !tbaa !55
  %i.lw = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.g) #5
  %i.lx = icmp slt i32 %i.lw, 0
  br i1 %i.lx, label %bb.cf, label %bb.bj

bb.bj:                                            ; preds = %.loopexit60.i
  %i.ly = call ptr @PyList_AsTuple(ptr noundef %2) #5 ; 2 uses
  store ptr %i.ly, ptr %i.h, align 8, !tbaa !55
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.cf, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ma = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.h) #5
  %i.mb = icmp slt i32 %i.ma, 0
  br i1 %i.mb, label %bb.cf, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mc = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !63
  %i.me = trunc i64 %i.md to i32                  ; 2 uses
  %i.mf = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !64
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !65
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = sext i32 %5 to i64                      ; 2 uses
  %i.mm = call ptr @PyTuple_New(i64 noundef %i.ml) #5 ; 6 uses
  store ptr %i.mm, ptr %i.i, align 8, !tbaa !55
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.cf, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mo = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ml) #5 ; 9 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.cf, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.mq = load i64, ptr %i.mc, align 8, !tbaa !63
  %i.mr = trunc i64 %i.mq to i32
  store i32 %i.mr, ptr %8, align 16, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 2, ptr %i.ms, align 4, !tbaa !68
  %i.mt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mu = load i64, ptr %i.mf, align 8, !tbaa !64
  %i.mv = trunc i64 %i.mu to i32
  store i32 %i.mv, ptr %i.mt, align 8, !tbaa !66
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 6, ptr %i.mw, align 4, !tbaa !68
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.my = load i64, ptr %i.mi, align 8, !tbaa !65
  %i.mz = trunc i64 %i.my to i32
  store i32 %i.mz, ptr %i.mx, align 16, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 4, ptr %i.na, align 4, !tbaa !68
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.nc = lshr i32 %6, 2
  %.lobit.i.i = and i32 %i.nc, 1
  store i32 %.lobit.i.i, ptr %i.nb, align 8, !tbaa !66
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 10, ptr %i.nd, align 4, !tbaa !68
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.nf = lshr i32 %6, 3
  %.lobit68.i.i = and i32 %i.nf, 1
  store i32 %.lobit68.i.i, ptr %i.ne, align 16, !tbaa !66
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i8 12, ptr %i.ng, align 4, !tbaa !68
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 -1, ptr %i.nh, align 8, !tbaa !66
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.nj = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.nk = getelementptr i8, ptr %0, i64 56
  %i.nl = getelementptr i8, ptr %0, i64 40        ; 3 uses
  store i32 0, ptr %i.ni, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge.i36.i, %bb.bn
  %indvars.iv.i.i28 = phi i64 [ 0, %bb.bn ], [ %indvars.iv.next.i.i29, %.critedge.i36.i ] ; 2 uses
  %.05591.i.i = phi i32 [ 0, %bb.bn ], [ %spec.select.i.i, %.critedge.i36.i ]
  %i.nm = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.i.i28 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !66 ; 2 uses
  %i.no = icmp slt i32 %i.nn, 0
  %i.np = add i32 %i.nn, %.05591.i.i
  %spec.select.i.i = select i1 %i.no, i32 2147483647, i32 %i.np ; 2 uses
  %i.nq = sext i32 %spec.select.i.i to i64        ; 2 uses
  %i.nr = load i64, ptr %i.c, align 8, !tbaa !57
  %i.ns = icmp slt i64 %i.nr, %i.nq
  br i1 %i.ns, label %.lr.ph.i38.i, label %.critedge.i36.i

.lr.ph.i38.i:                                     ; preds = %bb.bo
  %i.nt = getelementptr i8, ptr %i.nm, i64 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bu, %.lr.ph.i38.i
  %i.nu = load ptr, ptr %i.nj, align 8, !tbaa !69
  %i.nv = call i32 @PyDict_Next(ptr noundef %i.nu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not.i39.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i39.i, label %.critedge.i36.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nw = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.nx = call i32 @PyLong_AsInt(ptr noundef %i.nw) #5 ; 2 uses
  %i.ny = icmp eq i32 %i.nx, -1
  br i1 %i.ny, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nz = call ptr @PyErr_Occurred() #5
  %.not69.i.i = icmp eq ptr %i.nz, null
  br i1 %.not69.i.i, label %bb.bs, label %compute_localsplus_info.exit.thread.i

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.oa = load i8, ptr %i.nt, align 4, !tbaa !68
  %i.ob = load ptr, ptr %i.nk, align 8, !tbaa !70
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.od = call i32 @PyDict_Contains(ptr noundef %i.ob, ptr noundef %i.oc) #5 ; 2 uses
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %compute_localsplus_info.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.of = load ptr, ptr %i.nl, align 8, !tbaa !71
  %i.og = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.oh = call i32 @PyDict_Contains(ptr noundef %i.of, ptr noundef %i.og) #5 ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %compute_localsplus_info.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not70.i.i = icmp eq i32 %i.od, 0
  %spec.select77.v.i.i = select i1 %.not70.i.i, i8 32, i8 48
  %spec.select77.i.i = or i8 %spec.select77.v.i.i, %i.oa ; 2 uses
  %.not71.i.i = icmp eq i32 %i.oh, 0
  %i.oj = or i8 %spec.select77.i.i, 64
  %spec.select78.i.i = select i1 %.not71.i.i, i8 %spec.select77.i.i, i8 %i.oj
  %i.ok = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.nx, ptr noundef %i.ok, i8 noundef zeroext %spec.select78.i.i, ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mo) #5
  %i.ol = load i64, ptr %i.c, align 8, !tbaa !57
  %i.om = icmp slt i64 %i.ol, %i.nq
  br i1 %i.om, label %bb.bp, label %.critedge.i36.i, !llvm.loop !72

.critedge.i36.i:                                  ; preds = %bb.bu, %bb.bp, %bb.bo
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i29, 6
  br i1 %exitcond.i.i, label %.critedge81.i.i, label %bb.bo, !llvm.loop !73

.critedge81.i.i:                                  ; preds = %.critedge.i36.i
  %i.on = load ptr, ptr %i.nj, align 8, !tbaa !69
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  %.val.i37.i = load i64, ptr %i.oo, align 8, !tbaa !58
  %i.op = trunc i64 %.val.i37.i to i32            ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.oq = load ptr, ptr %i.nl, align 8, !tbaa !71
  %i.or = call i32 @PyDict_Next(ptr noundef %i.oq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7292.i.i = icmp eq i32 %i.or, 0
  br i1 %.not7292.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %.critedge81.i.i, %bb.ca
  %.053.neg94.i.i = phi i32 [ %.053.neg.i.i, %bb.ca ], [ 0, %.critedge81.i.i ]
  %.05393.i.i = phi i32 [ %.154.i.i, %bb.ca ], [ 0, %.critedge81.i.i ] ; 2 uses
  %i.os = load ptr, ptr %i.nj, align 8, !tbaa !69
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ou = call i32 @PyDict_Contains(ptr noundef %i.os, ptr noundef %i.ot) #5 ; 2 uses
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %compute_localsplus_info.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph95.i.i
  %.not75.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not75.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ow = add i32 %.05393.i.i, 1
  br label %bb.ca, !llvm.loop !74

bb.bx:                                            ; preds = %bb.bv
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.oy = call i32 @PyLong_AsInt(ptr noundef %i.ox) #5 ; 2 uses
  %i.oz = icmp eq i32 %i.oy, -1
  br i1 %i.oz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pa = call ptr @PyErr_Occurred() #5
  %.not76.i.i = icmp eq ptr %i.pa, null
  br i1 %.not76.i.i, label %bb.bz, label %compute_localsplus_info.exit.thread.i

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.pb = add i32 %.053.neg94.i.i, %i.op
  %i.pc = add i32 %i.pb, %i.oy
  %i.pd = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.pc, ptr noundef %i.pd, i8 noundef zeroext 64, ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mo) #5
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %.154.i.i = phi i32 [ %.05393.i.i, %bb.bz ], [ %i.ow, %bb.bw ] ; 2 uses
  %.053.neg.i.i = sub i32 0, %.154.i.i            ; 2 uses
  %i.pe = load ptr, ptr %i.nl, align 8, !tbaa !71
  %i.pf = call i32 @PyDict_Next(ptr noundef %i.pe, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not72.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not72.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

._crit_edge.i.i30:                                ; preds = %bb.ca, %.critedge81.i.i
  %.053.neg.lcssa.i.i = phi i32 [ 0, %.critedge81.i.i ], [ %.053.neg.i.i, %bb.ca ]
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.pg = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !75
  %i.pi = call i32 @PyDict_Next(ptr noundef %i.ph, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7396.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not7396.i.i, label %.loopexit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %._crit_edge.i.i30
  %i.pj = add i32 %.053.neg.lcssa.i.i, %i.op
  br label %bb.cb

bb.cb:                                            ; preds = %.critedge83.i.i, %.lr.ph98.i.i
  %i.pk = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.pl = call i32 @PyLong_AsInt(ptr noundef %i.pk) #5 ; 2 uses
  %i.pm = icmp eq i32 %i.pl, -1
  br i1 %i.pm, label %bb.cc, label %.critedge83.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.pn = call ptr @PyErr_Occurred() #5
  %.not74.i.i = icmp eq ptr %i.pn, null
  br i1 %.not74.i.i, label %.critedge83.i.i, label %..critedge80.loopexit_crit_edge100.i.i, !llvm.loop !76

.critedge83.i.i:                                  ; preds = %bb.cc, %bb.cb
  %i.po = add i32 %i.pj, %i.pl
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.po, ptr noundef %i.pp, i8 noundef zeroext -128, ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mo) #5
  %i.pq = load ptr, ptr %i.pg, align 8, !tbaa !75
  %i.pr = call i32 @PyDict_Next(ptr noundef %i.pq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not73.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not73.i.i, label %.loopexit.i, label %bb.cb

..critedge80.loopexit_crit_edge100.i.i:           ; preds = %bb.cc
  br label %compute_localsplus_info.exit.thread.i, !llvm.loop !76

compute_localsplus_info.exit.thread.i:            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.by, %.lr.ph95.i.i, %..critedge80.loopexit_crit_edge100.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.cf

.loopexit.i:                                      ; preds = %.critedge83.i.i, %._crit_edge.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  store ptr %7, ptr %9, align 8, !tbaa !77
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pt = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  store ptr %i.pt, ptr %i.ps, align 8, !tbaa !80
  %i.pu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pv = getelementptr i8, ptr %0, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !81 ; 2 uses
  %.not35.i = icmp eq ptr %i.pw, null
  %spec.select.i = select i1 %.not35.i, ptr %i.pt, ptr %i.pw
  store ptr %spec.select.i, ptr %i.pu, align 8, !tbaa !82
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %6, ptr %i.px, align 8, !tbaa !83
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.qa = load ptr, ptr %10, align 8, !tbaa !40
  store ptr %i.qa, ptr %i.pz, align 8, !tbaa !84
  %i.qb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.qc = load i32, ptr %i.di, align 8, !tbaa !35
  store i32 %i.qc, ptr %i.qb, align 8, !tbaa !85
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.qd, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.qf = load ptr, ptr %i.dm, align 8, !tbaa !41
  store ptr %i.qf, ptr %i.qe, align 8, !tbaa !86
  %i.qg = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.qh = load ptr, ptr %i.h, align 8, !tbaa !55
  store ptr %i.qh, ptr %i.qg, align 8, !tbaa !87
  %i.qi = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.qj = load ptr, ptr %i.g, align 8, !tbaa !55
  store ptr %i.qj, ptr %i.qi, align 8, !tbaa !88
  %i.qk = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  store ptr %i.mm, ptr %i.qk, align 8, !tbaa !89
  %i.ql = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.mo, ptr %i.ql, align 8, !tbaa !90
  %i.qm = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.qn = add i32 %i.mh, %i.me
  store i32 %i.qn, ptr %i.qm, align 8, !tbaa !91
  %i.qo = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 %i.me, ptr %i.qo, align 4, !tbaa !92
  %i.qp = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 %i.mk, ptr %i.qp, align 8, !tbaa !93
  %i.qq = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 %3, ptr %i.qq, align 4, !tbaa !94
  %i.qr = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.qs = load ptr, ptr %i.do, align 8, !tbaa !42
  store ptr %i.qs, ptr %i.qr, align 8, !tbaa !95
  %i.qt = call i32 @_PyCode_Validate(ptr noundef nonnull %9) #5
  %i.qu = icmp slt i32 %i.qt, 0
  br i1 %i.qu, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i
  %i.qv = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.i) #5
  %i.qw = icmp slt i32 %i.qv, 0
  br i1 %i.qw, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qx = load ptr, ptr %i.i, align 8, !tbaa !55
  store ptr %i.qx, ptr %i.qk, align 8, !tbaa !89
  %i.qy = call ptr @_PyCode_New(ptr noundef nonnull %9) #5
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.loopexit.i, %compute_localsplus_info.exit.thread.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.loopexit60.i
  %.032.ph.i = phi ptr [ %i.mo, %bb.ce ], [ %i.mo, %bb.cd ], [ %i.mo, %.loopexit.i ], [ %i.mo, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %.loopexit60.i ] ; 4 uses
  %.0.ph.i = phi ptr [ %i.qy, %bb.ce ], [ null, %bb.cd ], [ null, %.loopexit.i ], [ null, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %.loopexit60.i ] ; 4 uses
  %.pr.i31 = load ptr, ptr %i.g, align 8, !tbaa !55 ; 4 uses
  %.not.i40.i = icmp eq ptr %.pr.i31, null
  br i1 %.not.i40.i, label %Py_XDECREF.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qz = load i32, ptr %.pr.i31, align 8, !tbaa !29 ; 2 uses
  %.not.i.i41.i = icmp sgt i32 %i.qz, -1
  br i1 %.not.i.i41.i, label %bb.ch, label %Py_XDECREF.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.ra = add nsw i32 %i.qz, -1                   ; 2 uses
  store i32 %i.ra, ptr %.pr.i31, align 8, !tbaa !29
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %bb.ci, label %Py_XDECREF.exit.i

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i31) #5
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %.thread.i
  %.058.i = phi ptr [ null, %.thread.i ], [ %.0.ph.i, %bb.cf ], [ %.0.ph.i, %bb.cg ], [ %.0.ph.i, %bb.ch ], [ %.0.ph.i, %bb.ci ]
  %.03257.i = phi ptr [ null, %.thread.i ], [ %.032.ph.i, %bb.cf ], [ %.032.ph.i, %bb.cg ], [ %.032.ph.i, %bb.ch ], [ %.032.ph.i, %bb.ci ] ; 4 uses
  %i.rc = load ptr, ptr %i.h, align 8, !tbaa !55  ; 4 uses
  %.not.i42.i = icmp eq ptr %i.rc, null
  br i1 %.not.i42.i, label %Py_XDECREF.exit44.i, label %bb.cj

bb.cj:                                            ; preds = %Py_XDECREF.exit.i
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !29 ; 2 uses
  %.not.i.i43.i = icmp sgt i32 %i.rd, -1
  br i1 %.not.i.i43.i, label %bb.ck, label %Py_XDECREF.exit44.i

bb.ck:                                            ; preds = %bb.cj
  %i.re = add nsw i32 %i.rd, -1                   ; 2 uses
  store i32 %i.re, ptr %i.rc, align 8, !tbaa !29
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.cl, label %Py_XDECREF.exit44.i

bb.cl:                                            ; preds = %bb.ck
  call void @_Py_Dealloc(ptr noundef nonnull %i.rc) #5
  br label %Py_XDECREF.exit44.i

Py_XDECREF.exit44.i:                              ; preds = %bb.cl, %bb.ck, %bb.cj, %Py_XDECREF.exit.i
  %i.rg = load ptr, ptr %i.i, align 8, !tbaa !55  ; 4 uses
  %.not.i45.i = icmp eq ptr %i.rg, null
  br i1 %.not.i45.i, label %Py_XDECREF.exit47.i, label %bb.cm

bb.cm:                                            ; preds = %Py_XDECREF.exit44.i
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !29 ; 2 uses
  %.not.i.i46.i = icmp sgt i32 %i.rh, -1
  br i1 %.not.i.i46.i, label %bb.cn, label %Py_XDECREF.exit47.i

bb.cn:                                            ; preds = %bb.cm
  %i.ri = add nsw i32 %i.rh, -1                   ; 2 uses
  store i32 %i.ri, ptr %i.rg, align 8, !tbaa !29
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.co, label %Py_XDECREF.exit47.i

bb.co:                                            ; preds = %bb.cn
  call void @_Py_Dealloc(ptr noundef nonnull %i.rg) #5
  br label %Py_XDECREF.exit47.i

Py_XDECREF.exit47.i:                              ; preds = %bb.co, %bb.cn, %bb.cm, %Py_XDECREF.exit44.i
  %.not.i48.i = icmp eq ptr %.03257.i, null
  br i1 %.not.i48.i, label %makecode.exit, label %bb.cp

bb.cp:                                            ; preds = %Py_XDECREF.exit47.i
  %i.rk = load i32, ptr %.03257.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i49.i = icmp sgt i32 %i.rk, -1
  br i1 %.not.i.i49.i, label %bb.cq, label %makecode.exit

bb.cq:                                            ; preds = %bb.cp
  %i.rl = add nsw i32 %i.rk, -1                   ; 2 uses
  store i32 %i.rl, ptr %.03257.i, align 8, !tbaa !29
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.cr, label %makecode.exit

bb.cr:                                            ; preds = %bb.cq
  call void @_Py_Dealloc(ptr noundef nonnull %.03257.i) #5
  br label %makecode.exit

makecode.exit:                                    ; preds = %Py_XDECREF.exit47.i, %bb.cp, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %assemble_emit.exit.thread

assemble_emit.exit.thread:                        ; preds = %bb.af, %bb.ae, %assemble_emit_location.exit.i.i, %.lr.ph.i.i.i, %.lr.ph.i59.i.i, %bb.au, %assemble_emit_location.exit61.i.i, %bb.ab, %bb.aa, %Py_XDECREF.exit17.i.i, %bb.ba, %bb.az, %bb.ay, %assemble_exception_table.exit.i, %bb.bb, %bb.ax, %bb.ac, %makecode.exit, %assemble_emit.exit
  %.015 = phi ptr [ %.058.i, %makecode.exit ], [ null, %assemble_emit.exit ], [ null, %bb.ac ], [ null, %bb.ax ], [ null, %bb.bb ], [ null, %.lr.ph.i59.i.i ], [ null, %assemble_exception_table.exit.i ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %.lr.ph.i.i.i ], [ null, %assemble_emit_location.exit.i.i ], [ null, %Py_XDECREF.exit17.i.i ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.au ], [ null, %assemble_emit_location.exit61.i.i ], [ null, %bb.ae ], [ null, %bb.af ]
  %i.rn = load ptr, ptr %10, align 8, !tbaa !40   ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i33, label %Py_XDECREF.exit.i35, label %bb.cs

bb.cs:                                            ; preds = %assemble_emit.exit.thread
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i34 = icmp sgt i32 %i.ro, -1
  br i1 %.not.i.i.i34, label %bb.ct, label %Py_XDECREF.exit.i35

bb.ct:                                            ; preds = %bb.cs
  %i.rp = add nsw i32 %i.ro, -1                   ; 2 uses
  store i32 %i.rp, ptr %i.rn, align 8, !tbaa !29
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %bb.cu, label %Py_XDECREF.exit.i35

bb.cu:                                            ; preds = %bb.ct
  call void @_Py_Dealloc(ptr noundef nonnull %i.rn) #5
  br label %Py_XDECREF.exit.i35

Py_XDECREF.exit.i35:                              ; preds = %bb.cu, %bb.ct, %bb.cs, %assemble_emit.exit.thread
  %i.rr = load ptr, ptr %i.dm, align 8, !tbaa !41 ; 4 uses
  %.not.i3.i = icmp eq ptr %i.rr, null
  br i1 %.not.i3.i, label %Py_XDECREF.exit5.i, label %bb.cv

bb.cv:                                            ; preds = %Py_XDECREF.exit.i35
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !29 ; 2 uses
  %.not.i.i4.i = icmp sgt i32 %i.rs, -1
  br i1 %.not.i.i4.i, label %bb.cw, label %Py_XDECREF.exit5.i

bb.cw:                                            ; preds = %bb.cv
  %i.rt = add nsw i32 %i.rs, -1                   ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 8, !tbaa !29
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.cx, label %Py_XDECREF.exit5.i

bb.cx:                                            ; preds = %bb.cw
  call void @_Py_Dealloc(ptr noundef nonnull %i.rr) #5
  br label %Py_XDECREF.exit5.i

Py_XDECREF.exit5.i:                               ; preds = %bb.cx, %bb.cw, %bb.cv, %Py_XDECREF.exit.i35
  %i.rv = load ptr, ptr %i.do, align 8, !tbaa !42 ; 4 uses
  %.not.i6.i = icmp eq ptr %i.rv, null
  br i1 %.not.i6.i, label %assemble_free.exit, label %bb.cy

bb.cy:                                            ; preds = %Py_XDECREF.exit5.i
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !29 ; 2 uses
  %.not.i.i7.i = icmp sgt i32 %i.rw, -1
  br i1 %.not.i.i7.i, label %bb.cz, label %assemble_free.exit

bb.cz:                                            ; preds = %bb.cy
  %i.rx = add nsw i32 %i.rw, -1                   ; 2 uses
  store i32 %i.rx, ptr %i.rv, align 8, !tbaa !29
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.da, label %assemble_free.exit

bb.da:                                            ; preds = %bb.cz
  call void @_Py_Dealloc(ptr noundef nonnull %i.rv) #5
  br label %assemble_free.exit

assemble_free.exit:                               ; preds = %Py_XDECREF.exit5.i, %bb.cy, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %bb.db

bb.db:                                            ; preds = %bb.a, %assemble_free.exit
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @write_location_info_entry(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 9 uses
  %.sroa.9.0.extract.shift = lshr i64 %1, 32
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 2 uses
  %.sroa.12.8.extract.trunc = trunc i64 %2 to i32 ; 7 uses
  %.sroa.15.8.extract.shift = lshr i64 %2, 32     ; 2 uses
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.8.extract.shift to i32 ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 32         ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 40         ; 32 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54
  %i.f = add i32 %i.e, 25
  %i.g = sext i32 %i.f to i64
  %.not = icmp sgt i64 %.val, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.val, 1
  %i.i = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.h) #5
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp eq i32 %.sroa.0.0.extract.trunc, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %.val3.i.i = load i32, ptr %i.d, align 8, !tbaa !54
  %i.l = getelementptr i8, ptr %.val.i.i, i64 32
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = trunc i32 %3 to i8
  %i.p = add i8 %i.o, 7
  %i.q = or i8 %i.p, -8
  store i8 %i.q, ptr %i.n, align 1, !tbaa !29
  %i.r = load i32, ptr %i.d, align 8, !tbaa !54
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.d, align 8, !tbaa !54
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %0, i64 28         ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 2 uses
  %i.v = sub i32 %.sroa.0.0.extract.trunc, %i.u   ; 5 uses
  %i.w = and i64 %2, -9223372034707292160
  %or.cond.not = icmp eq i64 %i.w, 0
  %i.x = icmp eq i32 %.sroa.9.0.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  br i1 %or.cond.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i64 %1, 0
  %or.cond4 = or i1 %i.y, %i.x
  %.val.i.i70.pre115 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.val3.i.i71.pre118 = load i32, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  br i1 %or.cond4, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %.val.i.i70.pre115, i64 32
  %i.aa = sext i32 %.val3.i.i71.pre118 to i64
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = trunc i32 %3 to i8
  %i.ad = add i8 %i.ac, 31
  %i.ae = or i8 %i.ad, -24
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !29
  %i.af = load i32, ptr %i.d, align 8, !tbaa !54
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !54
  %.val.i3.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ah = getelementptr i8, ptr %.val.i3.i, i64 32
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai  ; 2 uses
  %i.ak = icmp slt i32 %i.v, 0
  %.neg.i.i.i = mul i32 %i.v, -2
  %i.al = or disjoint i32 %.neg.i.i.i, 1
  %i.am = shl nuw i32 %i.v, 1
  %.0.i.i.i = select i1 %i.ak, i32 %i.al, i32 %i.am ; 3 uses
  %i.an = icmp ugt i32 %.0.i.i.i, 63
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %write_location_info_no_column.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i.i ], [ 1, %bb.g ]
  %.0710.i.i.i.i = phi i32 [ %i.as, %.lr.ph.i.i.i.i ], [ %.0.i.i.i, %bb.g ] ; 3 uses
  %.089.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ao = trunc i32 %.0710.i.i.i.i to i8
  %i.ap = and i8 %i.ao, 63
  %i.aq = or disjoint i8 %i.ap, 64
  %i.ar = getelementptr i8, ptr %.089.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.089.i.i.i.i, align 1, !tbaa !29
  %i.as = lshr i32 %.0710.i.i.i.i, 6              ; 2 uses
  %i.at = add nuw nsw i32 %.011.i.i.i.i, 1        ; 2 uses
  %i.au = icmp ugt i32 %.0710.i.i.i.i, 4095
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %write_location_info_no_column.exit, !llvm.loop !96

write_location_info_no_column.exit:               ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.08.lcssa.i.i.i.i = phi ptr [ %i.aj, %bb.g ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %.07.lcssa.i.i.i.i = phi i32 [ %.0.i.i.i, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ 1, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %i.av = trunc nuw nsw i32 %.07.lcssa.i.i.i.i to i8
  store i8 %i.av, ptr %.08.lcssa.i.i.i.i, align 1, !tbaa !29
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !54
  %i.ax = add i32 %i.aw, %.0.lcssa.i.i.i.i
  store i32 %i.ax, ptr %i.d, align 8, !tbaa !54
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !38
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.val.i.i70.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  %.val3.i.i71.pre = load i32, ptr %i.d, align 8, !tbaa !54
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ne i32 %i.u, %.sroa.0.0.extract.trunc
  %i.az = icmp sgt i32 %.sroa.12.8.extract.trunc, 79
  %or.cond6.not85 = select i1 %i.ay, i1 true, i1 %i.az
  %i.ba = sub nsw i32 %.sroa.15.8.extract.trunc, %.sroa.12.8.extract.trunc ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 15
  %.not60 = icmp slt i32 %.sroa.15.8.extract.trunc, %.sroa.12.8.extract.trunc
  %i.bc = or i1 %.not60, %i.bb
  %or.cond63 = select i1 %or.cond6.not85, i1 true, i1 %i.bc
  br i1 %or.cond63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = and i32 %.sroa.12.8.extract.trunc, 120
  %.val.i.i66 = load ptr, ptr %i.a, align 8, !tbaa !41
  %.val3.i.i67 = load i32, ptr %i.d, align 8, !tbaa !54
  %i.be = getelementptr i8, ptr %.val.i.i66, i64 32
  %i.bf = sext i32 %.val3.i.i67 to i64
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf
  %i.bh = add i32 %3, 127
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = or i8 %i.bj, -128
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !29
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !54
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !54
  %i.bn = shl nuw nsw i32 %.sroa.12.8.extract.trunc, 4
  %i.bo = and i32 %i.bn, 112
  %i.bp = or i32 %i.bo, %i.ba
  %i.bq = trunc i32 %i.bp to i8
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  %i.bt = sext i32 %i.bm to i64
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !29
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !54
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.d, align 8, !tbaa !54
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %or.cond8 = icmp ult i32 %i.v, 3
  %i.bx = icmp slt i32 %.sroa.12.8.extract.trunc, 128
  %or.cond10 = select i1 %or.cond8, i1 %i.bx, i1 false
  %i.by = icmp slt i32 %.sroa.15.8.extract.trunc, 128
  %or.cond12 = select i1 %or.cond10, i1 %i.by, i1 false
  %.val.i.i70.pre114 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.val3.i.i71.pre117 = load i32, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  br i1 %or.cond12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr i8, ptr %.val.i.i70.pre114, i64 32
  %i.ca = sext i32 %.val3.i.i71.pre117 to i64
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca
  %i.cc = shl nuw nsw i32 %i.v, 3
  %i.cd = add nuw nsw i32 %i.cc, 80
  %i.ce = add i32 %3, 63
  %i.cf = or i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = or i8 %i.cg, -128
  store i8 %i.ch, ptr %i.cb, align 1, !tbaa !29
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !54
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.d, align 8, !tbaa !54
  %i.ck = trunc i64 %2 to i8
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  %i.cn = sext i32 %i.cj to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1, !tbaa !29
  %i.cp = load i32, ptr %i.d, align 8, !tbaa !54
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr %i.d, align 8, !tbaa !54
  %i.cr = trunc i64 %.sroa.15.8.extract.shift to i8
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ct = getelementptr i8, ptr %i.cs, i64 32
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cu
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !29
  %i.cw = load i32, ptr %i.d, align 8, !tbaa !54
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.d, align 8, !tbaa !54
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !38
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge, %bb.k, %bb.f
  %.val3.i.i71 = phi i32 [ %.val3.i.i71.pre, %._crit_edge ], [ %.val3.i.i71.pre117, %bb.k ], [ %.val3.i.i71.pre118, %bb.f ]
  %.val.i.i70 = phi ptr [ %.val.i.i70.pre, %._crit_edge ], [ %.val.i.i70.pre114, %bb.k ], [ %.val.i.i70.pre115, %bb.f ]
  %i.cy = getelementptr i8, ptr %.val.i.i70, i64 32
  %i.cz = sext i32 %.val3.i.i71 to i64
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = trunc i32 %3 to i8
  %i.dc = add i8 %i.db, 15
  %i.dd = or i8 %i.dc, -16
  store i8 %i.dd, ptr %i.da, align 1, !tbaa !29
  %i.de = load i32, ptr %i.d, align 8, !tbaa !54
  %i.df = add i32 %i.de, 1                        ; 2 uses
  store i32 %i.df, ptr %i.d, align 8, !tbaa !54
  %i.dg = load i32, ptr %i.t, align 4, !tbaa !38
  %i.dh = sub i32 %.sroa.0.0.extract.trunc, %i.dg ; 3 uses
  %.val.i7.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.di = getelementptr i8, ptr %.val.i7.i, i64 32
  %i.dj = sext i32 %i.df to i64
  %i.dk = getelementptr i8, ptr %i.di, i64 %i.dj  ; 2 uses
  %i.dl = icmp slt i32 %i.dh, 0
  %.neg.i.i.i72 = mul i32 %i.dh, -2
  %i.dm = or disjoint i32 %.neg.i.i.i72, 1
  %i.dn = shl nuw i32 %i.dh, 1
  %.0.i.i.i73 = select i1 %i.dl, i32 %i.dm, i32 %i.dn ; 3 uses
  %i.do = icmp ugt i32 %.0.i.i.i73, 63
  br i1 %i.do, label %.lr.ph.i.i.i.i77, label %write_location_signed_varint.exit.i

.lr.ph.i.i.i.i77:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi i32 [ %i.du, %.lr.ph.i.i.i.i77 ], [ 1, %bb.m ]
  %.0710.i.i.i.i79 = phi i32 [ %i.dt, %.lr.ph.i.i.i.i77 ], [ %.0.i.i.i73, %bb.m ] ; 3 uses
  %.089.i.i.i.i80 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i77 ], [ %i.dk, %bb.m ] ; 2 uses
  %i.dp = trunc i32 %.0710.i.i.i.i79 to i8
  %i.dq = and i8 %i.dp, 63
  %i.dr = or disjoint i8 %i.dq, 64
  %i.ds = getelementptr i8, ptr %.089.i.i.i.i80, i64 1 ; 2 uses
  store i8 %i.dr, ptr %.089.i.i.i.i80, align 1, !tbaa !29
  %i.dt = lshr i32 %.0710.i.i.i.i79, 6            ; 2 uses
  %i.du = add nuw nsw i32 %.011.i.i.i.i78, 1      ; 2 uses
  %i.dv = icmp ugt i32 %.0710.i.i.i.i79, 4095
  br i1 %i.dv, label %.lr.ph.i.i.i.i77, label %write_location_signed_varint.exit.i, !llvm.loop !96

write_location_signed_varint.exit.i:              ; preds = %.lr.ph.i.i.i.i77, %bb.m
  %.08.lcssa.i.i.i.i74 = phi ptr [ %i.dk, %bb.m ], [ %i.ds, %.lr.ph.i.i.i.i77 ]
  %.07.lcssa.i.i.i.i75 = phi i32 [ %.0.i.i.i73, %bb.m ], [ %i.dt, %.lr.ph.i.i.i.i77 ]
  %.0.lcssa.i.i.i.i76 = phi i32 [ 1, %bb.m ], [ %i.du, %.lr.ph.i.i.i.i77 ]
  %i.dw = trunc nuw nsw i32 %.07.lcssa.i.i.i.i75 to i8
  store i8 %i.dw, ptr %.08.lcssa.i.i.i.i74, align 1, !tbaa !29
  %i.dx = load i32, ptr %i.d, align 8, !tbaa !54
  %i.dy = add i32 %i.dx, %.0.lcssa.i.i.i.i76      ; 2 uses
  store i32 %i.dy, ptr %i.d, align 8, !tbaa !54
  %i.dz = sub i32 %.sroa.9.0.extract.trunc, %.sroa.0.0.extract.trunc ; 3 uses
  %.val.i9.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ea = getelementptr i8, ptr %.val.i9.i, i64 32
  %i.eb = sext i32 %i.dy to i64
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.eb  ; 2 uses
  %i.ed = icmp ugt i32 %i.dz, 63
  br i1 %i.ed, label %.lr.ph.i.i.i, label %write_location_varint.exit.i

.lr.ph.i.i.i:                                     ; preds = %write_location_signed_varint.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.ej, %.lr.ph.i.i.i ], [ 1, %write_location_signed_varint.exit.i ]
  %.0710.i.i.i = phi i32 [ %i.ei, %.lr.ph.i.i.i ], [ %i.dz, %write_location_signed_varint.exit.i ] ; 3 uses
  %.089.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i ], [ %i.ec, %write_location_signed_varint.exit.i ] ; 2 uses
  %i.ee = trunc i32 %.0710.i.i.i to i8
  %i.ef = and i8 %i.ee, 63
  %i.eg = or disjoint i8 %i.ef, 64
  %i.eh = getelementptr i8, ptr %.089.i.i.i, i64 1 ; 2 uses
  store i8 %i.eg, ptr %.089.i.i.i, align 1, !tbaa !29
  %i.ei = lshr i32 %.0710.i.i.i, 6                ; 2 uses
  %i.ej = add nuw nsw i32 %.011.i.i.i, 1          ; 2 uses
  %i.ek = icmp ugt i32 %.0710.i.i.i, 4095
  br i1 %i.ek, label %.lr.ph.i.i.i, label %write_location_varint.exit.i, !llvm.loop !96

write_location_varint.exit.i:                     ; preds = %.lr.ph.i.i.i, %write_location_signed_varint.exit.i
  %.08.lcssa.i.i.i = phi ptr [ %i.ec, %write_location_signed_varint.exit.i ], [ %i.eh, %.lr.ph.i.i.i ]
  %.07.lcssa.i.i.i = phi i32 [ %i.dz, %write_location_signed_varint.exit.i ], [ %i.ei, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ 1, %write_location_signed_varint.exit.i ], [ %i.ej, %.lr.ph.i.i.i ]
  %i.el = trunc nuw nsw i32 %.07.lcssa.i.i.i to i8
  store i8 %i.el, ptr %.08.lcssa.i.i.i, align 1, !tbaa !29
  %i.em = load i32, ptr %i.d, align 8, !tbaa !54
  %i.en = add i32 %i.em, %.0.lcssa.i.i.i          ; 2 uses
  store i32 %i.en, ptr %i.d, align 8, !tbaa !54
  %i.eo = add i32 %.sroa.12.8.extract.trunc, 1    ; 3 uses
  %.val.i11.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ep = getelementptr i8, ptr %.val.i11.i, i64 32
  %i.eq = sext i32 %i.en to i64
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq  ; 2 uses
  %i.es = icmp ugt i32 %i.eo, 63
  br i1 %i.es, label %.lr.ph.i.i16.i, label %write_location_varint.exit20.i

.lr.ph.i.i16.i:                                   ; preds = %write_location_varint.exit.i, %.lr.ph.i.i16.i
  %.011.i.i17.i = phi i32 [ %i.ey, %.lr.ph.i.i16.i ], [ 1, %write_location_varint.exit.i ]
  %.0710.i.i18.i = phi i32 [ %i.ex, %.lr.ph.i.i16.i ], [ %i.eo, %write_location_varint.exit.i ] ; 3 uses
  %.089.i.i19.i = phi ptr [ %i.ew, %.lr.ph.i.i16.i ], [ %i.er, %write_location_varint.exit.i ] ; 2 uses
  %i.et = trunc i32 %.0710.i.i18.i to i8
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, 64
  %i.ew = getelementptr i8, ptr %.089.i.i19.i, i64 1 ; 2 uses
  store i8 %i.ev, ptr %.089.i.i19.i, align 1, !tbaa !29
  %i.ex = lshr i32 %.0710.i.i18.i, 6              ; 2 uses
  %i.ey = add nuw nsw i32 %.011.i.i17.i, 1        ; 2 uses
  %i.ez = icmp ugt i32 %.0710.i.i18.i, 4095
  br i1 %i.ez, label %.lr.ph.i.i16.i, label %write_location_varint.exit20.i, !llvm.loop !96

write_location_varint.exit20.i:                   ; preds = %.lr.ph.i.i16.i, %write_location_varint.exit.i
  %.08.lcssa.i.i13.i = phi ptr [ %i.er, %write_location_varint.exit.i ], [ %i.ew, %.lr.ph.i.i16.i ]
  %.07.lcssa.i.i14.i = phi i32 [ %i.eo, %write_location_varint.exit.i ], [ %i.ex, %.lr.ph.i.i16.i ]
  %.0.lcssa.i.i15.i = phi i32 [ 1, %write_location_varint.exit.i ], [ %i.ey, %.lr.ph.i.i16.i ]
  %i.fa = trunc nuw nsw i32 %.07.lcssa.i.i14.i to i8
  store i8 %i.fa, ptr %.08.lcssa.i.i13.i, align 1, !tbaa !29
  %i.fb = load i32, ptr %i.d, align 8, !tbaa !54
  %i.fc = add i32 %i.fb, %.0.lcssa.i.i15.i        ; 2 uses
  store i32 %i.fc, ptr %i.d, align 8, !tbaa !54
  %i.fd = add i32 %.sroa.15.8.extract.trunc, 1    ; 3 uses
  %.val.i21.i = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.fe = getelementptr i8, ptr %.val.i21.i, i64 32
  %i.ff = sext i32 %i.fc to i64
  %i.fg = getelementptr i8, ptr %i.fe, i64 %i.ff  ; 2 uses
  %i.fh = icmp ugt i32 %i.fd, 63
  br i1 %i.fh, label %.lr.ph.i.i26.i, label %write_location_info_long_form.exit

.lr.ph.i.i26.i:                                   ; preds = %write_location_varint.exit20.i, %.lr.ph.i.i26.i
  %.011.i.i27.i = phi i32 [ %i.fn, %.lr.ph.i.i26.i ], [ 1, %write_location_varint.exit20.i ]
  %.0710.i.i28.i = phi i32 [ %i.fm, %.lr.ph.i.i26.i ], [ %i.fd, %write_location_varint.exit20.i ] ; 3 uses
  %.089.i.i29.i = phi ptr [ %i.fl, %.lr.ph.i.i26.i ], [ %i.fg, %write_location_varint.exit20.i ] ; 2 uses
  %i.fi = trunc i32 %.0710.i.i28.i to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, 64
  %i.fl = getelementptr i8, ptr %.089.i.i29.i, i64 1 ; 2 uses
  store i8 %i.fk, ptr %.089.i.i29.i, align 1, !tbaa !29
  %i.fm = lshr i32 %.0710.i.i28.i, 6              ; 2 uses
  %i.fn = add nuw nsw i32 %.011.i.i27.i, 1        ; 2 uses
  %i.fo = icmp ugt i32 %.0710.i.i28.i, 4095
  br i1 %i.fo, label %.lr.ph.i.i26.i, label %write_location_info_long_form.exit, !llvm.loop !96

write_location_info_long_form.exit:               ; preds = %.lr.ph.i.i26.i, %write_location_varint.exit20.i
  %.08.lcssa.i.i23.i = phi ptr [ %i.fg, %write_location_varint.exit20.i ], [ %i.fl, %.lr.ph.i.i26.i ]
  %.07.lcssa.i.i24.i = phi i32 [ %i.fd, %write_location_varint.exit20.i ], [ %i.fm, %.lr.ph.i.i26.i ]
  %.0.lcssa.i.i25.i = phi i32 [ 1, %write_location_varint.exit20.i ], [ %i.fn, %.lr.ph.i.i26.i ]
  %i.fp = trunc nuw nsw i32 %.07.lcssa.i.i24.i to i8
  store i8 %i.fp, ptr %.08.lcssa.i.i23.i, align 1, !tbaa !29
  %i.fq = load i32, ptr %i.d, align 8, !tbaa !54
  %i.fr = add i32 %i.fq, %.0.lcssa.i.i25.i
  store i32 %i.fr, ptr %i.d, align 8, !tbaa !54
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %write_location_info_no_column.exit, %bb.j, %bb.l, %write_location_info_long_form.exit, %bb.b, %bb.d
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %write_location_info_long_form.exit ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %write_location_info_no_column.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %.4.val, i32 %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 22 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 41 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %i.f = add i32 %i.e, 20
  %i.g = sext i32 %i.f to i64
  %.not = icmp sgt i64 %.val, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.val, 1
  %i.i = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.h) #5
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = sub i32 %2, %1                           ; 9 uses
  %i.l = icmp sgt i32 %.8.val, 0
  %spec.select.v = select i1 %i.l, i32 2147483646, i32 2147483647
  %spec.select = add i32 %spec.select.v, %.4.val
  %i.m = shl i32 %spec.select, 1
  %i.n = or i32 %i.m, %.8.val                     ; 9 uses
  %i.o = icmp sgt i32 %1, 16777215
  br i1 %i.o, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.p = lshr i32 %1, 24
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = trunc nuw nsw i32 %i.p to i8
  %i.t = or i8 %i.s, -64
  %i.u = load i32, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.d, align 8, !tbaa !53
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  store i8 %i.t, ptr %i.x, align 1, !tbaa !29
  br label %.thread24.i

bb.d:                                             ; preds = %bb.c
  %i.y = icmp sgt i32 %1, 262143
  br i1 %i.y, label %.thread24.i, label %bb.e

.thread24.i:                                      ; preds = %bb.d, %.thread.i
  %.023.i = phi i32 [ 0, %.thread.i ], [ 128, %bb.d ]
  %i.z = lshr i32 %1, 18
  %i.aa = and i32 %i.z, 63
  %i.ab = or disjoint i32 %.023.i, %i.aa
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = trunc nuw i32 %i.ab to i8
  %i.af = or disjoint i8 %i.ae, 64
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !53
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  store i8 %i.af, ptr %i.aj, align 1, !tbaa !29
  br label %.thread27.i

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp sgt i32 %1, 4095
  br i1 %i.ak, label %.thread27.i, label %bb.f

.thread27.i:                                      ; preds = %bb.e, %.thread24.i
  %.126.i = phi i32 [ 0, %.thread24.i ], [ 128, %bb.e ]
  %i.al = lshr i32 %1, 12
  %i.am = and i32 %i.al, 63
  %i.an = or disjoint i32 %.126.i, %i.am
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = trunc nuw i32 %i.an to i8
  %i.ar = or disjoint i8 %i.aq, 64
  %i.as = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !53
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr i8, ptr %i.ap, i64 %i.au
  store i8 %i.ar, ptr %i.av, align 1, !tbaa !29
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp sgt i32 %1, 63
  br i1 %i.aw, label %bb.g, label %assemble_emit_exception_table_item.exit

bb.g:                                             ; preds = %bb.f, %.thread27.i
  %.229.i = phi i32 [ 0, %.thread27.i ], [ 128, %bb.f ]
  %i.ax = lshr i32 %1, 6
  %i.ay = and i32 %i.ax, 63
  %i.az = or disjoint i32 %.229.i, %i.ay
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %i.bc = trunc nuw i32 %i.az to i8
  %i.bd = or disjoint i8 %i.bc, 64
  %i.be = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.d, align 8, !tbaa !53
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bg
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !29
  br label %assemble_emit_exception_table_item.exit

assemble_emit_exception_table_item.exit:          ; preds = %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.g ], [ 128, %bb.f ]
  %i.bi = and i32 %1, 63
  %i.bj = or disjoint i32 %.3.i, %i.bi
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  %i.bm = trunc nuw i32 %i.bj to i8
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !53
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr i8, ptr %i.bl, i64 %i.bp
  store i8 %i.bm, ptr %i.bq, align 1, !tbaa !29
  %i.br = icmp sgt i32 %i.k, 16777215
  br i1 %i.br, label %.thread.i29, label %bb.h

.thread.i29:                                      ; preds = %assemble_emit_exception_table_item.exit
  %i.bs = lshr i32 %i.k, 24
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = trunc nuw nsw i32 %i.bs to i8
  %i.bw = or i8 %i.bv, 64
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.d, align 8, !tbaa !53
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr i8, ptr %i.bu, i64 %i.bz
  store i8 %i.bw, ptr %i.ca, align 1, !tbaa !29
  br label %.thread24.i27

bb.h:                                             ; preds = %assemble_emit_exception_table_item.exit
  %i.cb = icmp sgt i32 %i.k, 262143
  br i1 %i.cb, label %.thread24.i27, label %bb.i

.thread24.i27:                                    ; preds = %bb.h, %.thread.i29
  %i.cc = lshr i32 %i.k, 18
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = trunc i32 %i.cc to i8
  %i.cg = and i8 %i.cf, 63
  %i.ch = or disjoint i8 %i.cg, 64
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.d, align 8, !tbaa !53
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr i8, ptr %i.ce, i64 %i.ck
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !29
  br label %.thread27.i25

bb.i:                                             ; preds = %bb.h
  %i.cm = icmp sgt i32 %i.k, 4095
  br i1 %i.cm, label %.thread27.i25, label %bb.j

.thread27.i25:                                    ; preds = %bb.i, %.thread24.i27
  %i.cn = lshr i32 %i.k, 12
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %i.cq = trunc i32 %i.cn to i8
  %i.cr = and i8 %i.cq, 63
  %i.cs = or disjoint i8 %i.cr, 64
  %i.ct = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.d, align 8, !tbaa !53
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr i8, ptr %i.cp, i64 %i.cv
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cx = icmp sgt i32 %i.k, 63
  br i1 %i.cx, label %bb.k, label %assemble_emit_exception_table_item.exit30

bb.k:                                             ; preds = %bb.j, %.thread27.i25
  %i.cy = lshr i32 %i.k, 6
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  %i.db = trunc i32 %i.cy to i8
  %i.dc = and i8 %i.db, 63
  %i.dd = or disjoint i8 %i.dc, 64
  %i.de = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.d, align 8, !tbaa !53
  %i.dg = sext i32 %i.de to i64
  %i.dh = getelementptr i8, ptr %i.da, i64 %i.dg
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !29
  br label %assemble_emit_exception_table_item.exit30

assemble_emit_exception_table_item.exit30:        ; preds = %bb.j, %bb.k
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = trunc i32 %i.k to i8
  %i.dl = and i8 %i.dk, 63
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.d, align 8, !tbaa !53
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr i8, ptr %i.dj, i64 %i.do
  store i8 %i.dl, ptr %i.dp, align 1, !tbaa !29
  %i.dq = icmp sgt i32 %3, 16777215
  br i1 %i.dq, label %.thread.i37, label %bb.l

.thread.i37:                                      ; preds = %assemble_emit_exception_table_item.exit30
  %i.dr = lshr i32 %3, 24
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = trunc nuw nsw i32 %i.dr to i8
  %i.dv = or i8 %i.du, 64
  %i.dw = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.d, align 8, !tbaa !53
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr i8, ptr %i.dt, i64 %i.dy
  store i8 %i.dv, ptr %i.dz, align 1, !tbaa !29
  br label %.thread24.i35

bb.l:                                             ; preds = %assemble_emit_exception_table_item.exit30
  %i.ea = icmp sgt i32 %3, 262143
  br i1 %i.ea, label %.thread24.i35, label %bb.m

.thread24.i35:                                    ; preds = %bb.l, %.thread.i37
  %i.eb = lshr i32 %3, 18
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  %i.ee = trunc i32 %i.eb to i8
  %i.ef = and i8 %i.ee, 63
  %i.eg = or disjoint i8 %i.ef, 64
  %i.eh = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.d, align 8, !tbaa !53
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ej
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !29
  br label %.thread27.i33

bb.m:                                             ; preds = %bb.l
  %i.el = icmp sgt i32 %3, 4095
  br i1 %i.el, label %.thread27.i33, label %bb.n

.thread27.i33:                                    ; preds = %bb.m, %.thread24.i35
  %i.em = lshr i32 %3, 12
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.eo = getelementptr i8, ptr %i.en, i64 32
  %i.ep = trunc i32 %i.em to i8
  %i.eq = and i8 %i.ep, 63
  %i.er = or disjoint i8 %i.eq, 64
  %i.es = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.d, align 8, !tbaa !53
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr i8, ptr %i.eo, i64 %i.eu
  store i8 %i.er, ptr %i.ev, align 1, !tbaa !29
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ew = icmp sgt i32 %3, 63
  br i1 %i.ew, label %bb.o, label %assemble_emit_exception_table_item.exit38

bb.o:                                             ; preds = %bb.n, %.thread27.i33
  %i.ex = lshr i32 %3, 6
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ez = getelementptr i8, ptr %i.ey, i64 32
  %i.fa = trunc i32 %i.ex to i8
  %i.fb = and i8 %i.fa, 63
  %i.fc = or disjoint i8 %i.fb, 64
  %i.fd = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.d, align 8, !tbaa !53
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr i8, ptr %i.ez, i64 %i.ff
  store i8 %i.fc, ptr %i.fg, align 1, !tbaa !29
  br label %assemble_emit_exception_table_item.exit38

assemble_emit_exception_table_item.exit38:        ; preds = %bb.n, %bb.o
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.fi = getelementptr i8, ptr %i.fh, i64 32
  %i.fj = trunc i32 %3 to i8
  %i.fk = and i8 %i.fj, 63
  %i.fl = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.d, align 8, !tbaa !53
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr i8, ptr %i.fi, i64 %i.fn
  store i8 %i.fk, ptr %i.fo, align 1, !tbaa !29
  %i.fp = icmp sgt i32 %i.n, 16777215
  br i1 %i.fp, label %.thread.i45, label %bb.p

.thread.i45:                                      ; preds = %assemble_emit_exception_table_item.exit38
  %i.fq = lshr i32 %i.n, 24
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.fs = getelementptr i8, ptr %i.fr, i64 32
  %i.ft = trunc nuw nsw i32 %i.fq to i8
  %i.fu = or i8 %i.ft, 64
  %i.fv = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.d, align 8, !tbaa !53
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr i8, ptr %i.fs, i64 %i.fx
  store i8 %i.fu, ptr %i.fy, align 1, !tbaa !29
  br label %.thread24.i43

bb.p:                                             ; preds = %assemble_emit_exception_table_item.exit38
  %i.fz = icmp sgt i32 %i.n, 262143
  br i1 %i.fz, label %.thread24.i43, label %bb.q

.thread24.i43:                                    ; preds = %bb.p, %.thread.i45
  %i.ga = lshr i32 %i.n, 18
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.gc = getelementptr i8, ptr %i.gb, i64 32
  %i.gd = trunc i32 %i.ga to i8
  %i.ge = and i8 %i.gd, 63
  %i.gf = or disjoint i8 %i.ge, 64
  %i.gg = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.d, align 8, !tbaa !53
  %i.gi = sext i32 %i.gg to i64
  %i.gj = getelementptr i8, ptr %i.gc, i64 %i.gi
  store i8 %i.gf, ptr %i.gj, align 1, !tbaa !29
  br label %.thread27.i41

bb.q:                                             ; preds = %bb.p
  %i.gk = icmp sgt i32 %i.n, 4095
  br i1 %i.gk, label %.thread27.i41, label %bb.r

.thread27.i41:                                    ; preds = %bb.q, %.thread24.i43
  %i.gl = lshr i32 %i.n, 12
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.gn = getelementptr i8, ptr %i.gm, i64 32
  %i.go = trunc i32 %i.gl to i8
  %i.gp = and i8 %i.go, 63
  %i.gq = or disjoint i8 %i.gp, 64
  %i.gr = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.d, align 8, !tbaa !53
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr i8, ptr %i.gn, i64 %i.gt
  store i8 %i.gq, ptr %i.gu, align 1, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gv = icmp sgt i32 %i.n, 63
  br i1 %i.gv, label %bb.s, label %assemble_emit_exception_table_item.exit46

bb.s:                                             ; preds = %bb.r, %.thread27.i41
  %i.gw = lshr i32 %i.n, 6
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.gy = getelementptr i8, ptr %i.gx, i64 32
  %i.gz = trunc i32 %i.gw to i8
  %i.ha = and i8 %i.gz, 63
  %i.hb = or disjoint i8 %i.ha, 64
  %i.hc = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.d, align 8, !tbaa !53
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr i8, ptr %i.gy, i64 %i.he
  store i8 %i.hb, ptr %i.hf, align 1, !tbaa !29
  br label %assemble_emit_exception_table_item.exit46

assemble_emit_exception_table_item.exit46:        ; preds = %bb.r, %bb.s
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.hh = getelementptr i8, ptr %i.hg, i64 32
  %i.hi = trunc i32 %i.n to i8
  %i.hj = and i8 %i.hi, 63
  %i.hk = load i32, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.d, align 8, !tbaa !53
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr i8, ptr %i.hh, i64 %i.hm
  store i8 %i.hj, ptr %i.hn, align 1, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %assemble_emit_exception_table_item.exit46
  %.0 = phi i32 [ 0, %assemble_emit_exception_table_item.exit46 ], [ -1, %bb.b ]
  ret i32 %.0
}

declare ptr @PyList_AsTuple(ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare i32 @_PyCode_Validate(ptr noundef) local_unnamed_addr #1

declare ptr @_PyCode_New(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_Contains(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_set_localsplus_info(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 28}
!12 = !{!"instruction_sequence", !13, i64 0, !15, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !16, i64 40, !8, i64 48, !17, i64 56, !18, i64 64}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"p1 _ZTS7_object", !15, i64 0}
!18 = !{!"p1 _ZTS20instruction_sequence", !15, i64 0}
!19 = !{!12, !15, i64 16}
!20 = !{!21, !8, i64 4}
!21 = !{!"", !8, i64 0, !8, i64 4, !22, i64 8, !23, i64 24, !8, i64 36, !8, i64 40}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!24 = !{!21, !8, i64 0}
!25 = !{!26, !8, i64 4}
!26 = !{!"opcode_metadata", !9, i64 0, !9, i64 1, !8, i64 4}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!9, !9, i64 0}
!30 = !{!21, !8, i64 36}
!31 = !{!21, !8, i64 40}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = !{!36, !8, i64 88}
!36 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !8, i64 88}
!37 = !{!"long", !9, i64 0}
!38 = !{!39, !8, i64 28}
!39 = !{!"assembler", !17, i64 0, !8, i64 8, !17, i64 16, !8, i64 24, !8, i64 28, !17, i64 32, !8, i64 40}
!40 = !{!39, !17, i64 0}
!41 = !{!39, !17, i64 32}
!42 = !{!39, !17, i64 16}
!43 = !{!44, !37, i64 16}
!44 = !{!"PyVarObject", !13, i64 0, !37, i64 16}
!45 = !{!39, !8, i64 8}
!46 = distinct !{!46, !28}
!47 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = !{!21, !8, i64 24}
!52 = distinct !{!52, !28}
!53 = !{!39, !8, i64 24}
!54 = !{!39, !8, i64 40}
!55 = !{!17, !17, i64 0}
!56 = !{!36, !17, i64 24}
!57 = !{!37, !37, i64 0}
!58 = !{!59, !37, i64 16}
!59 = !{!"", !13, i64 0, !37, i64 16, !37, i64 24, !60, i64 32, !61, i64 40}
!60 = !{!"p1 _ZTS15_dictkeysobject", !15, i64 0}
!61 = !{!"p1 _ZTS11_dictvalues", !15, i64 0}
!62 = distinct !{!62, !28}
!63 = !{!36, !37, i64 72}
!64 = !{!36, !37, i64 64}
!65 = !{!36, !37, i64 80}
!66 = !{!67, !8, i64 0}
!67 = !{!"", !8, i64 0, !9, i64 4}
!68 = !{!67, !9, i64 4}
!69 = !{!36, !17, i64 32}
!70 = !{!36, !17, i64 56}
!71 = !{!36, !17, i64 40}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = !{!36, !17, i64 48}
!76 = distinct !{!76, !28}
!77 = !{!78, !17, i64 0}
!78 = !{!"_PyCodeConstructor", !17, i64 0, !17, i64 8, !17, i64 16, !8, i64 24, !17, i64 32, !8, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !17, i64 104}
!79 = !{!36, !17, i64 0}
!80 = !{!78, !17, i64 8}
!81 = !{!36, !17, i64 8}
!82 = !{!78, !17, i64 16}
!83 = !{!78, !8, i64 24}
!84 = !{!78, !17, i64 32}
!85 = !{!78, !8, i64 40}
!86 = !{!78, !17, i64 48}
!87 = !{!78, !17, i64 56}
!88 = !{!78, !17, i64 64}
!89 = !{!78, !17, i64 72}
!90 = !{!78, !17, i64 80}
!91 = !{!78, !8, i64 88}
!92 = !{!78, !8, i64 92}
!93 = !{!78, !8, i64 96}
!94 = !{!78, !8, i64 100}
!95 = !{!78, !17, i64 104}
!96 = distinct !{!96, !28}
end_hunk_0
