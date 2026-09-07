Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codeobject?download=true
inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_PyCode_CheckPureFunction:bb.a
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 384
  %or.cond = icmp eq i32 %i.d, 0
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 512
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.018 = phi ptr [ @.str.14, %bb.c ], [ @.str.15, %bb.b ], [ @.str.14, %bb.a ]
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  store ptr %.018, ptr %1, align 8, !tbaa !189
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.thread, %bb.d
  %.08 = phi i32 [ 0, %.thread ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_PyCode_ReturnsOnlyNone(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !147
  %i.c = and i32 %i.b, 928
  %or.cond58.i = icmp eq i32 %i.c, 0
  br i1 %or.cond58.i, label %_PyCode_CheckPureFunction.exit.i, label %code_returns_only_none.exit

_PyCode_CheckPureFunction.exit.i:                 ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !133
  %i.e = trunc i64 %.val.i to i32                 ; 5 uses
  %i.f = add i32 %i.e, -1
  %i.g = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %i.f) #14
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.j = tail call i64 @PyTuple_Size(ptr noundef %i.i) #14 ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_PyCode_CheckPureFunction.exit.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.m = getelementptr i8, ptr %i.l, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %bb.c ] ; 2 uses
  %.04362.i = phi i32 [ 0, %.lr.ph.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = icmp eq ptr %i.p, @_Py_NoneStruct
  br i1 %i.q, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.04362.i, 1                     ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = icmp sgt i64 %i.j, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge.i, !llvm.loop !231

._crit_edge.i:                                    ; preds = %bb.c, %bb.b, %_PyCode_CheckPureFunction.exit.i
  %.043.lcssa.i = phi i32 [ 0, %_PyCode_CheckPureFunction.exit.i ], [ %i.r, %bb.c ], [ %.04362.i, %bb.b ]
  %.lcssa.i = phi i64 [ 0, %_PyCode_CheckPureFunction.exit.i ], [ %i.s, %bb.c ], [ %i.n, %bb.b ]
  %i.u = icmp eq i64 %i.j, %.lcssa.i
  br i1 %i.u, label %bb.d, label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i
  %.not5067.i = icmp sgt i32 %i.e, 0
  br i1 %.not5067.i, label %.lr.ph69.i, label %code_returns_only_none.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = and i16 %i.g, 255
  %i.w = icmp eq i16 %i.v, 35
  br i1 %i.w, label %code_returns_only_none.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not5275.i = icmp sgt i32 %i.e, 0
  br i1 %.not5275.i, label %.lr.ph77.i, label %code_returns_only_none.exit

.lr.ph77.i:                                       ; preds = %.preheader.i, %bb.e
  %.04176.i = phi i32 [ %i.aa, %bb.e ], [ 0, %.preheader.i ] ; 3 uses
  %i.x = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %.04176.i) #14
  %i.y = and i16 %i.x, 255
  %.not51.i = icmp eq i16 %i.y, 35
  br i1 %.not51.i, label %code_returns_only_none.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph77.i
  %i.z = tail call i32 @_PyInstruction_GetLength(ptr noundef nonnull %0, i32 noundef %.04176.i) #14
  %i.aa = add i32 %i.z, %.04176.i                 ; 2 uses
  %.not52.i = icmp slt i32 %i.aa, %i.e
  br i1 %.not52.i, label %.lr.ph77.i, label %code_returns_only_none.exit, !llvm.loop !232

.lr.ph69.i:                                       ; preds = %.preheader59.i, %bb.h
  %.068.i = phi i32 [ %i.ak, %bb.h ], [ 0, %.preheader59.i ] ; 4 uses
  %i.ab = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %.068.i) #14
  %i.ac = and i16 %i.ab, 255
  %i.ad = icmp eq i16 %i.ac, 35
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph69.i
  %i.ae = add i32 %.068.i, -1
  %i.af = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %i.ae) #14 ; 2 uses
  %i.ag = and i16 %i.af, 255
  %i.ah = icmp eq i16 %i.ag, 82
  br i1 %i.ah, label %bb.g, label %code_returns_only_none.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0.extract.shift.i = lshr i16 %i.af, 8
  %.sroa.4.0.extract.trunc.i = zext nneg i16 %.sroa.4.0.extract.shift.i to i32
  %i.ai = icmp eq i32 %.043.lcssa.i, %.sroa.4.0.extract.trunc.i
  br i1 %i.ai, label %bb.h, label %code_returns_only_none.exit

bb.h:                                             ; preds = %bb.g, %.lr.ph69.i
  %i.aj = tail call i32 @_PyInstruction_GetLength(ptr noundef nonnull %0, i32 noundef %.068.i) #14
  %i.ak = add i32 %i.aj, %.068.i                  ; 2 uses
  %.not50.i = icmp slt i32 %i.ak, %i.e
  br i1 %.not50.i, label %.lr.ph69.i, label %code_returns_only_none.exit, !llvm.loop !233

code_returns_only_none.exit:                      ; preds = %bb.f, %bb.g, %bb.h, %.lr.ph77.i, %bb.e, %bb.a, %.preheader59.i, %bb.d, %.preheader.i
  %.8.i = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %.preheader59.i ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %.lr.ph77.i ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.f ]
  ret i32 %.8.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCode_GetCode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %init_co_cached.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef 32) #14 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %init_co_cached.exit, label %init_co_cached.exit.thread.thread

init_co_cached.exit.thread.thread:                ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !182
  br label %bb.e

init_co_cached.exit:                              ; preds = %bb.b
  %i.e = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %_Py_NewRef.exit

init_co_cached.exit.thread:                       ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !194 ; 5 uses
  %.not21 = icmp eq ptr %.pre, null
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %init_co_cached.exit.thread
  %i.f = load i32, ptr %.pre, align 8, !tbaa !114 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %.pre, align 8, !tbaa !114
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %init_co_cached.exit.thread.thread, %init_co_cached.exit.thread
  %i.i = phi ptr [ %i.c, %init_co_cached.exit.thread.thread ], [ %i.b, %init_co_cached.exit.thread ]
  %i.j = getelementptr i8, ptr %0, i64 208
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.k, align 8, !tbaa !133
  %i.l = shl i64 %.val, 1
  %i.m = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.j, i64 noundef %i.l) #14 ; 7 uses
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 32       ; 8 uses
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !133 ; 2 uses
  %i.o = icmp sgt i64 %.val.i, 0
  br i1 %i.o, label %.lr.ph22.i, label %.loopexit

.lr.ph22.i:                                       ; preds = %bb.f, %._crit_edge.i
  %i.p = phi i64 [ %i.be, %._crit_edge.i ], [ 0, %bb.f ]
  %.01520.i = phi i32 [ %i.bd, %._crit_edge.i ], [ 0, %bb.f ] ; 10 uses
  %i.q = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef %0, i32 noundef %.01520.i) #14 ; 2 uses
  %.sroa.0.0.extract.trunc.mask.i = and i16 %i.q, 255
  %i.r = zext nneg i16 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.s = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !114   ; 6 uses
  %i.u = getelementptr [2 x i8], ptr %i.n, i64 %i.p
  store i16 %i.q, ptr %i.u, align 2
  %.not18.i = icmp eq i8 %i.t, 0
  br i1 %.not18.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph22.i
  %i.v = zext i8 %i.t to i32
  %i.w = add nuw nsw i32 %i.v, 1                  ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.w to i64  ; 2 uses
  %i.x = zext i8 %i.t to i64                      ; 6 uses
  %min.iters.check = icmp ult i8 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.y = zext i8 %i.t to i64
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = add i32 %.01520.i, 1                    ; 2 uses
  %i.ab = trunc nsw i64 %i.z to i32
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = icmp slt i32 %i.ac, %i.aa
  %i.ae = icmp ugt i64 %i.z, 4294967295
  %i.af = or i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check38 = icmp ult i8 %i.t, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 240                      ; 4 uses
  %i.ah = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = trunc i64 %index to i32
  %i.aj = or disjoint i32 %i.ai, 1
  %i.ak = add i32 %.01520.i, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr %i.n, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <8 x i16> zeroinitializer, ptr %i.am, align 2, !tbaa !114
  store <8 x i16> zeroinitializer, ptr %i.an, align 2, !tbaa !114
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !239

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.x, 252                    ; 3 uses
  %i.ap = or disjoint i64 %n.vec39, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = trunc i64 %index40 to i32
  %i.ar = or disjoint i32 %i.aq, 1
  %i.as = add i32 %.01520.i, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [2 x i8], ptr %i.n, i64 %i.at
  store <4 x i16> zeroinitializer, ptr %i.au, align 2, !tbaa !114
  %index.next41 = add nuw i64 %index40, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next41, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !235

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %n.vec39, %i.x
  br i1 %cmp.n42, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 4 uses
  %i.aw = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.ax = sub nsw i64 %i.x, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.prol to i32
  %i.az = add i32 %.01520.i, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [2 x i8], ptr %i.n, i64 %i.ba
  store i16 0, ptr %i.bb, align 2, !tbaa !114
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !236

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bc = icmp ult i64 %i.ax, 3
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.prol.loopexit
  %invariant.op = add i32 1, %.01520.i
  %invariant.op44 = add i32 2, %.01520.i
  %invariant.op46 = add i32 3, %.01520.i
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.lr.ph22.i
  %.pre-phi = phi i32 [ 1, %.lr.ph22.i ], [ %i.w, %middle.block ], [ %i.w, %vec.epilog.middle.block ], [ %i.w, %.lr.ph.i ], [ %i.w, %.lr.ph.i.prol.loopexit ]
  %i.bd = add i32 %.pre-phi, %.01520.i            ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp sgt i64 %.val.i, %i.be
  br i1 %i.bf, label %.lr.ph22.i, label %.loopexit, !llvm.loop !237

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bh = add i32 %.01520.i, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [2 x i8], ptr %i.n, i64 %i.bi
  store i16 0, ptr %i.bj, align 2, !tbaa !114
  %i.bk = trunc i64 %indvars.iv.i to i32
  %.reass = add i32 %i.bk, %invariant.op
  %i.bl = sext i32 %.reass to i64
  %i.bm = getelementptr [2 x i8], ptr %i.n, i64 %i.bl
  store i16 0, ptr %i.bm, align 2, !tbaa !114
  %i.bn = trunc i64 %indvars.iv.i to i32
  %.reass45 = add i32 %i.bn, %invariant.op44
  %i.bo = sext i32 %.reass45 to i64
  %i.bp = getelementptr [2 x i8], ptr %i.n, i64 %i.bo
  store i16 0, ptr %i.bp, align 2, !tbaa !114
  %i.bq = trunc i64 %indvars.iv.i to i32
  %.reass47 = add i32 %i.bq, %invariant.op46
  %i.br = sext i32 %.reass47 to i64
  %i.bs = getelementptr [2 x i8], ptr %i.n, i64 %i.br
  store i16 0, ptr %i.bs, align 2, !tbaa !114
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !238

.loopexit:                                        ; preds = %._crit_edge.i, %bb.f
  store ptr %i.m, ptr %i.i, align 8, !tbaa !194
  %i.bt = load i32, ptr %i.m, align 8, !tbaa !114 ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, -1073741825
  br i1 %i.bu, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bv = add nuw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.m, align 8, !tbaa !114
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.g, %.loopexit, %bb.d, %bb.c, %init_co_cached.exit
  %.1 = phi ptr [ null, %init_co_cached.exit ], [ %.pre, %bb.d ], [ %.pre, %bb.c ], [ %i.m, %.loopexit ], [ %i.m, %bb.g ], [ null, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyCode_GetCode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyCode_GetCode(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @code_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyThreadState_Get() #14
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243
  %i.d = getelementptr i8, ptr %i.c, i64 8040
  %i.e = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 0 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !114    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.b, label %_PyObject_ResurrectStart.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !114
  br label %_PyObject_ResurrectStart.exit

_PyObject_ResurrectStart.exit:                    ; preds = %bb.a, %bb.b
  %.val3.i87 = phi i32 [ %i.f, %bb.a ], [ 1, %bb.b ]
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 11160
  %i.j = load i8, ptr %i.i, align 8, !tbaa !112   ; 2 uses
  %.not13.i = icmp eq i8 %i.j, 0
  br i1 %.not13.i, label %notify_code_watchers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyObject_ResurrectStart.exit
  %i.k = getelementptr i8, ptr %i.h, i64 11032
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01114.i = phi i8 [ %i.j, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.l = and i8 %.01114.i, 1
  %.not12.i = icmp eq i8 %i.l, 0
  br i1 %.not12.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call i32 %i.n(i32 noundef 1, ptr noundef nonnull %0) #14, !inline_history !241
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, ptr noundef nonnull %0) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.q = lshr i8 %.01114.i, 1                     ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %notify_code_watchers.exit.loopexit, label %bb.c, !llvm.loop !1

notify_code_watchers.exit.loopexit:               ; preds = %bb.f
  %.val3.i.pre = load i32, ptr %0, align 8, !tbaa !114
  br label %notify_code_watchers.exit

notify_code_watchers.exit:                        ; preds = %notify_code_watchers.exit.loopexit, %_PyObject_ResurrectStart.exit
  %.val3.i = phi i32 [ %.val3.i.pre, %notify_code_watchers.exit.loopexit ], [ %.val3.i87, %_PyObject_ResurrectStart.exit ] ; 2 uses
  %.not.i.i42 = icmp sgt i32 %.val3.i, -1
  br i1 %.not.i.i42, label %_PyObject_ResurrectEnd.exit, label %_PyObject_ResurrectEnd.exit.thread

_PyObject_ResurrectEnd.exit:                      ; preds = %notify_code_watchers.exit
  %i.r = add nsw i32 %.val3.i, -1                 ; 2 uses
  store i32 %i.r, ptr %0, align 8, !tbaa !114
  %.not84 = icmp eq i32 %i.r, 0
  br i1 %.not84, label %bb.g, label %_PyObject_ResurrectEnd.exit.thread

bb.g:                                             ; preds = %_PyObject_ResurrectEnd.exit
  %i.s = getelementptr i8, ptr %0, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !160
  tail call void @_PyFunction_ClearCodeByVersion(i32 noundef %i.t) #14
  %i.u = getelementptr i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 5 uses
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.v, align 8, !tbaa !181  ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %i.y, i64 8656
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.k, %bb.h
  tail call void @PyMem_Free(ptr noundef nonnull %i.v) #14
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %i.ab = phi i64 [ %i.w, %.lr.ph ], [ %i.ag, %bb.k ]
  %.085 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.z, i64 %.085
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not41 = icmp eq ptr %i.ad, null
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %.085
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  tail call void %i.ad(ptr noundef %i.af) #14
  %.pre = load i64, ptr %i.v, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi i64 [ %.pre, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ah = add nuw nsw i64 %.085, 1                ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.i, label %._crit_edge, !llvm.loop !242

bb.l:                                             ; preds = %._crit_edge, %bb.g
  %i.aj = getelementptr i8, ptr %0, i64 24
end_hunk_0
