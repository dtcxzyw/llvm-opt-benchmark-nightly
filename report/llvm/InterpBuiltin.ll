Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpBuiltin?download=true
inline.NumInlined: 11954
inline.NumDeleted: 2546
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang6interpL20computePointerOffsetERKNS_10ASTContextERKNS0_7PointerE:bb.a
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51, !noalias !899
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, %.pre.i.i29
  %i.bf = add nuw nsw i64 %i.be, %..i16.i
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread
  %i.bg = zext i32 %i.m to i64                    ; 4 uses
  %.not.i.i28 = icmp eq i64 %i.am, %i.bg
  br i1 %.not.i.i28, label %bb.i, label %_ZNK5clang6interp7Pointer6expandEv.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !35, !noalias !899 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !45, !noalias !899 ; 2 uses
  %i.bk = icmp eq i32 %i.m, %i.bj
  br i1 %i.bk, label %_ZNK5clang6interp7Pointer6expandEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !52, !noalias !899
  %i.bo = sub i32 %i.m, %i.bn                     ; 3 uses
  %i.bp = icmp eq i32 %i.bo, %i.bj
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48, !noalias !899
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = phi ptr [ %i.bt, %bb.k ], [ %i.bh, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 53
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !49, !range !50, !noalias !899, !noundef !34
  %i.bx = trunc nuw i8 %i.bw to i1
  %spec.select.i = select i1 %i.bx, i32 %i.bo, i32 %i.m
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

_ZNK5clang6interp7Pointer6expandEv.exit:          ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i, %bb.h, %bb.i, %bb.l
  %.sroa.13.0.i = phi i64 [ %i.bf, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.am, %bb.h ], [ %i.bg, %bb.l ], [ %i.bg, %bb.i ]
  %.sroa.6.0.i = phi i32 [ %i.m, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.m, %bb.h ], [ %spec.select.i, %bb.l ], [ %i.m, %bb.i ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.l, i32 noundef %.sroa.6.0.i, i64 noundef %.sroa.13.0.i) #21
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) #21 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bz = load i32, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.ca = icmp ne i32 %i.bz, 0                    ; 2 uses
  %.pre124 = load ptr, ptr %i.f, align 8          ; 8 uses
  br i1 %i.ca, label %bb.m, label %_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge

_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge: ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %.pre125 = load i32, ptr %i.g, align 8, !tbaa !33, !noalias !900
  %.pre127 = load ptr, ptr %.pre124, align 8, !tbaa !35
  br label %bb.al

bb.m:                                             ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.cb = icmp ne i32 %i.bz, 1                    ; 2 uses
  %i.cc = icmp eq ptr %.pre124, null
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.cc
  %.pre126 = load i32, ptr %i.g, align 8, !tbaa !33, !noalias !34 ; 10 uses
  %.pre128 = load ptr, ptr %.pre124, align 8, !tbaa !35 ; 10 uses
  br i1 %or.cond.i.i, label %bb.n, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre128, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !45
  %i.cf = icmp eq i32 %.pre126, %i.ce
  br i1 %i.cf, label %.thread167, label %.thread172

.thread167:                                       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.cg = load i64, ptr %2, align 8, !tbaa !36, !noalias !901
  %.pre.i.i32169 = zext i32 %.pre126 to i64
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33

bb.n:                                             ; preds = %bb.m
  br i1 %i.cb, label %bb.al, label %bb.o

.thread172:                                       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.ch = zext i32 %.pre126 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre124, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = load i64, ptr %2, align 8, !tbaa !36, !noalias !901
  %.pre.i.i32174 = zext i32 %.pre126 to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %.pre128, i64 24
  %.pre120 = load i32, ptr %.phi.trans.insert119, align 8, !tbaa !45
  %i.cm = icmp eq i32 %.pre126, %.pre120
  %i.cn = load i64, ptr %2, align 8, !tbaa !36, !noalias !901 ; 2 uses
  %.pre.i.i32 = zext i32 %.pre126 to i64          ; 2 uses
  br i1 %i.cm, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33, label %bb.p

bb.p:                                             ; preds = %.thread172, %bb.o
  %.pre.i.i32176 = phi i64 [ %.pre.i.i32174, %.thread172 ], [ %.pre.i.i32, %bb.o ] ; 2 uses
  %i.co = phi i64 [ %i.cl, %.thread172 ], [ %i.cn, %bb.o ]
  %.0.i30.ph175 = phi ptr [ %i.ck, %.thread172 ], [ %.pre128, %bb.o ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre124, i64 %.pre.i.i32176
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33:   ; preds = %.thread167, %bb.p, %bb.o
  %.pre.i.i32171 = phi i64 [ %.pre.i.i32176, %bb.p ], [ %.pre.i.i32, %bb.o ], [ %.pre.i.i32169, %.thread167 ] ; 2 uses
  %i.cs = phi i64 [ %i.co, %bb.p ], [ %i.cn, %bb.o ], [ %i.cg, %.thread167 ]
  %.0.i30.ph170 = phi ptr [ %.0.i30.ph175, %bb.p ], [ %.pre128, %bb.o ], [ %.pre128, %.thread167 ] ; 3 uses
  %.0.i.i.i.i34 = phi ptr [ %i.cr, %bb.p ], [ %.pre128, %bb.o ], [ %.pre128, %.thread167 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i34, i64 53
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !49, !range !50, !noundef !34
  %i.cv = trunc nuw i8 %i.cu to i1
  %.not.i.i35 = icmp ne i64 %i.cs, %.pre.i.i32171
  %or.cond.not.i.i36 = select i1 %i.cv, i1 %.not.i.i35, i1 false
  br i1 %or.cond.not.i.i36, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33
  %i.cw = icmp ugt i32 %.pre126, 15
  br i1 %i.cw, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre124, i64 %.pre.i.i32171
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.cz = load i16, ptr %i.cy, align 4
  %i.da = and i16 %i.cz, 256
  %.not2.i.i37 = icmp eq i16 %i.da, 0
  br i1 %.not2.i.i37, label %bb.al, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38

_ZNK5clang6interp7Pointer14isArrayElementEv.exit38: ; preds = %bb.r, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i33
  %i.db = call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i30.ph170) #21
  %i.dc = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.db) #21 ; 3 uses
  %i.dd = load i32, ptr %i.c, align 8, !tbaa !19
  switch i32 %i.dd, label %bb.w [
    i32 1, label %bb.s
    i32 2, label %bb.v
    i32 0, label %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
  ]

bb.s:                                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !33  ; 14 uses
  %.not.i = icmp eq ptr %i.de, null
  %.pre121 = load i32, ptr %i.g, align 8, !tbaa !33, !noalias !34 ; 16 uses
  br i1 %.not.i, label %.thread96, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.s
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !45
  %i.di = icmp eq i32 %.pre121, %i.dh             ; 3 uses
  br i1 %i.di, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.dj = zext i32 %.pre121 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.t, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.dm, %bb.t ], [ %i.df, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !51
  %i.dp = icmp eq i32 %i.do, -1
  %.pre123 = load i64, ptr %2, align 8, !tbaa !36 ; 10 uses
  br i1 %i.dp, label %bb.x, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !480
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp ugt i64 %.pre123, %i.ds
  br i1 %i.dt, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i40 = zext i32 %.pre121 to i64            ; 4 uses
  br i1 %i.di, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !51 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %.pre123, %.pre.i40
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 %.pre.i40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !48 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %.pre123, %.pre.i40
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.eb = phi i32 [ %i.dv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.ea, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i41 = phi ptr [ %i.df, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.dy, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i41, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !481
  %.not1.i.i.i = icmp eq ptr %i.ed, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.ee = phi i32 [ %i.eb, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.dv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.ea, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ef = sub nsw i64 %.pre123, %.pre.i40
  %i.eg = add nsw i64 %i.ef, %.0.neg.i.i.i
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = icmp eq i32 %i.ee, %i.eh
  br i1 %i.ei, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94, label %bb.x

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.ej = trunc i64 %i.dc to i32
  br i1 %i.di, label %.thread99, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94
  %i.ek = zext i32 %.pre121 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !48
  br label %.thread99

.thread99:                                        ; preds = %bb.u, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94
  %.pn.i.i = phi ptr [ %i.en, %bb.u ], [ %i.df, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread94 ] ; 2 uses
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 20
  %.in.i.i = load i32, ptr %.in.in.i.i, align 4, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !451
  %i.eq = udiv i32 %.in.i.i, %i.ep
  %i.er = mul i32 %i.eq, %i.ej
  br label %.thread104

_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i:    ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38
  %i.es = load i64, ptr %i.g, align 8, !tbaa !33
  br label %bb.ad

bb.v:                                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.eu = ptrtoint ptr %i.et to i64
  br label %bb.ad

bb.w:                                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit38
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ew = ptrtoint ptr %i.ev to i64
  br label %bb.ad

.thread96:                                        ; preds = %bb.s
  %.pre122 = load i64, ptr %2, align 8, !tbaa !36, !noalias !902
  br label %.thread104

bb.x:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.ex = icmp ugt i32 %.pre121, 16
  %i.ey = zext i32 %.pre121 to i64                ; 4 uses
  %i.ez = icmp eq i64 %.pre123, %i.ey             ; 2 uses
  %or.cond.i.i45 = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond.i.i45, label %.thread104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = load ptr, ptr %i.de, align 8, !tbaa !35 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !45
  %i.fd = icmp eq i32 %.pre121, %i.fc             ; 2 uses
  br i1 %i.fd, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ey
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.z, %bb.y
  %.0.i.i.i.i46 = phi ptr [ %i.fg, %bb.z ], [ %i.fa, %bb.y ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i46, i64 16
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !451 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.not.i.i, label %.thread104, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.ez, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fd, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i47, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ey
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i47

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i47: ; preds = %bb.ac, %bb.ab
  %.0.i.i8.i.i = phi ptr [ %i.fl, %bb.ac ], [ %i.fa, %bb.ab ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !481
  %.not1.i.i.i48 = icmp eq ptr %i.fn, null
  %..i.i.i49 = select i1 %.not1.i.i.i48, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i47, %bb.aa
  %.0.neg.i.i.i50 = phi i64 [ %..i.i.i49, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i47 ], [ 0, %bb.aa ]
  %i.fo = sub i64 %.pre123, %i.ey
  %i.fp = add i64 %i.fo, %.0.neg.i.i.i50
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = udiv i32 %i.fq, %i.fi
  %i.fs = trunc i64 %i.dc to i32
  %i.ft = mul i32 %i.fr, %i.fs
  br label %.thread104

bb.ad:                                            ; preds = %bb.w, %bb.v, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
  %.sink1.i.i = phi i64 [ %i.ew, %bb.w ], [ %i.eu, %bb.v ], [ %i.es, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i ]
  %i.fu = load i64, ptr %2, align 8, !tbaa !36
  %i.fv = add i64 %i.fu, %.sink1.i.i
  %i.fw = mul i64 %i.fv, %i.dc
  %i.fx = trunc i64 %i.fw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %2) #21
  br label %_ZNK5clang6interp7Pointer6expandEv.exit61

.thread104:                                       ; preds = %bb.x, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, %.thread96, %.thread99
  %i.fy = phi i64 [ %.pre123, %.thread99 ], [ %.pre123, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ], [ %.pre123, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ], [ %.pre122, %.thread96 ], [ %.pre123, %bb.x ] ; 3 uses
  %.pn26102 = phi i32 [ %i.er, %.thread99 ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ], [ %i.ft, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ], [ 0, %.thread96 ], [ 0, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.fz = icmp eq i64 %i.fy, 4294967295
  br i1 %i.fz, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.thread104
  %i.ga = load ptr, ptr %i.de, align 8, !tbaa !35, !noalias !903 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !45, !noalias !903
  %i.gd = icmp eq i32 %.pre121, %i.gc
  %.pre.i.i56 = zext i32 %.pre121 to i64          ; 2 uses
  br i1 %i.gd, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.de, i64 %.pre.i.i56
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !48, !noalias !903
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57

_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57:   ; preds = %bb.af, %bb.ae
  %.sink25.i58 = phi ptr [ %i.gg, %bb.af ], [ %i.ga, %bb.ae ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink25.i58, i64 53
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !49, !range !50, !noalias !903, !noundef !34
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink25.i58, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !903
  %.not.i.i.i15.i59 = icmp eq ptr %i.gl, null
  %i.gm = select i1 %i.gj, i1 %.not.i.i.i15.i59, i1 false
  %..i16.i60 = select i1 %i.gm, i64 8, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink25.i58, i64 20
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !51, !noalias !903
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, %.pre.i.i56
  %i.gr = add nuw nsw i64 %i.gq, %..i16.i60
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i52

bb.ag:                                            ; preds = %.thread104
  %i.gs = zext i32 %.pre121 to i64                ; 4 uses
  %.not.i.i51 = icmp eq i64 %i.fy, %i.gs
  br i1 %.not.i.i51, label %bb.ah, label %_ZNK5clang6interp7PtrView6expandEv.exit.i52

bb.ah:                                            ; preds = %bb.ag
  %i.gt = load ptr, ptr %i.de, align 8, !tbaa !35, !noalias !903 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !45, !noalias !903 ; 2 uses
  %i.gw = icmp eq i32 %.pre121, %i.gv
  br i1 %i.gw, label %_ZNK5clang6interp7PtrView6expandEv.exit.i52, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !52, !noalias !903
  %i.ha = sub i32 %.pre121, %i.gz                 ; 3 uses
  %i.hb = icmp eq i32 %i.ha, %i.gv
  br i1 %i.hb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hc = zext i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !48, !noalias !903
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hg = phi ptr [ %i.hf, %bb.aj ], [ %i.gt, %bb.ai ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 53
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !49, !range !50, !noalias !903, !noundef !34
  %i.hj = trunc nuw i8 %i.hi to i1
  %spec.select.i55 = select i1 %i.hj, i32 %i.ha, i32 %.pre121
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i52

_ZNK5clang6interp7PtrView6expandEv.exit.i52:      ; preds = %bb.ak, %bb.ah, %bb.ag, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57
  %.sroa.13.0.i53 = phi i64 [ %i.gr, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57 ], [ %i.fy, %bb.ag ], [ %i.gs, %bb.ak ], [ %i.gs, %bb.ah ]
  %.sroa.6.0.i54 = phi i32 [ %.pre121, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i57 ], [ %.pre121, %bb.ag ], [ %spec.select.i55, %bb.ak ], [ %.pre121, %bb.ah ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.de, i32 noundef %.sroa.6.0.i54, i64 noundef %.sroa.13.0.i53) #21
  br label %_ZNK5clang6interp7Pointer6expandEv.exit61

_ZNK5clang6interp7Pointer6expandEv.exit61:        ; preds = %bb.ad, %_ZNK5clang6interp7PtrView6expandEv.exit.i52
  %.pn26101 = phi i32 [ %i.fx, %bb.ad ], [ %.pn26102, %_ZNK5clang6interp7PtrView6expandEv.exit.i52 ]
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !33, !noalias !904
  %i.hl = load i32, ptr %i.i, align 8, !tbaa !33, !noalias !904 ; 2 uses
  %i.hm = zext i32 %i.hl to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.hk, i32 noundef %i.hl, i64 noundef %i.hm) #21
  %i.hn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %4) #21 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ax

bb.al:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge, %bb.q, %bb.r, %bb.n
  %i.ho = phi ptr [ %.pre128, %bb.n ], [ %.pre127, %_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge ], [ %.pre128, %bb.r ], [ %.pre128, %bb.q ]
  %i.hp = phi i32 [ %.pre126, %bb.n ], [ %.pre125, %_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge ], [ %.pre126, %bb.r ], [ %.pre126, %bb.q ] ; 3 uses
  %.0.i3088.ph = phi ptr [ null, %bb.n ], [ null, %_ZNK5clang6interp7Pointer6expandEv.exit._crit_edge ], [ %.0.i30.ph170, %bb.r ], [ %.0.i30.ph170, %bb.q ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !45
  %i.hs = icmp ne i32 %i.hp, %i.hr                ; 2 uses
  %i.ht = zext i32 %i.hp to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %.pre124, i64 %i.ht ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.hw, align 8 ; 5 uses
  br i1 %i.hs, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i:     ; preds = %bb.al
  %i.hx = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3
  %i.ia = icmp ne i64 %i.hz, 0
  %i.ib = and i1 %i.hy, %i.ia
  br i1 %i.ib, label %_ZNK5clang6interp7Pointer11isBaseClassEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer11isBaseClassEv.exit:    ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  %i.id = load i16, ptr %i.ic, align 4
  %i.ie = and i16 %i.id, 4
  %.not = icmp eq i16 %i.ie, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.am

bb.am:                                            ; preds = %_ZNK5clang6interp7Pointer11isBaseClassEv.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i3088.ph, align 8
  %i.if = and i64 %.sroa.0.0.copyload.i.i.i, -3
  %i.ig = inttoptr i64 %i.if to ptr               ; 2 uses
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !33, !noalias !905 ; 3 uses
  %i.ii = load i32, ptr %i.k, align 8, !tbaa !33, !noalias !905 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i63, label %_ZNK5clang6interp7Pointer18isVirtualBaseClassEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !45
  %i.im = icmp eq i32 %i.ii, %i.il
  br i1 %i.im, label %_ZNK5clang6interp7Pointer18isVirtualBaseClassEv.exit, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i64

_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i64:   ; preds = %bb.an
  %i.in = zext i32 %i.ii to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i.i.i.i.i65 = load i64, ptr %i.iq, align 8 ; 2 uses
  %i.ir = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i65, 2
  %i.is = icmp eq i64 %i.ir, 0
  %i.it = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i65, -3
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = and i1 %i.is, %i.iu
  br i1 %i.iv, label %bb.ao, label %_ZNK5clang6interp7Pointer18isVirtualBaseClassEv.exit

bb.ao:                                            ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 28
  %i.ix = load i16, ptr %i.iw, align 4
  %i.iy = and i16 %i.ix, 8
  %i.iz = icmp ne i16 %i.iy, 0
  br label %_ZNK5clang6interp7Pointer18isVirtualBaseClassEv.exit

_ZNK5clang6interp7Pointer18isVirtualBaseClassEv.exit: ; preds = %bb.am, %bb.an, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i64, %bb.ao
  %i.ja = phi i1 [ false, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i64 ], [ %i.iz, %bb.ao ], [ false, %bb.an ], [ false, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !52, !noalias !906
  %i.jd = sub i32 %i.hp, %i.jc                    ; 2 uses
  %i.je = zext i32 %i.jd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %.pre124, i32 noundef %i.jd, i64 noundef %i.je) #21
  %i.jf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6) #21 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jg = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !907 ; 2 uses
  %i.jh = load i32, ptr %i.g, align 8, !tbaa !33, !noalias !907 ; 2 uses
  %i.ji = load ptr, ptr %i.jg, align 8, !tbaa !35 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !45
  %i.jl = icmp eq i32 %i.jh, %i.jk
  br i1 %i.jl, label %_ZNK5clang6interp7PtrView9getRecordEv.exit.i, label %bb.ap

end_hunk_0
begin_hunk_1_@_ZN5clang6interpL20computePointerOffsetERKNS_10ASTContextERKNS0_7PointerE:bb.a
  br label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit

_ZNK5clang9FieldDecl13getFieldIndexEv.exit:       ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, %bb.aw
  %i.li = phi i32 [ %.pre.i80, %bb.aw ], [ %i.lg, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i ]
  %i.lj = lshr i32 %i.li, 4
  %i.lk = add nsw i32 %i.lj, -1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !493
  %i.ln = zext i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !492
  %i.lq = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 noundef %i.lp) #21
  %i.lr = trunc i64 %i.lq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ls = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !911 ; 2 uses
  %i.lt = load i32, ptr %i.g, align 8, !tbaa !33, !noalias !911 ; 2 uses
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !52, !noalias !912
  %i.ly = sub i32 %i.lt, %i.lx                    ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ls, i32 noundef %i.ly, i64 noundef %i.lz) #21
  %i.ma = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %7) #21 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit, %_ZNK5clang6interp7Pointer6expandEv.exit61
  %.pn26.pn = phi i32 [ %.pn26101, %_ZNK5clang6interp7Pointer6expandEv.exit61 ], [ %.pn, %bb.as ], [ %i.lr, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit ]
  %.3 = add i32 %.pn26.pn, %.0111                 ; 2 uses
  %i.mb = load i32, ptr %i.c, align 8, !tbaa !19
  %i.mc = icmp eq i32 %i.mb, 1
  br i1 %i.mc, label %bb.b, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, !llvm.loop !896

_ZNK5clang6interp7Pointer14isArrayElementEv.exit: ; preds = %bb.ax, %bb.e, %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.0111, %bb.d ], [ %.0111, %bb.e ], [ %.3, %bb.ax ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang6interp7Pointer7atIndexEm(ptr dead_on_unwind noalias writable sret(%"class.clang::interp::Pointer") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33
  store i64 %2, ptr %0, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !471
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.i, align 8, !tbaa !494
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !33
  store i64 %2, ptr %0, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !497
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !917 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33, !noalias !917 ; 4 uses
  %i.p = trunc i64 %2 to i32
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !35, !noalias !918 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45, !noalias !918
  %i.t = icmp eq i32 %i.o, %i.s
  br i1 %i.t, label %_ZNK5clang6interp7PtrView7atIndexEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48, !noalias !918
  br label %_ZNK5clang6interp7PtrView7atIndexEj.exit

_ZNK5clang6interp7PtrView7atIndexEj.exit:         ; preds = %bb.d, %bb.e
  %.pn5.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !451, !noalias !918
  %i.y = mul i32 %.pn.i, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !481, !noalias !918
  %.not.i = icmp eq ptr %i.aa, null
  %.0.v.i = select i1 %.not.i, i32 8, i32 16
  %.0.i = add i32 %i.y, %i.o
  %i.ab = add i32 %.0.i, %.0.v.i
  %i.ac = zext i32 %i.ab to i64
  tail call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.m, i32 noundef %i.o, i64 noundef %i.ac) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView7atIndexEj.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind noalias writable sret(%"class.clang::interp::Pointer") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33, !noalias !923 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33, !noalias !923 ; 14 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !36, !noalias !923 ; 16 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !35, !noalias !924 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45, !noalias !924
  %i.l = icmp eq i32 %i.g, %i.k                   ; 2 uses
  br i1 %i.l, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51, !noalias !924 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.d
  %i.p = zext i32 %i.g to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48, !noalias !924 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51, !noalias !924 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 53
  %i.x = load i8, ptr %i.w, align 1, !tbaa !49, !range !50, !noalias !924, !noundef !34
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 53
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49, !range !50, !noalias !924, !noundef !34
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !480, !noalias !924
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.h, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.e

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !480, !noalias !924
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp ugt i64 %i.h, %i.ai
  br i1 %i.aj, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.e:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.ak = zext i32 %i.n to i64                    ; 2 uses
  %i.al = zext i32 %i.g to i64                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, %i.al
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.am = zext i32 %i.u to i64                    ; 2 uses
  %.not.i5.i.i = icmp eq i64 %i.h, %i.p
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.e
  %i.an = phi i64 [ %i.ak, %bb.e ], [ %i.am, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.ao = phi i64 [ %i.al, %bb.e ], [ %i.p, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.i, %bb.e ], [ %i.s, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !481, !noalias !924
  %.not1.i.i.i = icmp eq ptr %i.aq, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.e
  %i.ar = phi i64 [ %i.ao, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.h, %bb.e ], [ %i.h, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.as = phi i64 [ %i.an, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ak, %bb.e ], [ %i.am, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.e ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.at = sub nsw i64 %i.h, %i.ar
  %i.au = add nsw i64 %i.at, %.0.neg.i.i.i
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.as, %i.av
  br i1 %i.aw, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %i.ax = zext i32 %i.g to i64                    ; 2 uses
  %.not.i = icmp eq i64 %i.h, %i.ax
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.l, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48, !noalias !924
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i3.i = phi ptr [ %i.ba, %bb.g ], [ %i.i, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !49, !range !50, !noalias !924, !noundef !34
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !924
  %.not.i.i4.i = icmp eq ptr %i.bf, null
  %i.bg = select i1 %i.bd, i1 %.not.i.i4.i, i1 false
  %i.bh = trunc nuw i64 %i.h to i32
  %spec.select = select i1 %i.bg, i32 %i.g, i32 %i.bh
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %bb.c, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.14.0 = phi i64 [ %i.h, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.h, %bb.c ], [ %i.h, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.h, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.h, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.h, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.h, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.6.0 = phi i32 [ %i.g, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.g, %bb.c ], [ %spec.select, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.g, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.g, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.g, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.g, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.g, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.g, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.g, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  tail call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.e, i32 noundef %.sroa.6.0, i64 noundef %.sroa.14.0) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %5 = alloca %class.anon.979, align 8            ; 4 uses
  %6 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %7 = alloca %class.anon.979, align 8            ; 4 uses
  %8 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %9 = alloca %class.anon.979, align 8            ; 4 uses
  %10 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %11 = alloca %class.anon.979, align 8           ; 4 uses
  %12 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %13 = alloca %class.anon.979, align 8           ; 4 uses
  %14 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %15 = alloca %class.anon.979, align 8           ; 4 uses
  %16 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %17 = alloca %class.anon.979, align 8           ; 4 uses
  %18 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %19 = alloca %class.anon.979, align 8           ; 4 uses
  %20 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %21 = alloca %class.anon.979, align 8           ; 4 uses
  %22 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %23 = alloca %class.anon.979, align 8           ; 4 uses
  %24 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %25 = alloca %class.anon.979, align 8           ; 4 uses
  %26 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %27 = alloca %class.anon.979, align 8           ; 4 uses
  %28 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %29 = alloca %class.anon.979, align 8           ; 4 uses
  %30 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %31 = alloca %class.anon.979, align 8           ; 4 uses
  %32 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %33 = alloca %class.anon.979, align 8           ; 4 uses
  %34 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %35 = alloca %class.anon.979, align 8           ; 4 uses
  %36 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %37 = alloca %class.anon.979, align 8           ; 4 uses
  %38 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %39 = alloca %class.anon.979, align 8           ; 4 uses
  %40 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %41 = alloca %class.anon.979, align 8           ; 4 uses
  %42 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %43 = alloca %class.anon.979, align 8           ; 4 uses
  %44 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %45 = alloca %class.anon.979, align 8           ; 4 uses
  %46 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %47 = alloca %class.anon.979, align 8           ; 4 uses
  %48 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %49 = alloca %class.anon.979, align 8           ; 4 uses
  %50 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %51 = alloca %class.anon.979, align 8           ; 4 uses
  %52 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %53 = alloca %class.anon.979, align 8           ; 4 uses
  %54 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %55 = alloca %class.anon.979, align 8           ; 4 uses
  %56 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %57 = alloca %class.anon.979, align 8           ; 4 uses
  %58 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %59 = alloca %class.anon.979, align 8           ; 4 uses
  %60 = alloca %"class.llvm::function_ref.522", align 8 ; 5 uses
  %61 = alloca %class.anon.979, align 8           ; 4 uses
  %62 = alloca %class.anon, align 1               ; 3 uses
  %63 = alloca %class.anon.412, align 1           ; 3 uses
  %64 = alloca %class.anon.414, align 1           ; 3 uses
  %65 = alloca %class.anon.417, align 1           ; 4 uses
  %66 = alloca %class.anon.419, align 4           ; 4 uses
  %67 = alloca %class.anon.420, align 4           ; 4 uses
  %68 = alloca %class.anon.421, align 4           ; 4 uses
  %69 = alloca %class.anon.422, align 4           ; 4 uses
  %70 = alloca %class.anon.423, align 4           ; 4 uses
  %71 = alloca %class.anon.424, align 4           ; 4 uses
  %72 = alloca %class.anon.425, align 4           ; 4 uses
  %73 = alloca %class.anon.426, align 4           ; 4 uses
  %74 = alloca %class.anon.427, align 4           ; 4 uses
  %75 = alloca %class.anon.428, align 4           ; 4 uses
  %76 = alloca %class.anon.429, align 4           ; 4 uses
  %77 = alloca %class.anon.430, align 4           ; 4 uses
  %78 = alloca %class.anon.431, align 1           ; 3 uses
  %79 = alloca %class.anon.433, align 1           ; 3 uses
  %80 = alloca %class.anon.435, align 1           ; 3 uses
  %81 = alloca %class.anon.437, align 1           ; 3 uses
  %82 = alloca %class.anon.439, align 1           ; 3 uses
  %83 = alloca %class.anon.441, align 1           ; 3 uses
  %84 = alloca %class.anon.443, align 1           ; 3 uses
  %85 = alloca %class.anon.445, align 1           ; 3 uses
  %86 = alloca %class.anon.447, align 1           ; 3 uses
  %87 = alloca %class.anon.449, align 1           ; 3 uses
  %88 = alloca %class.anon.451, align 1           ; 3 uses
  %89 = alloca %class.anon.453, align 1           ; 3 uses
  %90 = alloca %class.anon.455, align 1           ; 3 uses
  %91 = alloca %class.anon.458, align 1           ; 3 uses
  %92 = alloca %class.anon.460, align 1           ; 3 uses
  %93 = alloca %class.anon.462, align 1           ; 3 uses
  %94 = alloca %class.anon.464, align 1           ; 3 uses
  %95 = alloca %class.anon.466, align 1           ; 3 uses
  %96 = alloca %class.anon.468, align 1           ; 3 uses
  %97 = alloca %class.anon.471, align 1           ; 3 uses
  %98 = alloca %class.anon.473, align 1           ; 3 uses
  %99 = alloca %class.anon.475, align 1           ; 3 uses
  %100 = alloca %class.anon.477, align 1          ; 3 uses
  %101 = alloca %class.anon.479, align 1          ; 3 uses
  %102 = alloca %class.anon.481, align 1          ; 3 uses
  %103 = alloca %class.anon.483, align 1          ; 3 uses
  %104 = alloca %class.anon.485, align 1          ; 3 uses
  %105 = alloca %class.anon.487, align 1          ; 3 uses
  %106 = alloca %class.anon.489, align 1          ; 3 uses
  %107 = alloca %class.anon.491, align 1          ; 3 uses
  %108 = alloca %class.anon.493, align 1          ; 3 uses
  %109 = alloca %class.anon.495, align 1          ; 3 uses
  %110 = alloca %class.anon.498, align 1          ; 3 uses
  %111 = alloca %class.anon.500, align 1          ; 3 uses
  %112 = alloca %class.anon.502, align 1          ; 3 uses
  %113 = alloca %class.anon.504, align 1          ; 3 uses
  %114 = alloca %class.anon.507, align 1          ; 3 uses
  %115 = alloca %class.anon.510, align 1          ; 3 uses
  %116 = alloca %class.anon.512, align 1          ; 3 uses
  %117 = alloca %class.anon.514, align 1          ; 3 uses
  %118 = alloca %class.anon.516, align 1          ; 3 uses
  %119 = alloca %class.anon.519, align 4          ; 4 uses
  %120 = alloca %class.anon.520, align 1          ; 3 uses
  %121 = alloca %class.anon.523, align 1          ; 3 uses
  %122 = alloca %class.anon.525, align 1          ; 3 uses
  %123 = alloca %class.anon.527, align 1          ; 3 uses
  %124 = alloca %class.anon.530, align 1          ; 3 uses
  %125 = alloca %class.anon.532, align 1          ; 3 uses
  %126 = alloca %class.anon.534, align 1          ; 3 uses
  %127 = alloca %class.anon.536, align 1          ; 3 uses
  %128 = alloca %class.anon.538, align 1          ; 3 uses
  %129 = alloca %class.anon.540, align 1          ; 3 uses
  %130 = alloca %class.anon.542, align 1          ; 3 uses
  %131 = alloca %class.anon.544, align 1          ; 3 uses
  %132 = alloca %class.anon.546, align 1          ; 3 uses
  %133 = alloca %class.anon.548, align 1          ; 3 uses
  %134 = alloca %class.anon.550, align 1          ; 3 uses
  %135 = alloca %class.anon.552, align 1          ; 3 uses
  %136 = alloca %class.anon.554, align 1          ; 3 uses
  %137 = alloca %class.anon.556, align 1          ; 3 uses
  %138 = alloca %class.anon.558, align 1          ; 3 uses
  %139 = alloca %class.anon.560, align 1          ; 3 uses
  %140 = alloca %class.anon.562, align 1          ; 3 uses
  %141 = alloca %class.anon.564, align 4          ; 4 uses
  %142 = alloca %class.anon.565, align 1          ; 3 uses
  %143 = alloca %class.anon.567, align 1          ; 3 uses
  %144 = alloca %class.anon.569, align 1          ; 3 uses
  %145 = alloca %class.anon.571, align 1          ; 3 uses
  %146 = alloca %class.anon.573, align 1          ; 3 uses
  %147 = alloca %class.anon.575, align 1          ; 3 uses
  %148 = alloca %class.anon.577, align 1          ; 3 uses
  %149 = alloca %class.anon.579, align 1          ; 3 uses
  %150 = alloca %class.anon.581, align 1          ; 3 uses
  %151 = alloca %class.anon.583, align 1          ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5clang6interpL26interp__builtin_overflowopERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEj:bb.a
bb.av:                                            ; preds = %bb.c, %_ZN4llvm5APIntD2Ev.exit92
  %i.gy = load i32, ptr %i.ao, align 8, !tbaa !642
  %i.gz = icmp ugt i32 %i.gy, 64
  br i1 %i.gz, label %bb.aw, label %_ZN4llvm5APIntD2Ev.exit93

bb.aw:                                            ; preds = %bb.av
  %i.ha = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN4llvm5APIntD2Ev.exit93, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.ha) #24
  br label %_ZN4llvm5APIntD2Ev.exit93

_ZN4llvm5APIntD2Ev.exit93:                        ; preds = %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ay

bb.ay:                                            ; preds = %.thread32, %_ZN4llvm5APIntD2Ev.exit93
  %.1 = phi i1 [ %i.ar, %_ZN4llvm5APIntD2Ev.exit93 ], [ false, %.thread32 ]
  %i.hc = load i32, ptr %i.ak, align 8, !tbaa !642
  %i.hd = icmp ugt i32 %i.hc, 64
  br i1 %i.hd, label %bb.az, label %_ZN4llvm5APIntD2Ev.exit94

bb.az:                                            ; preds = %bb.ay
  %i.he = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN4llvm5APIntD2Ev.exit94, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.he) #24
  br label %_ZN4llvm5APIntD2Ev.exit94

_ZN4llvm5APIntD2Ev.exit94:                        ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNK5clang6interp7Pointer7isDummyEv.exit, %_ZN4llvm5APIntD2Ev.exit94
  %.2 = phi i1 [ %.1, %_ZN4llvm5APIntD2Ev.exit94 ], [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit ], [ false, %bb.a ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL23interp__builtin_carryopERNS0_11InterpStateENS0_7CodePtrEPKNS0_11InterpFrameEPKNS_8CallExprEj(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %5 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %7 = alloca %"class.llvm::APSInt", align 8      ; 13 uses
  %8 = alloca %"class.llvm::APSInt", align 8      ; 12 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 13 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 3 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 3 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !621, !nonnull !34, !align !502 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !638, !noalias !1388
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !638, !noalias !1388
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 48) #21, !noalias !1388
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #21
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 48) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !645, !nonnull !34, !align !502
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = load i32, ptr %1, align 8
  %i.m = lshr i32 %i.l, 19
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !583
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !33
  %i.s = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 %.sroa.0.0.copyload.i) #21 ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !645, !nonnull !34, !align !502
  %i.u = load i32, ptr %1, align 8
  %i.v = lshr i32 %i.u, 19
  %i.w = and i32 %i.v, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !583
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ac = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.t, i64 %.sroa.0.0.copyload.i27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 1, ptr %i.ad, align 8, !tbaa !642
  store i64 0, ptr %5, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.ae, align 4, !tbaa !644
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !621, !nonnull !34, !align !502
  %i.ag = call fastcc noundef zeroext i1 @_ZN5clang6interpL11popToAPSIntERNS0_11InterpStackENS0_8PrimTypeERN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, i8 noundef zeroext %i.s, ptr noundef nonnull align 8 dereferenceable(13) %5)
  br i1 %i.ag, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !642
  store i64 0, ptr %6, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.ai, align 4, !tbaa !644
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !621, !nonnull !34, !align !502
  %i.ak = call fastcc noundef zeroext i1 @_ZN5clang6interpL11popToAPSIntERNS0_11InterpStackENS0_8PrimTypeERN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i8 noundef zeroext %i.ac, ptr noundef nonnull align 8 dereferenceable(13) %6)
  br i1 %i.ak, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 1, ptr %i.al, align 8, !tbaa !642
  store i64 0, ptr %7, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i8 0, ptr %i.am, align 4, !tbaa !644
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !621, !nonnull !34, !align !502
  %i.ao = call fastcc noundef zeroext i1 @_ZN5clang6interpL11popToAPSIntERNS0_11InterpStackENS0_8PrimTypeERN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(80) %i.an, i8 noundef zeroext %i.s, ptr noundef nonnull align 8 dereferenceable(13) %7)
  br i1 %i.ao, label %bb.d, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !19
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.e, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33, !noalias !1389 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i8, ptr %i.au, align 8, !tbaa !26
  %i.aw = and i8 %i.av, 10
  %or.cond = icmp eq i8 %i.aw, 0
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i:  ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !33, !noalias !1390 ; 3 uses
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !35 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !45
  %i.bc = icmp eq i32 %i.ay, %i.bb                ; 2 uses
  br i1 %i.bc, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i: ; preds = %bb.f, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.bg, %bb.f ], [ %i.az, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.g, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i:   ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i
  %i.bk = load i64, ptr %4, align 8, !tbaa !36    ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !480
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  br i1 %i.bo, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i
  %.pre.i.i = zext i32 %i.ay to i64               ; 4 uses
  br i1 %i.bc, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i:     ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.bk, %.pre.i.i
  br i1 %.not.i.i6.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !51 ; 2 uses
  %.not.i.i612.i.i = icmp eq i64 %i.bk, %.pre.i.i
  br i1 %.not.i.i612.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i
  %i.bw = phi i32 [ %i.bq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.bv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.az, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.bt, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !481
  %.not1.i.i.i.i = icmp eq ptr %i.by, null
  %..i.i.i.i = select i1 %.not1.i.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i
  %i.bz = phi i32 [ %i.bw, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i ], [ %i.bq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.bv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i.i = phi i64 [ %..i.i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %i.ca = sub nsw i64 %i.bk, %.pre.i.i
  %i.cb = add nsw i64 %i.ca, %.0.neg.i.i.i.i
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = icmp eq i32 %i.bz, %i.cc
  %cond.fr.i = freeze i1 %i.cd
  br i1 %cond.fr.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 1, ptr %i.ce, align 8, !tbaa !642
  store i64 0, ptr %8, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.cf, align 4, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 1, ptr %i.cg, align 8, !tbaa !642
  store i64 0, ptr %9, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i8 0, ptr %i.ch, align 4, !tbaa !644
  %i.ci = load i32, ptr %i.al, align 8, !tbaa !642 ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 65
  br i1 %i.cj, label %_ZN4llvm6APSIntaSERKS0_.exit.thread, label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit.thread:              ; preds = %bb.g
  %i.ck = load i64, ptr %7, align 8, !tbaa !33
  store i64 %i.ck, ptr %9, align 8, !tbaa !33
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !642
  %i.cl = load i8, ptr %i.am, align 4, !tbaa !644, !range !50, !noundef !34 ; 2 uses
  store i8 %i.cl, ptr %i.ch, align 4, !tbaa !644
  br label %bb.h

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.g
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %7) #21
  %.pre = load i32, ptr %i.ce, align 8, !tbaa !642
  %i.cm = icmp ult i32 %.pre, 65
  %i.cn = load i8, ptr %i.am, align 4, !tbaa !644, !range !50, !noundef !34 ; 2 uses
  store i8 %i.cn, ptr %i.ch, align 4, !tbaa !644
  br i1 %i.cm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.thread, %_ZN4llvm6APSIntaSERKS0_.exit
  %i.co = phi i8 [ %i.cl, %_ZN4llvm6APSIntaSERKS0_.exit.thread ], [ %i.cn, %_ZN4llvm6APSIntaSERKS0_.exit ]
  %i.cp = load i32, ptr %i.al, align 8, !tbaa !642 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 65
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cr = load i64, ptr %7, align 8, !tbaa !33
  store i64 %i.cr, ptr %8, align 8, !tbaa !33
  store i32 %i.cp, ptr %i.ce, align 8, !tbaa !642
  br label %_ZN4llvm6APSIntaSERKS0_.exit28

bb.j:                                             ; preds = %bb.h, %_ZN4llvm6APSIntaSERKS0_.exit
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %8, ptr noundef nonnull align 8 dereferenceable(13) %7) #21
  %.pre11 = load i8, ptr %i.am, align 4, !tbaa !644, !range !50
  br label %_ZN4llvm6APSIntaSERKS0_.exit28

_ZN4llvm6APSIntaSERKS0_.exit28:                   ; preds = %bb.i, %bb.j
  %i.cs = phi i8 [ %i.co, %bb.i ], [ %.pre11, %bb.j ]
  store i8 %i.cs, ptr %i.cf, align 4, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i8 0, ptr %i.b, align 1, !tbaa !637
  %.off = add i32 %2, -128
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZNK4llvm5APInt7uadd_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #21
  call void @_ZNK4llvm5APInt7uadd_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #21
  %i.ct = load i32, ptr %i.cg, align 8, !tbaa !642
  %i.cu = icmp ult i32 %i.ct, 65
  br i1 %i.cu, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4llvm5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.m, %bb.l, %bb.k
  %i.cx = load i64, ptr %10, align 8
  store i64 %i.cx, ptr %9, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !642
  store i32 %i.cz, ptr %i.cg, align 8, !tbaa !642
  store i32 0, ptr %i.cy, align 8, !tbaa !642
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !642
  %i.dc = icmp ugt i32 %i.db, 64
  br i1 %i.dc, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit29

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dd = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #24
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.u

bb.p:                                             ; preds = %_ZN4llvm6APSIntaSERKS0_.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @_ZNK4llvm5APInt7usub_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %13, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #21
  call void @_ZNK4llvm5APInt7usub_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %12, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #21
  %i.df = load i32, ptr %i.cg, align 8, !tbaa !642
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %_ZN4llvm5APIntD2Ev.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4llvm5APIntD2Ev.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #24
  br label %_ZN4llvm5APIntD2Ev.exit31

_ZN4llvm5APIntD2Ev.exit31:                        ; preds = %bb.r, %bb.q, %bb.p
  %i.dj = load i64, ptr %12, align 8
  store i64 %i.dj, ptr %9, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !642
  store i32 %i.dl, ptr %i.cg, align 8, !tbaa !642
  store i32 0, ptr %i.dk, align 8, !tbaa !642
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !642
  %i.do = icmp ugt i32 %i.dn, 64
  br i1 %i.do, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit32

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit31
  %i.dp = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN4llvm5APIntD2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #24
  br label %_ZN4llvm5APIntD2Ev.exit32

_ZN4llvm5APIntD2Ev.exit32:                        ; preds = %_ZN4llvm5APIntD2Ev.exit31, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit32, %_ZN4llvm5APIntD2Ev.exit29
  %i.dr = load i8, ptr %i.a, align 1, !tbaa !637, !range !50, !noundef !34
  %i.ds = load i8, ptr %i.b, align 1, !tbaa !637, !range !50, !noundef !34
  %i.dt = or i8 %i.ds, %i.dr
  %i.du = zext nneg i8 %i.dt to i64               ; 2 uses
  %i.dv = load i32, ptr %i.ce, align 8, !tbaa !642 ; 3 uses
  %i.dw = icmp ult i32 %i.dv, 65
  br i1 %i.dw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.v

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %bb.u
  %.not = icmp eq i32 %i.dv, 0
  %i.dx = select i1 %.not, i64 0, i64 %i.du
  store i64 %i.dx, ptr %8, align 8, !tbaa !33
  br label %_ZN4llvm6APSIntaSEm.exit

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %8, align 8, !tbaa !33
  store i64 %i.du, ptr %i.dy, align 8, !tbaa !492
  %i.dz = load ptr, ptr %8, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = zext i32 %i.dv to i64
  %i.ec = add nuw nsw i64 %i.eb, 63
  %sh.diff.i.i = lshr i64 %i.ec, 3
  %i.ed = and i64 %sh.diff.i.i, 1073741816
  %i.ee = add nsw i64 %i.ed, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ea, i8 0, i64 %i.ee, i1 false)
  br label %_ZN4llvm6APSIntaSEm.exit

_ZN4llvm6APSIntaSEm.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.v
  %i.ef = load i32, ptr %1, align 8
  %i.eg = lshr i32 %i.ef, 19
  %i.eh = and i32 %i.eg, 1
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !583
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.em, align 8, !tbaa !33
  %i.en = and i64 %.sroa.0.0.copyload.i33, -16
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !32
  %i.eq = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ep) #21
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !645, !nonnull !34, !align !502
end_hunk_2
begin_hunk_3_@_ZN5clang6interpL22interp__builtin_memchrERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEj:bb.a
  %i.dk = phi ptr [ %i.dj, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i142 ], [ %i.dg, %bb.y ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dk, align 8, !tbaa !620
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  store i8 2, ptr %i.do, align 1, !tbaa !33
  %i.dp = load ptr, ptr %i.df, align 8, !tbaa !549 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i8, ptr %i.dp, align 8, !tbaa !620 ; 2 uses
  %i.ds = add i8 %i.dr, 1
  store i8 %i.ds, ptr %i.dp, align 8, !tbaa !620
  %i.dt = zext i8 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  store i64 0, ptr %i.du, align 8, !tbaa !492
  br label %_ZN5clang18OptionalDiagnosticlsINS_8QualTypeEEERS0_RKT_.exit

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !33, !noalias !2622 ; 2 uses
  %i.dx = load ptr, ptr %i.br, align 8, !tbaa !35 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !45
  %i.ea = icmp eq i32 %i.dw, %i.dz
  br i1 %i.ea, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.eb = zext i32 %i.dw to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %bb.z
  %.0.i143 = phi ptr [ %i.ee, %bb.z ], [ %i.dx, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i143, i64 53
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !49, !range !50, !noundef !34
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !33, !noalias !34 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !45
  %i.em = icmp eq i32 %i.ej, %i.el                ; 2 uses
  br i1 %i.eh, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i145, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i151

_ZNK5clang6interp7Pointer6isRootEv.exit.i145:     ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  br i1 %i.em, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit149, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i145
  %i.en = zext i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit149

_ZNK5clang6interp7Pointer12getFieldDescEv.exit149: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i145, %bb.aa
  %.0.i146 = phi ptr [ %i.eq, %bb.aa ], [ %i.dx, %_ZNK5clang6interp7Pointer6isRootEv.exit.i145 ]
  %i.er = call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i146) #21
  br label %bb.ac

_ZNK5clang6interp7Pointer6isRootEv.exit.i151:     ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  br i1 %i.em, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit155, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i151
  %i.es = zext i32 %i.ej to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit155

_ZNK5clang6interp7Pointer12getFieldDescEv.exit155: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i151, %bb.ab
  %.0.i152 = phi ptr [ %i.ev, %bb.ab ], [ %i.dx, %_ZNK5clang6interp7Pointer6isRootEv.exit.i151 ]
  %i.ew = call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i152) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit155, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit149
  %storemerge = phi i64 [ %i.ew, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit155 ], [ %i.er, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit149 ] ; 2 uses
  store i64 %storemerge, ptr %11, align 8
  %i.ex = add i32 %3, -1027
  %i.ey = icmp ult i32 %i.ex, 2                   ; 2 uses
  br i1 %i.ey, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ez = call fastcc noundef zeroext i1 @_ZN5clang6interpL22isOneByteCharacterTypeENS_8QualTypeE(i64 %storemerge)
  br i1 %i.ez, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !545
  %i.fc = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.fb, ptr %1) #21
  %i.fd = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i64 %i.fc, i32 noundef 2444, i32 noundef 0) #21 ; 3 uses
  store ptr %i.fd, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !501, !nonnull !34, !align !502
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 17784
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !503, !nonnull !34, !align !502
  call void @_ZNK5clang7Builtin7Context13getQuotedNameB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(176) %i.fh, i32 noundef %3) #21
  %.not.i156 = icmp eq ptr %i.fd, null
  br i1 %.not.i156, label %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr %13, align 8, !tbaa !655
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !654
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.fd, ptr %i.fi, i64 %i.fk)
  br label %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit

_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ae, %bb.af
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang18OptionalDiagnosticlsINS_8QualTypeEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11) ; 0 uses
  %i.fm = load ptr, ptr %13, align 8, !tbaa !655  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !33
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.fr = load i32, ptr %i.bo, align 8, !tbaa !19
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ah, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load ptr, ptr %i.bq, align 8, !tbaa !33, !noalias !2623 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer7isDummyEv.exit.i

_ZNK5clang6interp7Pointer7isDummyEv.exit.i:       ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !26
  %i.fw = and i8 %i.fv, 10
  %or.cond = icmp eq i8 %i.fw, 0
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i:  ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !33, !noalias !2624 ; 3 uses
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !35 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !45
  %i.gc = icmp eq i32 %i.fy, %i.gb                ; 2 uses
  br i1 %i.gc, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i
  %i.gd = zext i32 %i.fy to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i: ; preds = %bb.ai, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.gg, %bb.ai ], [ %i.fz, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i:   ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i
  %i.gk = load i64, ptr %10, align 8, !tbaa !36   ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !480
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp ugt i64 %i.gk, %i.gn
  br i1 %i.go, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i.i
  %.pre.i.i = zext i32 %i.fy to i64               ; 4 uses
  br i1 %i.gc, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i:     ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !51 ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.gk, %.pre.i.i
  br i1 %.not.i.i6.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.pre.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !48 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !51 ; 2 uses
  %.not.i.i612.i.i = icmp eq i64 %i.gk, %.pre.i.i
  br i1 %.not.i.i612.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i
  %i.gw = phi i32 [ %i.gq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.gv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.fz, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.gt, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !481
  %.not1.i.i.i.i = icmp eq ptr %i.gy, null
  %..i.i.i.i = select i1 %.not1.i.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i
  %i.gz = phi i32 [ %i.gw, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i ], [ %i.gq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ %i.gv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i.i = phi i64 [ %..i.i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i.i ]
  %i.ha = sub nsw i64 %i.gk, %.pre.i.i
  %i.hb = add nsw i64 %i.ha, %.0.neg.i.i.i.i
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = icmp eq i32 %i.gz, %i.hc
  %cond.fr.i = freeze i1 %i.hd
  br i1 %cond.fr.i, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread, label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit

_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.i, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i.i
  %i.he = add i32 %3, -1425
  %or.cond8 = icmp ult i32 %i.he, 2
  br i1 %or.cond8, label %bb.aj, label %.critedge131

bb.aj:                                            ; preds = %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !501, !nonnull !34, !align !502
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 18912
  %.sroa.0.0.copyload.i = load i64, ptr %i.hh, align 8, !tbaa !33
  %i.hi = and i64 %.sroa.0.0.copyload.i, -16
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load ptr, ptr %i.hj, align 16, !tbaa !32
  %i.hl = call noundef zeroext i1 @_ZNK5clang4Type19isSignedIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hk) #21
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !501, !nonnull !34, !align !502 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 18912
  %.sroa.0.0.copyload.i.i159 = load i64, ptr %i.hn, align 8, !tbaa !33
  %i.ho = and i64 %.sroa.0.0.copyload.i.i159, -16
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = load ptr, ptr %i.hp, align 16, !tbaa !32
  %i.hr = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.hm, ptr noundef %i.hq) #21
  %i.hs = extractvalue { i64, i64 } %i.hr, 0
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.hl, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef %i.ht) #21, !noalias !2625
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !642, !noalias !2625 ; 3 uses
  %i.hw = load i64, ptr %6, align 8, !noalias !2625 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hx = icmp ult i32 %i.hv, 65
  br i1 %i.hx, label %_ZNK4llvm5APInt12getSExtValueEv.exit, label %bb.al

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.ak
  %i.hy = icmp eq i32 %i.hv, 0
  %i.hz = sub nuw nsw i32 64, %i.hv
  %i.ia = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ib = shl i64 %i.hw, %i.ia
  %i.ic = ashr exact i64 %i.ib, %i.ia
  %.0.i.i = select i1 %i.hy, i64 0, i64 %i.ic
  br label %_ZN4llvm5APIntD2Ev.exit161

bb.al:                                            ; preds = %bb.ak
  %i.id = inttoptr i64 %i.hw to ptr               ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !492 ; 2 uses
  %i.if = icmp eq i64 %i.hw, 0
  br i1 %i.if, label %_ZN4llvm5APIntD2Ev.exit161, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.id) #24
  br label %_ZN4llvm5APIntD2Ev.exit161

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef %i.ht) #21, !noalias !2626
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !642, !noalias !2626
  %i.ii = load i64, ptr %5, align 8, !noalias !2626 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ij = icmp ult i32 %i.ih, 65
  br i1 %i.ij, label %_ZN4llvm5APIntD2Ev.exit161, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = inttoptr i64 %i.ii to ptr               ; 2 uses
  %.0.i163.else.val = load i64, ptr %i.ik, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.ik) #24
  br label %_ZN4llvm5APIntD2Ev.exit161

_ZN4llvm5APIntD2Ev.exit161:                       ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %_ZNK4llvm5APInt12getSExtValueEv.exit
  %.0124 = phi i64 [ %i.ie, %bb.am ], [ %.0.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ %i.ie, %bb.al ], [ %.0.i163.else.val, %bb.ao ], [ %i.ii, %bb.an ]
  %i.il = call noundef zeroext i1 @_ZNK4llvm6APSIntneEl(ptr noundef nonnull align 8 dereferenceable(13) %9, i64 noundef %.0124)
  br i1 %i.il, label %bb.ap, label %.critedge131

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit161
  %i.im = load ptr, ptr %i.au, align 8, !tbaa !621, !nonnull !34, !align !502
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.im)
  br label %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit.thread

.critedge131:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit161, %_ZN5clang6interpL10isReadableERKNS0_7PointerE.exit
  %i.in = icmp eq i32 %3, 1676                    ; 2 uses
  switch i32 %3, label %bb.ar [
    i32 1677, label %bb.aq
    i32 1676, label %bb.aq
    i32 1668, label %bb.aq
    i32 1667, label %bb.aq
  ]

bb.aq:                                            ; preds = %.critedge131, %.critedge131, %.critedge131, %.critedge131
  %i.io = load i32, ptr %i.al, align 8, !tbaa !642
  %i.ip = icmp ult i32 %i.io, 65
  %i.iq = load ptr, ptr %9, align 8
  %spec.select.i165 = select i1 %i.ip, ptr %9, ptr %i.iq
  %.0.i166 = load i64, ptr %spec.select.i165, align 8, !tbaa !33
  br label %_ZN4llvm5APIntD2Ev.exit170

bb.ar:                                            ; preds = %.critedge131
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !501, !nonnull !34, !align !502 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 18912
  %.sroa.0.0.copyload.i.i167 = load i64, ptr %i.it, align 8, !tbaa !33
  %i.iu = and i64 %.sroa.0.0.copyload.i.i167, -16
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = load ptr, ptr %i.iv, align 16, !tbaa !32
  %i.ix = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.is, ptr noundef %i.iw) #21
  %i.iy = extractvalue { i64, i64 } %i.ix, 0
  %i.iz = trunc i64 %i.iy to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(13) %9, i32 noundef %i.iz) #21, !noalias !2627
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !642, !noalias !2627
  %i.jc = load i64, ptr %4, align 8, !noalias !2627 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.jd = icmp ult i32 %i.jb, 65
  br i1 %i.jd, label %_ZN4llvm5APIntD2Ev.exit170, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.je = inttoptr i64 %i.jc to ptr               ; 2 uses
  %.0.i169.else.val = load i64, ptr %i.je, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.je) #24
  br label %_ZN4llvm5APIntD2Ev.exit170

_ZN4llvm5APIntD2Ev.exit170:                       ; preds = %bb.as, %bb.ar, %bb.aq
  %.0128 = phi i64 [ %.0.i166, %bb.aq ], [ %.0.i169.else.val, %bb.as ], [ %i.jc, %bb.ar ]
  switch i32 %3, label %bb.at [
    i32 1677, label %.thread277
    i32 1426, label %.thread277
    i32 1425, label %.thread277
  ]

bb.at:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit170
  br i1 %i.ey, label %bb.au, label %.thread277

.thread277:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit170, %_ZN4llvm5APIntD2Ev.exit170, %_ZN4llvm5APIntD2Ev.exit170, %bb.at
  %i.jf = phi i1 [ %i.in, %bb.at ], [ true, %_ZN4llvm5APIntD2Ev.exit170 ], [ true, %_ZN4llvm5APIntD2Ev.exit170 ], [ true, %_ZN4llvm5APIntD2Ev.exit170 ]
  %i.jg = load ptr, ptr %i.av, align 8, !tbaa !645, !nonnull !34, !align !502
  %i.jh = call fastcc i64 @_ZN5clang6interpL11getElemTypeERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(48) %10)
  %i.ji = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.jg, i64 %i.jh) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread277
  %i.jj = phi i1 [ %i.jf, %.thread277 ], [ %i.in, %bb.at ]
  %trunc = phi i8 [ %i.ji, %.thread277 ], [ 0, %bb.at ]
  %i.jk = call noundef i64 @_ZNK5clang6interp7Pointer8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
  %i.jl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 11 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.cd, %bb.au
  %.0125 = phi i64 [ 0, %bb.au ], [ %i.sm, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.jp = add i64 %.0125, %i.jk                   ; 4 uses
  %.not = icmp eq i64 %i.jp, 0
  br i1 %.not, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %i.jq = load i32, ptr %i.bo, align 8, !tbaa !19, !noalias !2628
  switch i32 %i.jq, label %bb.az [
    i32 0, label %bb.ax
    i32 2, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.jr = load i64, ptr %i.fx, align 8, !tbaa !33, !noalias !2628
  %i.js = load ptr, ptr %i.bq, align 8, !tbaa !33, !noalias !2628
  store i64 %i.jp, ptr %14, align 8, !tbaa !36, !alias.scope !2628
  store i32 0, ptr %i.jl, align 8, !tbaa !19, !alias.scope !2628
  store ptr %i.js, ptr %i.jm, align 8, !tbaa !471, !alias.scope !2628
  store i64 %i.jr, ptr %i.jn, align 8, !tbaa !494, !alias.scope !2628
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

bb.ay:                                            ; preds = %bb.aw
  %i.jt = load ptr, ptr %i.bq, align 8, !tbaa !33, !noalias !2628
  store i64 %i.jp, ptr %14, align 8, !tbaa !36, !alias.scope !2628
  store i32 2, ptr %i.jl, align 8, !tbaa !19, !alias.scope !2628
  store ptr %i.jt, ptr %i.jm, align 8, !tbaa !497, !alias.scope !2628
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

bb.az:                                            ; preds = %bb.aw
  %i.ju = load ptr, ptr %i.bq, align 8, !tbaa !33, !noalias !2629 ; 3 uses
  %i.jv = load i32, ptr %i.fx, align 8, !tbaa !33, !noalias !2629 ; 4 uses
  %i.jw = trunc i64 %i.jp to i32
end_hunk_3
begin_hunk_4_@_ZN5clang6interpL27interp__builtin_object_sizeERNS0_11InterpStateENS0_7CodePtrEPKNS0_11InterpFrameEPKNS_8CallExprE:bb.a
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !583
  %i.z = call noundef zeroext i1 @_ZNK5clang4Expr14HasSideEffectsERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(23904) %i.c, i1 noundef zeroext true) #21
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !492 ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ult i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ad = select i1 %i.ab, i64 4294967295, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 32, ptr %i.ae, align 8, !tbaa !642
  store i64 %i.ad, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.af, align 4, !tbaa !644
  call fastcc void @_ZN5clang6interpL11pushIntegerERNS0_11InterpStateERKN4llvm6APSIntENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(13) %3, i64 %.sroa.0.0.copyload.i)
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !642
  %i.ah = icmp ugt i32 %i.ag, 64
  br i1 %i.ah, label %bb.d, label %_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ak = trunc i64 %i.aa to i32
  %i.al = call i32 @_ZN5clang6interp25evaluateBuiltinObjectSizeERKNS_10ASTContextEjRNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(23904) %i.c, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %4) ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.an, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 32, ptr %i.ap, align 8, !tbaa !642
  store i64 %i.ao, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.aq, align 4, !tbaa !644
  call fastcc void @_ZN5clang6interpL11pushIntegerERNS0_11InterpStateERKN4llvm6APSIntENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(13) %2, i64 %.sroa.0.0.copyload.i15)
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !642
  %i.as = icmp ugt i32 %i.ar, 64
  br i1 %i.as, label %bb.h, label %_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #24
  br label %_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit, %bb.f, %_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit
  %.1 = phi i1 [ true, %_ZN5clang6interpL11pushIntegerIiEEvRNS0_11InterpStateET_NS_8QualTypeE.exit ], [ false, %bb.f ], [ true, %_ZN5clang6interpL11pushIntegerIjEEvRNS0_11InterpStateET_NS_8QualTypeE.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.2 = phi i1 [ %.1, %bb.j ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %4 = alloca %"struct.clang::interp::PtrView", align 8 ; 7 uses
  %5 = alloca %"class.clang::interp::CodePtr", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 19 uses
  store ptr %1, ptr %5, align 8
  %i.a = tail call noundef zeroext i1 @_ZNK5clang6interp11InterpState17inConstantContextEv(ptr noundef nonnull align 8 dereferenceable(456) %0) #21
  br i1 %i.a, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !621, !nonnull !34, !align !502 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !638, !noalias !2655
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !638, !noalias !2655
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 48) #21, !noalias !2655
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.g) #21
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 48) #21
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  switch i32 %i.i, label %bb.c [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split39
    i32 3, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  ]

.split:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq i64 %i.k, 0
  %i.m = load i64, ptr %6, align 8
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %bb.d, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

.split39:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

bb.c:                                             ; preds = %bb.b
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

bb.d:                                             ; preds = %.split39, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call fastcc void @"_ZZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEENK3$_0clEi"(ptr nonnull %0, ptr nonnull %5, i32 noundef 0)
  br label %bb.n

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33, !noalias !2656 ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !35   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  %i.z = icmp eq i32 %i.v, %i.y                   ; 2 uses
  br i1 %i.z, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aa = zext i32 %i.v to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.w, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ah = load i64, ptr %6, align 8, !tbaa !36    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !480
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread41, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i = zext i32 %i.v to i64                  ; 4 uses
  br i1 %i.z, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.ah, %.pre.i
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !51 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %i.ah, %.pre.i
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.at = phi i32 [ %i.an, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.as, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i = phi ptr [ %i.w, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !481
  %.not1.i.i.i = icmp eq ptr %i.av, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.aw = phi i32 [ %i.at, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.an, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.as, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ax = sub nsw i64 %i.ah, %.pre.i
  %i.ay = add nsw i64 %i.ax, %.0.neg.i.i.i
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp eq i32 %i.aw, %i.az
  br i1 %i.ba, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread41, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread41: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  call fastcc void @"_ZZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEENK3$_0clEi"(ptr nonnull %0, ptr nonnull %5, i32 noundef 1)
  br label %bb.n

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread: ; preds = %bb.b, %.split, %.split39, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.bb = call noundef zeroext i8 @_ZNK5clang6interp7Pointer11getLifetimeEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.bc = icmp ne i8 %i.bb, 3
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !19
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.f, label %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33, !noalias !2657 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !33, !noalias !2657 ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45
  %i.bm = icmp eq i32 %i.bi, %i.bl
  br i1 %i.bm, label %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread, label %_ZNK5clang6interp7Pointer8isActiveEv.exit

_ZNK5clang6interp7Pointer8isActiveEv.exit:        ; preds = %bb.f
  %i.bn = zext i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = and i16 %i.bq, 16
  %.not46 = icmp eq i16 %i.br, 0
  br i1 %.not46, label %bb.i, label %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread

_ZNK5clang6interp7Pointer8isActiveEv.exit.thread: ; preds = %bb.f, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, %_ZNK5clang6interp7Pointer8isActiveEv.exit
  %i.bs = call noundef zeroext i1 @_ZN5clang6interp9CheckLiveERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #21
  br i1 %i.bs, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !19
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit, label %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit.thread

_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33, !noalias !2658
  store ptr %i.bw, ptr %4, align 8, !tbaa !474, !alias.scope !2658
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !33, !noalias !2658
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !475, !alias.scope !2658
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load i64, ptr %6, align 8, !tbaa !36, !noalias !2658
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !476, !alias.scope !2658
  %i.cc = call noundef zeroext i1 @_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %4, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.cc, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit.thread, %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = call noundef zeroext i1 @_ZN5clang6interp10CheckDummyERNS0_11InterpStateENS0_7CodePtrEPKNS0_5BlockENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef %i.ce, i32 noundef 0) #21
  br i1 %i.cf, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cg = zext i1 %i.bc to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNK5clang6interp7Pointer8isActiveEv.exit
  %i.ch = phi ptr [ %.pre, %._crit_edge ], [ %i.bg, %_ZNK5clang6interp7Pointer8isActiveEv.exit ] ; 2 uses
  %.024 = phi i64 [ %i.cg, %._crit_edge ], [ 0, %_ZNK5clang6interp7Pointer8isActiveEv.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !553 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !479 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx.i = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i
  %.not15.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not15.not.i, label %.loopexit, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw i8, ptr %.01016.i, i64 24 ; 2 uses
  %.not.not.i = icmp eq ptr %i.co, %i.cn
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.01016.i = phi ptr [ %i.co, %bb.j ], [ %i.cj, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.01016.i, align 8, !tbaa !646
  %.not13.i = icmp eq ptr %.sroa.0.0.copyload.i, %i.ch
  br i1 %.not13.i, label %_ZNK5clang6interp11InterpState17initializingBlockEPKNS0_5BlockE.exit, label %bb.j

_ZNK5clang6interp11InterpState17initializingBlockEPKNS0_5BlockE.exit: ; preds = %.lr.ph.i
  call fastcc void @"_ZZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEENK3$_0clEi"(ptr nonnull %0, ptr nonnull %5, i32 noundef 2)
  br label %bb.n

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2659 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %.critedge, label %_ZNK5clang6interp7Pointer11getDeclDescEv.exit

_ZNK5clang6interp7Pointer11getDeclDescEv.exit:    ; preds = %.loopexit
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !35
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cr, align 8 ; 2 uses
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i.i, -3 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.cu, 0
  %.not.i.i = or i1 %i.ct, %.not.i1.i
  br i1 %.not.i.i, label %.critedge, label %_ZNK5clang6interp10Descriptor9asVarDeclEv.exit

_ZNK5clang6interp10Descriptor9asVarDeclEv.exit:   ; preds = %_ZNK5clang6interp7Pointer11getDeclDescEv.exit
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 127
  %i.cz = add nsw i32 %i.cy, -41
  %i.da = icmp ult i32 %i.cz, 7
  %spec.select.i.i.i = select i1 %i.da, ptr %i.cv, ptr null
  %i.db = icmp eq ptr %spec.select.i.i.i, %i.cq
  br i1 %i.db, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK5clang6interp10Descriptor9asVarDeclEv.exit
  call fastcc void @"_ZZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEENK3$_0clEi"(ptr nonnull %0, ptr nonnull %5, i32 noundef 2)
  br label %bb.n

.critedge:                                        ; preds = %_ZNK5clang6interp7Pointer11getDeclDescEv.exit, %_ZNK5clang6interp10Descriptor9asVarDeclEv.exit, %.loopexit
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.dc, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 8, ptr %i.dd, align 8, !tbaa !642
  store i64 %.024, ptr %3, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.de, align 4, !tbaa !644
  call fastcc void @_ZN5clang6interpL11pushIntegerERNS0_11InterpStateERKN4llvm6APSIntENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(13) %3, i64 %.sroa.0.0.copyload.i37)
  %i.df = load i32, ptr %i.dd, align 8, !tbaa !642
  %i.dg = icmp ugt i32 %i.df, 64
  br i1 %i.dg, label %bb.l, label %_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

bb.l:                                             ; preds = %.critedge
  %i.dh = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #24
  br label %_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit

_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit: ; preds = %.critedge, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp11InterpState17initializingBlockEPKNS0_5BlockE.exit, %bb.k, %_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit, %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread, %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit, %bb.h, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread41, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ false, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread41 ], [ false, %_ZNK5clang6interp11InterpState17initializingBlockEPKNS0_5BlockE.exit ], [ false, %bb.k ], [ true, %_ZN5clang6interpL11pushIntegerIbEEvRNS0_11InterpStateET_NS_8QualTypeE.exit ], [ false, %_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE.exit ], [ false, %_ZNK5clang6interp7Pointer8isActiveEv.exit.thread ], [ false, %bb.h ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.2 = phi i1 [ %.1, %bb.n ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL35interp__builtin_ia32_extract_vectorERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !642
  store i64 0, ptr %2, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !644
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !583
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !621
end_hunk_4
begin_hunk_5_@_ZN5clang6interpL13copyCompositeERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewES4_b:bb.a
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.lr, ptr noundef nonnull align 8 dereferenceable(21) %i.ls, i64 21, i1 false)
  br label %bb.bf

bb.az:                                            ; preds = %_ZNK5clang6interp7PtrView7atIndexEj.exit
  %i.lt = load ptr, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !45
  %i.lw = icmp eq i32 %i.b, %i.lv
  br i1 %i.lw, label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lx = load ptr, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit: ; preds = %bb.az, %bb.ba
  %.0.i.i115 = phi ptr [ %i.lx, %bb.ba ], [ %i.lt, %bb.az ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i115, i64 16
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !451
  %i.ma = mul i32 %i.lz, %.053211
  %i.mb = add i32 %i.bg, %i.ma
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.mc ; 5 uses
  br i1 %i.bn, label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit
  %i.me = load ptr, ptr %i.ba, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit

_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit: ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, %bb.bb
  %.0.i.i.i.i117 = phi ptr [ %i.me, %bb.bb ], [ %i.bk, %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i117, i64 53
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !49, !range !50, !noundef !34
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = icmp eq i32 %i.bs, %i.m
  %i.mj = select i1 %i.mh, i1 %i.mi, i1 false
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bt
  %.0.i118 = select i1 %i.mj, ptr %i.bi, ptr %i.mk ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i118, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !642
  %i.mn = icmp ult i32 %i.mm, 65
  br i1 %i.mn, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !642
  %i.mq = icmp ult i32 %i.mp, 65
  br i1 %i.mq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mr = load i64, ptr %i.md, align 8, !tbaa !33
  store i64 %i.mr, ptr %.0.i118, align 8, !tbaa !33
  %i.ms = load i32, ptr %i.mo, align 8, !tbaa !642
  store i32 %i.ms, ptr %i.ml, align 8, !tbaa !642
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.be:                                            ; preds = %bb.bc, %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i118, ptr noundef nonnull align 8 dereferenceable(24) %i.md) #21
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.bd, %bb.be
  %i.mt = getelementptr inbounds nuw i8, ptr %i.md, i64 12
  %i.mu = load i8, ptr %i.mt, align 4, !tbaa !644, !range !50, !noundef !34
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i118, i64 12
  store i8 %i.mu, ptr %i.mv, align 4, !tbaa !644
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i118, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !33
  store i32 %i.my, ptr %i.mw, align 8, !tbaa !33
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5clang6interp10FixedPointaSERKS1_.exit, %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_7BooleanEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8FloatingEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb1EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit, %_ZNK5clang6interp7PtrView7atIndexEj.exit
  call void @_ZNK5clang6interp7PtrView17initializeElementEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.053211) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.mz = add nuw i32 %.053211, 1                 ; 2 uses
  %.not56 = icmp eq i32 %i.mz, %i.ax
  br i1 %.not56, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.h, !llvm.loop !8150

bb.bg:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit58
  %not. = xor i1 %i.y, true
  %i.na = select i1 %not., i1 true, i1 %.not.i
  br i1 %i.na, label %bb.bu, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !49, !range !50, !noundef !34
  %i.nd = trunc nuw i8 %i.nc to i1
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = icmp ne ptr %i.nf, null
  %i.nh = select i1 %i.nd, i1 %i.ng, i1 false
  br i1 %i.nh, label %bb.bi, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ni = getelementptr inbounds nuw i8, ptr %.0.i57, i64 20
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !51 ; 3 uses
  %i.nk = icmp eq i32 %i.nj, -1
  br i1 %i.nk, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit119

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit119: ; preds = %bb.bi
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i57, i64 16
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !451 ; 2 uses
  %i.nn = udiv i32 %i.nj, %i.nm
  %.not207 = icmp ugt i32 %i.nm, %i.nj
  br i1 %.not207, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit119
  %i.no = zext i32 %i.b to i64                    ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32 ; 3 uses
  %i.nr = zext i32 %i.m to i64                    ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32 ; 3 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !646
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.16199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.n, ptr %7, align 8, !tbaa !646
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit157, %.lr.ph
  %.052208 = phi i32 [ 0, %.lr.ph ], [ %i.rj, %_ZNK5clang6interp7PtrView6narrowEv.exit157 ] ; 3 uses
  %i.nu = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !8161 ; 8 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !45, !noalias !8161
  %i.nx = icmp eq i32 %i.b, %i.nw                 ; 3 uses
  br i1 %i.nx, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ny = load ptr, ptr %i.nq, align 8, !tbaa !48, !noalias !8161
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn5.i120 = phi ptr [ %i.ny, %bb.bk ], [ %i.nu, %bb.bj ] ; 2 uses
  %.pn.in.i121 = getelementptr inbounds nuw i8, ptr %.pn5.i120, i64 16
  %.pn.i122 = load i32, ptr %.pn.in.i121, align 8, !tbaa !451, !noalias !8161
  %i.nz = mul i32 %.pn.i122, %.052208
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn5.i120, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !481, !noalias !8161
  %.not.i123 = icmp eq ptr %i.ob, null
  %.0.v.i124 = select i1 %.not.i123, i32 8, i32 16
  %.0.i125 = add i32 %i.nz, %i.b
  %i.oc = add i32 %.0.i125, %.0.v.i124            ; 7 uses
  %i.od = zext i32 %i.oc to i64                   ; 7 uses
  br i1 %i.nx, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.bl
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 20
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !51, !noalias !8162 ; 2 uses
  %i.og = icmp eq i32 %i.of, -1
  br i1 %i.og, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.bl
  %i.oh = load ptr, ptr %i.nq, align 8, !tbaa !48, !noalias !8162 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !51, !noalias !8162 ; 2 uses
  %i.ok = icmp eq i32 %i.oj, -1
  br i1 %i.ok, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nu, i64 53
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !49, !range !50, !noalias !8162, !noundef !34
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 53
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !49, !range !50, !noalias !8162, !noundef !34
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.nu, i64 28
  %i.os = load i32, ptr %i.or, align 4, !tbaa !480, !noalias !8162
  %i.ot = icmp ugt i32 %i.oc, %i.os
  br i1 %i.ot, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.bm

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nu, i64 28
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !480, !noalias !8162
  %i.ow = icmp ugt i32 %i.oc, %i.ov
  br i1 %i.ow, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.bm:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.ox = zext i32 %i.of to i64                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.oc, %i.b
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.oy = zext i32 %i.oj to i64                   ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.oc, %i.b
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.bm
  %i.oz = phi i64 [ %i.ox, %bb.bm ], [ %i.oy, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.nu, %bb.bm ], [ %i.oh, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !481, !noalias !8162
  %.not1.i.i.i = icmp eq ptr %i.pb, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.bm
  %i.pc = phi i64 [ %i.oz, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ox, %bb.bm ], [ %i.oy, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.bm ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.pd = sub nsw i64 %i.od, %i.no
  %i.pe = add nsw i64 %i.pd, %.0.neg.i.i.i
  %i.pf = and i64 %i.pe, 4294967295
  %i.pg = icmp eq i64 %i.pc, %i.pf
  br i1 %i.pg, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %.not.i127 = icmp eq i32 %i.oc, %i.b
  br i1 %.not.i127, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.nx, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ph = load ptr, ptr %i.nq, align 8, !tbaa !48, !noalias !8162
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i3.i = phi ptr [ %i.ph, %bb.bo ], [ %i.nu, %bb.bn ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !49, !range !50, !noalias !8162, !noundef !34
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8, !noalias !8162
  %.not.i.i4.i = icmp eq ptr %i.pm, null
  %i.pn = select i1 %i.pk, i1 %.not.i.i4.i, i1 false
  %spec.select = select i1 %i.pn, i32 %i.b, i32 %i.oc
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.16199.0 = phi i64 [ %i.od, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.od, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.od, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.od, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.od, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.od, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.8197.0 = phi i32 [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %spec.select, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %i.po = load ptr, ptr %i.n, align 8, !tbaa !35, !noalias !8163 ; 8 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !45, !noalias !8163
  %i.pr = icmp eq i32 %i.m, %i.pq                 ; 3 uses
  br i1 %i.pr, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit
  %i.ps = load ptr, ptr %i.nt, align 8, !tbaa !48, !noalias !8163
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZNK5clang6interp7PtrView6narrowEv.exit
  %.pn5.i128 = phi ptr [ %i.ps, %bb.bp ], [ %i.po, %_ZNK5clang6interp7PtrView6narrowEv.exit ] ; 2 uses
  %.pn.in.i129 = getelementptr inbounds nuw i8, ptr %.pn5.i128, i64 16
  %.pn.i130 = load i32, ptr %.pn.in.i129, align 8, !tbaa !451, !noalias !8163
  %i.pt = mul i32 %.pn.i130, %.052208
  %i.pu = getelementptr inbounds nuw i8, ptr %.pn5.i128, i64 40
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !481, !noalias !8163
  %.not.i131 = icmp eq ptr %i.pv, null
  %.0.v.i132 = select i1 %.not.i131, i32 8, i32 16
  %.0.i133 = add i32 %i.pt, %i.m
  %i.pw = add i32 %.0.i133, %.0.v.i132            ; 7 uses
  %i.px = zext i32 %i.pw to i64                   ; 7 uses
  br i1 %i.pr, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153: ; preds = %bb.bq
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 20
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !51, !noalias !8164 ; 2 uses
  %i.qa = icmp eq i32 %i.pz, -1
  br i1 %i.qa, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i154

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136: ; preds = %bb.bq
  %i.qb = load ptr, ptr %i.nt, align 8, !tbaa !48, !noalias !8164 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !51, !noalias !8164 ; 2 uses
  %i.qe = icmp eq i32 %i.qd, -1
  br i1 %i.qe, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137

_ZNK5clang6interp7PtrView7inArrayEv.exit.i154:    ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153
  %i.qf = getelementptr inbounds nuw i8, ptr %i.po, i64 53
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !49, !range !50, !noalias !8164, !noundef !34
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155, label %_ZNK5clang6interp7PtrView6narrowEv.exit157

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 53
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !49, !range !50, !noalias !8164, !noundef !34
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138, label %_ZNK5clang6interp7PtrView6narrowEv.exit157

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i154
  %i.ql = getelementptr inbounds nuw i8, ptr %i.po, i64 28
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !480, !noalias !8164
  %i.qn = icmp ugt i32 %i.pw, %i.qm
  br i1 %i.qn, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %bb.br

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137
  %i.qo = getelementptr inbounds nuw i8, ptr %i.po, i64 28
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !480, !noalias !8164
  %i.qq = icmp ugt i32 %i.pw, %i.qp
  br i1 %i.qq, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139

bb.br:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155
  %i.qr = zext i32 %i.pz to i64                   ; 2 uses
  %.not.i.i.i156 = icmp eq i32 %i.pw, %i.m
  br i1 %.not.i.i.i156, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138
  %i.qs = zext i32 %i.qd to i64                   ; 2 uses
  %.not.i5.i.i140 = icmp eq i32 %i.pw, %i.m
  br i1 %.not.i5.i.i140, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139, %bb.br
  %i.qt = phi i64 [ %i.qr, %bb.br ], [ %i.qs, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139 ]
  %.0.i.i3.i.i142 = phi ptr [ %i.po, %bb.br ], [ %i.qb, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139 ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i142, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !481, !noalias !8164
  %.not1.i.i.i143 = icmp eq ptr %i.qv, null
  %..i.i.i144 = select i1 %.not1.i.i.i143, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139, %bb.br
  %i.qw = phi i64 [ %i.qt, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141 ], [ %i.qr, %bb.br ], [ %i.qs, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139 ]
  %.0.neg.i.i.i146 = phi i64 [ %..i.i.i144, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i141 ], [ 0, %bb.br ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i139 ]
  %i.qx = sub nsw i64 %i.px, %i.nr
  %i.qy = add nsw i64 %i.qx, %.0.neg.i.i.i146
  %i.qz = and i64 %i.qy, 4294967295
  %i.ra = icmp eq i64 %i.qw, %i.qz
  br i1 %i.ra, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145
  %.not.i148 = icmp eq i32 %i.pw, %i.m
  br i1 %.not.i148, label %_ZNK5clang6interp7PtrView6narrowEv.exit157, label %bb.bs

bb.bs:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147
  br i1 %i.pr, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rb = load ptr, ptr %i.nt, align 8, !tbaa !48, !noalias !8164
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149: ; preds = %bb.bt, %bb.bs
  %.0.i.i3.i150 = phi ptr [ %i.rb, %bb.bt ], [ %i.po, %bb.bs ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i.i3.i150, i64 53
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !49, !range !50, !noalias !8164, !noundef !34
  %i.re = trunc nuw i8 %i.rd to i1
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.i.i3.i150, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !8164
  %.not.i.i4.i151 = icmp eq ptr %i.rg, null
  %i.rh = select i1 %i.re, i1 %.not.i.i4.i151, i1 false
  %spec.select200 = select i1 %i.rh, i32 %i.m, i32 %i.pw
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit157

_ZNK5clang6interp7PtrView6narrowEv.exit157:       ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i154, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136
  %.sroa.16.0 = phi i64 [ %i.px, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i154 ], [ %i.px, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153 ], [ %i.px, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149 ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155 ], [ %i.px, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136 ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145 ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138 ], [ %i.px, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147 ], [ %i.px, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137 ]
  %.sroa.8.0 = phi i32 [ %i.m, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i154 ], [ %i.m, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i153 ], [ %spec.select200, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i149 ], [ %i.m, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i155 ], [ %i.m, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i136 ], [ %i.m, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i145 ], [ %i.m, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i138 ], [ %i.m, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i147 ], [ %i.m, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i137 ]
  store i32 %.sroa.8197.0, ptr %.sroa.8197.0..sroa_idx, align 8, !tbaa !647
  store i64 %.sroa.16199.0, ptr %.sroa.16199.0..sroa_idx, align 8, !tbaa !492
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !647
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !492
  %i.ri = tail call fastcc noundef zeroext i1 @_ZN5clang6interpL13copyCompositeERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewES4_b(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %6, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %7, i1 noundef zeroext %4) ; 2 uses
  %i.rj = add nuw i32 %.052208, 1                 ; 2 uses
  %.not = icmp ne i32 %i.rj, %i.nn
  %or.cond.not = select i1 %i.ri, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.bj, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, !llvm.loop !8159

bb.bu:                                            ; preds = %bb.bg
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i57, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = icmp eq ptr %i.rl, null
  %.not202 = select i1 %i.y, i1 true, i1 %i.rm
  br i1 %.not202, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !49, !range !50, !noundef !34
  %i.rp = trunc nuw i8 %i.ro to i1
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = icmp eq ptr %i.rr, null
  %.not204 = select i1 %i.rp, i1 true, i1 %i.rs
  br i1 %.not204, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rt = tail call fastcc noundef zeroext i1 @_ZN5clang6interpL10copyRecordERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewES4_b(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %2, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, i1 noundef zeroext %4)
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

bb.bx:                                            ; preds = %bb.bu
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !545
  %i.rw = tail call i32 @_ZNK5clang6interp11InterpFrame11getLocationENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.rv, ptr %1) #21
  %i.rx = tail call ptr @_ZN5clang6interp5State6FFDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %i.rw, i32 noundef 113, i32 noundef 0) #21 ; 4 uses
  %i.ry = load ptr, ptr %i.ru, align 8, !tbaa !545
  %i.rz = tail call i64 @_ZNK5clang6interp11InterpFrame8getRangeENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ry, ptr %1) #21 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i159, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sa = load ptr, ptr %i.rx, align 8, !tbaa !549 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.sa, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %bb.bz

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.by
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !550
  %i.sd = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.sc) ; 2 uses
  store ptr %i.sd, ptr %i.rx, align 8, !tbaa !549
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.by
  %i.se = phi ptr [ %i.sd, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.sa, %bb.by ] ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 416 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 424 ; 3 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !479 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 428
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !551
  %.not.i5.i.i.i.i.i = icmp ult i32 %i.sh, %i.sj
  br i1 %.not.i5.i.i.i.i.i, label %bb.cb, label %bb.ca, !prof !552

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i64 %i.rz, i8 1)
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

bb.cb:                                            ; preds = %bb.bz
  %i.sk = zext i32 %i.sh to i64
  %i.sl = load ptr, ptr %i.sf, align 8, !tbaa !553
  %i.sm = getelementptr inbounds nuw [12 x i8], ptr %i.sl, i64 %i.sk ; 2 uses
  store i64 %i.rz, ptr %i.sm, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i, align 1
  %i.sn = load i32, ptr %i.sg, align 8, !tbaa !479
  %i.so = add i32 %i.sn, 1
  store i32 %i.so, ptr %i.sg, align 8, !tbaa !479
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit: ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit157, %bb.bf, %bb.bi, %bb.g, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit119, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %bb.cb, %bb.ca, %bb.bx, %bb.bv, %bb.bh, %bb.f, %bb.d, %bb.bw
  %.3 = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.ca ], [ false, %bb.bh ], [ false, %bb.bv ], [ false, %bb.cb ], [ %i.rt, %bb.bw ], [ true, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ], [ false, %bb.bx ], [ true, %bb.g ], [ true, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit119 ], [ true, %bb.bi ], [ true, %bb.bf ], [ %i.ri, %_ZNK5clang6interp7PtrView6narrowEv.exit157 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang6interp7PtrView7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !475  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !474    ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp eq i32 %i.b, %i.f                   ; 2 uses
  %i.h = zext i32 %i.b to i64                     ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !476
  %i.k = icmp eq i64 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -3  ; 2 uses
  %.not.i1.i = icmp eq i64 %i.n, 0
  %.not.i.i = or i1 %i.m, %.not.i1.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 127
  %i.s = add nsw i32 %i.r, -27
  %i.t = icmp ult i32 %i.s, 27
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !33
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #21
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit: ; preds = %bb.b, %bb.g
  %.0.i.i20 = phi ptr [ %i.y, %bb.g ], [ %i.d, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 53
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49, !range !50, !noundef !34
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i.i21 = icmp eq ptr %i.ad, null
  %i.ae = select i1 %i.ab, i1 %.not.i.i21, i1 false
  br i1 %i.ae, label %bb.h, label %.thread88

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !476
  %i.ah = zext i32 %i.b to i64                    ; 2 uses
  %.not = icmp eq i64 %i.ag, %i.ah
  br i1 %.not, label %.thread88, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

end_hunk_5
begin_hunk_6_@_ZNK5clang6interp7PtrView7getTypeEv:bb.a
  %.not17.not = icmp eq ptr %i.bz, null
  br i1 %.not17.not, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread67, label %.thread75

.thread75:                                        ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.0.0.copyload.i2978 = load i64, ptr %i.ca, align 16, !tbaa !33
  br label %bb.t

bb.o:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.cb, align 16, !tbaa !33
  br label %bb.t

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread67: ; preds = %bb.n, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !475 ; 2 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !474   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !35 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !45
  %i.ch = icmp eq i32 %i.cc, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit31, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread67
  %i.ci = zext i32 %i.cc to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit31

_ZNK5clang6interp7PtrView12getFieldDescEv.exit31: ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread67, %bb.p
  %.0.i30 = phi ptr [ %i.cl, %bb.p ], [ %i.ce, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread67 ]
  %i.cm = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i30) #21
  %i.cn = and i64 %i.cm, -16
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !32 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i8, ptr %i.cq, align 16
  %i.cs = and i8 %i.cr, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.cs, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.0.0.copyload.i.i.i.i33 = load i64, ptr %i.ct, align 8, !tbaa !33
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i.i33, -16
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 16
  %i.cz = and i8 %i.cy, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.cz, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit, label %.thread88

_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit: ; preds = %bb.q
  %i.da = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cp) #21 ; 2 uses
  %.not18.not = icmp eq ptr %i.da, null
  br i1 %.not18.not, label %.thread88, label %.thread91

.thread91:                                        ; preds = %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.sroa.0.0.copyload.i3594 = load i64, ptr %i.db, align 16, !tbaa !33
  br label %bb.t

bb.r:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %.sroa.0.0.copyload.i35 = load i64, ptr %i.dc, align 16, !tbaa !33
  br label %bb.t

.thread88:                                        ; preds = %bb.q, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit, %bb.h, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !475 ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !474   ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !45
  %i.di = icmp eq i32 %i.dd, %i.dh
  br i1 %i.di, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit37, label %bb.s

bb.s:                                             ; preds = %.thread88
  %i.dj = zext i32 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit37

_ZNK5clang6interp7PtrView12getFieldDescEv.exit37: ; preds = %.thread88, %bb.s
  %.0.i36 = phi ptr [ %i.dm, %bb.s ], [ %i.df, %.thread88 ]
  %i.dn = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i36) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.thread91, %bb.o, %.thread75, %bb.l, %.thread58, %bb.e, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit37, %bb.f
  %.sroa.0.4 = phi i64 [ %i.v, %bb.f ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %i.dn, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit37 ], [ %.sroa.0.0.copyload.i35, %bb.r ], [ %.sroa.0.0.copyload.i29, %bb.o ], [ %.sroa.0.0.copyload.i23, %bb.l ], [ %.sroa.0.0.copyload.i2361, %.thread58 ], [ %.sroa.0.0.copyload.i2978, %.thread75 ], [ %.sroa.0.0.copyload.i3594, %.thread91 ]
  ret i64 %.sroa.0.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang8QualType12IgnoreParensES0_(i64) local_unnamed_addr #2

declare void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i64 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSERKS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK5clang6interp7Pointer8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  switch i32 %i.b, label %bb.c [
    i32 1, label %bb.d
    i32 0, label %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i
    i32 2, label %bb.b
  ]

_ZNK5clang6interp7Pointer8elemSizeEv.exit.i:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = ptrtoint ptr %i.f to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = ptrtoint ptr %i.i to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit

_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit: ; preds = %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i, %bb.b, %bb.c
  %.sink1.i = phi i64 [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ %i.d, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i ]
  %i.k = load i64, ptr %0, align 8, !tbaa !36
  %i.l = add i64 %i.k, %.sink1.i
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33, !noalias !8167 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33, !noalias !8167 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !36, !noalias !8167 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i32 %i.p, 16
  %i.s = zext i32 %i.p to i64                     ; 4 uses
  %i.t = icmp eq i64 %i.q, %i.s                   ; 2 uses
  %or.cond.i = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !35   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp eq i32 %i.p, %i.w                   ; 2 uses
  br i1 %i.x, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.u, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !451 ; 2 uses
  %.not.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.t, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.x, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i8.i = phi ptr [ %i.af, %bb.j ], [ %i.u, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !481
  %.not1.i.i = icmp eq ptr %i.ah, null
  %..i.i = select i1 %.not1.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.h
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.h ]
  %i.ai = sub i64 %i.q, %i.s
  %i.aj = add i64 %i.ai, %.0.neg.i.i
  %i.ak = trunc i64 %i.aj to i32
  %i.al = udiv i32 %i.ak, %i.ac
  %.zext.i = zext i32 %i.al to i64
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %bb.e, %bb.d, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit
  %.0 = phi i64 [ %i.l, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ %.zext.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8198 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8199 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 0 ; 3 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %spec.select.i.i.i.i.i.i.i.i.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8200 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !658  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !659
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.g, !prof !552

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !658
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.q, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.n, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8202
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !8203
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.d, ptr %i.y, align 8, !tbaa !8204
  %i.z = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.d to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  %i.ab = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i, %bb.b
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  %.not.not.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !8203
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !8202 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8207 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.aj
  br i1 %.not12.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !8203
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !663
  %i.al = getelementptr i8, ptr %i.ak, i64 152, !nosanitize !34
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !34
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.d) #21, !inline_history !8168
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.c
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !8198 ; 2 uses
  %.not4 = icmp eq ptr %i.an, null
  br i1 %.not4, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.a, %bb.m
  %i.ao = phi ptr [ %i.an, %bb.m ], [ %i.b, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8218
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ar = phi ptr [ %i.aq, %.thread ], [ null, %bb.m ]
  ret ptr %i.ar
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !479  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !551
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !552

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !553
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !479
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !479
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !479
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #21 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !479 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !551
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !552

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !553
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
end_hunk_6
begin_hunk_7_@_ZN4llvm6APSInt13compareValuesERKS0_S2_:bb.a
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.y) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm6APSInt6extendEj.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp ugt i32 %i.d, %i.b
  br i1 %i.aa, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8432)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !644, !range !50, !noalias !8432, !noundef !34
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4llvm5APIntD2Ev.exit.i26, label %_ZN4llvm5APIntD2Ev.exit2.i24

_ZN4llvm5APIntD2Ev.exit.i26:                      ; preds = %bb.k
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(13) %0, i32 noundef %i.d) #21, !noalias !8432
  br label %_ZNK4llvm6APSInt6extendEj.exit27

_ZN4llvm5APIntD2Ev.exit2.i24:                     ; preds = %bb.k
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(13) %0, i32 noundef %i.d) #21, !noalias !8432
  br label %_ZNK4llvm6APSInt6extendEj.exit27

_ZNK4llvm6APSInt6extendEj.exit27:                 ; preds = %_ZN4llvm5APIntD2Ev.exit.i26, %_ZN4llvm5APIntD2Ev.exit2.i24
  %.sink7.i25.sroa.phi = phi ptr [ %.sink7.i25.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2.i24 ], [ %.sink7.i25.sroa.gep32, %_ZN4llvm5APIntD2Ev.exit.i26 ]
  %.sink7.i25 = phi ptr [ %3, %_ZN4llvm5APIntD2Ev.exit2.i24 ], [ %2, %_ZN4llvm5APIntD2Ev.exit.i26 ]
  %i.ae = load i8, ptr %i.ab, align 4, !tbaa !644, !range !50, !noalias !8432, !noundef !34
  %i.af = load i32, ptr %.sink7.i25.sroa.phi, align 8, !tbaa !642, !noalias !8432
  %i.ag = load i64, ptr %.sink7.i25, align 8, !noalias !8432
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !642, !alias.scope !8432
  store i64 %i.ag, ptr %7, align 8, !alias.scope !8432
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 %i.ae, ptr %i.ai, align 4, !tbaa !644, !alias.scope !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aj = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(13) %1)
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !642
  %i.al = icmp ugt i32 %i.ak, 64
  br i1 %i.al, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit28

bb.l:                                             ; preds = %_ZNK4llvm6APSInt6extendEj.exit27
  %i.am = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit28, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.am) #24
  br label %_ZN4llvm5APIntD2Ev.exit28

_ZN4llvm5APIntD2Ev.exit28:                        ; preds = %_ZNK4llvm6APSInt6extendEj.exit27, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !644, !range !50, !noundef !34
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %bb.n
  %i.ar = add i32 %i.b, -1                        ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = icmp ult i32 %i.b, 65
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = lshr i32 %i.ar, 6
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %.in.i.i.i.i = select i1 %i.av, ptr %0, ptr %i.az
  %i.ba = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !33
  %i.bb = and i64 %i.ba, %i.au
  %.not34 = icmp eq i64 %i.bb, 0
  br i1 %.not34, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !644, !range !50, !noundef !34
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %_ZNK4llvm6APSInt10isNegativeEv.exit30

_ZNK4llvm6APSInt10isNegativeEv.exit30:            ; preds = %bb.o
  %i.bf = add i32 %i.d, -1                        ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = icmp ult i32 %i.d, 65
  %i.bk = load ptr, ptr %1, align 8
  %i.bl = lshr i32 %i.bf, 6
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %.in.i.i.i.i29 = select i1 %i.bj, ptr %1, ptr %i.bn
  %i.bo = load i64, ptr %.in.i.i.i.i29, align 8, !tbaa !33
  %i.bp = and i64 %i.bo, %i.bi
  %.not33 = icmp eq i64 %i.bp, 0
  br i1 %.not33, label %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, label %bb.p

_ZNK4llvm6APSInt10isNegativeEv.exit30.thread:     ; preds = %bb.o, %_ZNK4llvm6APSInt10isNegativeEv.exit30, %_ZNK4llvm6APSInt10isNegativeEv.exit
  %i.bq = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #22
  br label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit30, %_ZNK4llvm6APSInt10isNegativeEv.exit, %bb.d, %bb.e, %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread, %_ZN4llvm5APIntD2Ev.exit28, %_ZN4llvm5APIntD2Ev.exit
  %.0 = phi i32 [ -1, %_ZNK4llvm6APSInt10isNegativeEv.exit ], [ %i.v, %_ZN4llvm5APIntD2Ev.exit ], [ %i.aj, %_ZN4llvm5APIntD2Ev.exit28 ], [ %i.l, %bb.e ], [ %i.bq, %_ZNK4llvm6APSInt10isNegativeEv.exit30.thread ], [ %i.k, %bb.d ], [ 1, %_ZNK4llvm6APSInt10isNegativeEv.exit30 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL10isReadableERKNS0_7PointerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33, !noalias !8437 ; 6 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread, label %_ZNK5clang6interp7Pointer7isDummyEv.exit

_ZNK5clang6interp7Pointer7isDummyEv.exit:         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !26
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isLiveEv.exit, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread

_ZNK5clang6interp7Pointer6isLiveEv.exit:          ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !26
  %i.k = and i8 %i.j, 2
  %.not1.i.i = icmp eq i8 %i.k, 0
  br i1 %.not1.i.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isLiveEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33, !noalias !8438 ; 3 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45
  %i.q = icmp eq i32 %i.m, %i.p                   ; 2 uses
  br i1 %i.q, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.y = load i64, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !480
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread13, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i = zext i32 %i.m to i64                  ; 4 uses
  br i1 %i.q, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.y, %.pre.i
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pre.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %i.y, %.pre.i
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.ak = phi i32 [ %i.ae, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.aj, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i = phi ptr [ %i.n, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.ah, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !481
  %.not1.i.i.i = icmp eq ptr %i.am, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.an = phi i32 [ %i.ak, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ae, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.aj, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ao = sub nsw i64 %i.y, %.pre.i
  %i.ap = add nsw i64 %i.ao, %.0.neg.i.i.i
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp eq i32 %i.an, %i.aq
  %cond.fr = freeze i1 %i.ar
  br i1 %cond.fr, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread13, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread13: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  br label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread

_ZNK5clang6interp7Pointer6isLiveEv.exit.thread:   ; preds = %bb.b, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread13, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, %bb.a, %_ZNK5clang6interp7Pointer6isLiveEv.exit, %_ZNK5clang6interp7Pointer7isDummyEv.exit
  %.0 = phi i1 [ false, %_ZNK5clang6interp7Pointer7isDummyEv.exit ], [ true, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer6isLiveEv.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread13 ], [ true, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

declare ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34), i64, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !723    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !637, !range !50, !noundef !34
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !549  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !550
  %i.f = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.e) ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !549
  br label %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.g = phi ptr [ %i.f, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = zext nneg i8 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.g, align 8, !tbaa !620
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  store i8 2, ptr %i.l, align 1, !tbaa !33
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !549  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.m, align 8, !tbaa !620   ; 2 uses
  %i.p = add i8 %i.o, 1
  store i8 %i.p, ptr %i.m, align 8, !tbaa !620
  %i.q = zext i8 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  store i64 %i.h, ptr %i.r, align 8, !tbaa !492
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit, %bb.a
  ret ptr %0
}

declare noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZNK4llvm5APInt8byteSwapEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5clang6interpL32interp__builtin_atomic_lock_freeERNS0_11InterpStateENS0_7CodePtrEPKNS0_11InterpFrameEPKNS_8CallExprEjENK3$_0clEb"(ptr %.0.val.176.val, i1 noundef zeroext %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = load ptr, ptr %.0.val.176.val, align 8, !tbaa !630 ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !631

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #23 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  store ptr %i.c, ptr %.0.val.176.val, align 8, !tbaa !630
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !633  ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1048544
  br i1 %i.f, label %bb.d, label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i, !prof !631

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !634  ; 4 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %.0.val.176.val, align 8, !tbaa !630
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !633
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #23 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !634
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.b, ptr %i.i, align 8, !tbaa !635
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !633
  store ptr %i.h, ptr %i.b, align 8, !tbaa !634
  store ptr %i.h, ptr %.0.val.176.val, align 8, !tbaa !630
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i

_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.k = phi i32 [ %i.e, %bb.c ], [ 0, %bb.f ], [ %.pre.i.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %i.b, %bb.c ], [ %i.h, %bb.f ], [ %i.g, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = zext i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add i32 %i.k, 8
  store i32 %i.q, ptr %i.n, align 8, !tbaa !633
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val.176.val, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !636
  %i.t = add i64 %i.s, 8
  store i64 %i.t, ptr %i.r, align 8, !tbaa !636
  store i8 %i.a, ptr %i.p, align 1, !tbaa !675
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val.176.val, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val.176.val, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !638  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val.176.val, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !639
  %.not.i2.i = icmp ult i64 %i.w, %i.y
  br i1 %.not.i2.i, label %bb.h, label %bb.g, !prof !552

bb.g:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 noundef zeroext 10)
  br label %_ZN5clang6interp11InterpStack4pushINS0_7BooleanEJRbEEEvDpOT0_.exit

bb.h:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit.i
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !640
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 10, ptr %i.aa, align 1
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !638
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !638
  br label %_ZN5clang6interp11InterpStack4pushINS0_7BooleanEJRbEEEvDpOT0_.exit

_ZN5clang6interp11InterpStack4pushINS0_7BooleanEJRbEEEvDpOT0_.exit: ; preds = %bb.g, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm5APInt9isAlignedENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(12), i8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext19getTypeAlignInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6interp11InterpStack4pushINS0_7BooleanEJbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !630    ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !631

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #23 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !630
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !633  ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1048544
  br i1 %i.e, label %bb.d, label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit, !prof !631

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !634  ; 4 uses
  %.not4.i = icmp eq ptr %i.f, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8, !tbaa !630
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !633
  br label %_ZN5clang6interp11InterpStack4growILm8EEEPvv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #23 ; 6 uses
  store ptr null, ptr %i.g, align 8, !tbaa !634
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !635
end_hunk_7
begin_hunk_8_@"_ZZN5clang6interpL34interp__builtin_is_within_lifetimeERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEENK3$_0clEi":bb.a
  %i.v = xor i128 %i.u, 25965
  %i.w = or i128 %i.r, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit.thread

bb.e:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !545 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !596
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !608
  %i.ae = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr %.sroa.0.0.copyload.i) #21
  br label %bb.f

_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !545
  %.sroa.0.0.copyload = load ptr, ptr %.8.val, align 8, !tbaa !608
  %i.ag = tail call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr %.sroa.0.0.copyload) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit.thread, %bb.e
  %i.ah = phi ptr [ @.str.10, %bb.e ], [ @.str.11, %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit.thread ]
  %.sroa.02.0 = phi i64 [ %i.ae, %bb.e ], [ %i.ag, %_ZNK5clang14IdentifierInfo5isStrILm19EEEbRAT__Kc.exit.thread ]
  %i.ai = tail call ptr @_ZN5clang6interp5State7CCEDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34) %.0.val, i64 %.sroa.02.0, i32 noundef 2326, i32 noundef 0) #21 ; 6 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !549 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !550
  %i.am = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.al) ; 2 uses
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !549
  br label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i

_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i: ; preds = %bb.g, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.an = phi ptr [ %i.am, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aq = load i8, ptr %i.an, align 8, !tbaa !620
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store i8 1, ptr %i.as, align 1, !tbaa !33
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !549 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.at, align 8, !tbaa !620 ; 2 uses
  %i.aw = add i8 %i.av, 1                         ; 2 uses
  store i8 %i.aw, ptr %i.at, align 8, !tbaa !620
  %i.ax = zext i8 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ax
  store i64 %i.ao, ptr %i.ay, align 8, !tbaa !492
  %i.az = zext nneg i32 %0 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bb = zext i8 %i.aw to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 2, ptr %i.bc, align 1, !tbaa !33
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !549 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !620 ; 2 uses
  %i.bg = add i8 %i.bf, 1
  store i8 %i.bg, ptr %i.bd, align 8, !tbaa !620
  %i.bh = zext i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh
  store i64 %i.az, ptr %i.bi, align 8, !tbaa !492
  br label %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit

_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit: ; preds = %bb.f, %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK5clang6interp7Pointer11getLifetimeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 8 uses
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33, !noalias !8595 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp eq i32 %i.e, %i.k                   ; 3 uses
  br i1 %i.l, label %_ZNK5clang6interp7Pointer7inArrayEv.exit, label %_ZNK5clang6interp7Pointer7inArrayEv.exit.thread

_ZNK5clang6interp7Pointer7inArrayEv.exit:         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !49, !range !50, !noundef !34
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNK5clang6interp7Pointer7inArrayEv.exit._crit_edge

_ZNK5clang6interp7Pointer7inArrayEv.exit.thread:  ; preds = %bb.c
  %i.p = zext i32 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 53
  %i.u = load i8, ptr %i.t, align 1, !tbaa !49, !range !50, !noundef !34
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %_ZNK5clang6interp7Pointer7inArrayEv.exit._crit_edge

_ZNK5clang6interp7Pointer7inArrayEv.exit._crit_edge: ; preds = %_ZNK5clang6interp7Pointer7inArrayEv.exit.thread, %_ZNK5clang6interp7Pointer7inArrayEv.exit
  %.pre = zext i32 %i.e to i64
  br label %bb.o

bb.d:                                             ; preds = %_ZNK5clang6interp7Pointer7inArrayEv.exit
  %.pre.i.i = zext i32 %i.e to i64
  br label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer7inArrayEv.exit.thread
  %.pre.i.i10 = zext i32 %i.e to i64              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i.i10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit

_ZNK5clang6interp7Pointer11isArrayRootEv.exit:    ; preds = %bb.d, %bb.e
  %.pre.i.i12 = phi i64 [ %.pre.i.i10, %bb.e ], [ %.pre.i.i, %bb.d ] ; 7 uses
  %.0.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.i, %bb.d ]
  %i.z = load i64, ptr %0, align 8, !tbaa !36, !noalias !8596 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !49, !range !50, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = icmp eq i64 %i.z, %.pre.i.i12           ; 3 uses
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer11isArrayRootEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre.i.i12
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8598 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.ah, 1
  br i1 %spec.select.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.h, i32 noundef %i.e, i64 noundef %.pre.i.i12) #21
  %i.aj = call noundef zeroext i8 @_ZNK5clang6interp7Pointer11getLifetimeEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.ak = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.al = icmp ne i32 %i.e, 16
  %or.cond.i.i = select i1 %i.al, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.l, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i.i12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i5 = phi ptr [ %i.ao, %bb.k ], [ %i.i, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i5, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !451 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.ad, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.l, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre.i.i12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.at, %bb.n ], [ %i.i, %bb.m ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !481
  %.not1.i.i.i = icmp eq ptr %i.av, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %bb.l
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.aw = sub i64 %i.z, %.pre.i.i12
  %i.ax = add i64 %i.aw, %.0.neg.i.i.i
  %i.ay = trunc i64 %i.ax to i32
  %i.az = udiv i32 %i.ay, %i.aq
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i
  %.0.i4 = phi i32 [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ], [ 0, %bb.i ], [ %i.az, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ] ; 2 uses
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !8606 ; 2 uses
  %i.bb = add i32 %i.ba, %.0.i4
  %i.bc = zext i32 %i.ba to i64
  %i.bd = add nuw nsw i64 %i.bc, 63
  %i.be = lshr i64 %i.bd, 6
  %i.bf = lshr i32 %.0.i4, 6
  %i.bg = trunc nuw nsw i64 %i.be to i32
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8607
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !492
  %i.bn = and i32 %i.bb, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bm
  %.not.i = icmp eq i64 %i.bq, 0
  %i.br = select i1 %.not.i, i8 0, i8 3
  br label %bb.p

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer7inArrayEv.exit._crit_edge, %_ZNK5clang6interp7Pointer11isArrayRootEv.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNK5clang6interp7Pointer7inArrayEv.exit._crit_edge ], [ %.pre.i.i12, %_ZNK5clang6interp7Pointer11isArrayRootEv.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 30
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !8608
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %bb.g, %bb.b, %bb.a, %bb.o
  %.1 = phi i8 [ 0, %bb.a ], [ %i.bu, %bb.o ], [ 0, %bb.b ], [ %i.br, %_ZNK5clang6interp7Pointer8getIndexEv.exit ], [ %i.aj, %bb.h ], [ 0, %bb.g ]
  ret i8 %.1
}

declare noundef zeroext i1 @_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456), ptr, ptr noundef byval(%"struct.clang::interp::PtrView") align 8, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb0EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %2 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8611)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !718, !noalias !8611 ; 5 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvm5APIntC2Ejmbb.exit.i, label %bb.b

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !33, !noalias !8611
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !642, !alias.scope !8611
  store i64 %i.d, ptr %3, align 8, !tbaa !33, !alias.scope !8611
  br label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = add nuw nsw i64 %i.f, 63
  %i.h = lshr i64 %i.g, 6
  %i.i = load ptr, ptr %0, align 8, !tbaa !33, !noalias !8611
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.b, ptr %i.i, i64 %i.h) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !642
  br label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit

_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i, %bb.b
  %i.j = phi i32 [ %i.b, %_ZN4llvm5APIntC2Ejmbb.exit.i ], [ %.pre, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = icmp ult i32 %i.j, 9
  br i1 %i.l, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.d

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 8) #21
  %i.m = load i64, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.q = inttoptr i64 %i.m to ptr                 ; 2 uses
  %.0.i.else.val.i = load i64, ptr %i.q, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit

bb.d:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 8) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !642
  %i.t = icmp ult i32 %i.s, 65                    ; 2 uses
  %i.u = load ptr, ptr %2, align 8                ; 3 uses
  %spec.select.i4.i = select i1 %i.t, ptr %2, ptr %i.u
  %.0.i5.i = load i64, ptr %spec.select.i4.i, align 8, !tbaa !33
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN4llvm5APIntD2Ev.exit6.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.u) #24
  br label %_ZN4llvm5APIntD2Ev.exit6.i

_ZN4llvm5APIntD2Ev.exit6.i:                       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit

_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.c, %_ZN4llvm5APIntD2Ev.exit6.i
  %.0.in.i = phi i64 [ %.0.i5.i, %_ZN4llvm5APIntD2Ev.exit6.i ], [ %.0.i.else.val.i, %bb.c ], [ %i.m, %_ZN4llvm5APIntD2Ev.exit.i ]
  %i.w = load i32, ptr %i.k, align 8, !tbaa !642
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.y) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang6interp10IntegralAPILb0EE12truncateCastIhLb0EEET_RKN4llvm5APIntE.exit, %bb.f, %bb.g
  %.0.i = trunc i64 %.0.in.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK5clang6interp10IntegralAPILb1EEcvT_IhvEEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %2 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !720, !noalias !8614 ; 7 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvm5APIntC2Ejmbb.exit.i, label %bb.b

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !33, !noalias !8614
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !642, !alias.scope !8614
  %i.f = sub nsw i32 0, %i.b
  %i.g = and i32 %i.f, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = icmp eq i32 %i.b, 0
  %spec.select.i.i = select i1 %i.j, i64 0, i64 %i.i, !prof !631
  %i.k = and i64 %i.d, %spec.select.i.i
  store i64 %i.k, ptr %3, align 8, !tbaa !33, !alias.scope !8614
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %i.b to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6
  %i.o = load ptr, ptr %0, align 8, !tbaa !33, !noalias !8614
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.b, ptr %i.o, i64 %i.n) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !642
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i, %bb.b
  %i.p = phi i32 [ %i.b, %_ZN4llvm5APIntC2Ejmbb.exit.i ], [ %.pre, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = icmp ult i32 %i.p, 9
  br i1 %i.r, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.d

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 8) #21
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.v = icmp ult i32 %i.u, 65
  br i1 %i.v, label %_ZN5clang6interp10IntegralAPILb1EE12truncateCastIhLb1EEET_RKN4llvm5APIntE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.w = inttoptr i64 %i.s to ptr                 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5clang6interpL7zeroAllENS0_7PtrViewE:bb.a
_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit238: ; preds = %bb.bs, %bb.bt
  %.0.i.i.i.i236 = phi ptr [ %i.pr, %bb.bt ], [ %i.pn, %bb.bs ]
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i236, i64 53
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !49, !range !50, !noundef !34
  %i.pu = trunc nuw i8 %i.pt to i1
  %i.pv = select i1 %i.pu, i1 %i.ke, i1 false
  %.0.i237 = select i1 %i.pv, ptr %i.kf, ptr %i.kh
  tail call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(72) %.0.i237) #21
  %i.pw = load ptr, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load i32, ptr %i.px, align 8, !tbaa !45
  %i.pz = icmp eq i32 %i.b, %i.py
  br i1 %i.pz, label %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit242, label %bb.bu

bb.bu:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit238
  %i.qa = load ptr, ptr %i.kb, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit242

_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit242: ; preds = %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit238, %bb.bu
  %.0.i.i.i.i240 = phi ptr [ %i.qa, %bb.bu ], [ %i.pw, %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit238 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i240, i64 53
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !49, !range !50, !noundef !34
  %i.qd = trunc nuw i8 %i.qc to i1
  %i.qe = select i1 %i.qd, i1 %i.ke, i1 false
  %.0.i241 = select i1 %i.qe, ptr %i.kf, ptr %i.kh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i241, i8 0, i64 72, i1 false)
  br label %bb.ca

bb.bv:                                            ; preds = %bb.aq
  %i.qf = load ptr, ptr %i.c, align 8, !tbaa !35  ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !45 ; 3 uses
  %i.qi = icmp eq i32 %i.b, %i.qh
  br i1 %i.qi, label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qj = load ptr, ptr %i.kb, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246

_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246: ; preds = %bb.bv, %bb.bw
  %.0.i.i.i.i244 = phi ptr [ %i.qj, %bb.bw ], [ %i.qf, %bb.bv ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i244, i64 53
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !49, !range !50, !noundef !34
  %i.qm = trunc nuw i8 %i.ql to i1
  %i.qn = select i1 %i.qm, i1 %i.ke, i1 false
  %.0.i245 = select i1 %i.qn, ptr %i.kf, ptr %i.kh ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i245, i64 8
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !642
  %i.qq = icmp ugt i32 %i.qp, 64
  br i1 %i.qq, label %bb.bx, label %_ZN5clang6interp10FixedPointD2Ev.exit247

bb.bx:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246
  %i.qr = load ptr, ptr %.0.i245, align 8, !tbaa !33 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %_ZN5clang6interp10FixedPointD2Ev.exit247, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZdaPv(ptr noundef nonnull %i.qr) #24
  %.pre377 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %.pre377, i64 24
  %.pre379 = load i32, ptr %.phi.trans.insert378, align 8, !tbaa !45
  br label %_ZN5clang6interp10FixedPointD2Ev.exit247

_ZN5clang6interp10FixedPointD2Ev.exit247:         ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246, %bb.bx, %bb.by
  %i.qt = phi i32 [ %i.qh, %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246 ], [ %i.qh, %bb.bx ], [ %.pre379, %bb.by ]
  %i.qu = phi ptr [ %i.qf, %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit246 ], [ %i.qf, %bb.bx ], [ %.pre377, %bb.by ]
  %i.qv = icmp eq i32 %i.b, %i.qt
  br i1 %i.qv, label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit251, label %bb.bz

bb.bz:                                            ; preds = %_ZN5clang6interp10FixedPointD2Ev.exit247
  %i.qw = load ptr, ptr %i.kb, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit251

_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit251: ; preds = %_ZN5clang6interp10FixedPointD2Ev.exit247, %bb.bz
  %.0.i.i.i.i249 = phi ptr [ %i.qw, %bb.bz ], [ %i.qu, %_ZN5clang6interp10FixedPointD2Ev.exit247 ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i249, i64 53
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !49, !range !50, !noundef !34
  %i.qz = trunc nuw i8 %i.qy to i1
  %i.ra = select i1 %i.qz, i1 %i.ke, i1 false
  %.0.i250 = select i1 %i.ra, ptr %i.kf, ptr %i.kh ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i250, i64 8
  store i32 0, ptr %i.rb, align 8, !tbaa !642
  store i64 0, ptr %.0.i250, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i250, i64 12
  store i8 1, ptr %i.rc, align 4, !tbaa !644
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.i250, i64 16
  store i32 0, ptr %i.rd, align 8, !tbaa !33
  br label %bb.ca

bb.ca:                                            ; preds = %bb.aq, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit138, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit146, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit154, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit162, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit170, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit178, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit186, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit194, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit202, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb1EEEEERT_v.exit210, %_ZNK5clang6interp7PtrView5derefINS0_8FloatingEEERT_v.exit218, %_ZNK5clang6interp7PtrView5derefINS0_7BooleanEEERT_v.exit226, %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit234, %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit242, %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit251
  %i.re = add nuw i32 %.023357, 1                 ; 2 uses
  %.not25 = icmp eq i32 %i.re, %i.jy
  br i1 %.not25, label %.thread304, label %bb.aq, !llvm.loop !8763

bb.cb:                                            ; preds = %bb.ao
  %not. = xor i1 %i.n, true
  %i.rf = select i1 %not., i1 true, i1 %.not.i130
  br i1 %i.rf, label %.thread304, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !51 ; 3 uses
  %i.ri = icmp eq i32 %i.rh, -1
  br i1 %i.ri, label %.thread304, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit252

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit252: ; preds = %bb.cc
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !451 ; 2 uses
  %i.rl = udiv i32 %i.rh, %i.rk
  %.not354 = icmp ugt i32 %i.rk, %i.rh
  br i1 %.not354, label %.thread304, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit252
  %i.rm = zext i32 %i.b to i64                    ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !646
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph, %_ZNK5clang6interp7PtrView6narrowEv.exit
  %.0355 = phi i32 [ 0, %.lr.ph ], [ %i.tj, %_ZNK5clang6interp7PtrView6narrowEv.exit ] ; 2 uses
  %i.rp = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !8770 ; 8 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !45, !noalias !8770
  %i.rs = icmp eq i32 %i.b, %i.rr                 ; 3 uses
  br i1 %i.rs, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rt = load ptr, ptr %i.ro, align 8, !tbaa !48, !noalias !8770
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn5.i = phi ptr [ %i.rt, %bb.ce ], [ %i.rp, %bb.cd ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !451, !noalias !8770
  %i.ru = mul i32 %.pn.i, %.0355
  %i.rv = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !481, !noalias !8770
  %.not.i253 = icmp eq ptr %i.rw, null
  %.0.v.i = select i1 %.not.i253, i32 8, i32 16
  %.0.i254 = add i32 %i.ru, %i.b
  %i.rx = add i32 %.0.i254, %.0.v.i               ; 7 uses
  %i.ry = zext i32 %i.rx to i64                   ; 7 uses
  br i1 %i.rs, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.cf
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rp, i64 20
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !51, !noalias !8771 ; 2 uses
  %i.sb = icmp eq i32 %i.sa, -1
  br i1 %i.sb, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.cf
  %i.sc = load ptr, ptr %i.ro, align 8, !tbaa !48, !noalias !8771 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 20
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !51, !noalias !8771 ; 2 uses
  %i.sf = icmp eq i32 %i.se, -1
  br i1 %i.sf, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 53
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !49, !range !50, !noalias !8771, !noundef !34
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 53
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !49, !range !50, !noalias !8771, !noundef !34
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !480, !noalias !8771
  %i.so = icmp ugt i32 %i.rx, %i.sn
  br i1 %i.so, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.cg

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !480, !noalias !8771
  %i.sr = icmp ugt i32 %i.rx, %i.sq
  br i1 %i.sr, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.cg:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.ss = zext i32 %i.sa to i64                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.rx, %i.b
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.st = zext i32 %i.se to i64                   ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.rx, %i.b
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.cg
  %i.su = phi i64 [ %i.ss, %bb.cg ], [ %i.st, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.rp, %bb.cg ], [ %i.sc, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.sv = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !481, !noalias !8771
  %.not1.i.i.i = icmp eq ptr %i.sw, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.cg
  %i.sx = phi i64 [ %i.su, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ss, %bb.cg ], [ %i.st, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.cg ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.sy = sub nsw i64 %i.ry, %i.rm
  %i.sz = add nsw i64 %i.sy, %.0.neg.i.i.i
  %i.ta = and i64 %i.sz, 4294967295
  %i.tb = icmp eq i64 %i.sx, %i.ta
  br i1 %i.tb, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %.not.i255 = icmp eq i32 %i.rx, %i.b
  br i1 %.not.i255, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.rs, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.tc = load ptr, ptr %i.ro, align 8, !tbaa !48, !noalias !8771
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i3.i = phi ptr [ %i.tc, %bb.ci ], [ %i.rp, %bb.ch ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.te = load i8, ptr %i.td, align 1, !tbaa !49, !range !50, !noalias !8771, !noundef !34
  %i.tf = trunc nuw i8 %i.te to i1
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.th = load ptr, ptr %i.tg, align 8, !noalias !8771
  %.not.i.i4.i = icmp eq ptr %i.th, null
  %i.ti = select i1 %i.tf, i1 %.not.i.i4.i, i1 false
  %spec.select = select i1 %i.ti, i32 %i.b, i32 %i.rx
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.16.0 = phi i64 [ %i.ry, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.ry, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.ry, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.ry, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.ry, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.ry, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.8.0 = phi i32 [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %spec.select, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !647
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !492
  tail call fastcc void @_ZN5clang6interpL7zeroAllENS0_7PtrViewE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %2)
  %i.tj = add nuw i32 %.0355, 1                   ; 2 uses
  %.not = icmp eq i32 %i.tj, %i.rl
  br i1 %.not, label %.thread304, label %bb.cd, !llvm.loop !8768

.thread304:                                       ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit, %bb.ca, %bb.an, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit, %bb.cc, %bb.ap, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit252, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %bb.am, %bb.cb, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit31, %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit38, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit45, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit52, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit59, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit66, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit73, %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit80, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit87, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb1EEEEERT_v.exit94, %_ZNK5clang6interp7PtrView5derefINS0_8FloatingEEERT_v.exit101, %_ZNK5clang6interp7PtrView5derefINS0_7BooleanEEERT_v.exit108, %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit115, %_ZNK5clang6interp7PtrView5derefINS0_13MemberPointerEEERT_v.exit122, %_ZNK5clang6interp7PtrView5derefINS0_10FixedPointEEERT_v.exit129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !475  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !474    ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp eq i32 %i.b, %i.f                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.b, 8
  br i1 %i.h, label %bb.c, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !476  ; 2 uses
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %bb.d, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8774
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.t = load i8, ptr %i.s, align 1, !tbaa !49, !range !50, !noundef !34
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.w, null
  %i.x = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %i.x, label %bb.f, label %bb.l

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49, !range !50, !noundef !34
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i6 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %i.aa, i1 %.not.i6, i1 false
  br i1 %i.ad, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, label %.thread7

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.ae = icmp ugt i32 %i.b, 16
  %i.af = zext i32 %i.b to i64                    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 4 uses
  %i.ai = icmp eq i64 %i.ah, %i.af                ; 2 uses
  %or.cond.i = select i1 %i.ae, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.d, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !451 ; 4 uses
  %.not.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !451 ; 2 uses
  %.not.not.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i15, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.ai, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.k, %bb.j
  %i.at = phi i32 [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.ap, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.au = phi i64 [ %i.ah, %bb.k ], [ %i.ah, %bb.j ], [ %i.j, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.av = phi i64 [ %i.af, %bb.k ], [ %i.af, %bb.j ], [ 8, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %.0.i.i8.i = phi ptr [ %i.as, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !481
  %.not1.i.i = icmp eq ptr %i.ax, null
  %..i.i = select i1 %.not1.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.i
  %i.ay = phi i64 [ %i.au, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.ah, %bb.i ]
  %i.az = phi i32 [ %i.at, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.an, %bb.i ]
  %i.ba = phi i64 [ %i.av, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.af, %bb.i ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.i ]
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = add i64 %i.bb, %.0.neg.i.i
  %i.bd = trunc i64 %i.bc to i32
  %i.be = udiv i32 %i.bd, %i.az
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.f, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ 0, %bb.f ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %i.be, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.bf = tail call noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.1.i) #21
  br label %bb.m

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.bg = icmp eq i32 %i.b, 0
  br i1 %i.bg, label %bb.m, label %.thread7

.thread7:                                         ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, %bb.l
  %i.bh = zext i32 %i.b to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = and i16 %i.bk, 2
  %i.bm = icmp ne i16 %i.bl, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit, %.thread7, %bb.l, %bb.d
  %.1 = phi i1 [ %i.n, %bb.d ], [ %i.bf, %_ZNK5clang6interp7PtrView8getIndexEv.exit ], [ %i.bm, %.thread7 ], [ true, %bb.l ]
  ret i1 %.1
}

declare void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_5APIntERKNS_6APSIntEEE11callback_fnIZN5clang6interp16InterpretBuiltinERNS9_11InterpStateENS9_7CodePtrEPKNS8_8CallExprEjE3$_0EES1_lS4_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 initializes((8, 12)) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(13) %2) #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8777)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !642, !noalias !8777 ; 3 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !33, !noalias !8777
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.g = and i64 %i.f, 1
  store i32 %i.b, ptr %i.d, align 8, !tbaa !642, !alias.scope !8777
  store i64 %i.g, ptr %0, align 8, !tbaa !33, !alias.scope !8777
  br label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_0clERKN4llvm6APSIntE.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(13) %2) #22, !noalias !8777
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  store i32 %i.b, ptr %i.d, align 8, !tbaa !642, !alias.scope !8777
  tail call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.j, i1 noundef zeroext false) #21
  br label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_0clERKN4llvm6APSIntE.exit"

"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_0clERKN4llvm6APSIntE.exit": ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_5APIntERKNS_6APSIntEEE11callback_fnIZN5clang6interp16InterpretBuiltinERNS9_11InterpStateENS9_7CodePtrEPKNS8_8CallExprEjE3$_1EES1_lS4_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 initializes((8, 12)) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(13) %2) #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8780)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !642, !noalias !8780 ; 7 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !noalias !8780 ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i.i.i.i = select i1 %i.g, ptr %2, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !8780
  %i.m = and i64 %i.f, %i.l
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %bb.i, label %bb.d, !prof !631

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 64, %i.b
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = trunc nuw nsw i64 %i.t to i32
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(13) %2) #22, !noalias !8780
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg.i.i.i.i = add nsw i32 %i.b, -64
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %.neg.i.i.i.i, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(13) %2) #22, !noalias !8780
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.ph.i = phi i32 [ %i.y, %bb.g ], [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.aa = add nsw i32 %.ph.i, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ac, align 8, !tbaa !642, !alias.scope !8780
  store i64 %i.ab, ptr %0, align 8, !tbaa !33, !alias.scope !8780
  br label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_1clERKN4llvm6APSIntE.exit"

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.ad = phi i32 [ %i.z, %bb.h ], [ %i.v, %bb.e ]
  %i.ae = add i32 %i.ad, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ag, align 8, !tbaa !642, !alias.scope !8780
  tail call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.af, i1 noundef zeroext false) #21
  br label %"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_1clERKN4llvm6APSIntE.exit"

"_ZZN5clang6interp16InterpretBuiltinERNS0_11InterpStateENS0_7CodePtrEPKNS_8CallExprEjENK3$_1clERKN4llvm6APSIntE.exit": ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_5APIntERKNS_6APSIntEEE11callback_fnIZN5clang6interp16InterpretBuiltinERNS9_11InterpStateENS9_7CodePtrEPKNS8_8CallExprEjE3$_2EES1_lS4_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(13) %2) #0 align 2 {
bb.a:
  tail call void @_ZNK4llvm5APInt11reverseBitsEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(13) %2) #21
  ret void
}

declare void @_ZNK4llvm5APInt11reverseBitsEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFNS_5APIntERKNS_6APSIntES4_EE11callback_fnIZN5clang6interp16InterpretBuiltinERNS9_11InterpStateENS9_7CodePtrEPKNS8_8CallExprEjE3$_3EES1_lS4_S4_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APSInt", align 8      ; 6 uses
  %5 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !642  ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !642
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !33
  store i64 %i.f, ptr %5, align 8, !tbaa !33
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %5, ptr noundef nonnull align 8 dereferenceable(13) %3) #21
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !644, !range !50, !noundef !34
  store i8 %i.i, ptr %i.g, align 4, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !8783
  call void @_Z21NormalizeRotateAmountRKN4llvm6APSIntES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) #21, !noalias !8783
  %i.j = load i32, ptr %i.b, align 8, !tbaa !642, !noalias !8783
  %i.k = icmp ult i32 %i.j, 65
  br i1 %i.k, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit
  %i.l = load ptr, ptr %5, align 8, !tbaa !33, !noalias !8783 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #24, !noalias !8783
  br label %_ZN4llvm5APIntD2Ev.exit.i

end_hunk_9
