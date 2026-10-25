Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EvaluationResult?download=true
inline.NumInlined: 1054
inline.NumDeleted: 696
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6interpL21CheckArrayInitializedERNS0_11InterpStateENS_14SourceLocationENS0_7PtrViewE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = zext i32 %i.aa to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %bb.e ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i.i, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.am, 0
  %.not.i.i.i = or i1 %i.al, %.not.i1.i.i
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView8getFieldEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nsw i32 %i.aq, -50
  %i.as = icmp ult i32 %i.ar, 3
  %spec.select.i.i.i.i = select i1 %i.as, ptr %i.an, ptr null
  br label %_ZNK5clang6interp7PtrView8getFieldEv.exit

_ZNK5clang6interp7PtrView8getFieldEv.exit:        ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i, %bb.g
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.g ], [ null, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i ] ; 2 uses
  %i.at = call ptr @_ZN5clang6interp5State6FFDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, i32 noundef 2502, i32 noundef 0) #16 ; 6 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN5clang6interpL30DiagnoseUninitializedSubobjectERNS0_11InterpStateENS_14SourceLocationEPKNS_9FieldDeclE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView8getFieldEv.exit
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKNS_9FieldDeclEEERKS0_RKT_.exit.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.aw) ; 2 uses
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !80
  br label %_ZNK5clang17PartialDiagnosticlsIPKNS_9FieldDeclEEERKS0_RKT_.exit.i.i

_ZNK5clang17PartialDiagnosticlsIPKNS_9FieldDeclEEERKS0_RKT_.exit.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.h
  %i.ay = phi ptr [ %i.ax, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !93
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  store i8 2, ptr %i.bc, align 1, !tbaa !20
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !80 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !93  ; 2 uses
  %i.bg = add i8 %i.bf, 1                         ; 2 uses
  store i8 %i.bg, ptr %i.bd, align 8, !tbaa !93
  %i.bh = zext i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh
  store i64 1, ptr %i.bi, align 8, !tbaa !76
  %i.bj = ptrtoint ptr %.0.i.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bl = zext i8 %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 10, ptr %i.bm, align 1, !tbaa !20
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !80 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i8, ptr %i.bn, align 8, !tbaa !93  ; 2 uses
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bn, align 8, !tbaa !93
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !76
  br label %_ZN5clang6interpL30DiagnoseUninitializedSubobjectERNS0_11InterpStateENS_14SourceLocationEPKNS_9FieldDeclE.exit

_ZN5clang6interpL30DiagnoseUninitializedSubobjectERNS0_11InterpStateENS_14SourceLocationEPKNS_9FieldDeclE.exit: ; preds = %_ZNK5clang6interp7PtrView8getFieldEv.exit, %_ZNK5clang17PartialDiagnosticlsIPKNS_9FieldDeclEEERKS0_RKT_.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bt, align 8, !tbaa !75
  %i.bu = call ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %.sroa.0.0.copyload.i.i, i32 noundef 2498) #16 ; 0 uses
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 53
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !73, !range !71, !noundef !72
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  %.not111 = select i1 %i.bx, i1 true, i1 %i.ca
  %i.cb = zext i32 %i.b to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = zext i32 %i.b to i64                    ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = zext i32 %i.b to i64                    ; 4 uses
  %i.ci = zext i32 %i.b to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  br i1 %.not111, label %.lr.ph121, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.16108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %3, align 8, !tbaa !74
  br label %bb.j

.lr.ph121:                                        ; preds = %bb.i
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %4, align 8, !tbaa !74
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZNK5clang6interp7PtrView6narrowEv.exit
  %.027117 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %_ZNK5clang6interp7PtrView6narrowEv.exit ] ; 2 uses
  %.028116 = phi i1 [ true, %.lr.ph ], [ %i.ej, %_ZNK5clang6interp7PtrView6narrowEv.exit ]
  %i.cl = trunc i64 %.027117 to i32
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !169 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !31, !noalias !169
  %i.cp = icmp eq i32 %i.b, %i.co                 ; 3 uses
  br i1 %i.cp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !34, !noalias !169
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn5.i = phi ptr [ %i.cq, %bb.k ], [ %i.cm, %bb.j ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !102, !noalias !169
  %i.cr = mul i32 %.pn.i, %i.cl
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !103, !noalias !169
  %.not.i33 = icmp eq ptr %i.ct, null
  %.0.v.i = select i1 %.not.i33, i32 8, i32 16
  %.0.i34 = add i32 %i.cr, %i.b
  %i.cu = add i32 %.0.i34, %.0.v.i                ; 7 uses
  %i.cv = zext i32 %i.cu to i64                   ; 7 uses
  br i1 %i.cp, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !101, !noalias !170 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.l
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !34, !noalias !170 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !101, !noalias !170 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 53
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !73, !range !71, !noalias !170, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 53
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !73, !range !71, !noalias !170, !noundef !72
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !104, !noalias !170
  %i.dl = icmp ugt i32 %i.cu, %i.dk
  br i1 %i.dl, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.m

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !104, !noalias !170
  %i.do = icmp ugt i32 %i.cu, %i.dn
  br i1 %i.do, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.m:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.dp = zext i32 %i.cx to i64                   ; 2 uses
  %.not.i.i.i37 = icmp eq i32 %i.cu, %i.b
  br i1 %.not.i.i.i37, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.dq = zext i32 %i.db to i64                   ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.cu, %i.b
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.m
  %i.dr = phi i64 [ %i.dp, %bb.m ], [ %i.dq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.ds = phi i64 [ %i.ch, %bb.m ], [ %i.ce, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.cm, %bb.m ], [ %i.cz, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103, !noalias !170
  %.not1.i.i.i = icmp eq ptr %i.du, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.m
  %i.dv = phi i64 [ %i.ds, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ch, %bb.m ], [ %i.ce, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.dw = phi i64 [ %i.dr, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.dp, %bb.m ], [ %i.dq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.m ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.dx = sub nsw i64 %i.cv, %i.dv
  %i.dy = add nsw i64 %i.dx, %.0.neg.i.i.i
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = icmp eq i64 %i.dw, %i.dz
  br i1 %i.ea, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %.not.i36 = icmp eq i32 %i.cu, %i.b
  br i1 %.not.i36, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.cp, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !34, !noalias !170
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i3.i = phi ptr [ %i.eb, %bb.o ], [ %i.cm, %bb.n ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !73, !range !71, !noalias !170, !noundef !72
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !170
  %.not.i.i4.i = icmp eq ptr %i.eg, null
  %i.eh = select i1 %i.ee, i1 %.not.i.i4.i, i1 false
  %spec.select = select i1 %i.eh, i32 %i.b, i32 %i.cu
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.16108.0 = phi i64 [ %i.cv, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.cv, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.cv, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.cv, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.cv, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.cv, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.8106.0 = phi i32 [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %spec.select, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  store i32 %.sroa.8106.0, ptr %.sroa.8106.0..sroa_idx, align 8, !tbaa !75
  store i64 %.sroa.16108.0, ptr %.sroa.16108.0..sroa_idx, align 8, !tbaa !76
  %i.ei = tail call fastcc noundef zeroext i1 @_ZN5clang6interpL22CheckFieldsInitializedERNS0_11InterpStateENS_14SourceLocationENS0_7PtrViewEPKNS0_6RecordE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, ptr noundef %i.bz)
  %i.ej = select i1 %i.ei, i1 %.028116, i1 false  ; 2 uses
  %i.ek = add nuw nsw i64 %.027117, 1             ; 2 uses
  %.not31 = icmp eq i64 %i.ek, %i.r
  br i1 %.not31, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread, label %bb.j, !llvm.loop !163

bb.p:                                             ; preds = %.lr.ph121, %_ZNK5clang6interp7PtrView6narrowEv.exit68
  %.026120 = phi i64 [ 0, %.lr.ph121 ], [ %i.gk, %_ZNK5clang6interp7PtrView6narrowEv.exit68 ] ; 2 uses
  %.129119 = phi i1 [ true, %.lr.ph121 ], [ %i.gj, %_ZNK5clang6interp7PtrView6narrowEv.exit68 ]
  %i.el = trunc i64 %.026120 to i32
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !171 ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !31, !noalias !171
  %i.ep = icmp eq i32 %i.b, %i.eo                 ; 3 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eq = load ptr, ptr %i.cd, align 8, !tbaa !34, !noalias !171
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn5.i39 = phi ptr [ %i.eq, %bb.q ], [ %i.em, %bb.p ] ; 2 uses
  %.pn.in.i40 = getelementptr inbounds nuw i8, ptr %.pn5.i39, i64 16
  %.pn.i41 = load i32, ptr %.pn.in.i40, align 8, !tbaa !102, !noalias !171
  %i.er = mul i32 %.pn.i41, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %.pn5.i39, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !103, !noalias !171
  %.not.i42 = icmp eq ptr %i.et, null
  %.0.v.i43 = select i1 %.not.i42, i32 8, i32 16
  %.0.i44 = add i32 %i.er, %i.b
  %i.eu = add i32 %.0.i44, %.0.v.i43              ; 7 uses
  %i.ev = zext i32 %i.eu to i64                   ; 7 uses
  br i1 %i.ep, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64: ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !101, !noalias !172 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i65

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47: ; preds = %bb.r
  %i.ez = load ptr, ptr %i.cg, align 8, !tbaa !34, !noalias !172 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !101, !noalias !172 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48

_ZNK5clang6interp7PtrView7inArrayEv.exit.i65:     ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 53
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !73, !range !71, !noalias !172, !noundef !72
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66, label %_ZNK5clang6interp7PtrView6narrowEv.exit68

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 53
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !73, !range !71, !noalias !172, !noundef !72
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49, label %_ZNK5clang6interp7PtrView6narrowEv.exit68

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i65
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !104, !noalias !172
  %i.fl = icmp ugt i32 %i.eu, %i.fk
  br i1 %i.fl, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %bb.s

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !104, !noalias !172
  %i.fo = icmp ugt i32 %i.eu, %i.fn
  br i1 %i.fo, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50

bb.s:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66
  %i.fp = zext i32 %i.ex to i64                   ; 2 uses
  %.not.i.i.i67 = icmp eq i32 %i.eu, %i.b
  br i1 %.not.i.i.i67, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49
  %i.fq = zext i32 %i.fb to i64                   ; 2 uses
  %.not.i5.i.i51 = icmp eq i32 %i.eu, %i.b
  br i1 %.not.i5.i.i51, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50, %bb.s
  %i.fr = phi i64 [ %i.fp, %bb.s ], [ %i.fq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %i.fs = phi i64 [ %i.ch, %bb.s ], [ %i.ce, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %.0.i.i3.i.i53 = phi ptr [ %i.em, %bb.s ], [ %i.ez, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i53, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !103, !noalias !172
  %.not1.i.i.i54 = icmp eq ptr %i.fu, null
  %..i.i.i55 = select i1 %.not1.i.i.i54, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50, %bb.s
  %i.fv = phi i64 [ %i.fs, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52 ], [ %i.ch, %bb.s ], [ %i.ce, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %i.fw = phi i64 [ %i.fr, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52 ], [ %i.fp, %bb.s ], [ %i.fq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %.0.neg.i.i.i57 = phi i64 [ %..i.i.i55, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i52 ], [ 0, %bb.s ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i50 ]
  %i.fx = sub nsw i64 %i.ev, %i.fv
  %i.fy = add nsw i64 %i.fx, %.0.neg.i.i.i57
  %i.fz = and i64 %i.fy, 4294967295
  %i.ga = icmp eq i64 %i.fw, %i.fz
  br i1 %i.ga, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56
  %.not.i59 = icmp eq i32 %i.eu, %i.b
  br i1 %.not.i59, label %_ZNK5clang6interp7PtrView6narrowEv.exit68, label %bb.t

bb.t:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58
  br i1 %i.ep, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = load ptr, ptr %i.ck, align 8, !tbaa !34, !noalias !172
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60: ; preds = %bb.u, %bb.t
  %.0.i.i3.i61 = phi ptr [ %i.gb, %bb.u ], [ %i.em, %bb.t ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i3.i61, i64 53
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !73, !range !71, !noalias !172, !noundef !72
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i3.i61, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !172
  %.not.i.i4.i62 = icmp eq ptr %i.gg, null
  %i.gh = select i1 %i.ge, i1 %.not.i.i4.i62, i1 false
  %spec.select109 = select i1 %i.gh, i32 %i.b, i32 %i.eu
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit68

_ZNK5clang6interp7PtrView6narrowEv.exit68:        ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i65, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47
  %.sroa.16.0 = phi i64 [ %i.ev, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i65 ], [ %i.ev, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64 ], [ %i.ev, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60 ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66 ], [ %i.ev, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47 ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56 ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49 ], [ %i.ev, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58 ], [ %i.ev, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48 ]
  %.sroa.8.0 = phi i32 [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i65 ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i64 ], [ %spec.select109, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i60 ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i66 ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i47 ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i56 ], [ %i.b, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i49 ], [ %i.b, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i58 ], [ %i.b, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i48 ]
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !75
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !76
  %i.gi = tail call fastcc noundef zeroext i1 @_ZN5clang6interpL21CheckArrayInitializedERNS0_11InterpStateENS_14SourceLocationENS0_7PtrViewE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %4)
  %i.gj = select i1 %i.gi, i1 %.129119, i1 false  ; 2 uses
  %i.gk = add nuw nsw i64 %.026120, 1             ; 2 uses
  %.not = icmp eq i64 %i.gk, %i.r
  br i1 %.not, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread, label %bb.p, !llvm.loop !168

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread: ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit, %_ZNK5clang6interp7PtrView6narrowEv.exit68, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %_ZN5clang6interpL30DiagnoseUninitializedSubobjectERNS0_11InterpStateENS_14SourceLocationEPKNS_9FieldDeclE.exit, %bb.d, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %.1 = phi i1 [ true, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ], [ true, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ false, %_ZN5clang6interpL30DiagnoseUninitializedSubobjectERNS0_11InterpStateENS_14SourceLocationEPKNS_9FieldDeclE.exit ], [ true, %bb.d ], [ %i.gj, %_ZNK5clang6interp7PtrView6narrowEv.exit68 ], [ %i.ej, %_ZNK5clang6interp7PtrView6narrowEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp16EvaluationResult23checkDynamicAllocationsERNS0_11InterpStateERKNS0_7ContextERKNS0_7PointerENS0_10SourceInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SetVector", align 8   ; 10 uses
  %6 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.g, align 4, !tbaa !98
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20, !noalias !177
  store ptr %i.i, ptr %6, align 8, !tbaa !38, !alias.scope !177
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20, !noalias !177
  store i32 %i.l, ptr %i.j, align 8, !tbaa !39, !alias.scope !177
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = load i64, ptr %3, align 8, !tbaa !40, !noalias !177
  store i64 %i.n, ptr %i.m, align 8, !tbaa !41, !alias.scope !177
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !48   ; 4 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %.critedge25, label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %.02142, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.r
  br i1 %.not, label %.critedge25, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.02142 = phi ptr [ %i.s, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.02142, align 8, !tbaa !74 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4, !tbaa !75
  %.not38 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not38, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.v = load i32, ptr %i.a, align 8, !tbaa !12
  %i.w = icmp ne i32 %i.v, 1                      ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond.i, label %bb.e, label %_ZNK5clang6interp7Pointer6isRootEv.exit

_ZNK5clang6interp7Pointer6isRootEv.exit:          ; preds = %bb.d
  %i.z = load i32, ptr %i.k, align 8, !tbaa !20, !noalias !72 ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %.thread.thread, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit

.thread.thread:                                   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.ae = load i64, ptr %3, align 8, !tbaa !40, !noalias !178
  %.pre.i.i54 = zext i32 %i.z to i64
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.w, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, label %.thread

.thread:                                          ; preds = %bb.e
  %.pr = load i32, ptr %i.k, align 8, !tbaa !20, !noalias !178 ; 4 uses
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre46 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !31
  %i.af = icmp eq i32 %.pr, %.pre46
  %i.ag = load i64, ptr %3, align 8, !tbaa !40, !noalias !178 ; 2 uses
  %.pre.i.i = zext i32 %.pr to i64                ; 3 uses
  br i1 %i.af, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i:     ; preds = %.thread.thread, %bb.f, %.thread
  %.pre.i.i55 = phi i64 [ %.pre.i.i, %bb.f ], [ %.pre.i.i, %.thread ], [ %.pre.i.i54, %.thread.thread ] ; 2 uses
  %i.ak = phi i64 [ %i.ag, %bb.f ], [ %i.ag, %.thread ], [ %i.ae, %.thread.thread ]
  %i.al = phi i32 [ %.pr, %bb.f ], [ %.pr, %.thread ], [ %i.z, %.thread.thread ]
  %.0.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %.pre, %.thread ], [ %i.aa, %.thread.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 53
  %i.an = load i8, ptr %i.am, align 1, !tbaa !73, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %.not.i.i = icmp ne i64 %i.ak, %.pre.i.i55
  %or.cond.not.i.i = select i1 %i.ao, i1 %.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i
  %i.ap = icmp ugt i32 %i.al, 15
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = and i16 %i.as, 256
  %.not2.i.i = icmp eq i16 %i.at, 0
  br i1 %.not2.i.i, label %bb.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit

_ZNK5clang6interp7Pointer14isArrayElementEv.exit: ; preds = %bb.i, %bb.h, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.au = phi i64 [ 1, %_ZNK5clang6interp7Pointer6isRootEv.exit ], [ 0, %bb.e ], [ 0, %bb.i ], [ 1, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i ], [ 1, %bb.h ]
  %i.av = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34) %1, i64 %4, i32 noundef 2416, i32 noundef 0) #16 ; 6 uses
  %i.aw = call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ax = and i64 %i.aw, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.be, align 16
  %i.bg = and i8 %i.bf, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bg, 42
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit.i29

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bk = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bj) ; 2 uses
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !80
  br label %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit.i29

_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit.i29: ; preds = %bb.j, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.bl = phi ptr [ %i.bk, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.bh, %bb.j ] ; 2 uses
  %i.bm = zext i1 %spec.select.i.i.i.i.i.i.i.i.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = load i8, ptr %i.bl, align 8, !tbaa !93
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  store i8 2, ptr %i.bq, align 1, !tbaa !20
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !80 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i8, ptr %i.br, align 8, !tbaa !93  ; 2 uses
  %i.bu = add i8 %i.bt, 1                         ; 2 uses
  store i8 %i.bu, ptr %i.br, align 8, !tbaa !93
  %i.bv = zext i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  store i64 %i.bm, ptr %i.bw, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.by = zext i8 %i.bu to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 2, ptr %i.bz, align 1, !tbaa !20
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !80 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !93  ; 2 uses
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.ca, align 8, !tbaa !93
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 %i.au, ptr %i.cf, align 8, !tbaa !76
  br label %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31

_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31: ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit.i29
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !21
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cg, align 8
  %i.ch = and i64 %.sroa.0.0.copyload.i.i.i, -3
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #15
  %i.ck = call ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(34) %1, i32 %i.cj, i32 noundef 2417) #16 ; 0 uses
  %.pre47 = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %.critedge25

.critedge25:                                      ; preds = %bb.c, %bb.b, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31
  %i.cl = phi ptr [ %.pre47, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31 ], [ %i.o, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.not40 = phi i1 [ false, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31 ], [ true, %bb.b ], [ true, %bb.c ]
  %i.cm = icmp eq ptr %i.cl, %i.e
  br i1 %i.cm, label %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %.critedge25
  call void @free(ptr noundef %i.cl) #16
  br label %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i: ; preds = %bb.k, %.critedge25
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !108 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i
  %i.cq = load ptr, ptr %5, align 8, !tbaa !109
  %i.cr = zext i32 %i.co to i64                   ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cr, 31
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.cu, 1073741820
  %i.cw = add nuw nsw i64 %i.cv, %i.cs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cq, i64 noundef %i.cw, i64 noundef 8) #16
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit
  %.4 = phi i1 [ %.not40, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef byval(%"struct.clang::interp::PtrView") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 8 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %7 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %8 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView6isLiveEv.exit

_ZNK5clang6interp7PtrView6isLiveEv.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19
  %i.d = and i8 %i.c, 10
  %or.cond = icmp eq i8 %i.d, 0
  br i1 %or.cond, label %bb.b, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.b:                                             ; preds = %_ZNK5clang6interp7PtrView6isLiveEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq i32 %i.f, %i.i
  br i1 %i.j, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread: ; preds = %bb.b
  %i.n = zext i32 %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !104
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !101
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext i32 %i.f to i64                    ; 3 uses
  %.not.i.i = icmp eq i64 %i.v, %i.aj
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread
  %i.ak = zext i32 %i.f to i64                    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !101
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i5.i = icmp eq i64 %i.ab, %i.ak
  br i1 %.not.i5.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i
  %i.ar = phi i64 [ %i.v, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ab, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.as = phi i64 [ %i.ai, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.at = phi i64 [ %i.aj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ak, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.i.i3.i = phi ptr [ %i.g, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.an, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103
  %.not1.i.i = icmp eq ptr %i.av, null
  %..i.i = select i1 %.not1.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i
  %i.aw = phi i64 [ %i.ar, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.v, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ab, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.ax = phi i64 [ %i.at, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.aj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ak, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.ay = phi i64 [ %i.as, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.ai, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.az = sub nsw i64 %i.aw, %i.ax
  %i.ba = add nsw i64 %i.az, %.0.neg.i.i
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %i.bd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %0), !noalias !207
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.bd, 1
  %i.be = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.be, label %bb.c, label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !98
  %.not.i.i58 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i58, label %bb.e, label %bb.d, !prof !99

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang6interp5BlockELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef %i.bg)
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bg, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107, %bb.d, %bb.e
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !31
  %i.bv = icmp eq i32 %i.bq, %i.bu                ; 2 uses
  br i1 %i.bv, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit
  %i.bw = zext i32 %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %.0.i59111 = phi ptr [ %i.bz, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %i.bs, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit ] ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 6 uses
  %.not50 = icmp eq ptr %i.cb, null
  br i1 %.not50, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 562
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !110, !range !71, !noundef !72
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.g, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx = shl nuw nsw i64 %i.cj, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %.not51128 = icmp eq i32 %i.ci, 0
  br i1 %.not51128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 288
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %.idx134 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx134
  %.not52130 = icmp eq i32 %i.cp, 0
  br i1 %.not52130, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %.lr.ph133

.lr.ph133:                                        ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.046129 = phi ptr [ %i.cg, %.lr.ph ], [ %i.df, %bb.j ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.046129, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !100
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 562
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !110, !range !71, !noundef !72
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.046129, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !95
  %i.da = load i64, ptr %i.cl, align 8, !tbaa !41, !noalias !208
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.cz, %i.db                    ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !38, !noalias !208
  %i.de = zext i32 %i.dc to i64
  store ptr %i.dd, ptr %2, align 8, !tbaa !74
  store i32 %i.dc, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !75
  store i64 %i.de, ptr %.sroa.5101.0..sroa_idx, align 8, !tbaa !76
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %.046129, i64 32 ; 2 uses
  %.not51 = icmp eq ptr %i.df, %i.ck
  br i1 %.not51, label %._crit_edge, label %bb.h

bb.k:                                             ; preds = %.lr.ph133, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread
  %.045131 = phi ptr [ %i.cn, %.lr.ph133 ], [ %i.ed, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.045131, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !209 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !73, !range !71, !noundef !72
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not.i.i62 = icmp ne ptr %i.dm, null           ; 3 uses
  %or.cond.not.i.i = select i1 %i.dk, i1 true, i1 %.not.i.i62
  br i1 %or.cond.not.i.i, label %bb.l, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !111
  %cond = icmp eq i8 %i.do, 13
  br i1 %cond, label %bb.o, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not.i7.i = icmp eq ptr %i.dq, null
  %i.dr = select i1 %i.dk, i1 %.not.i7.i, i1 false
  br i1 %i.dr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !111
  %i.ds = icmp ne i8 %.pre.i, 13                  ; 2 uses
  %brmerge.i.not = select i1 %i.ds, i1 %.not.i.i62, i1 false
  br i1 %brmerge.i.not, label %.split, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit

bb.n:                                             ; preds = %bb.l
  br i1 %.not.i.i62, label %.split, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

.split:                                           ; preds = %bb.n, %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 562
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !110, !range !71, !noundef !72
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.o, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit: ; preds = %bb.m
  br i1 %i.ds, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %.split, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.045131, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !52
  %i.dy = load i64, ptr %i.cs, align 8, !tbaa !41, !noalias !210
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %i.dx, %i.dz                    ; 2 uses
  %i.eb = load ptr, ptr %0, align 8, !tbaa !38, !noalias !210
  %i.ec = zext i32 %i.ea to i64
  store ptr %i.eb, ptr %3, align 8, !tbaa !74
  store i32 %i.ea, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  store i64 %i.ec, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !76
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %bb.n, %.split, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit, %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.045131, i64 24 ; 2 uses
  %.not52 = icmp eq ptr %i.ed, %i.cr
  br i1 %.not52, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.k

.critedge:                                        ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
end_hunk_0
begin_hunk_1_@_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE:bb.a
  %i.hh = load i32, ptr %i.fq, align 8, !tbaa !20, !noalias !213 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !31
  %i.hk = icmp eq i32 %i.hh, %i.hj
  br i1 %i.hk, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.hl = zext i32 %i.hh to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !34
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.ab, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i68 = phi ptr [ %i.ho, %bb.ab ], [ %i.gy, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i68, i64 20
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !101
  %i.hr = icmp eq i32 %i.hq, -1
  br i1 %i.hr, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit"

"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit": ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.hs = call noundef zeroext i1 @_ZNK5clang6interp7Pointer12isOnePastEndEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  br i1 %i.hs, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %bb.ac

bb.ac:                                            ; preds = %"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit"
  %i.ht = load ptr, ptr %i.fp, align 8, !tbaa !20 ; 3 uses
  %i.hu = load ptr, ptr %1, align 8, !tbaa !109, !noalias !214
  %i.hv = load ptr, ptr %i.fr, align 8, !tbaa !113, !noalias !214 ; 2 uses
  %i.hw = load i32, ptr %i.fs, align 4, !tbaa !108, !noalias !214 ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hy = add i32 %i.hw, -1                       ; 2 uses
  %i.hz = ptrtoint ptr %i.ht to i64
  %i.ia = mul i64 %i.hz, -4658895280553007687     ; 2 uses
  %i.ib = lshr i64 %i.ia, 31
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = trunc i64 %i.ic to i32
  %i.ie = and i32 %i.hy, %i.id                    ; 3 uses
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = lshr i64 %i.if, 5
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !75
  %i.ij = and i32 %i.ie, 31
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = trunc i32 %i.ik to i1
  br i1 %i.il, label %.lr.ph.i.i.i.i.i, label %.loopexit, !prof !114

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %bb.ae
  %i.im = phi i64 [ %i.is, %bb.ae ], [ %i.if, %bb.ad ]
  %.019.i.i.i.i.i = phi i32 [ %i.ir, %bb.ae ], [ %i.ie, %bb.ad ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !74
  %i.ip = icmp eq ptr %i.ht, %i.io
  br i1 %i.ip, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %bb.ae, !prof !99

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.iq = add nuw i32 %.019.i.i.i.i.i, 1
  %i.ir = and i32 %i.iq, %i.hy                    ; 3 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = lshr i64 %i.is, 5
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !75
  %i.iw = and i32 %i.ir, 31
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc i32 %i.ix to i1
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i, label %.loopexit, !prof !115

.loopexit:                                        ; preds = %bb.ae, %bb.ac, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  store ptr %i.ht, ptr %7, align 8, !tbaa !38, !alias.scope !215
  %i.iz = load i32, ptr %i.fq, align 8, !tbaa !20, !noalias !215
  store i32 %i.iz, ptr %i.ft, align 8, !tbaa !39, !alias.scope !215
  %i.ja = load i64, ptr %6, align 8, !tbaa !40, !noalias !215
  store i64 %i.ja, ptr %i.fu, align 8, !tbaa !41, !alias.scope !215
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit

_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK5clang6interp7Pointer6isLiveEv.exit.i, %bb.aa, %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i.i, %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit, %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.i, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %.loopexit, %"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit"
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.jb = add i32 %.044, 1
  br label %bb.w, !llvm.loop !201

bb.af:                                            ; preds = %bb.u
  %i.jc = call fastcc noundef zeroext i1 @_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE(ptr noundef nonnull %i.fi)
  br i1 %i.jc, label %.preheader125, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

.preheader125:                                    ; preds = %bb.af
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader125, %_ZNK5clang6interp7PtrView6narrowEv.exit
  %.0 = phi i32 [ %i.ls, %_ZNK5clang6interp7PtrView6narrowEv.exit ], [ 0, %.preheader125 ] ; 3 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !101 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, -1
  br i1 %i.jg, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit69, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = load i32, ptr %i.je, align 8, !tbaa !102
  %i.ji = udiv i32 %i.jf, %i.jh
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit69

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit69: ; preds = %bb.ag, %bb.ah
  %i.jj = phi i32 [ %i.ji, %bb.ah ], [ 0, %bb.ag ]
  %.not53 = icmp eq i32 %.0, %i.jj
  br i1 %.not53, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit69
  %i.jk = load i32, ptr %i.e, align 8, !tbaa !39, !noalias !216 ; 18 uses
  %i.jl = load ptr, ptr %0, align 8, !tbaa !38, !noalias !216 ; 5 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !21, !noalias !216 ; 8 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !31, !noalias !216
  %i.jp = icmp eq i32 %i.jk, %i.jo                ; 3 uses
  br i1 %i.jp, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jq = zext i32 %i.jk to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !34, !noalias !216
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn5.i = phi ptr [ %i.jt, %bb.aj ], [ %i.jm, %bb.ai ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !102, !noalias !216
  %i.ju = mul i32 %.pn.i, %.0
  %i.jv = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !103, !noalias !216
  %.not.i70 = icmp eq ptr %i.jw, null
  %.0.v.i = select i1 %.not.i70, i32 8, i32 16
  %.0.i71 = add i32 %i.ju, %i.jk
  %i.jx = add i32 %.0.i71, %.0.v.i                ; 7 uses
  %i.jy = zext i32 %i.jx to i64                   ; 7 uses
  br i1 %i.jp, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75: ; preds = %bb.ak
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !101, !noalias !217 ; 2 uses
  %i.kb = icmp eq i32 %i.ka, -1
  br i1 %i.kb, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.ak
  %i.kc = zext i32 %i.jk to i64                   ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !34, !noalias !217 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !101, !noalias !217 ; 2 uses
  %i.ki = icmp eq i32 %i.kh, -1
  br i1 %i.ki, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jm, i64 53
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !73, !range !71, !noalias !217, !noundef !72
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 53
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !73, !range !71, !noalias !217, !noundef !72
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !104, !noalias !217
  %i.kr = icmp ugt i32 %i.jx, %i.kq
  br i1 %i.kr, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.al

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !104, !noalias !217
  %i.ku = icmp ugt i32 %i.jx, %i.kt
  br i1 %i.ku, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.al:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.kv = zext i32 %i.ka to i64                   ; 2 uses
  %i.kw = zext i32 %i.jk to i64                   ; 2 uses
  %.not.i.i.i76 = icmp eq i32 %i.jx, %i.jk
  br i1 %.not.i.i.i76, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.kx = zext i32 %i.kh to i64                   ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.jx, %i.jk
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.al
  %i.ky = phi i64 [ %i.kv, %bb.al ], [ %i.kx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.kz = phi i64 [ %i.kw, %bb.al ], [ %i.kc, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.jm, %bb.al ], [ %i.kf, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !103, !noalias !217
  %.not1.i.i.i = icmp eq ptr %i.lb, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.al
  %i.lc = phi i64 [ %i.kz, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.kw, %bb.al ], [ %i.kc, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.ld = phi i64 [ %i.ky, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.kv, %bb.al ], [ %i.kx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.al ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.le = sub nsw i64 %i.jy, %i.lc
  %i.lf = add nsw i64 %i.le, %.0.neg.i.i.i
  %i.lg = and i64 %i.lf, 4294967295
  %i.lh = icmp eq i64 %i.ld, %i.lg
  br i1 %i.lh, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %i.li = zext i32 %i.jk to i64
  %.not.i73 = icmp eq i32 %i.jx, %i.jk
  br i1 %.not.i73, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.jp, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !34, !noalias !217
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.an, %bb.am
  %.0.i.i3.i74 = phi ptr [ %i.ll, %bb.an ], [ %i.jm, %bb.am ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i3.i74, i64 53
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !73, !range !71, !noalias !217, !noundef !72
  %i.lo = trunc nuw i8 %i.ln to i1
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i.i3.i74, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !217
  %.not.i.i4.i = icmp eq ptr %i.lq, null
  %i.lr = select i1 %i.lo, i1 %.not.i.i4.i, i1 false
  %spec.select = select i1 %i.lr, i32 %i.jk, i32 %i.jx
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.16.0 = phi i64 [ %i.jy, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.jy, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75 ], [ %i.jy, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.jy, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.jy, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.jy, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.8.0 = phi i32 [ %i.jk, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.jk, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i75 ], [ %spec.select, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.jk, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.jk, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.jk, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.jk, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.jk, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.jk, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  store ptr %i.jl, ptr %8, align 8, !tbaa !74
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !75
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !76
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ls = add i32 %.0, 1
  br label %bb.ag, !llvm.loop !206

_ZNK5clang6interp7PtrView6isLiveEv.exit.thread:   ; preds = %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit69, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread, %._crit_edge, %bb.v, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %bb.a, %bb.f, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread, %bb.t, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %bb.af, %_ZNK5clang6interp7PtrView6isLiveEv.exit, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  ret void
}

declare ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34), i64, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(34), i32, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang7VarDecl17getAnyInitializerERPKS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = icmp eq i32 %i.b, %i.f                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.b, 8
  br i1 %i.h, label %bb.c, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %bb.d, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !220
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.t = load i8, ptr %i.s, align 1, !tbaa !73, !range !71, !noundef !72
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.w, null
  %i.x = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %i.x, label %bb.f, label %bb.l

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !73, !range !71, !noundef !72
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.d, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !102 ; 4 uses
  %.not.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %.not.not.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i15, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.ai, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.k, %bb.j
  %i.at = phi i32 [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.ap, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.au = phi i64 [ %i.ah, %bb.k ], [ %i.ah, %bb.j ], [ %i.j, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.av = phi i64 [ %i.af, %bb.k ], [ %i.af, %bb.j ], [ 8, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %.0.i.i8.i = phi ptr [ %i.as, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103
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
  %i.bf = tail call noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.1.i) #16
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !99

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !127
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !235
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !236
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !237
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !236
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !235 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !240 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !236
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !242
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !72
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !72
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #16, !inline_history !221
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !267 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !20
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i

_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i: ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !269
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.aq = tail call noundef ptr @_ZNK5clang13CXXRecordDecl14DefinitionData16getBasesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(104) %i.am) #16
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit

_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit: ; preds = %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i, %bb.l
  %.0.i = phi ptr [ %i.aq, %bb.l ], [ %.pre.i.i, %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i ]
  ret ptr %.0.i
}

declare ptr @_ZN5clang6interp5State6FFDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(34), i32, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare i32 @_ZNK5clang6interp10Descriptor11getLocationEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14976 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !272  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(928) ptr @_Znwm(i64 noundef 928) #17 ; 40 uses
  store i8 0, ptr %i.d, align 8, !tbaa !93
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  store ptr %i.e, ptr %.ptr.i, align 8, !tbaa !274
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %i.f, align 8, !tbaa !276
  store i8 0, ptr %i.e, align 8, !tbaa !20
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  store ptr %i.g, ptr %.ptr.1.i, align 8, !tbaa !274
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %i.h, align 8, !tbaa !276
  store i8 0, ptr %i.g, align 8, !tbaa !20
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  store ptr %i.i, ptr %.ptr.2.i, align 8, !tbaa !274
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 0, ptr %i.j, align 8, !tbaa !276
  store i8 0, ptr %i.i, align 8, !tbaa !20
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  store ptr %i.k, ptr %.ptr.3.i, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 0, ptr %i.l, align 8, !tbaa !276
  store i8 0, ptr %i.k, align 8, !tbaa !20
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  store ptr %i.m, ptr %.ptr.4.i, align 8, !tbaa !274
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 0, ptr %i.n, align 8, !tbaa !276
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_:bb.a
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !301

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !74
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !75
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !302

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !303

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !108
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !130
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang6interp5BlockELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = load i32, ptr %i.a, align 8, !tbaa !49
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !49
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7Pointer12isOnePastEndEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20, !noalias !306 ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !21   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  %i.k = icmp eq i32 %i.g, %i.j                   ; 2 uses
  br i1 %i.k, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.h, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !101
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit

_ZNK5clang6interp7Pointer9isPastEndEv.exit:       ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit
  %i.s = load i64, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !104
  %i.v = zext i32 %i.u to i64
  %i.w = icmp ugt i64 %i.s, %i.v
  br i1 %i.w, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3:     ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit
  %.pre = zext i32 %i.g to i64                    ; 5 uses
  br i1 %i.k, label %_ZNK5clang6interp7Pointer7getSizeEv.exit, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread

_ZNK5clang6interp7Pointer7getSizeEv.exit:         ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !101  ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.s, %.pre
  br i1 %.not.i.i6, label %_ZNK5clang6interp7Pointer9getOffsetEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread:  ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pre
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !101 ; 2 uses
  %.not.i.i612 = icmp eq i64 %i.s, %.pre
  br i1 %.not.i.i612, label %_ZNK5clang6interp7Pointer9getOffsetEv.exit, label %.thread

.thread:                                          ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pre
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit, %.thread
  %i.ah = phi i32 [ %i.ad, %.thread ], [ %i.y, %_ZNK5clang6interp7Pointer7getSizeEv.exit ]
  %.0.i.i.i = phi ptr [ %i.ag, %.thread ], [ %i.h, %_ZNK5clang6interp7Pointer7getSizeEv.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  %.not1.i.i = icmp eq ptr %i.aj, null
  %..i.i = select i1 %.not1.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer9getOffsetEv.exit

_ZNK5clang6interp7Pointer9getOffsetEv.exit:       ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread, %_ZNK5clang6interp7Pointer7getSizeEv.exit, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i
  %i.ak = phi i32 [ %i.ah, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.y, %_ZNK5clang6interp7Pointer7getSizeEv.exit ], [ %i.ad, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread ]
  %i.al = sub nsw i64 %i.s, %.pre
  %i.am = add nsw i64 %i.al, %.0.neg.i.i
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp eq i32 %i.ak, %i.an
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit, %_ZNK5clang6interp7Pointer9getOffsetEv.exit, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit ], [ false, %bb.a ], [ true, %_ZNK5clang6interp7Pointer9isPastEndEv.exit ], [ %i.ao, %_ZNK5clang6interp7Pointer9getOffsetEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !105}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN5clang6interp7StorageE", !5, i64 0}
!11 = !{!"_ZTSN5clang6interp7PointerE", !9, i64 0, !10, i64 8, !5, i64 16}
!12 = !{!11, !10, i64 8}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN5clang6interp10DescriptorE", !13, i64 0}
!15 = !{!"p1 _ZTSN5clang6interp7PointerE", !13, i64 0}
!16 = !{!"_ZTSN5clang16OptionalUnsignedIjEE", !6, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTSN5clang6interp5BlockE", !14, i64 0, !15, i64 8, !16, i64 16, !6, i64 20, !17, i64 24, !17, i64 25, !16, i64 28, !5, i64 32}
!19 = !{!18, !5, i64 32}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !14, i64 0}
!22 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !5, i64 0}
!23 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi2EJEEE", !22, i64 0}
!24 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi1EJS9_EEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang4DeclEPKNS3_4ExprEEEELi0EJS6_S9_EEE", !24, i64 0}
!26 = !{!"_ZTSN4llvm12PointerUnionIJPKN5clang4DeclEPKNS1_4ExprEEEE", !25, i64 0}
!27 = !{!"p1 _ZTSN5clang4TypeE", !13, i64 0}
!28 = !{!"p1 _ZTSN5clang6interp6RecordE", !13, i64 0}
!29 = !{!"_ZTSN5clang6interp11OptPrimTypeE", !5, i64 0}
!30 = !{!"_ZTSN5clang6interp10DescriptorE", !26, i64 0, !27, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !28, i64 32, !14, i64 40, !29, i64 48, !17, i64 49, !17, i64 50, !17, i64 51, !17, i64 52, !17, i64 53, !17, i64 54, !13, i64 56, !13, i64 64}
!31 = !{!30, !6, i64 24}
!32 = !{!"_ZTSN5clang6interp8LifetimeE", !5, i64 0}
!33 = !{!"_ZTSN5clang6interp16InlineDescriptorE", !6, i64 0, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 5, !6, i64 5, !32, i64 6, !14, i64 8}
!34 = !{!33, !14, i64 8}
!35 = !{!30, !28, i64 32}
!36 = !{!"p1 _ZTSN5clang6interp5BlockE", !13, i64 0}
!37 = !{!"_ZTSN5clang6interp7PtrViewE", !36, i64 0, !6, i64 8, !9, i64 16}
!38 = !{!37, !36, i64 0}
!39 = !{!37, !6, i64 8}
!40 = !{!11, !9, i64 0}
!41 = !{!37, !9, i64 16}
!42 = !{!"_ZTSN4llvm6detail13PunnedPointerINS_12PointerUnionIJPKN5clang4TypeEPKNS3_8ExtQualsEEEEEE", !5, i64 0}
!43 = !{!"_ZTSN4llvm14PointerIntPairINS_12PointerUnionIJPKN5clang4TypeEPKNS2_8ExtQualsEEEELj3EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj3ESB_EEEE", !42, i64 0}
!44 = !{!"_ZTSN5clang8QualTypeE", !43, i64 0}
!45 = !{!"_ZTSN5clang22ExtQualsTypeCommonBaseE", !27, i64 0, !44, i64 8}
!46 = !{!45, !27, i64 0}
!47 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!47, !13, i64 0}
!49 = !{!47, !6, i64 8}
!50 = !{!"p1 _ZTSN5clang9FieldDeclE", !13, i64 0}
!51 = !{!"_ZTSN5clang6interp6Record5FieldE", !50, i64 0, !14, i64 8, !6, i64 16}
!52 = !{!51, !6, i64 16}
!53 = !{!"p1 _ZTSN5clang10RecordDeclE", !13, i64 0}
!54 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp6Record4BaseEvEE", !47, i64 0}
!55 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp6Record4BaseELb1EEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp6Record4BaseEEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp6Record4BaseELj8EEE", !5, i64 0}
!58 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp6Record4BaseELj8EEE", !56, i64 0, !57, i64 16}
!59 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp6Record5FieldEvEE", !47, i64 0}
!60 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp6Record5FieldELb1EEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp6Record5FieldEEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp6Record5FieldELj8EEE", !5, i64 0}
!63 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp6Record5FieldELj8EEE", !61, i64 0, !62, i64 16}
!64 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp6Record4BaseELj0EEE", !56, i64 0}
!65 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang10RecordDeclEPKNS2_6interp6Record4BaseEEE", !13, i64 0}
!66 = !{!"p1 int", !13, i64 0}
!67 = !{!"_ZTSN4llvm8DenseMapIPKN5clang10RecordDeclEPKNS1_6interp6Record4BaseENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEE", !65, i64 0, !66, i64 8, !6, i64 16, !6, i64 20}
!68 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang10RecordDeclEPNS2_6interp6Record4BaseEEE", !13, i64 0}
!69 = !{!"_ZTSN4llvm8DenseMapIPKN5clang10RecordDeclEPNS1_6interp6Record4BaseENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEE", !68, i64 0, !66, i64 8, !6, i64 16, !6, i64 20}
!70 = !{!"_ZTSN5clang6interp6RecordE", !53, i64 0, !58, i64 8, !63, i64 280, !64, i64 488, !67, i64 504, !69, i64 528, !6, i64 552, !6, i64 556, !17, i64 560, !17, i64 561, !17, i64 562}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!30, !17, i64 53}
!74 = !{!36, !36, i64 0}
!75 = !{!6, !6, i64 0}
!76 = !{!9, !9, i64 0}
!77 = !{!"p1 _ZTSN5clang17DiagnosticStorageE", !13, i64 0}
!78 = !{!"p1 _ZTSN5clang20DiagStorageAllocatorE", !13, i64 0}
!79 = !{!"_ZTSN5clang19StreamingDiagnosticE", !77, i64 0, !78, i64 8}
!80 = !{!79, !77, i64 0}
!81 = !{!79, !78, i64 8}
!82 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang15CharSourceRangeEvEE", !47, i64 0}
!83 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang15CharSourceRangeEEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang15CharSourceRangeELj8EEE", !5, i64 0}
!86 = !{!"_ZTSN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EEE", !84, i64 0, !85, i64 16}
!87 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang9FixItHintEvEE", !47, i64 0}
!88 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang9FixItHintEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang9FixItHintELj6EEE", !5, i64 0}
!91 = !{!"_ZTSN4llvm11SmallVectorIN5clang9FixItHintELj6EEE", !89, i64 0, !90, i64 16}
!92 = !{!"_ZTSN5clang17DiagnosticStorageE", !5, i64 0, !5, i64 1, !5, i64 16, !5, i64 96, !86, i64 416, !91, i64 528}
!93 = !{!92, !5, i64 0}
!94 = !{!"_ZTSN5clang6interp6Record4BaseE", !53, i64 0, !14, i64 8, !28, i64 16, !6, i64 24}
!95 = !{!94, !6, i64 24}
!96 = !{!"_ZTSN5clang14SourceLocationE", !6, i64 0}
!97 = !{!"_ZTSN5clang11SourceRangeE", !96, i64 0, !96, i64 4}
!98 = !{!47, !6, i64 12}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!100 = !{!94, !28, i64 16}
!101 = !{!30, !6, i64 20}
!102 = !{!30, !6, i64 16}
!103 = !{!30, !14, i64 40}
!104 = !{!30, !6, i64 28}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPKN5clang6interp5BlockEEE", !13, i64 0}
!107 = !{!"_ZTSN4llvm8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEE", !106, i64 0, !66, i64 8, !6, i64 16, !6, i64 20}
!108 = !{!107, !6, i64 20}
!109 = !{!107, !106, i64 0}
!110 = !{!70, !17, i64 562}
!111 = !{!29, !5, i64 0}
!112 = !{!30, !17, i64 54}
!113 = !{!107, !66, i64 8}
!114 = !{!"branch_weights", i32 1, i32 1999}
!115 = !{!"branch_weights", i32 0, i32 1}
!116 = !{!"p1 omnipotent char", !13, i64 0}
!117 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !47, i64 0}
!118 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !118, i64 0}
!120 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !5, i64 0}
!121 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !119, i64 0, !120, i64 16}
!122 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !47, i64 0}
!123 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !116, i64 0, !9, i64 8, !121, i64 16, !125, i64 64}
!127 = !{!126, !116, i64 0}
!128 = !{!126, !9, i64 8}
!129 = !{!106, !106, i64 0}
!130 = !{!107, !6, i64 16}
!131 = distinct !{!131, i1 true, !"_ZNK5clang6interp7Pointer4viewEv"}
!132 = distinct !{!132, !131, !"_ZNK5clang6interp7Pointer4viewEv: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNK5clang6interp7Pointer4viewEv"}
!134 = distinct !{!134, !133, !"_ZNK5clang6interp7Pointer4viewEv: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK5clang6interp7Pointer4viewEv"}
!136 = distinct !{!136, !135, !"_ZNK5clang6interp7Pointer4viewEv: argument 0"}
!137 = !{!132}
!138 = !{!134}
!139 = !{!136}
!140 = distinct !{!140, i1 true, !"_ZNK5clang6interp7PtrView7atFieldEj"}
!141 = distinct !{!141, !140, !"_ZNK5clang6interp7PtrView7atFieldEj: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZNK5clang6interp7PtrView7atFieldEj"}
!143 = distinct !{!143, !142, !"_ZNK5clang6interp7PtrView7atFieldEj: argument 0"}
!144 = !{!141}
!145 = !{!143}
!146 = !{!70, !17, i64 560}
!147 = !{!51, !50, i64 0}
end_hunk_2
