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
  %.04867.us.i = phi i32 [ %i.at, %bb.o ], [ 0, %.lr.ph66.us.i ]
  %i.ap = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv85.i ; 3 uses
  %.val58.us.i = load i32, ptr %i.ap, align 4, !tbaa !24 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %.val59.us.i = load i32, ptr %i.aq, align 4, !tbaa !20 ; 3 uses
  %11 = icmp sgt i32 %.val59.us.i, 16777215
  %12 = zext i1 %11 to i32
  %13 = icmp sgt i32 %.val59.us.i, 65535
  %14 = icmp sgt i32 %.val59.us.i, 255
  %i.ar = zext i1 %14 to i32
  %15 = sext i32 %.val58.us.i to i64              ; 2 uses
  %16 = getelementptr i8, ptr @_PyOpcode_Caches, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !29
  %18 = zext i8 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  %20 = add nuw nsw i32 %19, %12
  %21 = add nuw nsw i32 %20, %i.ar                ; 2 uses
  %i.as = add i32 %.04867.us.i, %18
  %i.at = add i32 %i.as, %21                      ; 5 uses
  %i.au = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %15
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = and i32 %i.aw, 8
  %.not54.us.i = icmp eq i32 %i.ax, 0
  br i1 %.not54.us.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.preheader.us.i
  %i.ay = getelementptr i8, ptr %i.ap, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !30
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [44 x i8], ptr %i.p, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 40
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !31 ; 4 uses
  %i.be = icmp eq i32 %.val58.us.i, 68
  br i1 %i.be, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp slt i32 %i.bd, %i.at
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = sub i32 %i.bd, %i.at
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bh = sub i32 %i.at, %i.bd
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bi = add i32 %i.at, -5
  %i.bj = sub i32 %i.bi, %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink.i = phi i32 [ %i.bj, %bb.m ], [ %i.bh, %bb.l ], [ %i.bg, %bb.k ] ; 4 uses
  store i32 %.sink.i, ptr %i.aq, align 4, !tbaa !20
  %i.bk = icmp sgt i32 %.sink.i, 16777215
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp sgt i32 %.sink.i, 65535
  %i.bn = icmp sgt i32 %.sink.i, 255
  %i.bo = zext i1 %i.bn to i32
  %i.bp = select i1 %i.bm, i32 2, i32 1
  %i.bq = add nuw nsw i32 %i.bp, %i.bl
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %.not55.us.i = icmp eq i32 %i.br, %21
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
  %i.bs = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv80.i ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 40
  store i32 %.04665.us.i, ptr %i.bt, align 4, !tbaa !31
  %.val60.us.i = load i32, ptr %i.bs, align 4, !tbaa !24
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %.val61.us.i = load i32, ptr %i.bu, align 4, !tbaa !20 ; 3 uses
  %i.bv = icmp sgt i32 %.val61.us.i, 16777215
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp sgt i32 %.val61.us.i, 65535
  %i.by = icmp sgt i32 %.val61.us.i, 255
  %i.bz = zext i1 %i.by to i32
  %i.ca = sext i32 %.val60.us.i to i64
  %i.cb = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !29
  %i.cd = zext i8 %i.cc to i32
  %i.ce = select i1 %i.bx, i32 2, i32 1
  %i.cf = add i32 %.04665.us.i, %i.bw
  %i.cg = add i32 %i.cf, %i.ce
  %i.ch = add i32 %i.cg, %i.bz
  %i.ci = add i32 %i.ch, %i.cd
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count.i
  br i1 %exitcond84.not.i, label %.preheader.us.i, label %.lr.ph66.us.i.backedge

.lr.ph66.us.i.backedge:                           ; preds = %.lr.ph66.us.i, %._crit_edge.us.i
  %indvars.iv80.i.be = phi i64 [ %indvars.iv.next81.i, %.lr.ph66.us.i ], [ 0, %._crit_edge.us.i ]
  %.04665.us.i.be = phi i32 [ %i.ci, %.lr.ph66.us.i ], [ 0, %._crit_edge.us.i ]
  br label %.lr.ph66.us.i, !llvm.loop !33

._crit_edge.us.i:                                 ; preds = %bb.o
  %.not.us.i = icmp eq i32 %.2.us.i, 0
  br i1 %.not.us.i, label %resolve_jump_offsets.exit, label %.lr.ph66.us.i.backedge

.lr.ph.i16:                                       ; preds = %bb.r, %.lr.ph.i16.preheader.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i16.preheader.new ], [ %indvars.iv.next.i19.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.preheader.new ], [ %niter.next.1, %bb.r ]
  %i.cj = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !24
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !25
  %i.cp = and i32 %i.co, 8
  %.not56.i = icmp eq i32 %i.cp, 0
  br i1 %.not56.i, label %.lr.ph.i16.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i16
  %i.cq = getelementptr i8, ptr %i.cj, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr i8, ptr %i.cj, i64 36
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !30
  br label %.lr.ph.i16.1

.lr.ph.i16.1:                                     ; preds = %bb.p, %.lr.ph.i16
  %i.ct = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !25
  %i.da = and i32 %i.cz, 8
  %.not56.i.1 = icmp eq i32 %i.da, 0
  br i1 %.not56.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i16.1
  %i.db = getelementptr i8, ptr %i.ct, i64 48
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !20
  %i.dd = getelementptr i8, ptr %i.ct, i64 80
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i16.1
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph66.us.i.preheader.unr-lcssa, label %.lr.ph.i16, !llvm.loop !34

.lr.ph66.us.i.preheader.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.us.i.preheader, label %.lr.ph.i16.epil.preheader

.lr.ph.i16.epil.preheader:                        ; preds = %.lr.ph66.us.i.preheader.unr-lcssa, %.lr.ph.i16.preheader
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i16.preheader ], [ %indvars.iv.next.i19.1, %.lr.ph66.us.i.preheader.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.de = getelementptr [44 x i8], ptr %i.p, i64 %indvars.iv.i18.epil.init ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = and i32 %i.dj, 8
  %.not56.i.epil = icmp eq i32 %i.dk, 0
  br i1 %.not56.i.epil, label %.lr.ph66.us.i.preheader, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i16.epil.preheader
  %i.dl = getelementptr i8, ptr %i.de, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !20
  %i.dn = getelementptr i8, ptr %i.de, i64 36
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !30
  br label %.lr.ph66.us.i.preheader

.lr.ph66.us.i.preheader:                          ; preds = %.lr.ph.i16.epil.preheader, %bb.s, %.lr.ph66.us.i.preheader.unr-lcssa
  br label %.lr.ph66.us.i

resolve_jump_offsets.exit:                        ; preds = %._crit_edge.us.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.do = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, i8 0, i64 40, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.dv = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 128) #5 ; 5 uses
  store ptr %i.dv, ptr %10, align 8, !tbaa !40
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %Py_XDECREF.exit.i.i, label %bb.t

bb.t:                                             ; preds = %resolve_jump_offsets.exit
  %i.dx = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 32) #5 ; 2 uses
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 16) #5 ; 2 uses
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !42
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.v, label %assemble_init.exit.preheader.i

assemble_init.exit.preheader.i:                   ; preds = %bb.u
  %i.eb = load i32, ptr %i.l, align 4, !tbaa !11  ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i21, label %assemble_emit_instr.exit.i

.lr.ph.i21:                                       ; preds = %assemble_init.exit.preheader.i
  %i.ed = getelementptr i8, ptr %4, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ef = load i32, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ef, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %Py_XDECREF.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.dv, align 8, !tbaa !29
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.x, label %Py_XDECREF.exit.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dv) #5
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.x, %bb.w, %bb.v, %resolve_jump_offsets.exit
  %i.ei = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %.not.i15.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i15.i.i, label %Py_XDECREF.exit17.i.i, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit.i.i
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !29 ; 2 uses
  %.not.i.i16.i.i = icmp sgt i32 %i.ej, -1
  br i1 %.not.i.i16.i.i, label %bb.z, label %Py_XDECREF.exit17.i.i

bb.z:                                             ; preds = %bb.y
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !29
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aa, label %Py_XDECREF.exit17.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #5
  br label %Py_XDECREF.exit17.i.i

Py_XDECREF.exit17.i.i:                            ; preds = %bb.aa, %bb.z, %bb.y, %Py_XDECREF.exit.i.i
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !42 ; 4 uses
  %.not.i18.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i18.i.i, label %assemble_emit.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %Py_XDECREF.exit17.i.i
  %i.en = load i32, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  %.not.i.i19.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i19.i.i, label %bb.ac, label %assemble_emit.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.em, align 8, !tbaa !29
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ad, label %assemble_emit.exit.thread

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.em) #5
  br label %assemble_emit.exit.thread

bb.ae:                                            ; preds = %assemble_init.exit.i, %.lr.ph.i21
  %indvars.iv.i22 = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i23, %assemble_init.exit.i ] ; 2 uses
  %i.eq = load ptr, ptr %i.ed, align 8, !tbaa !19
  %i.er = getelementptr [44 x i8], ptr %i.eq, i64 %indvars.iv.i22 ; 3 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %.val17.i.i = load i64, ptr %i.et, align 8, !tbaa !43 ; 3 uses
  %.val.i.i = load i32, ptr %i.er, align 4, !tbaa !24 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.er, i64 4      ; 2 uses
  %.val16.i.i = load i32, ptr %i.eu, align 4, !tbaa !20 ; 4 uses
  %22 = icmp sgt i32 %.val16.i.i, 16777215
  %23 = zext i1 %22 to i32
  %24 = icmp sgt i32 %.val16.i.i, 65535
  %25 = icmp sgt i32 %.val16.i.i, 255
  %i.ev = zext i1 %25 to i32
  %26 = sext i32 %.val.i.i to i64
  %27 = getelementptr i8, ptr @_PyOpcode_Caches, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !29      ; 2 uses
  %29 = zext i8 %28 to i32                        ; 2 uses
  %30 = select i1 %24, i32 2, i32 1
  %31 = add nuw nsw i32 %30, %23
  %32 = add nuw nsw i32 %31, %i.ev
  %i.ew = add nuw nsw i32 %32, %29                ; 3 uses
  %i.ex = load i32, ptr %i.ee, align 8, !tbaa !45 ; 2 uses
  %i.ey = add i32 %i.ew, %i.ex                    ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = sdiv i64 %.val17.i.i, 2
  %.not.i.i = icmp sgt i64 %i.fa, %i.ez
  br i1 %.not.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp sgt i64 %.val17.i.i, 4611686018427387903
  br i1 %i.fb, label %assemble_emit.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = shl i64 %.val17.i.i, 1
  %i.fd = call i32 @_PyBytes_Resize(ptr noundef nonnull %10, i64 noundef %i.fc) #5
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %assemble_emit.exit.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !40
  %.pre20.i.i = load i32, ptr %i.ee, align 8, !tbaa !45 ; 2 uses
  %.val18.pre.i.i = load i32, ptr %i.er, align 4, !tbaa !24 ; 2 uses
  %.val19.pre.i.i = load i32, ptr %i.eu, align 4, !tbaa !20
  %.phi.trans.insert.i.i = sext i32 %.val18.pre.i.i to i64
  %.phi.trans.insert23.i.i = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.phi.trans.insert.i.i
  %.pre24.i.i = load i8, ptr %.phi.trans.insert23.i.i, align 1, !tbaa !29 ; 2 uses
  %.pre25.i.i = add i32 %.pre20.i.i, %i.ew
  %.pre27.i.i = zext i8 %.pre24.i.i to i32
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i, %bb.ae
  %.pre-phi28.i.i = phi i32 [ %.pre27.i.i, %._crit_edge.i.i ], [ %29, %bb.ae ]
  %.pre-phi.i.i = phi i32 [ %.pre25.i.i, %._crit_edge.i.i ], [ %i.ey, %bb.ae ]
  %i.ff = phi i8 [ %.pre24.i.i, %._crit_edge.i.i ], [ %28, %bb.ae ] ; 2 uses
  %.val19.i.i = phi i32 [ %.val19.pre.i.i, %._crit_edge.i.i ], [ %.val16.i.i, %bb.ae ] ; 4 uses
  %.val18.i.i = phi i32 [ %.val18.pre.i.i, %._crit_edge.i.i ], [ %.val.i.i, %bb.ae ]
  %i.fg = phi i32 [ %.pre20.i.i, %._crit_edge.i.i ], [ %i.ex, %bb.ae ]
  %i.fh = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.es, %bb.ae ]
  %i.fi = getelementptr i8, ptr %i.fh, i64 32
  %i.fj = sext i32 %i.fg to i64
  %i.fk = getelementptr [2 x i8], ptr %i.fi, i64 %i.fj ; 6 uses
  store i32 %.pre-phi.i.i, ptr %i.ee, align 8, !tbaa !45
  %i.fl = sub nsw i32 %i.ew, %.pre-phi28.i.i
  switch i32 %i.fl, label %bb.am [
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  store i8 69, ptr %i.fk, align 2, !tbaa !29
  %i.fm = lshr i32 %.val19.i.i, 24
  %i.fn = trunc nuw i32 %i.fm to i8
  %i.fo = getelementptr i8, ptr %i.fk, i64 1
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !29
  %i.fp = getelementptr i8, ptr %i.fk, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.025.i.i.i = phi ptr [ %i.fp, %bb.ai ], [ %i.fk, %bb.ah ] ; 3 uses
  store i8 69, ptr %.025.i.i.i, align 2, !tbaa !29
  %i.fq = lshr i32 %.val19.i.i, 16
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = getelementptr i8, ptr %.025.i.i.i, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !29
  %i.ft = getelementptr i8, ptr %.025.i.i.i, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.1.i.i.i = phi ptr [ %i.ft, %bb.aj ], [ %i.fk, %bb.ah ] ; 3 uses
  store i8 69, ptr %.1.i.i.i, align 2, !tbaa !29
  %i.fu = lshr i32 %.val19.i.i, 8
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr i8, ptr %.1.i.i.i, i64 1
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !29
  %i.fx = getelementptr i8, ptr %.1.i.i.i, i64 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.2.i.i.i = phi ptr [ %i.fx, %bb.ak ], [ %i.fk, %bb.ah ] ; 3 uses
  %i.fy = trunc i32 %.val18.i.i to i8
  store i8 %i.fy, ptr %.2.i.i.i, align 2, !tbaa !29
  %i.fz = trunc i32 %.val19.i.i to i8
  %i.ga = getelementptr i8, ptr %.2.i.i.i, i64 1
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !29
  %.not1.i.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not1.i.i.i, label %assemble_init.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.al
  %scevgep.i.i.i = getelementptr i8, ptr %.2.i.i.i, i64 2
  %i.gb = zext i8 %i.ff to i64
  %i.gc = shl nuw nsw i64 %i.gb, 1
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i.i.i, i8 0, i64 %i.gc, i1 false), !tbaa !29
  br label %assemble_init.exit.i

bb.am:                                            ; preds = %bb.ah
  unreachable

assemble_init.exit.i:                             ; preds = %.lr.ph.preheader.i.i.i, %bb.al
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %i.gd = load i32, ptr %i.l, align 4, !tbaa !11  ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next.i23, %i.ge
  br i1 %i.gf, label %bb.ae, label %assemble_emit_instr.exit.i, !llvm.loop !46

assemble_emit_instr.exit.i:                       ; preds = %assemble_init.exit.i, %assemble_init.exit.preheader.i
  %i.gg = phi i32 [ %i.eb, %assemble_init.exit.preheader.i ], [ %i.gd, %assemble_init.exit.i ]
  %.04486.i.i = add i32 %i.gg, -1                 ; 2 uses
  %i.gh = icmp sgt i32 %.04486.i.i, -1
  br i1 %i.gh, label %.lr.ph.i.i, label %assemble_exception_table.exit.i

.lr.ph.i.i:                                       ; preds = %assemble_emit_instr.exit.i
  %i.gi = getelementptr i8, ptr %4, i64 16        ; 4 uses
  %i.gj = zext nneg i32 %.04486.i.i to i64
  br label %bb.an

.preheader.i.i:                                   ; preds = %same_location.exit.thread.i.i
  %.pre.i32.i = load i32, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %.not88.i.i = icmp sgt i32 %.pre.i32.i, 0
  br i1 %.not88.i.i, label %.lr.ph93.i.i, label %assemble_exception_table.exit.i

bb.an:                                            ; preds = %same_location.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.gj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %same_location.exit.thread.i.i ] ; 3 uses
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !19
  %i.gl = getelementptr [44 x i8], ptr %i.gk, i64 %indvars.iv.i.i ; 4 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 8      ; 3 uses
  %i.gn = load i64, ptr %i.gm, align 4
  %i.go = getelementptr i8, ptr %i.gl, i64 16
  %i.gp = load i64, ptr %i.go, align 4            ; 2 uses
  %or.cond.i.i.i = icmp eq i64 %i.gn, -4294967298
  %i.gq = and i64 %i.gp, 4294967295
  %i.gr = icmp eq i64 %i.gq, 4294967294
  %.unshifted5.i.i.i = xor i64 %i.gp, -8589934592
  %i.gs = icmp ult i64 %.unshifted5.i.i.i, 4294967296
  %i.gt = and i1 %i.gr, %i.gs
  %or.cond.i.i = select i1 %or.cond.i.i.i, i1 %i.gt, i1 false
  br i1 %or.cond.i.i, label %bb.ao, label %same_location.exit.thread.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gu = load i32, ptr %i.gl, align 4, !tbaa !24 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !25
  %.fr77.i.i = freeze i32 %i.gy
  %i.gz = and i32 %.fr77.i.i, 8
  %.not46.not.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not46.not.i.i, label %switch.early.test.i.i, label %bb.ap

switch.early.test.i.i:                            ; preds = %bb.ao
  switch i32 %i.gu, label %bb.aq [
    i32 105, label %bb.ap
    i32 104, label %bb.ap
    i32 35, label %bb.ap
  ]

bb.ap:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gm, i8 -1, i64 16, i1 false)
  br label %same_location.exit.thread.i.i

bb.aq:                                            ; preds = %switch.early.test.i.i
  %i.ha = getelementptr i8, ptr %i.gl, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %i.ha, i64 16, i1 false), !tbaa.struct !47
  br label %same_location.exit.thread.i.i

same_location.exit.thread.i.i:                    ; preds = %bb.aq, %bb.ap, %bb.an
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.hb = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.hb, label %bb.an, label %.preheader.i.i, !llvm.loop !48

.lr.ph93.i.i:                                     ; preds = %.preheader.i.i, %assemble_emit_location.exit.thread63.i.i
  %.pre105106.i.i = phi i32 [ %.pre105107.i.i, %assemble_emit_location.exit.thread63.i.i ], [ %.pre.i32.i, %.preheader.i.i ] ; 3 uses
  %i.hc = phi i32 [ %i.hs, %assemble_emit_location.exit.thread63.i.i ], [ %.pre.i32.i, %.preheader.i.i ]
  %indvars.iv100.i.i = phi i64 [ %indvars.iv.next101.i.i, %assemble_emit_location.exit.thread63.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.04091.i.i = phi i32 [ %i.ih, %assemble_emit_location.exit.thread63.i.i ], [ 0, %.preheader.i.i ] ; 5 uses
  %.sroa.7.090.i.i = phi i64 [ %.sroa.7.1.i.i, %assemble_emit_location.exit.thread63.i.i ], [ -1, %.preheader.i.i ] ; 4 uses
  %.sroa.0.089.i.i = phi i64 [ %.sroa.0.1.i.i, %assemble_emit_location.exit.thread63.i.i ], [ -1, %.preheader.i.i ] ; 4 uses
  %i.hd = load ptr, ptr %i.gi, align 8, !tbaa !19
  %i.he = getelementptr [44 x i8], ptr %i.hd, i64 %indvars.iv100.i.i ; 4 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8      ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 4            ; 2 uses
  %i.hh = getelementptr i8, ptr %i.he, i64 16     ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 4            ; 2 uses
  %or.cond.i51.i.i = icmp eq i64 %.sroa.0.089.i.i, %i.hg
  %i.hj = icmp eq i64 %.sroa.7.090.i.i, %i.hi
  %or.cond75.i.i = select i1 %or.cond.i51.i.i, i1 %i.hj, i1 false
  br i1 %or.cond75.i.i, label %assemble_emit_location.exit.thread63.i.i, label %same_location.exit54.thread.i.i

same_location.exit54.thread.i.i:                  ; preds = %.lr.ph93.i.i
  %i.hk = icmp eq i32 %.04091.i.i, 0
  br i1 %i.hk, label %assemble_emit_location.exit.thread63.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %same_location.exit54.thread.i.i
  %i.hl = icmp sgt i32 %.04091.i.i, 8
  br i1 %i.hl, label %.lr.ph.i.i.i, label %assemble_emit_location.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ar
  %.011.i.i.i = phi i32 [ %i.ho, %bb.ar ], [ %.04091.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.hm = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.089.i.i, i64 %.sroa.7.090.i.i, i32 noundef 8)
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %assemble_emit.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  %i.ho = add nsw i32 %.011.i.i.i, -8             ; 2 uses
  %i.hp = icmp sgt i32 %.011.i.i.i, 16
  br i1 %i.hp, label %.lr.ph.i.i.i, label %assemble_emit_location.exit.i.i, !llvm.loop !49

assemble_emit_location.exit.i.i:                  ; preds = %bb.ar, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %.04091.i.i, %.preheader.i.i.i ], [ %i.ho, %bb.ar ]
  %i.hq = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.089.i.i, i64 %.sroa.7.090.i.i, i32 noundef %.0.lcssa.i.i.i)
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %assemble_emit.exit.thread, label %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i

assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i: ; preds = %assemble_emit_location.exit.i.i
  %.sroa.0.0.copyload24.pre.i.i = load i64, ptr %i.hf, align 4
  %.sroa.7.0.copyload25.pre.i.i = load i64, ptr %i.hh, align 4
  %.pre105.pre.i.i = load i32, ptr %i.l, align 4, !tbaa !11 ; 2 uses
  br label %assemble_emit_location.exit.thread63.i.i

assemble_emit_location.exit.thread63.i.i:         ; preds = %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i, %same_location.exit54.thread.i.i, %.lr.ph93.i.i
  %.pre105107.i.i = phi i32 [ %.pre105106.i.i, %.lr.ph93.i.i ], [ %.pre105.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %.pre105106.i.i, %same_location.exit54.thread.i.i ] ; 2 uses
  %i.hs = phi i32 [ %i.hc, %.lr.ph93.i.i ], [ %.pre105.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %.pre105106.i.i, %same_location.exit54.thread.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.089.i.i, %.lr.ph93.i.i ], [ %.sroa.0.0.copyload24.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %i.hg, %same_location.exit54.thread.i.i ] ; 3 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.090.i.i, %.lr.ph93.i.i ], [ %.sroa.7.0.copyload25.pre.i.i, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ %i.hi, %same_location.exit54.thread.i.i ] ; 3 uses
  %.141.i.i = phi i32 [ %.04091.i.i, %.lr.ph93.i.i ], [ 0, %assemble_emit_location.exit.assemble_emit_location.exit.thread63_crit_edge.i.i ], [ 0, %same_location.exit54.thread.i.i ]
  %.val.i33.i = load i32, ptr %i.he, align 4, !tbaa !24
  %i.ht = getelementptr i8, ptr %i.he, i64 4
  %.val49.i.i = load i32, ptr %i.ht, align 4, !tbaa !20 ; 3 uses
  %i.hu = icmp sgt i32 %.val49.i.i, 16777215
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp sgt i32 %.val49.i.i, 65535
  %i.hx = icmp sgt i32 %.val49.i.i, 255
  %i.hy = zext i1 %i.hx to i32
  %i.hz = sext i32 %.val.i33.i to i64
  %i.ia = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !29
  %i.ic = zext i8 %i.ib to i32
  %i.id = select i1 %i.hw, i32 2, i32 1
  %i.ie = add i32 %.141.i.i, %i.hv
  %i.if = add i32 %i.ie, %i.id
  %i.ig = add i32 %i.if, %i.hy
  %i.ih = add i32 %i.ig, %i.ic                    ; 5 uses
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 2 uses
  %i.ii = sext i32 %i.hs to i64
  %.not.i34.i = icmp slt i64 %indvars.iv.next101.i.i, %i.ii
  br i1 %.not.i34.i, label %.lr.ph93.i.i, label %.thread69.i.i, !llvm.loop !50

.thread69.i.i:                                    ; preds = %assemble_emit_location.exit.thread63.i.i
  %i.ij = icmp eq i32 %i.ih, 0
  br i1 %i.ij, label %bb.at, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %.thread69.i.i
  %i.ik = icmp sgt i32 %i.ih, 8
  br i1 %i.ik, label %.lr.ph.i59.i.i, label %assemble_emit_location.exit61.i.i

.lr.ph.i59.i.i:                                   ; preds = %.preheader.i55.i.i, %bb.as
  %.011.i60.i.i = phi i32 [ %i.in, %bb.as ], [ %i.ih, %.preheader.i55.i.i ] ; 2 uses
  %i.il = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.1.i.i, i64 %.sroa.7.1.i.i, i32 noundef 8)
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %assemble_emit.exit.thread, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i59.i.i
  %i.in = add nsw i32 %.011.i60.i.i, -8           ; 2 uses
  %i.io = icmp sgt i32 %.011.i60.i.i, 16
  br i1 %i.io, label %.lr.ph.i59.i.i, label %assemble_emit_location.exit61.i.i, !llvm.loop !49

assemble_emit_location.exit61.i.i:                ; preds = %bb.as, %.preheader.i55.i.i
  %.0.lcssa.i57.i.i = phi i32 [ %i.ih, %.preheader.i55.i.i ], [ %i.in, %bb.as ]
  %i.ip = call fastcc i32 @write_location_info_entry(ptr noundef nonnull %10, i64 %.sroa.0.1.i.i, i64 %.sroa.7.1.i.i, i32 noundef %.0.lcssa.i57.i.i)
  %.fr.i.i = freeze i32 %i.ip
  %i.iq = icmp slt i32 %.fr.i.i, 0
  br i1 %i.iq, label %assemble_emit.exit.thread, label %assemble_emit_location.exit61.i._crit_edge.i

assemble_emit_location.exit61.i._crit_edge.i:     ; preds = %assemble_emit_location.exit61.i.i
  %.pr.pre.i = load i32, ptr %i.l, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %assemble_emit_location.exit61.i._crit_edge.i, %.thread69.i.i
  %.pr.i = phi i32 [ %.pr.pre.i, %assemble_emit_location.exit61.i._crit_edge.i ], [ %.pre105107.i.i, %.thread69.i.i ] ; 3 uses
  %.not4171.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %.not4171.i.i, label %.lr.ph.i35.i, label %assemble_exception_table.exit.i

.lr.ph.i35.i:                                     ; preds = %bb.at, %bb.ax
  %.pre85.i.i = phi i32 [ %.pre86.i.i, %bb.ax ], [ %.pr.i, %bb.at ] ; 2 uses
  %i.ir = phi i32 [ %i.jd, %bb.ax ], [ %.pr.i, %bb.at ]
  %indvars.iv.i36.i = phi i64 [ %indvars.iv.next.i41.i, %bb.ax ], [ 0, %bb.at ] ; 2 uses
  %.02777.i.i = phi i32 [ %i.js, %bb.ax ], [ 0, %bb.at ] ; 3 uses
  %.03076.i.i = phi i32 [ %.131.i.i, %bb.ax ], [ -1, %bb.at ] ; 2 uses
  %.sroa.0.074.i.i = phi i32 [ %.sroa.0.1.i39.i, %bb.ax ], [ -1, %bb.at ] ; 4 uses
  %.sroa.6.073.i.i = phi i32 [ %.sroa.6.1.i.i, %bb.ax ], [ -1, %bb.at ] ; 2 uses
  %.sroa.9.072.i.i = phi i32 [ %.sroa.9.1.i.i, %bb.ax ], [ -1, %bb.at ] ; 2 uses
  %i.is = load ptr, ptr %i.gi, align 8, !tbaa !19 ; 2 uses
  %i.it = getelementptr [44 x i8], ptr %i.is, i64 %indvars.iv.i36.i ; 5 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 24     ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !51 ; 2 uses
  %.not.i37.i = icmp eq i32 %i.iv, %.sroa.0.074.i.i
  br i1 %.not.i37.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i35.i
  %i.iw = icmp sgt i32 %.sroa.0.074.i.i, -1
  br i1 %i.iw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ix = zext nneg i32 %.sroa.0.074.i.i to i64
  %i.iy = getelementptr [44 x i8], ptr %i.is, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 40
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !31
  %i.jb = call fastcc i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %10, i32 noundef %.03076.i.i, i32 noundef %.02777.i.i, i32 noundef %i.ja, i32 %.sroa.6.073.i.i, i32 %.sroa.9.072.i.i)
  %i.jc = icmp sgt i32 %i.jb, -1
  br i1 %i.jc, label %._crit_edge83.i.i, label %assemble_emit.exit.thread

._crit_edge83.i.i:                                ; preds = %bb.av
  %.sroa.0.0.copyload.pre.i.i = load i32, ptr %i.iu, align 4, !tbaa !7
  %.pre.pre.i.i = load i32, ptr %i.l, align 4, !tbaa !11
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge83.i.i, %bb.au
  %.pre.i38.i = phi i32 [ %.pre.pre.i.i, %._crit_edge83.i.i ], [ %.pre85.i.i, %bb.au ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.pre.i.i, %._crit_edge83.i.i ], [ %i.iv, %bb.au ]
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.it, i64 28
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.9.0..sroa_idx.i.i = getelementptr i8, ptr %i.it, i64 32
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i35.i
  %.pre86.i.i = phi i32 [ %.pre85.i.i, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.aw ]
  %i.jd = phi i32 [ %i.ir, %.lr.ph.i35.i ], [ %.pre.i38.i, %bb.aw ] ; 2 uses
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.072.i.i, %.lr.ph.i35.i ], [ %.sroa.9.0.copyload.i.i, %bb.aw ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.073.i.i, %.lr.ph.i35.i ], [ %.sroa.6.0.copyload.i.i, %bb.aw ] ; 2 uses
  %.sroa.0.1.i39.i = phi i32 [ %.sroa.0.074.i.i, %.lr.ph.i35.i ], [ %.sroa.0.0.copyload.i.i, %bb.aw ] ; 3 uses
  %.131.i.i = phi i32 [ %.03076.i.i, %.lr.ph.i35.i ], [ %.02777.i.i, %bb.aw ] ; 2 uses
  %.val.i40.i = load i32, ptr %i.it, align 4, !tbaa !24
  %i.je = getelementptr i8, ptr %i.it, i64 4
  %.val42.i.i = load i32, ptr %i.je, align 4, !tbaa !20 ; 3 uses
  %i.jf = icmp sgt i32 %.val42.i.i, 16777215
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp sgt i32 %.val42.i.i, 65535
  %i.ji = icmp sgt i32 %.val42.i.i, 255
  %i.jj = zext i1 %i.ji to i32
  %i.jk = sext i32 %.val.i40.i to i64
  %i.jl = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !29
  %i.jn = zext i8 %i.jm to i32
  %i.jo = select i1 %i.jh, i32 2, i32 1
  %i.jp = add i32 %.02777.i.i, %i.jg
  %i.jq = add i32 %i.jp, %i.jo
  %i.jr = add i32 %i.jq, %i.jj
  %i.js = add i32 %i.jr, %i.jn                    ; 2 uses
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %i.jt = sext i32 %i.jd to i64
  %.not41.i.i = icmp slt i64 %indvars.iv.next.i41.i, %i.jt
  br i1 %.not41.i.i, label %.lr.ph.i35.i, label %._crit_edge.i42.i, !llvm.loop !52

._crit_edge.i42.i:                                ; preds = %bb.ax
  %i.ju = icmp sgt i32 %.sroa.0.1.i39.i, -1
  br i1 %i.ju, label %bb.ay, label %assemble_exception_table.exit.i

bb.ay:                                            ; preds = %._crit_edge.i42.i
  %i.jv = load ptr, ptr %i.gi, align 8, !tbaa !19
  %i.jw = zext nneg i32 %.sroa.0.1.i39.i to i64
  %i.jx = getelementptr [44 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 40
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !31
  %i.ka = call fastcc i32 @assemble_emit_exception_table_entry(ptr noundef nonnull %10, i32 noundef %.131.i.i, i32 noundef %i.js, i32 noundef %i.jz, i32 %.sroa.6.1.i.i, i32 %.sroa.9.1.i.i)
  %i.kb = icmp sgt i32 %i.ka, -1
  br i1 %i.kb, label %assemble_exception_table.exit.i, label %assemble_emit.exit.thread

assemble_exception_table.exit.i:                  ; preds = %bb.ay, %._crit_edge.i42.i, %bb.at, %.preheader.i.i, %assemble_emit_instr.exit.i
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !53
  %i.ke = sext i32 %i.kd to i64
  %i.kf = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.du, i64 noundef %i.ke) #5
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %assemble_emit.exit.thread, label %bb.az

bb.az:                                            ; preds = %assemble_exception_table.exit.i
  %i.kh = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.du) #5
  %i.ki = icmp slt i32 %i.kh, 0
  br i1 %i.ki, label %assemble_emit.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kj = load i32, ptr %i.dt, align 8, !tbaa !54
  %i.kk = sext i32 %i.kj to i64
  %i.kl = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ds, i64 noundef %i.kk) #5
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %assemble_emit.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kn = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.ds) #5
  %i.ko = icmp slt i32 %i.kn, 0
  br i1 %i.ko, label %assemble_emit.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !45
  %i.kr = sext i32 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 1
  %i.kt = call i32 @_PyBytes_Resize(ptr noundef nonnull %10, i64 noundef %i.ks) #5
  %i.ku = icmp slt i32 %i.kt, 0
  br i1 %i.ku, label %assemble_emit.exit.thread, label %assemble_emit.exit

assemble_emit.exit:                               ; preds = %bb.bc
  %i.kv = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %10) #5
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.bd, label %assemble_emit.exit.thread

bb.bd:                                            ; preds = %assemble_emit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store ptr null, ptr %i.i, align 8, !tbaa !55
  %i.kx = getelementptr i8, ptr %0, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 0, ptr %i.f, align 8, !tbaa !57
  %i.kz = getelementptr i8, ptr %i.ky, i64 16
  %.val.i.i24 = load i64, ptr %i.kz, align 8, !tbaa !58
  %i.la = call ptr @PyTuple_New(i64 noundef %.val.i.i24) #5 ; 6 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %.thread.i, label %.preheader.i.i25

.preheader.i.i25:                                 ; preds = %bb.bd
  %i.lc = call i32 @PyDict_Next(ptr noundef nonnull %i.ky, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not13.i.i = icmp eq i32 %i.lc, 0
  br i1 %.not13.i.i, label %.loopexit60.i, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.preheader.i.i25
  %i.ld = getelementptr i8, ptr %i.la, i64 32
  br label %bb.be

bb.be:                                            ; preds = %_Py_NewRef.exit.i.i, %.lr.ph.i.i26
  %i.le = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.lf = call i64 @PyLong_AsSsize_t(ptr noundef %i.le) #5 ; 2 uses
  %i.lg = icmp eq i64 %i.lf, -1
  br i1 %i.lg, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.lh = call ptr @PyErr_Occurred() #5
  %.not12.i.i = icmp eq ptr %i.lh, null
  br i1 %.not12.i.i, label %bb.bi, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bf
  %i.li = load i32, ptr %i.la, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i32 = icmp sgt i32 %i.li, -1
  br i1 %.not.i.i.i32, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %.critedge.i.i
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.lj, ptr %i.la, align 8, !tbaa !29
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.la) #5
  br label %.thread.i

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.ll = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !29 ; 2 uses
  %i.ln = icmp ugt i32 %i.lm, -1073741825
  br i1 %i.ln, label %_Py_NewRef.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lo = add nuw i32 %i.lm, 1
  store i32 %i.lo, ptr %i.ll, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.bj, %bb.bi
  %i.lp = getelementptr [8 x i8], ptr %i.ld, i64 %i.lf
  store ptr %i.ll, ptr %i.lp, align 8, !tbaa !55
  %i.lq = call i32 @PyDict_Next(ptr noundef nonnull %i.ky, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not.i.i27 = icmp eq i32 %i.lq, 0
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
  store ptr %i.la, ptr %i.g, align 8, !tbaa !55
  %i.lr = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.g) #5
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %bb.cg, label %bb.bk

bb.bk:                                            ; preds = %.loopexit60.i
  %i.lt = call ptr @PyList_AsTuple(ptr noundef %2) #5 ; 2 uses
  store ptr %i.lt, ptr %i.h, align 8, !tbaa !55
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.cg, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lv = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.h) #5
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %bb.cg, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lx = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !63
  %i.lz = trunc i64 %i.ly to i32                  ; 2 uses
  %i.ma = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !64
  %i.mc = trunc i64 %i.mb to i32
  %i.md = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !65
  %i.mf = trunc i64 %i.me to i32
  %i.mg = sext i32 %5 to i64                      ; 2 uses
  %i.mh = call ptr @PyTuple_New(i64 noundef %i.mg) #5 ; 6 uses
  store ptr %i.mh, ptr %i.i, align 8, !tbaa !55
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cg, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mj = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.mg) #5 ; 9 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.cg, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.ml = load i64, ptr %i.lx, align 8, !tbaa !63
  %i.mm = trunc i64 %i.ml to i32
  store i32 %i.mm, ptr %8, align 16, !tbaa !66
  %i.mn = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 2, ptr %i.mn, align 4, !tbaa !68
  %i.mo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mp = load i64, ptr %i.ma, align 8, !tbaa !64
  %i.mq = trunc i64 %i.mp to i32
  store i32 %i.mq, ptr %i.mo, align 8, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 6, ptr %i.mr, align 4, !tbaa !68
  %i.ms = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mt = load i64, ptr %i.md, align 8, !tbaa !65
  %i.mu = trunc i64 %i.mt to i32
  store i32 %i.mu, ptr %i.ms, align 16, !tbaa !66
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 4, ptr %i.mv, align 4, !tbaa !68
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.mx = lshr i32 %6, 2
  %.lobit.i.i = and i32 %i.mx, 1
  store i32 %.lobit.i.i, ptr %i.mw, align 8, !tbaa !66
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 10, ptr %i.my, align 4, !tbaa !68
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.na = lshr i32 %6, 3
  %.lobit68.i.i = and i32 %i.na, 1
  store i32 %.lobit68.i.i, ptr %i.mz, align 16, !tbaa !66
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i8 12, ptr %i.nb, align 4, !tbaa !68
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 -1, ptr %i.nc, align 8, !tbaa !66
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ne = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.nf = getelementptr i8, ptr %0, i64 56
  %i.ng = getelementptr i8, ptr %0, i64 40        ; 3 uses
  store i32 0, ptr %i.nd, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge.i36.i, %bb.bo
  %indvars.iv.i.i28 = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.i.i29, %.critedge.i36.i ] ; 2 uses
  %.05591.i.i = phi i32 [ 0, %bb.bo ], [ %spec.select.i.i, %.critedge.i36.i ]
  %i.nh = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.i.i28 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !66 ; 2 uses
  %i.nj = icmp slt i32 %i.ni, 0
  %i.nk = add i32 %i.ni, %.05591.i.i
  %spec.select.i.i = select i1 %i.nj, i32 2147483647, i32 %i.nk ; 2 uses
  %i.nl = sext i32 %spec.select.i.i to i64        ; 2 uses
  %i.nm = load i64, ptr %i.c, align 8, !tbaa !57
  %i.nn = icmp slt i64 %i.nm, %i.nl
  br i1 %i.nn, label %.lr.ph.i38.i, label %.critedge.i36.i

.lr.ph.i38.i:                                     ; preds = %bb.bp
  %i.no = getelementptr i8, ptr %i.nh, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bv, %.lr.ph.i38.i
  %i.np = load ptr, ptr %i.ne, align 8, !tbaa !69
  %i.nq = call i32 @PyDict_Next(ptr noundef %i.np, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not.i39.i = icmp eq i32 %i.nq, 0
  br i1 %.not.i39.i, label %.critedge.i36.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nr = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ns = call i32 @PyLong_AsInt(ptr noundef %i.nr) #5 ; 2 uses
  %i.nt = icmp eq i32 %i.ns, -1
  br i1 %i.nt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nu = call ptr @PyErr_Occurred() #5
  %.not69.i.i = icmp eq ptr %i.nu, null
  br i1 %.not69.i.i, label %bb.bt, label %compute_localsplus_info.exit.thread.i

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.nv = load i8, ptr %i.no, align 4, !tbaa !68
  %i.nw = load ptr, ptr %i.nf, align 8, !tbaa !70
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ny = call i32 @PyDict_Contains(ptr noundef %i.nw, ptr noundef %i.nx) #5 ; 2 uses
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %compute_localsplus_info.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oa = load ptr, ptr %i.ng, align 8, !tbaa !71
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.oc = call i32 @PyDict_Contains(ptr noundef %i.oa, ptr noundef %i.ob) #5 ; 2 uses
  %i.od = icmp slt i32 %i.oc, 0
  br i1 %i.od, label %compute_localsplus_info.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not70.i.i = icmp eq i32 %i.ny, 0
  %spec.select77.v.i.i = select i1 %.not70.i.i, i8 32, i8 48
  %spec.select77.i.i = or i8 %spec.select77.v.i.i, %i.nv ; 2 uses
  %.not71.i.i = icmp eq i32 %i.oc, 0
  %i.oe = or i8 %spec.select77.i.i, 64
  %spec.select78.i.i = select i1 %.not71.i.i, i8 %spec.select77.i.i, i8 %i.oe
  %i.of = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.ns, ptr noundef %i.of, i8 noundef zeroext %spec.select78.i.i, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.mj) #5
  %i.og = load i64, ptr %i.c, align 8, !tbaa !57
  %i.oh = icmp slt i64 %i.og, %i.nl
  br i1 %i.oh, label %bb.bq, label %.critedge.i36.i, !llvm.loop !72

.critedge.i36.i:                                  ; preds = %bb.bv, %bb.bq, %bb.bp
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i29, 6
  br i1 %exitcond.i.i, label %.critedge81.i.i, label %bb.bp, !llvm.loop !73

.critedge81.i.i:                                  ; preds = %.critedge.i36.i
  %i.oi = load ptr, ptr %i.ne, align 8, !tbaa !69
  %i.oj = getelementptr i8, ptr %i.oi, i64 16
  %.val.i37.i = load i64, ptr %i.oj, align 8, !tbaa !58
  %i.ok = trunc i64 %.val.i37.i to i32            ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.ol = load ptr, ptr %i.ng, align 8, !tbaa !71
  %i.om = call i32 @PyDict_Next(ptr noundef %i.ol, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7292.i.i = icmp eq i32 %i.om, 0
  br i1 %.not7292.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %.critedge81.i.i, %bb.cb
  %.053.neg94.i.i = phi i32 [ %.053.neg.i.i, %bb.cb ], [ 0, %.critedge81.i.i ]
  %.05393.i.i = phi i32 [ %.154.i.i, %bb.cb ], [ 0, %.critedge81.i.i ] ; 2 uses
  %i.on = load ptr, ptr %i.ne, align 8, !tbaa !69
  %i.oo = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.op = call i32 @PyDict_Contains(ptr noundef %i.on, ptr noundef %i.oo) #5 ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  br i1 %i.oq, label %compute_localsplus_info.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph95.i.i
  %.not75.i.i = icmp eq i32 %i.op, 0
  br i1 %.not75.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.or = add i32 %.05393.i.i, 1
  br label %bb.cb, !llvm.loop !74

bb.by:                                            ; preds = %bb.bw
  %i.os = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ot = call i32 @PyLong_AsInt(ptr noundef %i.os) #5 ; 2 uses
  %i.ou = icmp eq i32 %i.ot, -1
  br i1 %i.ou, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ov = call ptr @PyErr_Occurred() #5
  %.not76.i.i = icmp eq ptr %i.ov, null
  br i1 %.not76.i.i, label %bb.ca, label %compute_localsplus_info.exit.thread.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ow = add i32 %.053.neg94.i.i, %i.ok
  %i.ox = add i32 %i.ow, %i.ot
  %i.oy = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.ox, ptr noundef %i.oy, i8 noundef zeroext 64, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.mj) #5
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.154.i.i = phi i32 [ %.05393.i.i, %bb.ca ], [ %i.or, %bb.bx ] ; 2 uses
  %.053.neg.i.i = sub i32 0, %.154.i.i            ; 2 uses
  %i.oz = load ptr, ptr %i.ng, align 8, !tbaa !71
  %i.pa = call i32 @PyDict_Next(ptr noundef %i.oz, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not72.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not72.i.i, label %._crit_edge.i.i30, label %.lr.ph95.i.i

._crit_edge.i.i30:                                ; preds = %bb.cb, %.critedge81.i.i
  %.053.neg.lcssa.i.i = phi i32 [ 0, %.critedge81.i.i ], [ %.053.neg.i.i, %bb.cb ]
  store i64 0, ptr %i.c, align 8, !tbaa !57
  %i.pb = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !75
  %i.pd = call i32 @PyDict_Next(ptr noundef %i.pc, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not7396.i.i = icmp eq i32 %i.pd, 0
  br i1 %.not7396.i.i, label %.loopexit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %._crit_edge.i.i30
  %i.pe = add i32 %.053.neg.lcssa.i.i, %i.ok
  br label %bb.cc

bb.cc:                                            ; preds = %.critedge83.i.i, %.lr.ph98.i.i
  %i.pf = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.pg = call i32 @PyLong_AsInt(ptr noundef %i.pf) #5 ; 2 uses
  %i.ph = icmp eq i32 %i.pg, -1
  br i1 %i.ph, label %bb.cd, label %.critedge83.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.pi = call ptr @PyErr_Occurred() #5
  %.not74.i.i = icmp eq ptr %i.pi, null
  br i1 %.not74.i.i, label %.critedge83.i.i, label %..critedge80.loopexit_crit_edge100.i.i, !llvm.loop !76

.critedge83.i.i:                                  ; preds = %bb.cd, %bb.cc
  %i.pj = add i32 %i.pe, %i.pg
  %i.pk = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.pj, ptr noundef %i.pk, i8 noundef zeroext -128, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.mj) #5
  %i.pl = load ptr, ptr %i.pb, align 8, !tbaa !75
  %i.pm = call i32 @PyDict_Next(ptr noundef %i.pl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not73.i.i = icmp eq i32 %i.pm, 0
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
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.po = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  store ptr %i.po, ptr %i.pn, align 8, !tbaa !80
  %i.pp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pq = getelementptr i8, ptr %0, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !81 ; 2 uses
  %.not35.i = icmp eq ptr %i.pr, null
  %spec.select.i = select i1 %.not35.i, ptr %i.po, ptr %i.pr
  store ptr %spec.select.i, ptr %i.pp, align 8, !tbaa !82
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %6, ptr %i.ps, align 8, !tbaa !83
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %i.pt, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.pv = load ptr, ptr %10, align 8, !tbaa !40
  store ptr %i.pv, ptr %i.pu, align 8, !tbaa !84
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.px = load i32, ptr %i.do, align 8, !tbaa !35
  store i32 %i.px, ptr %i.pw, align 8, !tbaa !85
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.qa = load ptr, ptr %i.ds, align 8, !tbaa !41
  store ptr %i.qa, ptr %i.pz, align 8, !tbaa !86
  %i.qb = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.qc = load ptr, ptr %i.h, align 8, !tbaa !55
  store ptr %i.qc, ptr %i.qb, align 8, !tbaa !87
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.qe = load ptr, ptr %i.g, align 8, !tbaa !55
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !88
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  store ptr %i.mh, ptr %i.qf, align 8, !tbaa !89
  %i.qg = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.mj, ptr %i.qg, align 8, !tbaa !90
  %i.qh = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.qi = add i32 %i.mc, %i.lz
  store i32 %i.qi, ptr %i.qh, align 8, !tbaa !91
  %i.qj = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 %i.lz, ptr %i.qj, align 4, !tbaa !92
  %i.qk = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 %i.mf, ptr %i.qk, align 8, !tbaa !93
  %i.ql = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 %3, ptr %i.ql, align 4, !tbaa !94
  %i.qm = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.qn = load ptr, ptr %i.du, align 8, !tbaa !42
  store ptr %i.qn, ptr %i.qm, align 8, !tbaa !95
  %i.qo = call i32 @_PyCode_Validate(ptr noundef nonnull %9) #5
  %i.qp = icmp slt i32 %i.qo, 0
  br i1 %i.qp, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i
  %i.qq = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %1, ptr noundef nonnull %i.i) #5
  %i.qr = icmp slt i32 %i.qq, 0
  br i1 %i.qr, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qs = load ptr, ptr %i.i, align 8, !tbaa !55
  store ptr %i.qs, ptr %i.qf, align 8, !tbaa !89
  %i.qt = call ptr @_PyCode_New(ptr noundef nonnull %9) #5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.loopexit.i, %compute_localsplus_info.exit.thread.i, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %.loopexit60.i
  %.032.ph.i = phi ptr [ %i.mj, %bb.cf ], [ %i.mj, %bb.ce ], [ %i.mj, %.loopexit.i ], [ %i.mj, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %.loopexit60.i ] ; 4 uses
  %.0.ph.i = phi ptr [ %i.qt, %bb.cf ], [ null, %bb.ce ], [ null, %.loopexit.i ], [ null, %compute_localsplus_info.exit.thread.i ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %.loopexit60.i ] ; 4 uses
  %.pr.i31 = load ptr, ptr %i.g, align 8, !tbaa !55 ; 4 uses
  %.not.i40.i = icmp eq ptr %.pr.i31, null
  br i1 %.not.i40.i, label %Py_XDECREF.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qu = load i32, ptr %.pr.i31, align 8, !tbaa !29 ; 2 uses
  %.not.i.i41.i = icmp sgt i32 %i.qu, -1
  br i1 %.not.i.i41.i, label %bb.ci, label %Py_XDECREF.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.qv = add nsw i32 %i.qu, -1                   ; 2 uses
  store i32 %i.qv, ptr %.pr.i31, align 8, !tbaa !29
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.cj, label %Py_XDECREF.exit.i

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i31) #5
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %.thread.i
  %.058.i = phi ptr [ null, %.thread.i ], [ %.0.ph.i, %bb.cg ], [ %.0.ph.i, %bb.ch ], [ %.0.ph.i, %bb.ci ], [ %.0.ph.i, %bb.cj ]
  %.03257.i = phi ptr [ null, %.thread.i ], [ %.032.ph.i, %bb.cg ], [ %.032.ph.i, %bb.ch ], [ %.032.ph.i, %bb.ci ], [ %.032.ph.i, %bb.cj ] ; 4 uses
  %i.qx = load ptr, ptr %i.h, align 8, !tbaa !55  ; 4 uses
  %.not.i42.i = icmp eq ptr %i.qx, null
  br i1 %.not.i42.i, label %Py_XDECREF.exit44.i, label %bb.ck

bb.ck:                                            ; preds = %Py_XDECREF.exit.i
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !29 ; 2 uses
  %.not.i.i43.i = icmp sgt i32 %i.qy, -1
  br i1 %.not.i.i43.i, label %bb.cl, label %Py_XDECREF.exit44.i

bb.cl:                                            ; preds = %bb.ck
  %i.qz = add nsw i32 %i.qy, -1                   ; 2 uses
  store i32 %i.qz, ptr %i.qx, align 8, !tbaa !29
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.cm, label %Py_XDECREF.exit44.i

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.qx) #5
  br label %Py_XDECREF.exit44.i

Py_XDECREF.exit44.i:                              ; preds = %bb.cm, %bb.cl, %bb.ck, %Py_XDECREF.exit.i
  %i.rb = load ptr, ptr %i.i, align 8, !tbaa !55  ; 4 uses
  %.not.i45.i = icmp eq ptr %i.rb, null
  br i1 %.not.i45.i, label %Py_XDECREF.exit47.i, label %bb.cn

bb.cn:                                            ; preds = %Py_XDECREF.exit44.i
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !29 ; 2 uses
  %.not.i.i46.i = icmp sgt i32 %i.rc, -1
  br i1 %.not.i.i46.i, label %bb.co, label %Py_XDECREF.exit47.i

bb.co:                                            ; preds = %bb.cn
  %i.rd = add nsw i32 %i.rc, -1                   ; 2 uses
  store i32 %i.rd, ptr %i.rb, align 8, !tbaa !29
  %i.re = icmp eq i32 %i.rd, 0
  br i1 %i.re, label %bb.cp, label %Py_XDECREF.exit47.i

bb.cp:                                            ; preds = %bb.co
  call void @_Py_Dealloc(ptr noundef nonnull %i.rb) #5
  br label %Py_XDECREF.exit47.i

Py_XDECREF.exit47.i:                              ; preds = %bb.cp, %bb.co, %bb.cn, %Py_XDECREF.exit44.i
  %.not.i48.i = icmp eq ptr %.03257.i, null
  br i1 %.not.i48.i, label %makecode.exit, label %bb.cq

bb.cq:                                            ; preds = %Py_XDECREF.exit47.i
  %i.rf = load i32, ptr %.03257.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i49.i = icmp sgt i32 %i.rf, -1
  br i1 %.not.i.i49.i, label %bb.cr, label %makecode.exit

bb.cr:                                            ; preds = %bb.cq
  %i.rg = add nsw i32 %i.rf, -1                   ; 2 uses
  store i32 %i.rg, ptr %.03257.i, align 8, !tbaa !29
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %bb.cs, label %makecode.exit

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
  %i.ri = load ptr, ptr %10, align 8, !tbaa !40   ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i33, label %Py_XDECREF.exit.i35, label %bb.ct

bb.ct:                                            ; preds = %assemble_emit.exit.thread
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i34 = icmp sgt i32 %i.rj, -1
  br i1 %.not.i.i.i34, label %bb.cu, label %Py_XDECREF.exit.i35

bb.cu:                                            ; preds = %bb.ct
  %i.rk = add nsw i32 %i.rj, -1                   ; 2 uses
  store i32 %i.rk, ptr %i.ri, align 8, !tbaa !29
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %bb.cv, label %Py_XDECREF.exit.i35

bb.cv:                                            ; preds = %bb.cu
  call void @_Py_Dealloc(ptr noundef nonnull %i.ri) #5
  br label %Py_XDECREF.exit.i35

Py_XDECREF.exit.i35:                              ; preds = %bb.cv, %bb.cu, %bb.ct, %assemble_emit.exit.thread
  %i.rm = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %.not.i3.i = icmp eq ptr %i.rm, null
  br i1 %.not.i3.i, label %Py_XDECREF.exit5.i, label %bb.cw

bb.cw:                                            ; preds = %Py_XDECREF.exit.i35
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !29 ; 2 uses
  %.not.i.i4.i = icmp sgt i32 %i.rn, -1
  br i1 %.not.i.i4.i, label %bb.cx, label %Py_XDECREF.exit5.i

bb.cx:                                            ; preds = %bb.cw
  %i.ro = add nsw i32 %i.rn, -1                   ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 8, !tbaa !29
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.cy, label %Py_XDECREF.exit5.i

bb.cy:                                            ; preds = %bb.cx
  call void @_Py_Dealloc(ptr noundef nonnull %i.rm) #5
  br label %Py_XDECREF.exit5.i

Py_XDECREF.exit5.i:                               ; preds = %bb.cy, %bb.cx, %bb.cw, %Py_XDECREF.exit.i35
  %i.rq = load ptr, ptr %i.du, align 8, !tbaa !42 ; 4 uses
  %.not.i6.i = icmp eq ptr %i.rq, null
  br i1 %.not.i6.i, label %assemble_free.exit, label %bb.cz

bb.cz:                                            ; preds = %Py_XDECREF.exit5.i
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !29 ; 2 uses
  %.not.i.i7.i = icmp sgt i32 %i.rr, -1
  br i1 %.not.i.i7.i, label %bb.da, label %assemble_free.exit

bb.da:                                            ; preds = %bb.cz
  %i.rs = add nsw i32 %i.rr, -1                   ; 2 uses
  store i32 %i.rs, ptr %i.rq, align 8, !tbaa !29
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.db, label %assemble_free.exit

bb.db:                                            ; preds = %bb.da
  call void @_Py_Dealloc(ptr noundef nonnull %i.rq) #5
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
