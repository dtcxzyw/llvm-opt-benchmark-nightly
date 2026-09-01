Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Interp?download=true
inline.NumInlined: 34792
inline.NumDeleted: 4542
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE:bb.a
  %i.j = load i64, ptr %2, align 8, !tbaa !191, !noalias !785
  store i64 %i.j, ptr %i.i, align 8, !tbaa !192, !alias.scope !785
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp12CheckMutableERNS0_11InterpStateENS0_7CodePtrENS0_7PtrViewENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %4, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6interpL13CheckVolatileERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerENS_11AccessKindsE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 9 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !161 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70, !noalias !788 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZNK5clang6interp7Pointer11getDeclDescEv.exit.i, label %bb.b

_ZNK5clang6interp7Pointer11getDeclDescEv.exit.i:  ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i, i64 52
  %i.l = load i8, ptr %i.k, align 4, !tbaa !770, !range !68, !noundef !69
  %i.m = zext nneg i8 %i.l to i32
  br label %_ZNK5clang6interp7Pointer10isVolatileEv.exit

bb.b:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.n = zext i32 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i16, ptr %i.p, align 4
  %i.r = lshr i16 %i.q, 9
  %i.s = and i16 %i.r, 1
  %i.t = zext nneg i16 %i.s to i32
  br label %_ZNK5clang6interp7Pointer10isVolatileEv.exit

_ZNK5clang6interp7Pointer10isVolatileEv.exit:     ; preds = %_ZNK5clang6interp7Pointer11getDeclDescEv.exit.i, %bb.b
  %i.u = phi i32 [ %i.m, %_ZNK5clang6interp7Pointer11getDeclDescEv.exit.i ], [ %i.t, %bb.b ]
  %.not80 = icmp eq i32 %i.u, 0
  br i1 %.not80, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer10isVolatileEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !313, !nonnull !69, !align !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2600
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !314, !nonnull !69, !align !90
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 4096
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = tail call i32 @_ZNK5clang6interp11InterpFrame11getLocationENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr %1) #23
  %i.ae = tail call ptr @_ZN5clang6interp5State6FFDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %i.ad, i32 noundef 113, i32 noundef 0) #23 ; 4 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ag = tail call i64 @_ZNK5clang6interp11InterpFrame8getRangeENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr %1) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %bb.f

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !75
  %i.ak = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.aj) ; 2 uses
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi ptr [ %i.ak, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.ah, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 416 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 424 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !151 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 428
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !710
  %.not.i5.i.i.i.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i5.i.i.i.i.i, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 %i.ag, i8 1)
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = zext i32 %i.ao to i64
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !139
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  store i64 %i.ag, ptr %i.at, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i, align 1
  %i.au = load i32, ptr %i.an, align 8, !tbaa !151
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.an, align 8, !tbaa !151
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

bb.i:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !139 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !151 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx.i = mul nuw nsw i64 %i.ba, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  %.not15.not.i = icmp eq i32 %i.az, 0
  br i1 %.not15.not.i, label %.loopexit, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.01016.i, i64 24 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.01016.i = phi ptr [ %i.bc, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.01016.i, align 8, !tbaa !744
  %.not13.i = icmp eq ptr %.sroa.0.0.copyload.i, %i.e
  br i1 %.not13.i, label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %2) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !171 ; 2 uses
  %i.bh = icmp ne i32 %i.bg, 1
  %i.bi = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  %or.cond.i84 = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond.i84, label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit

_ZNK5clang6interp7Pointer6isRootEv.exit:          ; preds = %.loopexit, %bb.l
  %i.bk = phi ptr [ %i.cg, %bb.l ], [ %i.bi, %.loopexit ] ; 2 uses
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !70, !noalias !791
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !161
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !196
  %i.bp = icmp eq i32 %i.bl, %i.bo
  br i1 %i.bp, label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.bq = call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 2 uses
  %i.br = and i64 %i.bq, 4
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, label %._ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit_crit_edge

._ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit_crit_edge: ; preds = %bb.k
  %.pre89.pre = load ptr, ptr %i.bf, align 8
  br label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit

_ZNK5clang8QualType19isVolatileQualifiedEv.exit:  ; preds = %bb.k
  %i.bs = and i64 %i.bq, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.0.copyload.i.i.i.i.i1.i, 4
  %.not81 = icmp eq i64 %i.bv, 0
  %.pre89.pre90 = load ptr, ptr %i.bf, align 8    ; 3 uses
  br i1 %.not81, label %bb.l, label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit

bb.l:                                             ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bw = load i32, ptr %i.bd, align 8, !tbaa !70, !noalias !794 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.pre89.pre90, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !205, !noalias !799
  %i.cb = sub i32 %i.bw, %i.ca                    ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %.pre89.pre90, i32 noundef %i.cb, i64 noundef %i.cc) #23
  %i.cd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) #23 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ce = load i32, ptr %i.be, align 8, !tbaa !171
  %i.cf = icmp ne i32 %i.ce, 1
  %i.cg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  %or.cond.i = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit, label %_ZNK5clang6interp7Pointer6isRootEv.exit, !llvm.loop !802

_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit: ; preds = %bb.l, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, %_ZNK5clang6interp7Pointer6isRootEv.exit, %._ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit_crit_edge
  %.pre89 = phi ptr [ %.pre89.pre, %._ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit_crit_edge ], [ %i.cg, %bb.l ], [ %.pre89.pre90, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit ], [ %i.bk, %_ZNK5clang6interp7Pointer6isRootEv.exit ]
  %.pre = load i32, ptr %i.be, align 8, !tbaa !171
  br label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.thread:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit, %.loopexit
  %i.ci = phi ptr [ %.pre89, %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit ], [ %i.bi, %.loopexit ] ; 10 uses
  %i.cj = phi i32 [ %.pre, %_ZNK5clang6interp7Pointer6isRootEv.exit.thread.loopexit ], [ %i.bg, %.loopexit ] ; 4 uses
  %i.ck = icmp ne i32 %i.cj, 0
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp ne i32 %i.cj, 1
  %i.cm = icmp eq ptr %i.ci, null                 ; 2 uses
  %or.cond.i.i.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond.i.i.i, label %bb.m, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.thread
  %i.cn = load i32, ptr %i.bd, align 8, !tbaa !70, !noalias !803 ; 2 uses
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !196
  %i.cr = icmp eq i32 %i.cn, %i.cq
  br i1 %i.cr, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, label %bb.n

bb.m:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.thread
  %i.cs = icmp eq i32 %i.cj, 1
  call void @llvm.assume(i1 %i.cs)
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ct = zext i32 %i.cn to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.m, %bb.n
  %.0.i.in.i = phi ptr [ %i.cv, %bb.n ], [ %i.ci, %bb.m ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i32 = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i32, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i34, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i12.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.co, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i12.i, align 8 ; 2 uses
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3 ; 3 uses
  %.not.i1.i.i = icmp eq i64 %i.cy, 0
  %.not.i.i.i = or i1 %i.cx, %.not.i1.i.i
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i34, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i
  %i.cz = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 127
  %i.dd = add nsw i32 %i.dc, -50
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %_ZNK5clang6interp7Pointer8getFieldEv.exit, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i34

_ZNK5clang6interp7Pointer8getFieldEv.exit:        ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.df, align 8, !tbaa !96
  br label %bb.u

_ZNK5clang6interp7Pointer6isRootEv.exit.i34:      ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread9.i, %bb.o, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.dg = load i32, ptr %i.bd, align 8, !tbaa !70, !noalias !806 ; 2 uses
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !196
  %i.dk = icmp eq i32 %i.dg, %i.dj
  br i1 %i.dk, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i34
  %i.dl = zext i32 %i.dg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i34, %bb.p
  %.0.i36 = phi ptr [ %i.do, %bb.p ], [ %i.dh, %_ZNK5clang6interp7Pointer6isRootEv.exit.i34 ]
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i36, align 8 ; 2 uses
  %i.dp = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = and i64 %.sroa.0.0.copyload.i.i.i.i, -3 ; 3 uses
  %.not.i1.i = icmp eq i64 %i.dr, 0
  %.not.i.i38 = or i1 %i.dq, %.not.i1.i
  br i1 %.not.i.i38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 127
  %i.dw = add nsw i32 %i.dv, -27
  %i.dx = icmp ult i32 %i.dw, 27
  br i1 %i.dx, label %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit, label %bb.r

_ZNK5clang6interp10Descriptor11asValueDeclEv.exit: ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.dy, align 8, !tbaa !96
  br label %bb.u

bb.r:                                             ; preds = %bb.q, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  br i1 %i.cm, label %..thread_crit_edge.i45, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i42

_ZNK5clang6interp7Pointer6isRootEv.exit.i42:      ; preds = %bb.r
  %i.dz = load i32, ptr %i.bd, align 8, !tbaa !70, !noalias !809 ; 2 uses
  %i.ea = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !196
  %i.ed = icmp eq i32 %i.dz, %i.ec
  br i1 %i.ed, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47, label %bb.s

..thread_crit_edge.i45:                           ; preds = %bb.r
  %i.ee = icmp eq i32 %i.cj, 1
  call void @llvm.assume(i1 %i.ee)
  %.pre.i46 = load ptr, ptr %i.ci, align 8, !tbaa !161
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47

bb.s:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i42
  %i.ef = zext i32 %i.dz to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47

_ZNK5clang6interp7Pointer12getFieldDescEv.exit47: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i42, %..thread_crit_edge.i45, %bb.s
  %.0.i44 = phi ptr [ %i.ei, %bb.s ], [ %i.ea, %_ZNK5clang6interp7Pointer6isRootEv.exit.i42 ], [ %.pre.i46, %..thread_crit_edge.i45 ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i44, align 8 ; 2 uses
  %i.ej = and i64 %.sroa.0.0.copyload.i.i.i, 2
  %.not.i.i.i.i = icmp eq i64 %i.ej, 0
  %i.ek = and i64 %.sroa.0.0.copyload.i.i.i, -3   ; 2 uses
  %.not3082 = icmp eq i64 %i.ek, 0
  %.not30 = or i1 %.not.i.i.i.i, %.not3082
  br i1 %.not30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #25
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit, %bb.t, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47, %_ZNK5clang6interp7Pointer8getFieldEv.exit
  %.069 = phi i64 [ 0, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47 ], [ 0, %bb.t ], [ %i.dr, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit ], [ %i.cy, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %.068 = phi i64 [ 0, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47 ], [ 0, %bb.t ], [ 1, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit ], [ 2, %_ZNK5clang6interp7Pointer8getFieldEv.exit ] ; 2 uses
  %.sroa.064.0 = phi i32 [ 0, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit47 ], [ %i.em, %bb.t ], [ %.sroa.0.0.copyload.i40, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit ], [ %.sroa.0.0.copyload.i33, %_ZNK5clang6interp7Pointer8getFieldEv.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = call i32 @_ZNK5clang6interp11InterpFrame11getLocationENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.eo, ptr %1) #23
  %i.eq = call ptr @_ZN5clang6interp5State6FFDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i32 %i.ep, i32 noundef 2383, i32 noundef 1) #23 ; 7 uses
  %.not.i48 = icmp eq ptr %i.eq, null
  br i1 %.not.i48, label %_ZN5clang18OptionalDiagnosticlsIPKNS_9NamedDeclEEERS0_RKT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i49, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKNS_9NamedDeclEEERKS0_RKT_.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75
  %i.eu = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.et) ; 2 uses
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !71
  br label %_ZNK5clang17PartialDiagnosticlsIPKNS_9NamedDeclEEERKS0_RKT_.exit.i

_ZNK5clang17PartialDiagnosticlsIPKNS_9NamedDeclEEERKS0_RKT_.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.v
  %i.ev = phi ptr [ %i.eu, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.er, %bb.v ] ; 2 uses
  %i.ew = sext i32 %3 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ey = load i8, ptr %i.ev, align 8, !tbaa !76
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  store i8 2, ptr %i.fa, align 1, !tbaa !70
  %i.fb = load ptr, ptr %i.eq, align 8, !tbaa !71 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i8, ptr %i.fb, align 8, !tbaa !76  ; 2 uses
  %i.fe = add i8 %i.fd, 1                         ; 2 uses
  store i8 %i.fe, ptr %i.fb, align 8, !tbaa !76
  %i.ff = zext i8 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ff
  store i64 %i.ew, ptr %i.fg, align 8, !tbaa !88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fi = zext i8 %i.fe to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 2, ptr %i.fj, align 1, !tbaa !70
  %i.fk = load ptr, ptr %i.eq, align 8, !tbaa !71 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i8, ptr %i.fk, align 8, !tbaa !76  ; 2 uses
  %i.fn = add i8 %i.fm, 1                         ; 2 uses
  store i8 %i.fn, ptr %i.fk, align 8, !tbaa !76
  %i.fo = zext i8 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fo
  store i64 %.068, ptr %i.fp, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fr = zext i8 %i.fn to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 10, ptr %i.fs, align 1, !tbaa !70
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !71 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.ft, align 8, !tbaa !76  ; 2 uses
  %i.fw = add i8 %i.fv, 1
  store i8 %i.fw, ptr %i.ft, align 8, !tbaa !76
  %i.fx = zext i8 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fx
  store i64 %.069, ptr %i.fy, align 8, !tbaa !88
  br label %_ZN5clang18OptionalDiagnosticlsIPKNS_9NamedDeclEEERS0_RKT_.exit

_ZN5clang18OptionalDiagnosticlsIPKNS_9NamedDeclEEERS0_RKT_.exit: ; preds = %bb.u, %_ZNK5clang17PartialDiagnosticlsIPKNS_9NamedDeclEEERKS0_RKT_.exit.i
  %i.fz = call ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(34) %0, i32 %.sroa.064.0, i32 noundef 2518) #23 ; 5 uses
  %.not.i56 = icmp eq ptr %i.fz, null
  br i1 %.not.i56, label %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit60, label %bb.w

bb.w:                                             ; preds = %_ZN5clang18OptionalDiagnosticlsIPKNS_9NamedDeclEEERS0_RKT_.exit
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i57, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i59, label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i58

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i59: ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !75
  %i.gd = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gc) ; 2 uses
  store ptr %i.gd, ptr %i.fz, align 8, !tbaa !71
  br label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i58

_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i58: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i59, %bb.w
  %i.ge = phi ptr [ %i.gd, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i59 ], [ %i.ga, %bb.w ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.ge, align 8, !tbaa !76
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gh
  store i8 2, ptr %i.gi, align 1, !tbaa !70
  %i.gj = load ptr, ptr %i.fz, align 8, !tbaa !71 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load i8, ptr %i.gj, align 8, !tbaa !76  ; 2 uses
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gj, align 8, !tbaa !76
  %i.gn = zext i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gn
  store i64 %.068, ptr %i.go, align 8, !tbaa !88
  br label %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit60

_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit60: ; preds = %_ZN5clang18OptionalDiagnosticlsIPKNS_9NamedDeclEEERS0_RKT_.exit, %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit.i58
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit

_ZN5clang6interp7InvalidERNS0_11InterpStateENS0_7CodePtrE.exit: ; preds = %.lr.ph.i, %bb.a, %bb.h, %bb.g, %bb.d, %_ZNK5clang6interp7Pointer10isVolatileEv.exit, %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit60
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer10isVolatileEv.exit ], [ false, %_ZN5clang18OptionalDiagnosticlsIiEERS0_RKT_.exit60 ], [ true, %bb.a ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.g ], [ true, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp14CheckFinalLoadERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN5clang6interp10CheckDummyERNS0_11InterpStateENS0_7CodePtrEPKNS0_5BlockENS_11AccessKindsE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5clang6interp4FreeERNS0_11InterpStateENS0_7CodePtrEbb:bb.a
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer14stripBaseCastsEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ep = mul i64 %i.eo, -4658895280553007687     ; 2 uses
  %i.eq = lshr i64 %i.ep, 31
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = trunc i64 %i.er to i32
  %i.et = and i32 %i.en, %i.es                    ; 3 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !96, !noalias !897
  %i.ey = and i32 %i.et, 31
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i1
  br i1 %i.fa, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !898

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %i.fb = phi i64 [ %i.fh, %bb.p ], [ %i.eu, %bb.o ]
  %.017.i.i.i.i = phi i32 [ %i.fg, %bb.p ], [ %i.et, %bb.o ]
  %i.fc = getelementptr inbounds nuw [80 x i8], ptr %i.eh, i64 %i.fb ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !899, !noalias !897
  %i.fe = icmp eq ptr %.0.i.i.i.i, %i.fd
  br i1 %i.fe, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i, label %bb.p, !prof !268

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ff = add nuw i32 %.017.i.i.i.i, 1
  %i.fg = and i32 %i.ff, %i.en                    ; 3 uses
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = lshr i64 %i.fh, 5
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !96, !noalias !897
  %i.fl = and i32 %i.fg, 31
  %i.fm = lshr i32 %i.fk, %i.fl
  %i.fn = trunc i32 %i.fm to i1
  br i1 %i.fn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !901

.loopexit.i.i.i:                                  ; preds = %bb.p, %bb.o, %_ZNK5clang6interp7Pointer14stripBaseCastsEv.exit
  %i.fo = zext i32 %i.el to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw [80 x i8], ptr %i.eh, i64 %i.fo
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i81 = zext i32 %i.el to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i81, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.fo, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.fc, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.fp, %.loopexit.i.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [80 x i8], ptr %i.eh, i64 %.pre-phi.i
  %.not.i80 = icmp eq ptr %.lcssa.sink.i.i.i, %i.fq
  br i1 %.not.i80, label %.critedge68, label %_ZNK5clang6interp16DynamicAllocator17getAllocationFormEPKNS_4ExprE.exit

_ZNK5clang6interp16DynamicAllocator17getAllocationFormEPKNS_4ExprE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 76
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !902
  %i.ft = zext i1 %2 to i8
  %i.fu = call noundef zeroext i1 @_ZN5clang6interp19CheckNewDeleteFormsERNS0_11InterpStateENS0_7CodePtrENS0_16DynamicAllocator4FormES5_PKNS0_10DescriptorEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, i8 noundef zeroext %i.fs, i8 noundef zeroext %i.ft, ptr noundef nonnull %i.ed, ptr noundef %.0.i.i.i.i)
  br i1 %i.fu, label %.critedge68, label %.critedge74

.critedge68:                                      ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS2_6interp16DynamicAllocator14AllocationSiteENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i, %_ZNK5clang6interp16DynamicAllocator17getAllocationFormEPKNS_4ExprE.exit
  br i1 %2, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.critedge68
  %i.fv = call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %.not164 = icmp eq i64 %i.fv, %i.av
  br i1 %.not164, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = and i64 %i.av, -16
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !177
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.fz, align 8, !tbaa !70
  %i.ga = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !177 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i8, ptr %i.gd, align 16            ; 3 uses
  %i.gf = add i8 %i.ge, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gf, 3
  %.not.i7.i.i = icmp ne ptr %i.gc, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = and i8 %i.ge, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.gg, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.s, label %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !697 ; 3 uses
  %i.gj = icmp eq i8 %i.ge, 49
  br i1 %i.gj, label %bb.t, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, 127
  %i.gn = add nsw i32 %i.gm, -60
  %i.go = icmp ult i32 %i.gn, 3
  br i1 %i.go, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.t, %bb.s
  %i.gp = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.gi) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.gp, null
  %spec.select.i82 = select i1 %.not.not.i.i.i, ptr %i.gi, ptr %i.gp
  %i.gq = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i82) #23 ; 3 uses
  %.not10.i = icmp eq ptr %i.gq, null
  br i1 %.not10.i, label %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !277
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef ptr %i.gt(ptr noundef nonnull align 8 dereferenceable(168) %i.gq) #23, !inline_history !904 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 80
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = and i32 %i.gw, 786432
  %or.cond.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %or.cond.not.i.i, label %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit, label %.critedge

_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit: ; preds = %bb.u
  %i.gy = call noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.gu) #23
  %.not165 = icmp eq i32 %i.gy, 0
  br i1 %.not165, label %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread, label %.critedge

_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread: ; preds = %bb.t, %bb.r, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !8
  %i.hb = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.ha, ptr %1) #23
  %i.hc = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i64 %i.hb, i32 noundef 2407, i32 noundef 0) #23 ; 9 uses
  %.not.i83 = icmp eq ptr %i.hc, null
  br i1 %.not.i83, label %_ZN5clang18OptionalDiagnosticlsINS_8QualTypeEEERS0_RKT_.exit.thread, label %bb.v

_ZN5clang18OptionalDiagnosticlsINS_8QualTypeEEERS0_RKT_.exit.thread: ; preds = %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread
  %i.hd = call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 0 uses
  br label %.critedge74

bb.v:                                             ; preds = %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit.thread
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i84, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %bb.w

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.v
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !75
  %i.hh = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hg) ; 2 uses
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !71
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.v
  %i.hi = phi ptr [ %i.hh, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.he, %bb.v ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hi, align 8, !tbaa !76
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl
  store i8 8, ptr %i.hm, align 1, !tbaa !70
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !71 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i8, ptr %i.hn, align 8, !tbaa !76  ; 2 uses
  %i.hq = add i8 %i.hp, 1
  store i8 %i.hq, ptr %i.hn, align 8, !tbaa !76
  %i.hr = zext i8 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hr
  store i64 %i.av, ptr %i.hs, align 8, !tbaa !88
  %i.ht = call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.hu = load ptr, ptr %i.hc, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i87, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i89, label %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit.i88

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i89: ; preds = %bb.w
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !75
  %i.hx = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hw) ; 2 uses
  store ptr %i.hx, ptr %i.hc, align 8, !tbaa !71
  br label %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit.i88

_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit.i88: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i89, %bb.w
  %i.hy = phi ptr [ %i.hx, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i89 ], [ %i.hu, %bb.w ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ia = load i8, ptr %i.hy, align 8, !tbaa !76
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  store i8 8, ptr %i.ic, align 1, !tbaa !70
  %i.id = load ptr, ptr %i.hc, align 8, !tbaa !71 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i8, ptr %i.id, align 8, !tbaa !76  ; 2 uses
  %i.ig = add i8 %i.if, 1
  store i8 %i.ig, ptr %i.id, align 8, !tbaa !76
  %i.ih = zext i8 %i.if to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ih
  store i64 %i.ht, ptr %i.ii, align 8, !tbaa !88
  br label %.critedge74

.critedge:                                        ; preds = %bb.u, %bb.q, %.critedge68, %_ZN5clang6interpL20hasVirtualDestructorENS_8QualTypeE.exit
  %i.ij = load i32, ptr %i.ai, align 8, !tbaa !171 ; 2 uses
  %i.ik = icmp ne i32 %i.ij, 1
  %i.il = load ptr, ptr %i.as, align 8            ; 11 uses
  %i.im = icmp eq ptr %i.il, null
  %or.cond.i = select i1 %i.ik, i1 true, i1 %i.im
  br i1 %or.cond.i, label %bb.x, label %_ZNK5clang6interp7Pointer6isRootEv.exit

_ZNK5clang6interp7Pointer6isRootEv.exit:          ; preds = %.critedge
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.io = load i32, ptr %i.in, align 8, !tbaa !70, !noalias !905 ; 2 uses
  %i.ip = load ptr, ptr %i.il, align 8, !tbaa !161 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !196
  %i.is = icmp eq i32 %i.io, %i.ir
  br i1 %i.is, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread

bb.x:                                             ; preds = %.critedge
  %i.it = icmp eq i32 %i.ij, 1
  br i1 %i.it, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70, !noalias !908 ; 4 uses
  %.pre175 = load ptr, ptr %i.il, align 8, !tbaa !161 ; 4 uses
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %.pre175, i64 24
  %.pre177 = load i32, ptr %.phi.trans.insert176, align 8, !tbaa !196
  %i.iu = icmp eq i32 %.pre, %.pre177
  br i1 %i.iu, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.iv = zext i32 %.pre to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit, %bb.y, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.iz = phi i1 [ false, %bb.y ], [ true, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ], [ true, %_ZNK5clang6interp7Pointer6isRootEv.exit ] ; 5 uses
  %i.ja = phi i32 [ %.pre, %bb.y ], [ %.pre, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ], [ %i.io, %_ZNK5clang6interp7Pointer6isRootEv.exit ] ; 5 uses
  %i.jb = phi ptr [ %.pre175, %bb.y ], [ %.pre175, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ], [ %i.ip, %_ZNK5clang6interp7Pointer6isRootEv.exit ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.iy, %bb.y ], [ %.pre175, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ], [ %i.ip, %_ZNK5clang6interp7Pointer6isRootEv.exit ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !706
  %i.je = icmp eq i32 %i.jd, -1
  %.pre181 = load i64, ptr %4, align 8, !tbaa !191 ; 7 uses
  br i1 %i.je, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 28
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !310
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp ugt i64 %.pre181, %i.jh
  br i1 %i.ji, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i94 = zext i32 %i.ja to i64               ; 4 uses
  br i1 %i.iz, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 20
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !706 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %.pre181, %.pre.i94
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.il, i64 %.pre.i94
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !197 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !706 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %.pre181, %.pre.i94
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.jq = phi i32 [ %i.jk, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.jp, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i95 = phi ptr [ %i.jb, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.jn, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i95, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.js, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.jt = phi i32 [ %i.jq, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.jk, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.jp, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ju = sub nsw i64 %.pre181, %.pre.i94
  %i.jv = add nsw i64 %i.ju, %.0.neg.i.i.i
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = icmp eq i32 %i.jt, %i.jw
  br i1 %i.jx, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  br i1 %i.iz, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155
  %i.jy = zext i32 %i.ja to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %.0.i.i = load ptr, ptr %i.ka, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit

_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit: ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.0.i.sink.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.jb, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread155 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 20
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !706
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread: ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %.pre.i97 = zext i32 %i.ja to i64               ; 7 uses
  br i1 %i.iz, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread
  %i.ke = getelementptr inbounds nuw i8, ptr %i.il, i64 %.pre.i97
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i:     ; preds = %bb.z, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread
  %.0.i.i.i.i98 = phi ptr [ %i.kg, %bb.z ], [ %i.jb, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread.thread ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i98, i64 53
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !784, !range !68, !noundef !69
  %i.kj = trunc nuw i8 %i.ki to i1
  %.not.i.i99 = icmp ne i64 %.pre181, %.pre.i97
  %or.cond.not.i = select i1 %i.kj, i1 %.not.i.i99, i1 false
  br i1 %or.cond.not.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i
  %i.kk = icmp ugt i32 %i.ja, 15
  br i1 %i.kk, label %bb.ab, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.kl = getelementptr inbounds nuw i8, ptr %i.il, i64 %.pre.i97
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 28
  %i.kn = load i16, ptr %i.km, align 4
  %i.ko = and i16 %i.kn, 256
  %.not2.i.i = icmp eq i16 %i.ko, 0
  br i1 %.not2.i.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit

_ZNK5clang6interp7Pointer14isArrayElementEv.exit: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, %bb.ab
  %i.kp = icmp ugt i32 %i.ja, 16
  %i.kq = icmp eq i64 %.pre181, %.pre.i97         ; 2 uses
  %or.cond.i.i101 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond.i.i101, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit
  br i1 %i.iz, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kr = getelementptr inbounds nuw i8, ptr %i.il, i64 %.pre.i97
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i102 = phi ptr [ %i.kt, %bb.ad ], [ %i.jb, %bb.ac ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i102, i64 16
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.kq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.iz, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i103, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kw = getelementptr inbounds nuw i8, ptr %i.il, i64 %.pre.i97
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i103

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i103: ; preds = %bb.ag, %bb.af
  %.0.i.i8.i.i = phi ptr [ %i.ky, %bb.ag ], [ %i.jb, %bb.af ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !201
  %.not1.i.i.i104 = icmp eq ptr %i.la, null
  %..i.i.i105 = select i1 %.not1.i.i.i104, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.ae, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i103
  %.0.neg.i.i.i106 = phi i64 [ %..i.i.i105, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i103 ], [ 0, %bb.ae ]
  %i.lb = sub i64 %.pre181, %.pre.i97
  %i.lc = add i64 %i.lb, %.0.neg.i.i.i106
  %i.ld = trunc i64 %i.lc to i32
  %.not = icmp ugt i32 %i.kv, %i.ld
  br i1 %.not, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit.thread, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread

_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lg = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr %1) #23
  %i.lh = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, i64 %i.lg, i32 noundef 2409, i32 noundef 0) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.li = load ptr, ptr %i.c, align 8, !tbaa !313, !nonnull !69, !align !90
  call void @_ZNK5clang6interp7Pointer18toDiagnosticStringB5cxx11ERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.li) #23
  %.not.i107 = icmp eq ptr %i.lh, null            ; 2 uses
  br i1 %.not.i107, label %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread
  %i.lj = load ptr, ptr %7, align 8, !tbaa !848
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !849
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.lh, ptr %i.lj, i64 %i.ll)
  br label %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit

_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit.thread, %bb.ah
  %i.lm = load i32, ptr %i.ai, align 8, !tbaa !171
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %bb.ai, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127

bb.ai:                                            ; preds = %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.lo = load ptr, ptr %i.as, align 8, !tbaa !70 ; 4 uses
  %.not.i109 = icmp eq ptr %i.lo, null
  br i1 %.not.i109, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i110

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i110: ; preds = %bb.ai
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !70, !noalias !911 ; 3 uses
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !161 ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !196
  %i.lu = icmp eq i32 %i.lq, %i.lt                ; 2 uses
  br i1 %i.lu, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i110
  %i.lv = zext i32 %i.lq to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111: ; preds = %bb.aj, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i110
  %.0.i.i.i112 = phi ptr [ %i.ly, %bb.aj ], [ %i.lr, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i110 ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i.i.i112, i64 20
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !706
  %i.mb = icmp eq i32 %i.ma, -1
  br i1 %i.mb, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i113

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i113:  ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111
  %i.mc = load i64, ptr %4, align 8, !tbaa !191   ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 28
  %i.me = load i32, ptr %i.md, align 4, !tbaa !310
  %i.mf = zext i32 %i.me to i64
  %i.mg = icmp ugt i64 %i.mc, %i.mf
  br i1 %i.mg, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i114

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i114: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i113
  %.pre.i115 = zext i32 %i.lq to i64              ; 4 uses
  br i1 %i.lu, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116

_ZNK5clang6interp7Pointer7getSizeEv.exit.i125:    ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i114
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lr, i64 20
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !706 ; 2 uses
  %.not.i.i6.i126 = icmp eq i64 %i.mc, %.pre.i115
  br i1 %.not.i.i6.i126, label %_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i114
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.pre.i115
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !197 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 20
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !706 ; 2 uses
  %.not.i.i612.i117 = icmp eq i64 %i.mc, %.pre.i115
  br i1 %.not.i.i612.i117, label %_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125
  %i.mo = phi i32 [ %i.mi, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125 ], [ %i.mn, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116 ]
  %.0.i.i.i.i120 = phi ptr [ %i.lr, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125 ], [ %i.ml, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i120, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !201
  %.not1.i.i.i121 = icmp eq ptr %i.mq, null
  %..i.i.i122 = select i1 %.not1.i.i.i121, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123

_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123:  ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125
  %i.mr = phi i32 [ %i.mo, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119 ], [ %i.mi, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125 ], [ %i.mn, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116 ]
  %.0.neg.i.i.i124 = phi i64 [ %..i.i.i122, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i119 ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i125 ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i116 ]
  %i.ms = sub nsw i64 %i.mc, %.pre.i115
  %i.mt = add nsw i64 %i.ms, %.0.neg.i.i.i124
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = icmp eq i32 %i.mr, %i.mu
  %i.mw = zext i1 %i.mv to i64
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127: ; preds = %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.ai, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111, %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i113, %_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123
  %.0.i108 = phi i64 [ 0, %bb.ai ], [ 0, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i111 ], [ 0, %_ZN5clang18OptionalDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ], [ 1, %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i113 ], [ %i.mw, %_ZNK5clang6interp7Pointer9getOffsetEv.exit.i123 ]
  br i1 %.not.i107, label %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit127
end_hunk_1
begin_hunk_2_@_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.ck, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.cl = sub i64 %i.bu, %i.bw
  %i.cm = add i64 %i.cl, %.0.neg.i.i.i
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp ugt i32 %i.cf, %i.cn
  br i1 %i.co, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre45, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !196, !noalias !4209
  %i.cs = icmp eq i32 %i.bt, %i.cr
  br i1 %i.cs, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.ct = zext i32 %i.bt to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !197, !noalias !4209
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cw, %bb.n ], [ %.pre45, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !201, !noalias !4209
  %.not.i.i = icmp eq ptr %i.cy, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cz = add i32 %.0.v.i.i, %i.bt
  %i.da = zext i32 %i.cz to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.bo, i32 noundef %i.bt, i64 noundef %i.da) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.f, %.thread34, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread37, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %bb.c, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_4CharILb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.de = trunc nuw i8 %i.dd to i1                ; 2 uses
  br i1 %i.de, label %bb.o, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre43 = load i8, ptr %i.dc, align 8, !tbaa !1923, !range !68
  %i.dg = trunc nuw i8 %.pre43 to i1
  store i8 0, ptr %i.dc, align 8, !tbaa !1923
  br i1 %i.dg, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.de, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4214
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4214
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4214
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4217
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4217
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4217
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i16, ptr %i.w, align 8
  %.not.i2634 = icmp eq i16 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4220 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i16 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i16 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4223 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4226 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4226 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4229
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4229
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4229
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj16ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.805", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4234
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4234
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4234
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4237
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4237
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4237
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i16, ptr %i.w, align 8
  %.not.i2634 = icmp eq i16 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4240 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i16 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i16 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4243 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4246 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4246 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4249
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4249
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4249
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj16ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE4ENS0_8IntegralILj32ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.809", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4254
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4254
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4254
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4257
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4257
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4257
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %.not.i2634 = icmp eq i32 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4260 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i32 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i32 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4263 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4266 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4266 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4269
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4269
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4269
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj32ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE5ENS0_8IntegralILj32ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.813", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4274
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4274
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4274
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4277
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4277
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4277
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %.not.i2634 = icmp eq i32 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4280 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i32 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i32 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4283 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4286 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4286 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4289
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4289
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4289
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj32ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.817", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4294
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4294
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4294
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4297
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4297
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4297
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %.not.i2634 = icmp eq i64 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4300 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i64 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i64 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4303 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4306 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4306 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4309
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4309
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4309
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj64ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.821", align 8 ; 7 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !4314
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !4314
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !4314
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4317
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4317
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4317
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %.not.i2634 = icmp eq i64 %i.x, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i2634
  br i1 %or.cond, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70, !noalias !4320 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !196
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !706
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr %1) #23
  %i.ao = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.an, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.r

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %.not.i28 = icmp eq i64 %i.aq, 0
  br i1 %.not.i28, label %bb.d, label %bb.o

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !70
  %.not.i2856 = icmp eq i64 %i.as, 0
  br i1 %.not.i2856, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.o

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.at = icmp eq i32 %i.m, 0
  br i1 %i.at, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ne i32 %i.m, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 10 uses
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !70, !noalias !4323 ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.m, 1
  br i1 %i.be, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bf = zext i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i29.in = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ]
  %.0.i29 = load ptr, ptr %.0.i29.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i29, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2942 = phi ptr [ %.0.i29, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ba, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i2942, i64 53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70, !noalias !4326 ; 7 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !191, !noalias !4326 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bo = icmp ugt i32 %i.bm, 16
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp                ; 2 uses
  %or.cond.i.i31 = select i1 %i.bo, i1 %i.bq, i1 false
  %.pre48 = load ptr, ptr %i.aw, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i31, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = icmp eq i32 %i.bm, %i.bs                ; 2 uses
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %.pre48, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.cb, %bb.m ], [ %.pre48, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.cd, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.ce = sub i64 %i.bn, %i.bp
  %i.cf = add i64 %i.ce, %.0.neg.i.i.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp ugt i32 %i.by, %i.cg
  br i1 %i.ch, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre48, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !196, !noalias !4329
  %i.cl = icmp eq i32 %i.bm, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cm = zext i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !197, !noalias !4329
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cp, %bb.n ], [ %.pre48, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201, !noalias !4329
  %.not.i.i = icmp eq ptr %i.cr, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cs = add i32 %.0.v.i.i, %i.bm
  %i.ct = zext i32 %i.cs to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aw, i32 noundef %i.bm, i64 noundef %i.ct) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread39, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj64ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre46 = load i8, ptr %i.cv, align 8, !tbaa !1923, !range !68
  %i.cz = trunc nuw i8 %.pre46 to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !1923
  br i1 %i.cz, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cx, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.clang::interp::IntegralAP", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 17 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %9 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %10 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !70 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4334
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4334
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4334
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split40
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load i64, ptr %5, align 8
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split40:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split40, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.z = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.z, label %_ZNK4llvm5APInt6isZeroEv.exit.i, label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i

_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ab = add nuw nsw i64 %i.aa, 63
  %i.ac = lshr i64 %i.ab, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ac) #23
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !156 ; 2 uses
  %i.ad = icmp ult i32 %.pre.i, 65
  br i1 %i.ad, label %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, label %bb.c

_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split:  ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i
  %.pr = load i64, ptr %3, align 8, !tbaa !70
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK4llvm5APInt6isZeroEv.exit.i:                  ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split
  %i.ae = phi i64 [ %.pr, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split ], [ %i.n, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread ]
  %i.af = icmp ne i64 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ag = load i32, ptr %i.l, align 8
  %i.ah = icmp eq i32 %i.ag, 1
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.c:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i
  %i.ai = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #25
  %i.aj = icmp eq i32 %i.ai, %.pre.i              ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit, label %.split41

.split41:                                         ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.aj, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %bb.d

_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.aj, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %.split41, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit
  %.old = load i32, ptr %i.l, align 8, !tbaa !171
  %.old62 = icmp eq i32 %.old, 1
  br i1 %.old62, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !69, !noundef !69 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !70, !noalias !4337 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !161 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !196
  %i.at = icmp eq i32 %i.ap, %i.as
  br i1 %i.at, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.au = zext i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ax, %bb.e ], [ %i.aq, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !706
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr %1) #23
  %i.be = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.bd, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.u

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split41, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i28

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.d, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split40, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bf = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.bf, label %_ZNK4llvm5APInt6isZeroEv.exit.i32, label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i28

_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i28: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.bg = zext i32 %.sroa.2.0.copyload.i to i64
  %i.bh = add nuw nsw i64 %i.bg, 63
  %i.bi = lshr i64 %i.bh, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.bi) #23
  %.phi.trans.insert.i29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i30 = load i32, ptr %.phi.trans.insert.i29, align 8, !tbaa !156 ; 2 uses
  %i.bj = icmp ult i32 %.pre.i30, 65
  br i1 %i.bj, label %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split, label %bb.f

_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split: ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i28
  %.pr51 = load i64, ptr %2, align 8, !tbaa !70
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i32

_ZNK4llvm5APInt6isZeroEv.exit.i32:                ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split
  %i.bk = phi i64 [ %.pr51, %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split ], [ %i.n, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread ]
  %i.bl = icmp eq i64 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bl, label %bb.g, label %bb.r

bb.f:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i28
  %i.bm = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25
  %i.bn = icmp eq i32 %i.bm, %.pre.i30            ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit34, label %.split43

.split43:                                         ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bn, label %bb.g, label %bb.r

_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit34: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bn, label %bb.g, label %bb.r

bb.g:                                             ; preds = %.split43, %_ZNK4llvm5APInt6isZeroEv.exit.i32, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit34
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !171 ; 3 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp ne i32 %i.bq, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 10 uses
  %i.bv = icmp eq ptr %i.bu, null
  %or.cond.i.i = select i1 %i.bs, i1 true, i1 %i.bv
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !70, !noalias !4340 ; 2 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !161 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !196
  %i.cb = icmp eq i32 %i.bx, %i.ca
  br i1 %i.cb, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread46, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp eq i32 %i.bq, 1
  br i1 %i.cc, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i35.in = phi ptr [ %i.cf, %bb.j ], [ %i.bu, %bb.i ]
  %.0.i35 = load ptr, ptr %.0.i35.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i35, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread46

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread46: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i3549 = phi ptr [ %.0.i35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.by, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i3549, i64 53
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.k, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread46
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !70, !noalias !4343 ; 7 uses
  %i.cl = load i64, ptr %5, align 8, !tbaa !191, !noalias !4343 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.cm = icmp ugt i32 %i.ck, 16
  %i.cn = zext i32 %i.ck to i64                   ; 4 uses
  %i.co = icmp eq i64 %i.cl, %i.cn                ; 2 uses
  %or.cond.i.i38 = select i1 %i.cm, i1 %i.co, i1 false
  %.pre53 = load ptr, ptr %i.bu, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i38, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre53, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !196
  %i.cr = icmp eq i32 %i.ck, %i.cq                ; 2 uses
  br i1 %i.cr, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.cu, %bb.m ], [ %.pre53, %bb.l ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.co, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.cr, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cn
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i8.i.i = phi ptr [ %i.cz, %bb.p ], [ %.pre53, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.db, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.n, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.n ]
  %i.dc = sub i64 %i.cl, %i.cn
  %i.dd = add i64 %i.dc, %.0.neg.i.i.i
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp ugt i32 %i.cw, %i.de
  br i1 %i.df, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.k, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre53, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !196, !noalias !4346
  %i.dj = icmp eq i32 %i.ck, %i.di
  br i1 %i.dj, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.dk = zext i32 %i.ck to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !197, !noalias !4346
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.q
  %.pn5.i.i = phi ptr [ %i.dn, %bb.q ], [ %.pre53, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !201, !noalias !4346
  %.not.i.i = icmp eq ptr %i.dp, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.dq = add i32 %.0.v.i.i, %i.ck
  %i.dr = zext i32 %i.dq to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.bu, i32 noundef %i.ck, i64 noundef %i.dr) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.u

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.i, %bb.g, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread46, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ds, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.u

bb.r:                                             ; preds = %.split43, %_ZNK4llvm5APInt6isZeroEv.exit.i32, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_10IntegralAPILb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %9, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext false)
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.dv = trunc nuw i8 %i.du to i1                ; 2 uses
  br i1 %i.dv, label %bb.s, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pre = load i8, ptr %i.dt, align 8, !tbaa !1923, !range !68
  %i.dx = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.dt, align 8, !tbaa !1923
  br i1 %i.dx, label %bb.t, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %9) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.dv, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.clang::interp::IntegralAP.630", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 17 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %9 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %10 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !70 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !96 ; 11 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4351
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4351
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4351
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split41
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load i64, ptr %5, align 8
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split41:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split41, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.z = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.z, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = sub nsw i32 0, %.sroa.2.0.copyload.i
  %i.ab = and i32 %i.aa, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 -1, %i.ac
  %i.ae = icmp eq i32 %.sroa.2.0.copyload.i, 0
  %spec.select.i.i.i = select i1 %i.ae, i64 0, i64 %i.ad, !prof !971
  %i.af = and i64 %spec.select.i.i.i, %i.n
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.ag = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ah = add nuw nsw i64 %i.ag, 63
  %i.ai = lshr i64 %i.ah, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ai) #23
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !156 ; 2 uses
  %i.aj = icmp ult i32 %.pre.i, 65
  br i1 %i.aj, label %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, label %bb.c

_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split:  ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  %.pr = load i64, ptr %3, align 8, !tbaa !70
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK4llvm5APInt6isZeroEv.exit.i:                  ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i
  %i.ak = phi i64 [ %.pr, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split ], [ %i.af, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i ]
  %i.al = icmp ne i64 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.am = load i32, ptr %i.l, align 8
  %i.an = icmp eq i32 %i.am, 1
  %or.cond = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.c:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  %i.ao = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #25
  %i.ap = icmp eq i32 %i.ao, %.pre.i              ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit, label %.split42

.split42:                                         ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %bb.d

_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %.split42, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit
  %.old = load i32, ptr %i.l, align 8, !tbaa !171
  %.old63 = icmp eq i32 %.old, 1
  br i1 %.old63, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !69, !noundef !69 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !70, !noalias !4354 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !196
  %i.az = icmp eq i32 %i.av, %i.ay
  br i1 %i.az, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ba = zext i32 %i.av to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %i.aw, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !706
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr %1) #23
  %i.bk = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.bj, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.u

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %.split42, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i28

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.d, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split41, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bl = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.bl, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i33, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i28

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i33: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.bm = sub nsw i32 0, %.sroa.2.0.copyload.i
  %i.bn = and i32 %i.bm, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo
  %i.bq = icmp eq i32 %.sroa.2.0.copyload.i, 0
  %spec.select.i.i.i34 = select i1 %i.bq, i64 0, i64 %i.bp, !prof !971
  %i.br = and i64 %spec.select.i.i.i34, %i.n
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i32

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i28: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.bs = zext i32 %.sroa.2.0.copyload.i to i64
  %i.bt = add nuw nsw i64 %i.bs, 63
  %i.bu = lshr i64 %i.bt, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.bu) #23
  %.phi.trans.insert.i29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i30 = load i32, ptr %.phi.trans.insert.i29, align 8, !tbaa !156 ; 2 uses
  %i.bv = icmp ult i32 %.pre.i30, 65
  br i1 %i.bv, label %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split, label %bb.f

_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split: ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i28
  %.pr52 = load i64, ptr %2, align 8, !tbaa !70
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i32

_ZNK4llvm5APInt6isZeroEv.exit.i32:                ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i33
  %i.bw = phi i64 [ %.pr52, %_ZNK4llvm5APInt6isZeroEv.exit.i32thread-pre-split ], [ %i.br, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i33 ]
  %i.bx = icmp eq i64 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bx, label %bb.g, label %bb.r

bb.f:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i28
  %i.by = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25
  %i.bz = icmp eq i32 %i.by, %.pre.i30            ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit35, label %.split44

.split44:                                         ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bz, label %bb.g, label %bb.r

_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit35: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.bz, label %bb.g, label %bb.r

bb.g:                                             ; preds = %.split44, %_ZNK4llvm5APInt6isZeroEv.exit.i32, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit35
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !171 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = icmp ne i32 %i.cc, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8            ; 10 uses
  %i.ch = icmp eq ptr %i.cg, null
  %or.cond.i.i = select i1 %i.ce, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !70, !noalias !4357 ; 2 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !161 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !196
  %i.cn = icmp eq i32 %i.cj, %i.cm
  br i1 %i.cn, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread47, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = icmp eq i32 %i.cc, 1
  br i1 %i.co, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i36.in = phi ptr [ %i.cr, %bb.j ], [ %i.cg, %bb.i ]
  %.0.i36 = load ptr, ptr %.0.i36.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i36, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread47

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread47: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i3650 = phi ptr [ %.0.i36, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ck, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i3650, i64 53
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !784, !range !68, !noundef !69
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.k, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread47
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !70, !noalias !4360 ; 7 uses
  %i.cx = load i64, ptr %5, align 8, !tbaa !191, !noalias !4360 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.cy = icmp ugt i32 %i.cw, 16
  %i.cz = zext i32 %i.cw to i64                   ; 4 uses
  %i.da = icmp eq i64 %i.cx, %i.cz                ; 2 uses
  %or.cond.i.i39 = select i1 %i.cy, i1 %i.da, i1 false
  %.pre54 = load ptr, ptr %i.cg, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i39, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %.pre54, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !196
  %i.dd = icmp eq i32 %i.cw, %i.dc                ; 2 uses
  br i1 %i.dd, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.dg, %bb.m ], [ %.pre54, %bb.l ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.da, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.dd, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cz
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i8.i.i = phi ptr [ %i.dl, %bb.p ], [ %.pre54, %bb.o ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.dn, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.n, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.n ]
  %i.do = sub i64 %i.cx, %i.cz
  %i.dp = add i64 %i.do, %.0.neg.i.i.i
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = icmp ugt i32 %i.di, %i.dq
  br i1 %i.dr, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.k, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre54, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !196, !noalias !4363
  %i.dv = icmp eq i32 %i.cw, %i.du
  br i1 %i.dv, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.dw = zext i32 %i.cw to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !197, !noalias !4363
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.q
  %.pn5.i.i = phi ptr [ %i.dz, %bb.q ], [ %.pre54, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !201, !noalias !4363
  %.not.i.i = icmp eq ptr %i.eb, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.ec = add i32 %.0.v.i.i, %i.cw
  %i.ed = zext i32 %i.ec to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.cg, i32 noundef %i.cw, i64 noundef %i.ed) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ds, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.u

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.i, %bb.g, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread47, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ee, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.u

bb.r:                                             ; preds = %.split44, %_ZNK4llvm5APInt6isZeroEv.exit.i32, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_10IntegralAPILb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %9, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext false)
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.eh = trunc nuw i8 %i.eg to i1                ; 2 uses
  br i1 %i.eh, label %bb.s, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pre = load i8, ptr %i.ef, align 8, !tbaa !1923, !range !68
  %i.ej = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ef, align 8, !tbaa !1923
  br i1 %i.ej, label %bb.t, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %9) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.eh, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Boolean", align 1 ; 4 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 15 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.827", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !309 ; 4 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  store i8 %.sroa.0.0.copyload.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63, !noalias !4368
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63, !noalias !4368
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23, !noalias !4368
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
    i32 3, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread56, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %i.v = icmp ne ptr %i.u, null
  %i.w = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  %or.cond.not = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.not, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !70, !noalias !4371 ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !161  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !196
  %i.ac = icmp eq i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.z, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !706
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = call i64 @_ZNK5clang6interp11InterpFrame9getSourceENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr %1) #23
  %i.an = call ptr @_ZN5clang6interp5State6FFDiagENS0_10SourceInfoEjj(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %i.am, i32 noundef 2506, i32 noundef 0) #23 ; 0 uses
  br label %bb.q

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread: ; preds = %bb.a, %.split, %bb.a, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ao = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.ao, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %bb.d

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread56: ; preds = %.split
  %i.ap = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.ap, label %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.d:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  %i.aq = icmp eq i32 %i.m, 0
  br i1 %i.aq, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp ne i32 %i.m, 1
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 10 uses
  %i.au = icmp eq ptr %i.at, null
  %or.cond.i.i = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !70, !noalias !4374 ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !196
  %i.ba = icmp eq i32 %i.aw, %i.az
  br i1 %i.ba, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread36, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = icmp eq i32 %i.m, 1
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bc = zext i32 %i.aw to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i27.in = phi ptr [ %i.be, %bb.g ], [ %i.at, %bb.f ]
  %.0.i27 = load ptr, ptr %.0.i27.in, align 8, !tbaa !716 ; 2 uses
  %.not = icmp eq ptr %.0.i27, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread36

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread36: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2739 = phi ptr [ %.0.i27, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.ax, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i2739, i64 53
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread36
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !70, !noalias !4377 ; 7 uses
  %i.bk = load i64, ptr %3, align 8, !tbaa !191, !noalias !4377 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.bl = icmp ugt i32 %i.bj, 16
  %i.bm = zext i32 %i.bj to i64                   ; 4 uses
  %i.bn = icmp eq i64 %i.bk, %i.bm                ; 2 uses
  %or.cond.i.i29 = select i1 %i.bl, i1 %i.bn, i1 false
  %.pre47 = load ptr, ptr %i.at, align 8, !tbaa !161 ; 5 uses
  br i1 %or.cond.i.i29, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre47, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !196
  %i.bq = icmp eq i32 %i.bj, %i.bp                ; 2 uses
  br i1 %i.bq, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %.pre47, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !200 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bn, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bq, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bm
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !197
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.by, %bb.m ], [ %.pre47, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !201
  %.not1.i.i.i = icmp eq ptr %i.ca, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.cb = sub i64 %i.bk, %i.bm
  %i.cc = add i64 %i.cb, %.0.neg.i.i.i
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = icmp ugt i32 %i.bv, %i.cd
  br i1 %i.ce, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre47, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !196, !noalias !4380
  %i.ci = icmp eq i32 %i.bj, %i.ch
  br i1 %i.ci, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cj = zext i32 %i.bj to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !197, !noalias !4380
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.cm, %bb.n ], [ %.pre47, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !201, !noalias !4380
  %.not.i.i = icmp eq ptr %i.co, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cp = add i32 %.0.v.i.i, %i.bj
  %i.cq = zext i32 %i.cp to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.at, i32 noundef %i.bj, i64 noundef %i.cq) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread56, %bb.f, %bb.d, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread36, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread56, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5clang6interp12OffsetHelperINS0_7BooleanELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS5_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !1923, !range !68, !noundef !69
  %i.cu = trunc nuw i8 %i.ct to i1                ; 2 uses
  br i1 %i.cu, label %bb.o, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre48 = load i8, ptr %i.cs, align 8, !tbaa !1923, !range !68
  %i.cw = trunc nuw i8 %.pre48 to i1
  store i8 0, ptr %i.cs, align 8, !tbaa !1923
  br i1 %i.cw, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #23
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit.thread.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE.exit ], [ %i.cu, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6interp11InterpStack4pushINS0_8IntegralILj32ELb1EEEJS4_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !970    ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !971

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !970
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !972  ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1048528
  br i1 %i.e, label %bb.d, label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit, !prof !971

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !974  ; 4 uses
  %.not4.i = icmp eq ptr %i.f, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8, !tbaa !970
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !972
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #28 ; 6 uses
  store ptr null, ptr %i.g, align 8, !tbaa !974
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !975
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !972
  store ptr %i.g, ptr %i.a, align 8, !tbaa !974
  store ptr %i.g, ptr %0, align 8, !tbaa !970
  br label %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit

_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %i.j = phi i32 [ %i.d, %bb.c ], [ 0, %bb.f ], [ %.pre.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.k = phi ptr [ %i.a, %bb.c ], [ %i.g, %bb.f ], [ %i.f, %bb.e ], [ %i.b, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.p = add i32 %i.j, 24
  store i32 %i.p, ptr %i.m, align 8, !tbaa !972
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !129
  %i.s = add i64 %i.r, 24
  store i64 %i.s, ptr %i.q, align 8, !tbaa !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !2021
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64
  %.not.i2 = icmp ult i64 %i.v, %i.x
  br i1 %.not.i2, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 noundef zeroext 4)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EE9push_backES3_.exit

bb.h:                                             ; preds = %_ZN5clang6interp11InterpStack4growILm24EEEPvv.exit
end_hunk_2
begin_hunk_3_@_ZN5clang6interp3ShrILNS0_8PrimTypeE9ELS2_8EEEbRNS0_11InterpStateENS0_7CodePtrE:bb.a
  call void @_ZNK5clang6interp10IntegralAPILb0EE8toAPSIntEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  %i.ag = call noundef zeroext i1 @_ZN5clang6interp9DoShiftAPINS0_10IntegralAPILb1EEENS2_ILb0EEELNS0_8ShiftDirE1EEEbRNS0_11InterpStateENS0_7CodePtrERKN4llvm6APSIntESA_PT_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(13) %5, ptr nofree noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %4)
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !156
  %i.aj = icmp ugt i32 %i.ai, 64
  br i1 %i.aj, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit
  %i.ak = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit, %bb.f, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156
  %i.ao = icmp ugt i32 %i.an, 64
  br i1 %i.ao, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit22

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvm5APIntD2Ev.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24
  br label %_ZN4llvm5APIntD2Ev.exit22

_ZN4llvm5APIntD2Ev.exit22:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ag
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp3ShrILNS0_8PrimTypeE9ELS2_9EEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::IntegralAP.630", align 8 ; 5 uses
  %3 = alloca %"class.clang::interp::IntegralAP.630", align 8 ; 5 uses
  %4 = alloca %"class.clang::interp::IntegralAP.630", align 8 ; 5 uses
  %5 = alloca %"class.llvm::APSInt", align 8      ; 6 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !70
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !96
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.210.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.k, align 8, !tbaa !70
  %.sroa.2.0..0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i17 = load i32, ptr %.sroa.2.0..0..sroa_idx.i16, align 8, !tbaa !96 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 16) #23
  store ptr %.sroa.0.0.copyload.i15, ptr %3, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload.i17, ptr %.sroa.26.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = zext i32 %.sroa.2.0.copyload.i17 to i64
  %i.n = add nuw nsw i64 %i.m, 63
  %i.o = lshr i64 %i.n, 6                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = shl nuw nsw i64 %i.o, 3                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !1407, !range !68, !noundef !69
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, i8 0, i64 64, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 4, ptr %i.x, align 4, !tbaa !710
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.s, ptr %i.y, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.z, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.aa, align 4, !tbaa !710
  store i8 1, ptr %i.s, align 8, !tbaa !1407
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !256 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !267
  %i.ab = ptrtoint ptr %.pre.i.i to i64
  %i.ac = add i64 %i.q, %i.ab                     ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %.pre2.i.i
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !1408

bb.d:                                             ; preds = %bb.c
  %i.ae = inttoptr i64 %i.ac to ptr
  store ptr %i.ae, ptr %i.r, align 8, !tbaa !256
  br label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit

bb.e:                                             ; preds = %bb.c, %.thread.i
  %i.af = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef %i.q, i64 noundef %i.q, i8 3)
  br label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit

_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %.pre.i.i, %bb.d ], [ %i.af, %bb.e ]
  store ptr %.sroa.0.0.i, ptr %4, align 8, !tbaa !70
  store i32 %.sroa.2.0.copyload.i17, ptr %i.l, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK5clang6interp10IntegralAPILb1EE8toAPSIntEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  call void @_ZNK5clang6interp10IntegralAPILb1EE8toAPSIntEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  %i.ag = call noundef zeroext i1 @_ZN5clang6interp9DoShiftAPINS0_10IntegralAPILb1EEES3_LNS0_8ShiftDirE1EEEbRNS0_11InterpStateENS0_7CodePtrERKN4llvm6APSIntES9_PT_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(13) %5, ptr nofree noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %4)
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !156
  %i.aj = icmp ugt i32 %i.ai, 64
  br i1 %i.aj, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit
  %i.ak = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb1EEEEET_j.exit, %bb.f, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156
  %i.ao = icmp ugt i32 %i.an, 64
  br i1 %i.ao, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit22

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvm5APIntD2Ev.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24
  br label %_ZN4llvm5APIntD2Ev.exit22

_ZN4llvm5APIntD2Ev.exit22:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ag
}

declare noundef zeroext i1 @_ZNK5clang6interp5State29keepEvaluatingAfterSideEffectEv(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !70
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15222 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15225)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15225
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15225
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15225
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15225
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15228
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15228 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15228 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !70
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !70
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15231 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15234)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15234
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15234
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15234
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15234
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15237
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15237 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15237 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !70
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15240
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15240
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15240
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15243 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15246)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15246
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15246
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15246
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15246
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15249
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15249 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15249 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.805", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15252
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15252
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15252
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15255 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15258)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15258
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15258
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15258
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15258
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15261
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15261 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15261 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE4ENS0_8IntegralILj32ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.809", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15264
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15264
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15264
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15267 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15270)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15270
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15270
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15270
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15270
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15273
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15273 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15273 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE5ENS0_8IntegralILj32ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.813", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15276
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15276
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15276
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15279 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15282)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15282
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15282
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15282
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15282
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15285
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15285 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15285 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.817", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15288
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15288
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15288
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15291 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 6
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15294)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15294
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15294
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15294
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15294
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15297
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15297 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15297 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.821", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15300
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15300
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !2021
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15300
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15303 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 7
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15306)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15306
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15306
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15306
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15306
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15309
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15309 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15309 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2021
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !70
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !96
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15312 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 8
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15315)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15315
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15315
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15315
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15315
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15318
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15318 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15318 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !96
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !70
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !96
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15321 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 9
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15324)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15324
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15324
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15324
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15324
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15327
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15327 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15327 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !96
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !309
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15330 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15333)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15333
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15333
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15333
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15333
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15336
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15336 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15336 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !309
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::FixedPoint", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15339)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15339
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15339
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15339 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !156, !noalias !15339 ; 11 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !156, !alias.scope !15339
  %i.j = load i64, ptr %i.f, align 8, !noalias !15339 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !alias.scope !15339
  store i32 0, ptr %i.h, align 8, !tbaa !156, !noalias !15339
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !65, !range !68, !noalias !15339, !noundef !69 ; 2 uses
  store i8 %i.m, ptr %i.k, align 4, !tbaa !65, !alias.scope !15339
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70, !noalias !15339 ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !70, !alias.scope !15339
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #23, !noalias !15339
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 noundef 48) #23 ; 8 uses
  %i.s = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i1 noundef zeroext false)
  br i1 %i.s, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !171  ; 3 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ne i32 %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  %or.cond.i.i.i = select i1 %i.w, i1 true, i1 %i.z
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !70, !noalias !15342 ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !161 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !196
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.u, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %i.y, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !784, !range !68, !noundef !69
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i = icmp ne ptr %i.ao, null
  %or.cond.not.i.i = select i1 %i.am, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i9.i = icmp eq ptr %i.as, null
  %i.at = select i1 %i.am, i1 %.not.i9.i, i1 false
  br i1 %i.at, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.au = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.aq, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.av = icmp eq i8 %i.au, 11
  br i1 %i.av, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15345)
  store ptr %i.y, ptr %2, align 8, !tbaa !187, !alias.scope !15345
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !190, !alias.scope !15345
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !191, !noalias !15345
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !192, !alias.scope !15345
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !70, !noalias !15348
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.bb = phi ptr [ %i.y, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !70, !noalias !15348 ; 2 uses
  %i.be = load i64, ptr %i.r, align 8, !tbaa !191, !noalias !15348 ; 2 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !196
  %i.bi = icmp eq i32 %i.bd, %i.bh
  %.pre.i12 = zext i32 %i.bd to i64               ; 3 uses
  br i1 %i.bi, label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.pre.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %i.bf, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = icmp eq i64 %i.be, %.pre.i12
  %i.bq = and i1 %i.bp, %i.bo                     ; 2 uses
  %.sink6.i.i = select i1 %i.bq, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bq, i64 48, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink6.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink5.i.i ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !156
  %i.bv = icmp ult i32 %i.bu, 65
  %i.bw = icmp ult i32 %i.i, 65
  %or.cond = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit
  store i64 %i.j, ptr %i.bs, align 8, !tbaa !70
  store i32 %i.i, ptr %i.bt, align 8, !tbaa !156
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  %.pre15 = load i8, ptr %i.k, align 4, !tbaa !65, !range !68
  %.pre16 = load i32, ptr %i.n, align 8, !tbaa !70
  %.pre17.pre = load i32, ptr %i.g, align 8, !tbaa !156
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.h, %bb.i
  %.pre17 = phi i32 [ %i.i, %bb.h ], [ %.pre17.pre, %bb.i ]
  %i.bx = phi i32 [ %i.p, %bb.h ], [ %.pre16, %bb.i ]
  %i.by = phi i8 [ %i.m, %bb.h ], [ %.pre15, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.bx, ptr %i.ca, align 8, !tbaa !70
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZN5clang6interp10FixedPointaSERKS1_.exit
  %i.cb = phi i32 [ %.pre17, %_ZN5clang6interp10FixedPointaSERKS1_.exit ], [ %i.i, %bb.a ], [ %i.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ %i.i, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ %i.i, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.b ], [ %i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  %.0 = phi i1 [ true, %_ZN5clang6interp10FixedPointaSERKS1_.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.j, label %_ZN5clang6interp10FixedPointD2Ev.exit

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread
  %i.cd = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN5clang6interp10FixedPointD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #24
  br label %_ZN5clang6interp10FixedPointD2Ev.exit

_ZN5clang6interp10FixedPointD2Ev.exit:            ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE13ENS0_7PointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15351
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15351
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23, !noalias !15351
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #23
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15354 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 13
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15357)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15357
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15357
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15357
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15357
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15360
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15360 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15360 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit

_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit:   ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %3) #23 ; 0 uses
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE14ENS0_13MemberPointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::MemberPointer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !15363
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63, !noalias !15363
  %i.f = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 72) #23, !noalias !15363 ; 2 uses
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f) #23
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.g, ptr noundef nonnull align 8 dereferenceable(21) %i.h, i64 21, i1 false)
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 72) #23
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 48) #23 ; 8 uses
  %i.k = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171  ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ne i32 %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !70, !noalias !15366 ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !161  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !196
  %i.x = icmp eq i32 %i.t, %i.w
  br i1 %i.x, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.m, 1
  br i1 %i.y, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.z = zext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.ab, %bb.e ], [ %i.q, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.u, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ae, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i9.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %i.ae, i1 %.not.i9.i, i1 false
  br i1 %i.al, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.am = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ai, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.an = icmp eq i8 %i.am, 14
  br i1 %i.an, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15369)
  store ptr %i.q, ptr %2, align 8, !tbaa !187, !alias.scope !15369
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !190, !alias.scope !15369
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load i64, ptr %i.j, align 8, !tbaa !191, !noalias !15369
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !192, !alias.scope !15369
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !70, !noalias !15372
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.at = phi ptr [ %i.q, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !70, !noalias !15372 ; 2 uses
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !191, !noalias !15372 ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !196
  %i.ba = icmp eq i32 %i.av, %i.az
  %.pre.i12 = zext i32 %i.av to i64               ; 3 uses
  br i1 %i.ba, label %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre.i12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.ax, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !784, !range !68, !noundef !69
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = icmp eq i64 %i.aw, %.pre.i12
  %i.bi = and i1 %i.bh, %i.bg                     ; 2 uses
  %.sink6.i.i = select i1 %i.bi, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bi, i64 48, i64 %i.aw
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink6.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink5.i.i ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %3) #23 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.bm, ptr noundef nonnull align 8 dereferenceable(21) %i.g, i64 21, i1 false)
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !70
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !1617
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70, !noalias !15375 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !196
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !716 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !784, !range !68, !noundef !69
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !925 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !925
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 12
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15378)
  store ptr %i.o, ptr %2, align 8, !tbaa !187, !alias.scope !15378
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !190, !alias.scope !15378
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15378
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !192, !alias.scope !15378
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !70, !noalias !15381
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70, !noalias !15381 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15381 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !196
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !784, !range !68, !noundef !69
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1617
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !70
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15384)
  store ptr %i.n, ptr %3, align 8, !tbaa !187, !alias.scope !15384
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !190, !alias.scope !15384
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15384
  store i64 %i.s, ptr %i.r, align 8, !tbaa !192, !alias.scope !15384
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !15387)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !15387
  store ptr %i.t, ptr %2, align 8, !tbaa !187, !alias.scope !15387
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.o, align 8, !tbaa !70, !noalias !15387
  store i32 %i.v, ptr %i.u, align 8, !tbaa !190, !alias.scope !15387
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15387
  store i64 %i.x, ptr %i.w, align 8, !tbaa !192, !alias.scope !15387
  call void @_ZNK5clang6interp7PtrView8activateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !15390
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.y = phi ptr [ %i.n, %bb.b ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ], [ %i.n, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !70, !noalias !15390 ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15390 ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !161 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !196
  %i.af = icmp eq i32 %i.aa, %i.ae
  %.pre.i = zext i32 %i.aa to i64                 ; 3 uses
  br i1 %i.af, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pre.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.ai, %bb.c ], [ %i.ac, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !784, !range !68, !noundef !69
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = icmp eq i64 %i.ab, %.pre.i
  %i.an = and i1 %i.am, %i.al                     ; 2 uses
  %.sink6.i.i = select i1 %i.an, i64 %.pre.i, i64 40
  %.sink5.i.i = select i1 %i.an, i64 48, i64 %i.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink6.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.ap, align 1, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !63
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !70
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !69, !align !90
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #23 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext true) ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171
  %i.l = icmp ne i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15393)
  store ptr %i.n, ptr %3, align 8, !tbaa !187, !alias.scope !15393
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !190, !alias.scope !15393
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.h, align 8, !tbaa !191, !noalias !15393
  store i64 %i.s, ptr %i.r, align 8, !tbaa !192, !alias.scope !15393
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
end_hunk_3
