inline.NumInlined: 766
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 50
begin_hunk_0_@subs_InternIdcRes:bb.a
  %i.bh = add nsw i32 %.022.us.i.i, 1             ; 2 uses
  %i.bi = load i32, ptr @vec_MAX, align 4         ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.preheader.us.i.i, label %subs_SubsumptionVecPossibleRes.exit.thread.i, !llvm.loop !56

._crit_edge.us.i.i:                               ; preds = %cont_BackTrack.exit.us.i.i
  %i.bk = icmp eq i32 %i.bf, %3
  br i1 %i.bk, label %subs_IdcVecTestlitsRes.exit, label %bb.d

subs_SubsumptionVecPossibleRes.exit.i:            ; preds = %.preheader.lr.ph.i.i
  %.not43.i = icmp eq i32 %2, %3
  br i1 %.not43.i, label %subs_IdcVecTestlitsRes.exit, label %subs_SubsumptionVecPossibleRes.exit.thread.i

subs_SubsumptionVecPossibleRes.exit.thread.i:     ; preds = %bb.d, %subs_SubsumptionVecPossibleRes.exit.i, %bb.a
  %i.bl = phi i32 [ %i.a, %subs_SubsumptionVecPossibleRes.exit.i ], [ %i.a, %bb.a ], [ %i.bi, %bb.d ]
  %i.bm = icmp slt i32 %1, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %list_Delete.exit.thread.i

list_Delete.exit.thread.i:                        ; preds = %subs_SubsumptionVecPossibleRes.exit.thread.i
  %i.bn = tail call ptr @litptr_Create(ptr noundef null, ptr noundef null) #8
  br label %.loopexit43

.lr.ph.i:                                         ; preds = %subs_SubsumptionVecPossibleRes.exit.thread.i
  %i.bo = getelementptr i8, ptr %0, i64 56
  br label %bb.e

bb.e:                                             ; preds = %subs_GetVariables.exit.thread.i, %.lr.ph.i
  %.048.i = phi i32 [ %1, %.lr.ph.i ], [ %i.ct, %subs_GetVariables.exit.thread.i ] ; 2 uses
  %.01947.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %subs_GetVariables.exit.thread.i ] ; 3 uses
  %.02046.i = phi ptr [ null, %.lr.ph.i ], [ %.121.i, %subs_GetVariables.exit.thread.i ] ; 3 uses
  %i.bp = zext i32 %.048.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %.val.i = load ptr, ptr %i.bo, align 8
  %sext.i = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext.i, 29
  %i.bu = getelementptr inbounds i8, ptr %.val.i, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 24
  %.val1.i.i = load ptr, ptr %i.bw, align 8
  %i.bx = tail call ptr @term_VariableSymbols(ptr noundef %.val1.i.i) #8 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.bx, null
  br i1 %.not27.i.i, label %subs_GetVariables.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.by = load ptr, ptr @cont_LEFTCONTEXT, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.030.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ]
  %.01629.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.117.i.i, %bb.h ] ; 4 uses
  %.01828.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.val23.i.i, %bb.h ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.01828.i.i, i64 8
  %.018.val22.i.i = load ptr, ptr %i.bz, align 8  ; 2 uses
  %i.ca = ptrtoint ptr %.018.val22.i.i to i64
  %sext.i.i = shl i64 %i.ca, 32
  %i.cb = ashr exact i64 %sext.i.i, 27
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %.not26.i.i = icmp eq ptr %i.ce, null
  br i1 %.not26.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 8
  store ptr %.018.val22.i.i, ptr %i.cf, align 8
  %.016.val.i.i = load ptr, ptr %.01629.i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i.i = phi ptr [ %.01629.i.i, %bb.f ], [ %.016.val.i.i, %bb.g ] ; 3 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.f ], [ %.01629.i.i, %bb.g ] ; 3 uses
  %.018.val23.i.i = load ptr, ptr %.01828.i.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.018.val23.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.f, !llvm.loop !34

._crit_edge.i.i:                                  ; preds = %bb.h
  %.not24.i.i = icmp eq ptr %.117.i.i, null
  br i1 %.not24.i.i, label %subs_GetVariables.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %.0.val.i.i.i, %.lr.ph.i.i.i ], [ %.117.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.07.i.i.i, align 8 ; 2 uses
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr @memory_FREEDBYTES, align 8
  %i.cm = load ptr, ptr %i.cg, align 8
  store ptr %i.cm, ptr %.07.i.i.i, align 8
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i.i, ptr %i.cn, align 8
  %.not.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i, label %list_Delete.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

list_Delete.exit.i.i:                             ; preds = %.lr.ph.i.i.i
  %.not25.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not25.i.i, label %subs_GetVariables.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %list_Delete.exit.i.i
  store ptr null, ptr %.1.i.i, align 8
  br label %subs_GetVariables.exit.i

subs_GetVariables.exit.i:                         ; preds = %bb.i, %._crit_edge.i.i
  %i.co = load ptr, ptr %i.bq, align 8
  %i.cp = tail call noundef ptr @memory_Malloc(i32 noundef 16) #8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %i.cq, align 8
  store ptr %.02046.i, ptr %i.cp, align 8
  %i.cr = tail call noundef ptr @memory_Malloc(i32 noundef 16) #8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.bx, ptr %i.cs, align 8
  store ptr %.01947.i, ptr %i.cr, align 8
  br label %subs_GetVariables.exit.thread.i

subs_GetVariables.exit.thread.i:                  ; preds = %subs_GetVariables.exit.i, %list_Delete.exit.i.i, %bb.e
  %.121.i = phi ptr [ %i.cp, %subs_GetVariables.exit.i ], [ %.02046.i, %bb.e ], [ %.02046.i, %list_Delete.exit.i.i ] ; 4 uses
  %.1.i = phi ptr [ %i.cr, %subs_GetVariables.exit.i ], [ %.01947.i, %bb.e ], [ %.01947.i, %list_Delete.exit.i.i ] ; 4 uses
  %i.ct = add nsw i32 %.048.i, 1                  ; 2 uses
  %i.cu = load i32, ptr @vec_MAX, align 4
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %._crit_edge.i, !llvm.loop !57

._crit_edge.i:                                    ; preds = %subs_GetVariables.exit.thread.i
  %i.cw = tail call ptr @litptr_Create(ptr noundef %.121.i, ptr noundef %.1.i) #8 ; 2 uses
  %.not6.i.i = icmp eq ptr %.1.i, null
  br i1 %.not6.i.i, label %list_Delete.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i26.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i26.i ], [ %.1.i, %._crit_edge.i ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = sext i32 %i.cz to i64
  %i.db = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dc = add i64 %i.db, %i.da
  store i64 %i.dc, ptr @memory_FREEDBYTES, align 8
  %i.dd = load ptr, ptr %i.cx, align 8
  store ptr %i.dd, ptr %.07.i.i, align 8
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.de, align 8
  %.not.i27.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i27.i, label %list_Delete.exit.i, label %.lr.ph.i26.i, !llvm.loop !24

list_Delete.exit.i:                               ; preds = %.lr.ph.i26.i, %._crit_edge.i
  %.not6.i29.i = icmp eq ptr %.121.i, null
  br i1 %.not6.i29.i, label %.loopexit43, label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %list_Delete.exit.i, %.lr.ph.i30.i
  %.07.i31.i = phi ptr [ %.0.val.i32.i, %.lr.ph.i30.i ], [ %.121.i, %list_Delete.exit.i ] ; 3 uses
  %.0.val.i32.i = load ptr, ptr %.07.i31.i, align 8 ; 2 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = sext i32 %i.dh to i64
  %i.dj = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dk = add i64 %i.dj, %i.di
  store i64 %i.dk, ptr @memory_FREEDBYTES, align 8
  %i.dl = load ptr, ptr %i.df, align 8
  store ptr %i.dl, ptr %.07.i31.i, align 8
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i31.i, ptr %i.dm, align 8
  %.not.i33.i = icmp eq ptr %.0.val.i32.i, null
  br i1 %.not.i33.i, label %.loopexit43, label %.lr.ph.i30.i, !llvm.loop !24

.loopexit43:                                      ; preds = %.lr.ph.i30.i, %list_Delete.exit.thread.i, %list_Delete.exit.i
  %.035.ph = phi ptr [ %i.bn, %list_Delete.exit.thread.i ], [ %i.cw, %list_Delete.exit.i ], [ %i.cw, %.lr.ph.i30.i ] ; 3 uses
  %i.dn = load i32, ptr @vec_MAX, align 4         ; 8 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.do
  %i.dq = icmp sge i32 %2, %3
  %i.dr = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.u, %.loopexit43
  tail call fastcc void @subs_CompVec(ptr noundef %.035.ph)
  %i.ds = load i32, ptr @vec_MAX, align 4         ; 2 uses
  %.not = icmp eq i32 %i.ds, %i.dn
  br i1 %.not, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.du = icmp sge i32 %i.dn, %i.ds
  %brmerge = or i1 %i.du, %i.dq
  %.pre.pre = load i32, ptr @cont_BINDINGS, align 4 ; 2 uses
  %.pre63.pre = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  br i1 %brmerge, label %subs_SearchTopRes.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.k, %4
  %.pre31.i = phi i32 [ %.pre6370, %4 ], [ %.pre63.pre, %bb.k ]
  %.pre.i = phi i32 [ %.pre67, %4 ], [ %.pre.pre, %bb.k ]
  %.02129.us.i = phi i32 [ %5, %4 ], [ %i.dn, %bb.k ] ; 2 uses
  %i.dv = zext i32 %.02129.us.i to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.dv ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %cont_BackTrack.exit.us.i, %.preheader.us.i
  %i.dx = phi i32 [ %.pre31.i, %.preheader.us.i ], [ %.pre6370, %cont_BackTrack.exit.us.i ] ; 2 uses
  %i.dy = phi i32 [ %.pre.i, %.preheader.us.i ], [ %.pre67, %cont_BackTrack.exit.us.i ]
  %.028.us.i = phi i32 [ 0, %.preheader.us.i ], [ %spec.select.us.i, %cont_BackTrack.exit.us.i ]
  %.02027.us.i = phi i32 [ %2, %.preheader.us.i ], [ %i.fu, %cont_BackTrack.exit.us.i ] ; 2 uses
  %i.dz = add nsw i32 %i.dx, 1
  store i32 %i.dz, ptr @cont_STACKPOINTER, align 4
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.ea
  store i32 %i.dy, ptr %i.eb, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.ec = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ed = load ptr, ptr %i.dw, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  %.val23.us.i = load ptr, ptr %i.dr, align 8     ; 2 uses
  %sext.us.i = shl i64 %i.ee, 32
  %i.ef = ashr exact i64 %sext.us.i, 29
  %i.eg = getelementptr inbounds i8, ptr %.val23.us.i, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 24
  %.val1.i.us.i = load ptr, ptr %i.ei, align 8
  %i.ej = zext i32 %.02027.us.i to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %sext25.us.i = shl i64 %i.em, 32
  %i.en = ashr exact i64 %sext25.us.i, 29
  %i.eo = getelementptr inbounds i8, ptr %.val23.us.i, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 24
  %.val1.i24.us.i = load ptr, ptr %i.eq, align 8
  %i.er = tail call i32 @unify_Match(ptr noundef %i.ec, ptr noundef %.val1.i.us.i, ptr noundef %.val1.i24.us.i) #8
  %.not.us.i = icmp ne i32 %i.er, 0
  %i.es = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.028.us.i, %i.es ; 2 uses
  %.pr.i.us.i = load i32, ptr @cont_BINDINGS, align 4 ; 6 uses
  %i.et = icmp sgt i32 %.pr.i.us.i, 0
  br i1 %i.et, label %.lr.ph.i.us.i.preheader, label %._crit_edge.i.us.i

.lr.ph.i.us.i.preheader:                          ; preds = %bb.l
  %xtraiter122 = and i32 %.pr.i.us.i, 1
  %lcmp.mod123.not = icmp eq i32 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.us.i.prol.loopexit, label %.lr.ph.i.us.i.prol

.lr.ph.i.us.i.prol:                               ; preds = %.lr.ph.i.us.i.preheader
  %i.eu = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.eu, ptr @cont_CURRENTBINDING, align 8
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %.val.i.i.i.us.i.prol = load ptr, ptr %i.ev, align 8
  store ptr %.val.i.i.i.us.i.prol, ptr @cont_LASTBINDING, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i8 0, i64 20, i1 false)
  %i.ex = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr null, ptr %i.ey, align 8
  %i.ez = add nsw i32 %.pr.i.us.i, -1             ; 2 uses
  store i32 %i.ez, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i.us.i.prol.loopexit

.lr.ph.i.us.i.prol.loopexit:                      ; preds = %.lr.ph.i.us.i.prol, %.lr.ph.i.us.i.preheader
  %.unr124 = phi i32 [ %.pr.i.us.i, %.lr.ph.i.us.i.preheader ], [ %i.ez, %.lr.ph.i.us.i.prol ]
  %i.fa = icmp eq i32 %.pr.i.us.i, 1
  br i1 %i.fa, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.prol.loopexit, %.lr.ph.i.us.i
  %i.fb = phi i32 [ %i.fn, %.lr.ph.i.us.i ], [ %.unr124, %.lr.ph.i.us.i.prol.loopexit ] ; 3 uses
  %i.fc = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.fc, ptr @cont_CURRENTBINDING, align 8
  %i.fd = getelementptr i8, ptr %i.fc, i64 24
  %.val.i.i.i.us.i = load ptr, ptr %i.fd, align 8
  store ptr %.val.i.i.i.us.i, ptr @cont_LASTBINDING, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fe, i8 0, i64 20, i1 false)
  %i.ff = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr null, ptr %i.fg, align 8
  %i.fh = add nsw i32 %i.fb, -1
  store i32 %i.fh, ptr @cont_BINDINGS, align 4
  %i.fi = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.fi, ptr @cont_CURRENTBINDING, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 24
  %.val.i.i.i.us.i.1 = load ptr, ptr %i.fj, align 8
  store ptr %.val.i.i.i.us.i.1, ptr @cont_LASTBINDING, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fk, i8 0, i64 20, i1 false)
  %i.fl = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr null, ptr %i.fm, align 8
  %i.fn = add nsw i32 %i.fb, -2                   ; 2 uses
  store i32 %i.fn, ptr @cont_BINDINGS, align 4
  %i.fo = icmp sgt i32 %i.fb, 2
  br i1 %i.fo, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i, !llvm.loop !7

._crit_edge.i.us.i:                               ; preds = %.lr.ph.i.us.i.prol.loopexit, %.lr.ph.i.us.i, %bb.l
  %.pre68 = phi i32 [ %.pr.i.us.i, %bb.l ], [ 0, %.lr.ph.i.us.i ], [ 0, %.lr.ph.i.us.i.prol.loopexit ]
  %i.fp = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.us.i, label %cont_BackTrack.exit.us.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.us.i
  %i.fq = add nsw i32 %i.fp, -1                   ; 3 uses
  store i32 %i.fq, ptr @cont_STACKPOINTER, align 4
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  store i32 %i.ft, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit.us.i

cont_BackTrack.exit.us.i:                         ; preds = %bb.m, %._crit_edge.i.us.i
  %.pre6370 = phi i32 [ %i.fq, %bb.m ], [ 0, %._crit_edge.i.us.i ] ; 4 uses
  %.pre67 = phi i32 [ %i.ft, %bb.m ], [ %.pre68, %._crit_edge.i.us.i ] ; 4 uses
  %i.fu = add nsw i32 %.02027.us.i, 1             ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %3
  %i.fw = icmp samesign ult i32 %spec.select.us.i, 2 ; 2 uses
  %i.fx = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %i.fx, label %bb.l, label %._crit_edge.us.i, !llvm.loop !58

4:                                                ; preds = %._crit_edge.us.i
  %5 = add nsw i32 %.02129.us.i, 1                ; 2 uses
  %6 = load i32, ptr @vec_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %.preheader.us.i, label %subs_SearchTopRes.exit, !llvm.loop !59

._crit_edge.us.i:                                 ; preds = %cont_BackTrack.exit.us.i
  br i1 %i.fw, label %.split.us.loopexit.i, label %4

.split.us.loopexit.i:                             ; preds = %._crit_edge.us.i
  %.pre32.i = load ptr, ptr %i.dw, align 8
  br label %subs_SearchTopRes.exit

subs_SearchTopRes.exit:                           ; preds = %4, %bb.k, %.split.us.loopexit.i
  %.pre63 = phi i32 [ %.pre6370, %.split.us.loopexit.i ], [ %.pre63.pre, %bb.k ], [ %.pre6370, %4 ]
  %.pre = phi i32 [ %.pre67, %.split.us.loopexit.i ], [ %.pre.pre, %bb.k ], [ %.pre67, %4 ]
  %.022.in.in.i = phi ptr [ %.pre32.i, %.split.us.loopexit.i ], [ %i.dt, %bb.k ], [ %i.dt, %4 ]
  %.022.in.i = ptrtoint ptr %.022.in.in.i to i64
  %sext = shl i64 %.022.in.i, 32
  %i.fy = ashr exact i64 %sext, 29
  br label %bb.n

bb.n:                                             ; preds = %cont_BackTrack.exit, %subs_SearchTopRes.exit
  %i.fz = phi i32 [ %.pre63, %subs_SearchTopRes.exit ], [ %i.jb, %cont_BackTrack.exit ] ; 2 uses
  %i.ga = phi i32 [ %.pre, %subs_SearchTopRes.exit ], [ %i.jc, %cont_BackTrack.exit ]
  %.022.i14 = phi i32 [ %2, %subs_SearchTopRes.exit ], [ %i.jd, %cont_BackTrack.exit ] ; 2 uses
  %i.gb = add nsw i32 %i.fz, 1
  store i32 %i.gb, ptr @cont_STACKPOINTER, align 4
  %i.gc = sext i32 %i.fz to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.gc
  store i32 %i.ga, ptr %i.gd, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.ge = icmp slt i32 %.022.i14, %3
  br i1 %i.ge, label %.lr.ph, label %._crit_edge.i21

.lr.ph:                                           ; preds = %bb.n, %cont_BackTrackAndStart.exit
  %.1.i1551 = phi i32 [ %i.gs, %cont_BackTrackAndStart.exit ], [ %.022.i14, %bb.n ] ; 3 uses
  %i.gf = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val27.i = load ptr, ptr %i.dr, align 8        ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.val27.i, i64 %i.fy
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = getelementptr i8, ptr %i.gh, i64 24
  %.val1.i30 = load ptr, ptr %i.gi, align 8
  %i.gj = zext i32 %.1.i1551 to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = ptrtoint ptr %i.gl to i64
  %sext42 = shl i64 %i.gm, 32
  %i.gn = ashr exact i64 %sext42, 29
  %i.go = getelementptr inbounds i8, ptr %.val27.i, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr i8, ptr %i.gp, i64 24
  %.val1.i = load ptr, ptr %i.gq, align 8
  %i.gr = tail call i32 @unify_Match(ptr noundef %i.gf, ptr noundef %.val1.i30, ptr noundef %.val1.i) #8, !inline_history !60
  %.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.gs = add nsw i32 %.1.i1551, 1                ; 2 uses
  %.pr.i26 = load i32, ptr @cont_BINDINGS, align 4 ; 5 uses
  %i.gt = icmp sgt i32 %.pr.i26, 0
  br i1 %i.gt, label %.lr.ph.i28.preheader, label %cont_BackTrackAndStart.exit

.lr.ph.i28.preheader:                             ; preds = %bb.o
  %xtraiter125 = and i32 %.pr.i26, 1
  %lcmp.mod126.not = icmp eq i32 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i28.prol.loopexit, label %.lr.ph.i28.prol

.lr.ph.i28.prol:                                  ; preds = %.lr.ph.i28.preheader
  %i.gu = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.gu, ptr @cont_CURRENTBINDING, align 8
  %i.gv = getelementptr i8, ptr %i.gu, i64 24
  %.val.i.i.i29.prol = load ptr, ptr %i.gv, align 8
  store ptr %.val.i.i.i29.prol, ptr @cont_LASTBINDING, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gw, i8 0, i64 20, i1 false)
  %i.gx = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr null, ptr %i.gy, align 8
  %i.gz = add nsw i32 %.pr.i26, -1                ; 2 uses
  store i32 %i.gz, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i28.prol.loopexit

.lr.ph.i28.prol.loopexit:                         ; preds = %.lr.ph.i28.prol, %.lr.ph.i28.preheader
  %.unr127 = phi i32 [ %.pr.i26, %.lr.ph.i28.preheader ], [ %i.gz, %.lr.ph.i28.prol ]
  %i.ha = icmp eq i32 %.pr.i26, 1
  br i1 %i.ha, label %cont_BackTrackAndStart.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.prol.loopexit, %.lr.ph.i28
  %i.hb = phi i32 [ %i.hn, %.lr.ph.i28 ], [ %.unr127, %.lr.ph.i28.prol.loopexit ] ; 3 uses
  %i.hc = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.hc, ptr @cont_CURRENTBINDING, align 8
  %i.hd = getelementptr i8, ptr %i.hc, i64 24
  %.val.i.i.i29 = load ptr, ptr %i.hd, align 8
  store ptr %.val.i.i.i29, ptr @cont_LASTBINDING, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.he, i8 0, i64 20, i1 false)
  %i.hf = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store ptr null, ptr %i.hg, align 8
  %i.hh = add nsw i32 %i.hb, -1
  store i32 %i.hh, ptr @cont_BINDINGS, align 4
  %i.hi = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.hi, ptr @cont_CURRENTBINDING, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 24
  %.val.i.i.i29.1 = load ptr, ptr %i.hj, align 8
  store ptr %.val.i.i.i29.1, ptr @cont_LASTBINDING, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hk, i8 0, i64 20, i1 false)
  %i.hl = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr null, ptr %i.hm, align 8
  %i.hn = add nsw i32 %i.hb, -2                   ; 2 uses
  store i32 %i.hn, ptr @cont_BINDINGS, align 4
  %i.ho = icmp sgt i32 %i.hb, 2
  br i1 %i.ho, label %.lr.ph.i28, label %cont_BackTrackAndStart.exit, !llvm.loop !6

cont_BackTrackAndStart.exit:                      ; preds = %.lr.ph.i28.prol.loopexit, %.lr.ph.i28, %bb.o
  %i.hp = icmp slt i32 %i.gs, %3
  br i1 %i.hp, label %.lr.ph, label %._crit_edge.i21, !llvm.loop !61

._crit_edge.i21:                                  ; preds = %bb.n, %cont_BackTrackAndStart.exit
  %i.hq = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i22 = icmp eq i32 %i.hq, 0
  br i1 %.not.i22, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i21
  %i.hr = add nsw i32 %i.hq, -1                   ; 2 uses
  store i32 %i.hr, ptr @cont_STACKPOINTER, align 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  store i32 %i.hu, ptr @cont_BINDINGS, align 4
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.hv = load i32, ptr @vec_MAX, align 4
  %i.hw = sub nsw i32 %i.dn, %i.hv
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %subs_TcVecRes.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hy = tail call fastcc i32 @subs_InternIdcRes(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef %2, i32 noundef %3), !inline_history !60
  %.not26.i = icmp eq i32 %i.hy, 0
  br i1 %.not26.i, label %bb.s, label %subs_TcVecRes.exit

bb.s:                                             ; preds = %bb.r
  %.pr.i = load i32, ptr @cont_BINDINGS, align 4  ; 6 uses
  %i.hz = icmp sgt i32 %.pr.i, 0
  br i1 %i.hz, label %.lr.ph.i19.preheader, label %._crit_edge.i17

.lr.ph.i19.preheader:                             ; preds = %bb.s
  %xtraiter128 = and i32 %.pr.i, 1
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i19.prol.loopexit, label %.lr.ph.i19.prol

.lr.ph.i19.prol:                                  ; preds = %.lr.ph.i19.preheader
  %i.ia = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.ia, ptr @cont_CURRENTBINDING, align 8
  %i.ib = getelementptr i8, ptr %i.ia, i64 24
  %.val.i.i.i.prol = load ptr, ptr %i.ib, align 8
  store ptr %.val.i.i.i.prol, ptr @cont_LASTBINDING, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ic, i8 0, i64 20, i1 false)
  %i.id = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store ptr null, ptr %i.ie, align 8
  %i.if = add nsw i32 %.pr.i, -1                  ; 2 uses
  store i32 %i.if, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i19.prol.loopexit

.lr.ph.i19.prol.loopexit:                         ; preds = %.lr.ph.i19.prol, %.lr.ph.i19.preheader
  %.unr130 = phi i32 [ %.pr.i, %.lr.ph.i19.preheader ], [ %i.if, %.lr.ph.i19.prol ]
  %i.ig = icmp eq i32 %.pr.i, 1
  br i1 %i.ig, label %._crit_edge.i17, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.prol.loopexit, %.lr.ph.i19
  %i.ih = phi i32 [ %i.it, %.lr.ph.i19 ], [ %.unr130, %.lr.ph.i19.prol.loopexit ] ; 3 uses
  %i.ii = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.ii, ptr @cont_CURRENTBINDING, align 8
  %i.ij = getelementptr i8, ptr %i.ii, i64 24
  %.val.i.i.i = load ptr, ptr %i.ij, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ik, i8 0, i64 20, i1 false)
  %i.il = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store ptr null, ptr %i.im, align 8
  %i.in = add nsw i32 %i.ih, -1
  store i32 %i.in, ptr @cont_BINDINGS, align 4
  %i.io = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.io, ptr @cont_CURRENTBINDING, align 8
  %i.ip = getelementptr i8, ptr %i.io, i64 24
  %.val.i.i.i.1 = load ptr, ptr %i.ip, align 8
  store ptr %.val.i.i.i.1, ptr @cont_LASTBINDING, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.iq, i8 0, i64 20, i1 false)
  %i.ir = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  store ptr null, ptr %i.is, align 8
  %i.it = add nsw i32 %i.ih, -2                   ; 2 uses
  store i32 %i.it, ptr @cont_BINDINGS, align 4
  %i.iu = icmp sgt i32 %i.ih, 2
  br i1 %i.iu, label %.lr.ph.i19, label %._crit_edge.i17, !llvm.loop !7

end_hunk_0
