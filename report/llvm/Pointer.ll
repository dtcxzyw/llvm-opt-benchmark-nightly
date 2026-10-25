Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Pointer?download=true
inline.NumInlined: 2757
inline.NumDeleted: 1218
begin_hunk_0_@_ZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextE:bb.a
  %i.au = load i64, ptr %9, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  store i32 0, ptr %0, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 4
  call void @_ZN5clang7APValue10MakeLValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #22
  call void @_ZN5clang7APValue9setLValueENS0_10LValueBaseERKNS_9CharUnitsEN4llvm8ArrayRefINS0_15LValuePathEntryEEEbb(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %i.au, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr null, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.by

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44
  call void @_ZN5clang14TypeInfoLValueC1EPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.bb) #22
  %.sroa.045.0.copyload = load ptr, ptr %11, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, -8
  %i.bg = call { i64, ptr } @_ZN5clang7APValue10LValueBase11getTypeInfoENS_14TypeInfoLValueENS_8QualTypeE(ptr %.sroa.045.0.copyload, i64 %i.bf) #22 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = extractvalue { i64, ptr } %i.bg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i64 0, ptr %12, align 8
  store i32 0, ptr %0, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = and i8 %i.bk, -2
  store i8 %i.bl, ptr %i.bj, align 4
  call void @_ZN5clang7APValue10MakeLValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #22
  call void @_ZN5clang7APValue9setLValueENS0_10LValueBaseERKNS_9CharUnitsEN4llvm8ArrayRefINS0_15LValuePathEntryEEEbb(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %i.bh, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr null, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.by

_ZNK5clang6interp7Pointer11getDeclDescEv.exit:    ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !20
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bm, align 8 ; 2 uses
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = and i64 %.sroa.0.0.copyload.i.i.i.i, -3 ; 3 uses
  %.not.i1.i = icmp eq i64 %i.bp, 0
  %.not.i.i = or i1 %i.bo, %.not.i1.i
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer11getDeclDescEv.exit
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 127
  %i.bu = add nsw i32 %i.bt, -27
  %i.bv = icmp ult i32 %i.bu, 27
  br i1 %i.bv, label %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit, label %bb.i

_ZNK5clang6interp10Descriptor11asValueDeclEv.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN5clang7APValue10LValueBaseC1EPKNS_9ValueDeclEjj(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.bq, i32 noundef 0, i32 noundef 0) #22
  %.sroa.0373.0.copyload = load i64, ptr %13, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNK5clang6interp7Pointer11getDeclDescEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.bw, align 4, !tbaa !38
  %.not439 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not439, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN5clang6interp7PointerC1EPNS0_5BlockE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.q) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %i.bz = icmp ne i32 %i.by, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp ne i32 %i.by, 1                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8            ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  %or.cond.i.i = select i1 %i.ca, i1 true, i1 %i.cd
  br i1 %or.cond.i.i, label %..thread_crit_edge.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !44, !noalias !254 ; 2 uses
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !30
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %bb.k

..thread_crit_edge.i:                             ; preds = %bb.j
  %i.ck = xor i1 %i.ca, true
  call void @llvm.assume(i1 %i.ck)
  %.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !20
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.cl = zext i32 %i.cf to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %..thread_crit_edge.i, %bb.k
  %.0.i88 = phi ptr [ %i.co, %bb.k ], [ %i.cg, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ], [ %.pre.i, %..thread_crit_edge.i ]
  %i.cp = call i64 @_ZNK5clang6interp10Descriptor11getDataTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(72) %.0.i88, ptr noundef nonnull align 8 dereferenceable(23904) %2) #22
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !255
  %i.ct = call { i64, ptr } @_ZN5clang7APValue10LValueBase15getDynamicAllocENS_18DynamicAllocLValueENS_8QualTypeE(i32 %i.cs, i64 %i.cp) #22 ; 2 uses
  %i.cu = extractvalue { i64, ptr } %i.ct, 0
  %i.cv = extractvalue { i64, ptr } %i.ct, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cw = inttoptr i64 %i.bp to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN5clang7APValue10LValueBaseC1EPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.cw, i32 noundef 0, i32 noundef 0) #22
  %.sroa.0373.0.copyload374 = load i64, ptr %15, align 8
  %.sroa.7.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.7.0.copyload376 = load ptr, ptr %.sroa.7.0..sroa_idx375, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit
  %.sroa.7.0 = phi ptr [ %i.cv, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %.sroa.7.0.copyload376, %bb.l ], [ %.sroa.7.0.copyload, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit ]
  %.sroa.0373.0 = phi i64 [ %i.cu, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %.sroa.0373.0.copyload374, %bb.l ], [ %.sroa.0373.0.copyload, %_ZNK5clang6interp10Descriptor11asValueDeclEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i64 0, ptr %16, align 8
  %i.cx = load i32, ptr %i.f, align 8, !tbaa !35
  %i.cy = icmp ne i32 %i.cx, 1
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !44  ; 37 uses
  %.not.i90 = icmp eq ptr %.pre, null
  %or.cond = select i1 %i.cy, i1 true, i1 %.not.i90
  br i1 %or.cond, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !44, !noalias !256 ; 4 uses
  %i.db = load ptr, ptr %.pre, align 8, !tbaa !20 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !30
  %i.de = icmp eq i32 %i.da, %i.dd                ; 3 uses
  br i1 %i.de, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.df = zext i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.n, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.di, %bb.n ], [ %i.db, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !61
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.dm = load i64, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !62
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp ugt i64 %i.dm, %i.dp
  br i1 %i.dq, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i91 = zext i32 %i.da to i64               ; 4 uses
  br i1 %i.de, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !61 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.dm, %.pre.i91
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i91
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !60 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !61 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %i.dm, %.pre.i91
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.dy = phi i32 [ %i.ds, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.dx, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i92 = phi ptr [ %i.db, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.dv, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i92, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !63
  %.not1.i.i.i = icmp eq ptr %i.ea, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.eb = phi i32 [ %i.dy, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ds, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.dx, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.ec = sub nsw i64 %i.dm, %.pre.i91
  %i.ed = add nsw i64 %i.ec, %.0.neg.i.i.i
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp eq i32 %i.eb, %i.ee
  br i1 %i.ef, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  br i1 %i.de, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.sink.split.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.eg = zext i32 %i.da to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %.0.i.i93 = load ptr, ptr %i.ei, align 8, !tbaa !64 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i93, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.sink.split.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.sink.split.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i.sink.i = phi ptr [ %.0.i.i93, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.db, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !61
  %i.el = icmp ne i32 %i.ek, 0
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.sink.split.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.m, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.em = phi i1 [ false, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit ], [ false, %bb.m ], [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ false, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i ], [ %i.el, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.sink.split.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !44, !noalias !257
  %i.ep = load i64, ptr %1, align 8, !tbaa !34, !noalias !257
  %i.eq = getelementptr inbounds nuw i8, ptr %.pre, i64 4294967327
  br label %.outer

.outer:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %.sroa.42.0.ph = phi i32 [ %.sroa.42.3, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit ], [ %i.eo, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread ]
  %.sroa.92.0.ph = phi i64 [ %.sroa.92.3, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit ], [ %i.ep, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread ]
  %.063.ph = phi i1 [ %.2, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit ], [ %i.em, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread ] ; 8 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit216, %.outer
  %.sroa.42.0 = phi i32 [ %.sroa.42.2, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit216 ], [ %.sroa.42.0.ph, %.outer ] ; 23 uses
  %.sroa.92.0 = phi i64 [ %.sroa.92.2, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit216 ], [ %.sroa.92.0.ph, %.outer ] ; 16 uses
  %.pre485 = load ptr, ptr %.pre, align 8, !tbaa !20 ; 20 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pre485, i64 24
  %i.es = load i32, ptr %i.er, align 8, !tbaa !30 ; 3 uses
  %i.et = icmp eq i32 %.sroa.42.0, %i.es
  br i1 %i.et, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread, label %_ZNK5clang6interp7PtrView7isFieldEv.exit

_ZNK5clang6interp7PtrView7isFieldEv.exit:         ; preds = %bb.o
  %i.eu = zext i32 %.sroa.42.0 to i64             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i95 = load i64, ptr %i.ex, align 8 ; 2 uses
  %i.ey = and i64 %.sroa.0.0.copyload.i.i.i.i95, 2
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = and i64 %.sroa.0.0.copyload.i.i.i.i95, -3
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = and i1 %i.ez, %i.fb
  br i1 %i.fc, label %.critedge, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread

_ZNK5clang6interp7PtrView7isFieldEv.exit.thread:  ; preds = %bb.o, %_ZNK5clang6interp7PtrView7isFieldEv.exit
  %i.fd = phi i32 [ %i.es, %_ZNK5clang6interp7PtrView7isFieldEv.exit ], [ %.sroa.42.0, %bb.o ] ; 3 uses
  %i.fe = icmp eq i32 %.sroa.42.0, %i.fd
  %.pre.i96 = zext i32 %.sroa.42.0 to i64         ; 5 uses
  br i1 %i.fe, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %bb.p, %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread
  %.0.i.i.i97 = phi ptr [ %i.fh, %bb.p ], [ %.pre485, %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 53
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !65, !range !66, !noundef !67
  %i.fk = trunc nuw i8 %i.fj to i1
  %.not.i98 = icmp ne i64 %.sroa.92.0, %.pre.i96
  %or.cond.not.i = select i1 %i.fk, i1 %.not.i98, i1 false
  br i1 %or.cond.not.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.fl = icmp ugt i32 %.sroa.42.0, 15
  br i1 %i.fl, label %bb.r, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit

bb.r:                                             ; preds = %bb.q
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fo = load i16, ptr %i.fn, align 4
  %i.fp = and i16 %i.fo, 256
  %.not2.i = icmp eq i16 %i.fp, 0
  br i1 %.not2.i, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit, label %.critedge

.critedge:                                        ; preds = %bb.r, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7isFieldEv.exit
  %.pre.i100.pre-phi = phi i64 [ %.pre.i96, %bb.r ], [ %.pre.i96, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.eu, %_ZNK5clang6interp7PtrView7isFieldEv.exit ] ; 12 uses
  %i.fq = phi i32 [ %i.fd, %bb.r ], [ %i.fd, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.es, %_ZNK5clang6interp7PtrView7isFieldEv.exit ] ; 6 uses
  %i.fr = icmp ne i32 %.sroa.42.0, %i.fq          ; 8 uses
  br i1 %i.fr, label %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread, label %_ZNK5clang6interp7PtrView11isArrayRootEv.exit

_ZNK5clang6interp7PtrView11isArrayRootEv.exit:    ; preds = %.critedge
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre485, i64 53
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !65, !range !66, !noundef !67
  %i.fu = trunc nuw i8 %i.ft to i1                ; 2 uses
  %i.fv = icmp eq i64 %.sroa.92.0, %.pre.i100.pre-phi ; 2 uses
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %i.fw, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i104, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i135

_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread: ; preds = %.critedge
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i100.pre-phi
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !60
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 53
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !65, !range !66, !noundef !67
  %i.gc = trunc nuw i8 %i.gb to i1                ; 2 uses
  %i.gd = icmp eq i64 %.sroa.92.0, %.pre.i100.pre-phi ; 2 uses
  %i.ge = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %i.ge, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i104, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i135

_ZNK5clang6interp7PtrView7inArrayEv.exit.i104:    ; preds = %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit
  %i.gf = phi i32 [ %i.fq, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread ], [ %.sroa.42.0, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit ] ; 4 uses
  %i.gg = icmp ugt i32 %.sroa.42.0, 15
  br i1 %i.gg, label %bb.s, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit110

bb.s:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i104
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.92.0
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  %i.gj = load i16, ptr %i.gi, align 4
  %i.gk = and i16 %i.gj, 256
  %.not2.i109 = icmp eq i16 %i.gk, 0
  br i1 %.not2.i109, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit110, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gl = icmp eq i64 %.sroa.92.0, 4294967295
  br i1 %i.gl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.fr, label %bb.v, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.gm = load ptr, ptr %i.eq, align 8, !tbaa !60, !noalias !258
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i:       ; preds = %bb.u, %bb.v
  %.pre485.lcssa515.sink529 = phi ptr [ %i.gm, %bb.v ], [ %.pre485, %bb.u ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre485.lcssa515.sink529, i64 53
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !65, !range !66, !noalias !258, !noundef !67
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre485.lcssa515.sink529, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !258
  %.not.i.i.i399 = icmp eq ptr %i.gr, null
  %i.gs = select i1 %i.gp, i1 %.not.i.i.i399, i1 false
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre485.lcssa515.sink529, i64 20
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !61, !noalias !258
  %i.gv = zext i32 %i.gu to i64
  %i.gw = select i1 %i.gs, i64 4294967303, i64 4294967311
  %i.gx = add nuw nsw i64 %i.gw, %i.gv
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

bb.w:                                             ; preds = %bb.t
  br i1 %i.fr, label %bb.x, label %_ZNK5clang6interp7PtrView6expandEv.exit

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.92.0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !68, !noalias !258
  %i.hb = sub i32 %.sroa.42.0, %i.ha              ; 3 uses
  %i.hc = icmp eq i32 %i.hb, %i.gf
  br i1 %i.hc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hd = zext i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !60, !noalias !258
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hh = phi ptr [ %i.hg, %bb.y ], [ %.pre485, %bb.x ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 53
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !65, !range !66, !noalias !258, !noundef !67
  %i.hk = trunc nuw i8 %i.hj to i1
  %spec.select = select i1 %i.hk, i32 %i.hb, i32 %.sroa.42.0
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

_ZNK5clang6interp7PtrView6expandEv.exit:          ; preds = %bb.z, %bb.w, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i
  %.sroa.8286.0 = phi i32 [ %.sroa.42.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %.sroa.42.0, %bb.w ], [ %spec.select, %bb.z ] ; 8 uses
  %.sroa.11296.0 = phi i64 [ %i.gx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %.sroa.92.0, %bb.w ], [ %.sroa.92.0, %bb.z ] ; 3 uses
  %i.hl = icmp eq i32 %.sroa.8286.0, %i.gf        ; 2 uses
  br i1 %i.hl, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit
  %i.hm = icmp ugt i32 %i.gf, 16
  %i.hn = zext i32 %i.gf to i64                   ; 2 uses
  %i.ho = icmp eq i64 %.sroa.11296.0, %i.hn       ; 2 uses
  %or.cond.i = select i1 %i.hm, i1 %i.ho, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit
  %i.hp = zext i32 %.sroa.8286.0 to i64           ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !60 ; 2 uses
  %i.ht = icmp ugt i32 %.sroa.8286.0, 16
  %i.hu = icmp eq i64 %.sroa.11296.0, %i.hp       ; 2 uses
  %or.cond.i403 = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %or.cond.i403, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %.0.i114404409 = phi ptr [ %.pre485, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %i.hs, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread ] ; 3 uses
  %i.hv = phi i64 [ %i.hn, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %i.hp, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread ] ; 2 uses
  %i.hw = phi i1 [ %i.ho, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %i.hu, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i114404409, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !69 ; 2 uses
  %.not.not.i117 = icmp eq i32 %i.hy, 0
  br i1 %.not.not.i117, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.hw, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.hl, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.hv
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i8.i = phi ptr [ %i.ib, %bb.ac ], [ %.pre485, %bb.ab ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.id, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.aa
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.aa ]
  %i.ie = sub i64 %.sroa.11296.0, %i.hv
  %i.if = add nsw i64 %i.ie, %.0.neg.i.i
  %i.ig = trunc i64 %i.if to i32
  %i.ih = udiv i32 %i.ig, %i.hy
  %.zext.i = zext i32 %i.ih to i64
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.0.i114405 = phi ptr [ %.pre485, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %.0.i114404409, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %.0.i114404409, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ %i.hs, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread ]
  %.1.i118 = phi i64 [ 0, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %.zext.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread ] ; 3 uses
  %i.ii = call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i114405) #22
  %i.ij = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %2, i64 %i.ii) #22
  %i.ik = mul nsw i64 %i.ij, %.1.i118
  %i.il = load i64, ptr %16, align 8, !tbaa !71
  %i.im = add nsw i64 %i.il, %i.ik
  store i64 %i.im, ptr %16, align 8, !tbaa !71
  %i.in = load ptr, ptr %.pre, align 8, !tbaa !20 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !30
  %i.iq = icmp eq i32 %.sroa.8286.0, %i.ip
  br i1 %i.iq, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit120, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit
  %i.ir = zext i32 %.sroa.8286.0 to i64
  %i.is = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit120

_ZNK5clang6interp7PtrView12getFieldDescEv.exit120: ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit, %bb.ad
  %.0.i119 = phi ptr [ %i.iu, %bb.ad ], [ %i.in, %_ZNK5clang6interp7PtrView8getIndexEv.exit ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i119, i64 53
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !65, !range !66, !noundef !67
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.ae, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

bb.ae:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit120
  %i.iy = load i32, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.iz = load i32, ptr %i.e, align 4, !tbaa !51
  %.not.i121 = icmp ult i32 %i.iy, %i.iz
  br i1 %.not.i121, label %bb.ag, label %bb.af, !prof !72

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %.1.i118)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ja = zext i32 %i.iy to i64
  %i.jb = load ptr, ptr %3, align 8, !tbaa !49
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ja
  store i64 %.1.i118, ptr %i.jc, align 1
  %i.jd = load i32, ptr %i.d, align 8, !tbaa !50
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.d, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

_ZNK5clang6interp7PtrView14isArrayElementEv.exit110: ; preds = %bb.s, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i104
  br i1 %i.fr, label %bb.ah, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit123

bb.ah:                                            ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit110
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.92.0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit123

_ZNK5clang6interp7PtrView12getFieldDescEv.exit123: ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit110, %bb.ah
  %.0.i122 = phi ptr [ %i.jh, %bb.ah ], [ %.pre485, %_ZNK5clang6interp7PtrView14isArrayElementEv.exit110 ]
  %.sroa.0.0.copyload.i.i.i124 = load i64, ptr %.0.i122, align 8 ; 2 uses
  %i.ji = and i64 %.sroa.0.0.copyload.i.i.i124, 2
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = and i64 %.sroa.0.0.copyload.i.i.i124, -3
  %i.jl = inttoptr i64 %i.jk to ptr               ; 5 uses
  %.0.i.i.i.i125 = select i1 %i.jj, ptr %i.jl, ptr null ; 2 uses
  %i.jm = ptrtoint ptr %.0.i.i.i.i125 to i64
  %i.jn = and i64 %i.jm, -7
  call void @_ZN5clang7APValue15LValuePathEntryC1EN4llvm14PointerIntPairIPKNS_4DeclELj1EbNS2_21PointerLikeTypeTraitsIS6_EENS2_18PointerIntPairInfoIS6_Lj1ES8_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 %i.jn) #22
  %i.jo = load i64, ptr %17, align 8              ; 2 uses
  %i.jp = load i32, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.jq = load i32, ptr %i.e, align 4, !tbaa !51
  %.not.i126 = icmp ult i32 %i.jp, %i.jq
  br i1 %.not.i126, label %bb.aj, label %bb.ai, !prof !72

bb.ai:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit123
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.jo)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit127

bb.aj:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit123
  %i.jr = zext i32 %i.jp to i64
  %i.js = load ptr, ptr %3, align 8, !tbaa !49
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jr
  store i64 %i.jo, ptr %i.jt, align 1
  %i.ju = load i32, ptr %i.d, align 8, !tbaa !50
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.d, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit127

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit127: ; preds = %bb.ai, %bb.aj
  %.not.i128 = icmp eq ptr %.0.i.i.i.i125, null
  br i1 %.not.i128, label %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit127
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 28 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = and i32 %i.jx, 127
  %i.jz = add nsw i32 %i.jy, -50
  %i.ka = icmp ult i32 %i.jz, 3
  br i1 %i.ka, label %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.ak
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kb, align 8 ; 3 uses
  %i.kc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %_ZNK5clang9FieldDecl9getParentEv.exit.i, label %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i

_ZNK5clang9FieldDecl9getParentEv.exit.i:          ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.ke = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -36
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, 128
  %.not.i133 = icmp eq i32 %i.kh, 0
  br i1 %.not.i133, label %_ZNK5clang9FieldDecl9getParentEv.exit8.i, label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit"

_ZNK5clang9FieldDecl9getParentEv.exit.thread.i:   ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.ki = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !75 ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -36
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = and i32 %i.km, 128
  %.not2.i130 = icmp eq i32 %i.kn, 0
  br i1 %.not2.i130, label %_ZNK5clang9FieldDecl9getParentEv.exit8.i, label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit"

_ZNK5clang9FieldDecl9getParentEv.exit8.i:         ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i, %_ZNK5clang9FieldDecl9getParentEv.exit.i
  %.0.i.i.i6.i = phi ptr [ %i.ke, %_ZNK5clang9FieldDecl9getParentEv.exit.i ], [ %i.kk, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i.i6.i, i64 8
  %i.kp = load i16, ptr %i.ko, align 8
  %i.kq = and i16 %i.kp, 127
  %i.kr = add nsw i16 %i.kq, -59
  %i.ks = icmp ult i16 %i.kr, 4
  %i.kt = getelementptr inbounds i8, ptr %.0.i.i.i6.i, i64 -64
  %spec.select.i.i.i7.i = select i1 %i.ks, ptr %i.kt, ptr null
  %i.ku = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr noundef %spec.select.i.i.i7.i) #22
  %i.kv = load i32, ptr %i.jw, align 4
  %i.kw = and i32 %i.kv, 32768
  %.not.i.i.i.i132 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i.i132, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit8.i
  %i.kx = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %i.jl) #22
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i: ; preds = %bb.al, %_ZNK5clang9FieldDecl9getParentEv.exit8.i
  %.0.i.i.i9.i = phi ptr [ %i.kx, %bb.al ], [ %i.jl, %_ZNK5clang9FieldDecl9getParentEv.exit8.i ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i.i.i9.i, i64 68 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4            ; 2 uses
  %i.la = icmp ult i32 %i.kz, 16
  br i1 %i.la, label %bb.am, label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i

bb.am:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i9.i) #22
  %.pre.i.i = load i32, ptr %i.ky, align 4
  br label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i

_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i:     ; preds = %bb.am, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i
  %i.lb = phi i32 [ %.pre.i.i, %bb.am ], [ %i.kz, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i ]
  %i.lc = lshr i32 %i.lb, 4
  %i.ld = add nsw i32 %i.lc, -1
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !80
  %i.lg = zext i32 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !40
  %i.lj = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %2, i64 noundef %i.li) #22
  br label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit"

"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit": ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit.i, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i
  %.sroa.0.0.i = phi i64 [ %i.lj, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i ], [ 0, %_ZNK5clang9FieldDecl9getParentEv.exit.i ], [ 0, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i ]
  %i.lk = load i64, ptr %16, align 8, !tbaa !71
  %i.ll = add nsw i64 %i.lk, %.sroa.0.0.i
  store i64 %i.ll, ptr %16, align 8, !tbaa !71
  br label %_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentIN5clang9FieldDeclEKNS1_4DeclEEEDaPT0_.exit.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit127, %bb.ak, %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit"
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.92.0
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !68, !noalias !259
  %i.lp = sub i32 %.sroa.42.0, %i.lo
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.i135:    ; preds = %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit
  %.pre-phi = phi i1 [ %i.fu, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit ], [ %i.gc, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread ]
  %i.lq = phi i1 [ %i.fv, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit ], [ %i.gd, %_ZNK5clang6interp7PtrView11isArrayRootEv.exit.thread ]
  %.not.i137 = icmp ne i64 %.sroa.92.0, %.pre.i100.pre-phi
  %or.cond.not.i138 = select i1 %.pre-phi, i1 %.not.i137, i1 false
  br i1 %or.cond.not.i138, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i135
  %i.lr = icmp ugt i32 %.sroa.42.0, 15
  br i1 %i.lr, label %bb.ao, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit141

bb.ao:                                            ; preds = %bb.an
  %i.ls = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i100.pre-phi
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 28
  %i.lu = load i16, ptr %i.lt, align 4
  %i.lv = and i16 %i.lu, 256
  %.not2.i140 = icmp eq i16 %i.lv, 0
  br i1 %.not2.i140, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit141, label %bb.ap

bb.ap:                                            ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i135, %bb.ao
  %i.lw = icmp eq i64 %.sroa.92.0, 4294967295
  br i1 %i.lw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fr, label %bb.ar, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i148

bb.ar:                                            ; preds = %bb.aq
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i100.pre-phi
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !60, !noalias !260
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i148

_ZNK5clang6interp7PtrView7getSizeEv.exit.i148:    ; preds = %bb.aq, %bb.ar
  %.pre485.lcssa516.sink533 = phi ptr [ %i.lz, %bb.ar ], [ %.pre485, %bb.aq ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.pre485.lcssa516.sink533, i64 53
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !65, !range !66, !noalias !260, !noundef !67
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = getelementptr inbounds nuw i8, ptr %.pre485.lcssa516.sink533, i64 40
  %i.me = load ptr, ptr %i.md, align 8, !noalias !260
  %.not.i.i.i146416 = icmp eq ptr %i.me, null
  %i.mf = select i1 %i.mc, i1 %.not.i.i.i146416, i1 false
  %..i147417 = select i1 %i.mf, i64 8, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %.pre485.lcssa516.sink533, i64 20
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !61, !noalias !260
  %i.mi = zext i32 %i.mh to i64
  %i.mj = add nuw nsw i64 %..i147417, %.pre.i100.pre-phi
  %i.mk = add nuw nsw i64 %i.mj, %i.mi
  br label %_ZNK5clang6interp7PtrView6expandEv.exit150

bb.as:                                            ; preds = %bb.ap
  %brmerge.not = and i1 %i.fr, %i.lq
  br i1 %brmerge.not, label %bb.at, label %_ZNK5clang6interp7PtrView6expandEv.exit150

bb.at:                                            ; preds = %bb.as
  %i.ml = getelementptr inbounds nuw i8, ptr %.pre, i64 %.sroa.92.0
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !68, !noalias !260
  %i.mo = sub i32 %.sroa.42.0, %i.mn              ; 3 uses
  %i.mp = icmp eq i32 %i.mo, %i.fq
  br i1 %i.mp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mq = zext i32 %i.mo to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !60, !noalias !260
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.mu = phi ptr [ %i.mt, %bb.au ], [ %.pre485, %bb.at ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 53
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !65, !range !66, !noalias !260, !noundef !67
  %i.mx = trunc nuw i8 %i.mw to i1
  %spec.select436 = select i1 %i.mx, i32 %i.mo, i32 %.sroa.42.0
  br label %_ZNK5clang6interp7PtrView6expandEv.exit150

_ZNK5clang6interp7PtrView6expandEv.exit150:       ; preds = %bb.av, %bb.as, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i148
  %.sroa.8.0 = phi i32 [ %.sroa.42.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i148 ], [ %.sroa.42.0, %bb.as ], [ %spec.select436, %bb.av ] ; 11 uses
  %.sroa.11262.0 = phi i64 [ %i.mk, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i148 ], [ %.sroa.92.0, %bb.as ], [ %.sroa.92.0, %bb.av ] ; 8 uses
  %i.my = icmp eq i32 %.sroa.8.0, %i.fq           ; 5 uses
  br i1 %i.my, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit150
  %i.mz = zext i32 %.sroa.8.0 to i64
  %i.na = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit150, %bb.aw
  %.0.i151420 = phi ptr [ %i.nc, %bb.aw ], [ %.pre485, %_ZNK5clang6interp7PtrView6expandEv.exit150 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i151420, i64 20
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !61
  %i.nf = icmp eq i32 %i.ne, -1
  br i1 %i.nf, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422, label %bb.ax

bb.ax:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ng = getelementptr inbounds nuw i8, ptr %.pre485, i64 28
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !62
  %i.ni = zext i32 %i.nh to i64
  %i.nj = icmp ugt i64 %.sroa.11262.0, %i.ni
  br i1 %i.nj, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.my, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i161:    ; preds = %bb.ay
  %i.nk = getelementptr inbounds nuw i8, ptr %.pre485, i64 20
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !61
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %i.nn = zext i32 %i.fq to i64                   ; 2 uses
  %.not.i.i162 = icmp eq i64 %.sroa.11262.0, %i.nn
  br i1 %.not.i.i162, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i: ; preds = %bb.ay
  %i.no = zext i32 %.sroa.8.0 to i64              ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !60 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 20
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !61
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %.not.i5.i = icmp eq i64 %.sroa.11262.0, %i.no
  br i1 %.not.i5.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161
  %i.nv = phi i64 [ %i.nm, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ %i.nu, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.nw = phi i64 [ %i.nn, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ %i.no, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.i.i3.i = phi ptr [ %.pre485, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ %i.nr, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !63
  %.not1.i.i156 = icmp eq ptr %i.ny, null
  %..i.i157 = select i1 %.not1.i.i156, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155
  %i.nz = phi i64 [ %i.nw, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155 ], [ %.sroa.11262.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ %.sroa.11262.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.oa = phi i64 [ %i.nv, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155 ], [ %i.nm, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ %i.nu, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.neg.i.i159 = phi i64 [ %..i.i157, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i155 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i161 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.ob = sub nsw i64 %.sroa.11262.0, %i.nz
  %i.oc = add nsw i64 %i.ob, %.0.neg.i.i159
  %i.od = and i64 %i.oc, 4294967295
  %i.oe = icmp eq i64 %i.oa, %i.od
  br i1 %i.oe, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread: ; preds = %bb.ax, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  br i1 %i.my, label %_ZNK5clang6interp7PtrView11getNumElemsEv.exit, label %bb.az

bb.az:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread
  %i.of = zext i32 %.sroa.8.0 to i64
  %i.og = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView11getNumElemsEv.exit

_ZNK5clang6interp7PtrView11getNumElemsEv.exit:    ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, %bb.az
  %.pn.i = phi ptr [ %i.oi, %bb.az ], [ %.pre485, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread ] ; 2 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20
  %.in.i = load i32, ptr %.in.in.i, align 4, !tbaa !61
  %i.oj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !69
  %i.ol = udiv i32 %.in.i, %i.ok
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit177

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %i.om = icmp ugt i32 %.sroa.8.0, 16
  %i.on = zext i32 %.sroa.8.0 to i64              ; 4 uses
  %i.oo = icmp eq i64 %.sroa.11262.0, %i.on       ; 2 uses
  %or.cond.i165 = select i1 %i.om, i1 %i.oo, i1 false
  br i1 %or.cond.i165, label %_ZNK5clang6interp7PtrView8getIndexEv.exit177, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422
  br i1 %i.my, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.op = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.on
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166:   ; preds = %bb.bb, %bb.ba
  %.0.i.i.i167 = phi ptr [ %i.or, %bb.bb ], [ %.pre485, %bb.ba ]
  %i.os = getelementptr inbounds nuw i8, ptr %.0.i.i.i167, i64 16
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !69 ; 2 uses
  %.not.not.i168 = icmp eq i32 %i.ot, 0
  br i1 %.not.not.i168, label %_ZNK5clang6interp7PtrView8getIndexEv.exit177, label %bb.bc

bb.bc:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166
  br i1 %i.oo, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.my, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i169, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ou = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.on
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i169

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i169: ; preds = %bb.be, %bb.bd
  %.0.i.i8.i170 = phi ptr [ %i.ow, %bb.be ], [ %.pre485, %bb.bd ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.i.i8.i170, i64 40
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !63
  %.not1.i.i171 = icmp eq ptr %i.oy, null
  %..i.i172 = select i1 %.not1.i.i171, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173:  ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i169, %bb.bc
  %.0.neg.i.i174 = phi i64 [ %..i.i172, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i169 ], [ 0, %bb.bc ]
  %i.oz = sub i64 %.sroa.11262.0, %i.on
  %i.pa = add i64 %i.oz, %.0.neg.i.i174
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = udiv i32 %i.pb, %i.ot
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit177

_ZNK5clang6interp7PtrView8getIndexEv.exit177:     ; preds = %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422, %_ZNK5clang6interp7PtrView11getNumElemsEv.exit
  %.164 = phi i1 [ false, %_ZNK5clang6interp7PtrView11getNumElemsEv.exit ], [ %.063.ph, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422 ], [ %.063.ph, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166 ], [ %.063.ph, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173 ] ; 3 uses
  %.062 = phi i32 [ %i.ol, %_ZNK5clang6interp7PtrView11getNumElemsEv.exit ], [ 0, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread422 ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i166 ], [ %i.pc, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i173 ] ; 2 uses
  %i.pd = call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i151420) #22 ; 2 uses
  %i.pe = and i64 %i.pd, -16
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = load ptr, ptr %i.pf, align 16, !tbaa !85
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.sroa.0.0.copyload.i.i.i.i178 = load i64, ptr %i.ph, align 8, !tbaa !44
  %i.pi = and i64 %.sroa.0.0.copyload.i.i.i.i178, -16
  %i.pj = inttoptr i64 %i.pi to ptr
  %i.pk = load ptr, ptr %i.pj, align 16, !tbaa !85 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load i8, ptr %i.pl, align 16            ; 2 uses
  %i.pn = add i8 %i.pm, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.pn, 3
  %.not.i5.i179 = icmp ne ptr %i.pk, null
  %.not.i.not7.i = and i1 %.not.i5.i179, %switch.i.i.i.i.i.i.i.i.i.i
  %i.po = and i8 %i.pm, 62
  %spec.select.i.i.i180 = icmp eq i8 %i.po, 48
  %or.cond.i181 = and i1 %spec.select.i.i.i180, %.not.i.not7.i
  br i1 %or.cond.i181, label %select.unfold424, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

select.unfold424:                                 ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit177
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !91 ; 2 uses
  %i.pr = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.pq) #22 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.pr, null
  %spec.select437 = select i1 %.not.not.i.i.i, ptr %i.pq, ptr %i.pr
  %i.ps = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select437) #22
  %.not76 = icmp eq ptr %i.ps, null
  br i1 %.not76, label %bb.bf, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit177, %select.unfold424
  %i.pt = zext i32 %.062 to i64
  %i.pu = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %2, i64 %i.pd) #22
  %i.pv = mul nsw i64 %i.pu, %i.pt
  %i.pw = load i64, ptr %16, align 8, !tbaa !71
  %i.px = add nsw i64 %i.pw, %i.pv
  store i64 %i.px, ptr %16, align 8, !tbaa !71
  br label %bb.bf

bb.bf:                                            ; preds = %select.unfold424, %_ZNK5clang4Type15getAsRecordDeclEv.exit
  %i.py = load ptr, ptr %.pre, align 8, !tbaa !20 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !30
  %i.qb = icmp eq i32 %.sroa.8.0, %i.qa
  br i1 %i.qb, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit184, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qc = zext i32 %.sroa.8.0 to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit184

_ZNK5clang6interp7PtrView12getFieldDescEv.exit184: ; preds = %bb.bf, %bb.bg
  %.0.i183 = phi ptr [ %i.qf, %bb.bg ], [ %i.py, %bb.bf ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i183, i64 53
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !65, !range !66, !noundef !67
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.bh, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

bb.bh:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit184
  %i.qj = zext i32 %.062 to i64                   ; 2 uses
  %i.qk = load i32, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.ql = load i32, ptr %i.e, align 4, !tbaa !51
  %.not.i185 = icmp ult i32 %i.qk, %i.ql
  br i1 %.not.i185, label %bb.bj, label %bb.bi, !prof !72

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.qj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.qm = zext i32 %i.qk to i64
  %i.qn = load ptr, ptr %3, align 8, !tbaa !49
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.qm
  store i64 %i.qj, ptr %i.qo, align 1
  %i.qp = load i32, ptr %i.d, align 8, !tbaa !50
  %i.qq = add i32 %i.qp, 1
  store i32 %i.qq, ptr %i.d, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit

_ZNK5clang6interp7PtrView14isArrayElementEv.exit141: ; preds = %bb.ao, %bb.an
  br i1 %i.fr, label %bb.bk, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit188

bb.bk:                                            ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit141
  %i.qr = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i100.pre-phi
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit188

_ZNK5clang6interp7PtrView12getFieldDescEv.exit188: ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit141, %bb.bk
  %.0.i187 = phi ptr [ %i.qt, %bb.bk ], [ %.pre485, %_ZNK5clang6interp7PtrView14isArrayElementEv.exit141 ]
  %.sroa.0.0.copyload.i.i.i189 = load i64, ptr %.0.i187, align 8 ; 2 uses
  %i.qu = and i64 %.sroa.0.0.copyload.i.i.i189, 2
  %i.qv = icmp eq i64 %i.qu, 0
  %i.qw = and i64 %.sroa.0.0.copyload.i.i.i189, -3
  %i.qx = inttoptr i64 %i.qw to ptr               ; 7 uses
  %.0.i.i.i.i190 = select i1 %i.qv, ptr %i.qx, ptr null ; 3 uses
  %.not72.not = icmp eq ptr %.0.i.i.i.i190, null
  br i1 %.not72.not, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValue15LValuePathEntryELb1EE9push_backES3_.exit216, label %bb.bl

bb.bl:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit188
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 28 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4
  %i.ra = and i32 %i.qz, 127                      ; 2 uses
  %i.rb = add nsw i32 %i.ra, -53
  %i.rc = icmp ult i32 %i.rb, -3
  br i1 %i.rc, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rd = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i100.pre-phi
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !68, !noalias !261
  %i.rg = sub i32 %.sroa.42.0, %i.rf              ; 2 uses
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i192 = load i64, ptr %i.ri, align 8 ; 3 uses
  %i.rj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i192, 4
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_ZNK5clang9FieldDecl9getParentEv.exit.i205, label %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193

_ZNK5clang9FieldDecl9getParentEv.exit.i205:       ; preds = %bb.bm
  %i.rl = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i192 to ptr ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.rl, i64 -36
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = and i32 %i.rn, 128
  %.not.i206 = icmp eq i32 %i.ro, 0
  br i1 %.not.i206, label %_ZNK5clang9FieldDecl9getParentEv.exit8.i197, label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit207"

_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193: ; preds = %bb.bm
  %i.rp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i192, -5
  %i.rq = inttoptr i64 %i.rp to ptr
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !75 ; 2 uses
  %i.rs = getelementptr inbounds i8, ptr %i.rr, i64 -36
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = and i32 %i.rt, 128
  %.not2.i194 = icmp eq i32 %i.ru, 0
  br i1 %.not2.i194, label %_ZNK5clang9FieldDecl9getParentEv.exit8.i197, label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit207"

_ZNK5clang9FieldDecl9getParentEv.exit8.i197:      ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193, %_ZNK5clang9FieldDecl9getParentEv.exit.i205
  %.0.i.i.i6.i198 = phi ptr [ %i.rl, %_ZNK5clang9FieldDecl9getParentEv.exit.i205 ], [ %i.rr, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193 ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i.i6.i198, i64 8
  %i.rw = load i16, ptr %i.rv, align 8
  %i.rx = and i16 %i.rw, 127
  %i.ry = add nsw i16 %i.rx, -59
  %i.rz = icmp ult i16 %i.ry, 4
  %i.sa = getelementptr inbounds i8, ptr %.0.i.i.i6.i198, i64 -64
  %spec.select.i.i.i7.i199 = select i1 %i.rz, ptr %i.sa, ptr null
  %i.sb = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr noundef %spec.select.i.i.i7.i199) #22
  %i.sc = load i32, ptr %i.qy, align 4
  %i.sd = and i32 %i.sc, 32768
  %.not.i.i.i.i200 = icmp eq i32 %i.sd, 0
  br i1 %.not.i.i.i.i200, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201, label %bb.bn

bb.bn:                                            ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit8.i197
  %i.se = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %i.qx) #22
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201: ; preds = %bb.bn, %_ZNK5clang9FieldDecl9getParentEv.exit8.i197
  %.0.i.i.i9.i202 = phi ptr [ %i.se, %bb.bn ], [ %i.qx, %_ZNK5clang9FieldDecl9getParentEv.exit8.i197 ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i.i.i9.i202, i64 68 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4            ; 2 uses
  %i.sh = icmp ult i32 %i.sg, 16
  br i1 %i.sh, label %bb.bo, label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i203

bb.bo:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i9.i202) #22
  %.pre.i.i204 = load i32, ptr %i.sf, align 4
  br label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i203

_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i203:  ; preds = %bb.bo, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201
  %i.si = phi i32 [ %.pre.i.i204, %bb.bo ], [ %i.sg, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i201 ]
  %i.sj = lshr i32 %i.si, 4
  %i.sk = add nsw i32 %i.sj, -1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !80
  %i.sn = zext i32 %i.sk to i64
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sn
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !40
  %i.sq = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %2, i64 noundef %i.sp) #22
  br label %"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit207"

"_ZZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextEENK3$_0clEPKNS_9FieldDeclE.exit207": ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit.i205, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i203
  %.sroa.0.0.i195 = phi i64 [ %i.sq, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit.i203 ], [ 0, %_ZNK5clang9FieldDecl9getParentEv.exit.i205 ], [ 0, %_ZNK5clang9FieldDecl9getParentEv.exit.thread.i193 ]
  %i.sr = load i64, ptr %16, align 8, !tbaa !71
  %i.ss = add nsw i64 %i.sr, %.sroa.0.0.i195
  store i64 %i.ss, ptr %16, align 8, !tbaa !71
end_hunk_0
begin_hunk_1_@_ZNK5clang6interp7Pointer26computeOffsetForComparisonERKNS_10ASTContextE:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8 ; 2 uses
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = and i1 %i.ab, %i.ad
  br i1 %i.ae, label %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i12

_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit: ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, 8
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i12, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !44, !noalias !288
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %.0, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68, !noalias !289
  %i.as = sub i32 %.sroa.30.0, %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192
  %.pre233 = phi ptr [ %.pre, %bb.g ], [ %.pre, %bb.h ], [ %.pre, %_ZNK5clang6interp7PtrView8elemSizeEv.exit ], [ %i.iy, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192 ]
  %.sroa.30.0.be = phi i32 [ %i.as, %bb.g ], [ %i.bk, %bb.h ], [ %.sroa.8.0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit ], [ %i.ja, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192 ] ; 2 uses
  %.0.be = phi i64 [ %i.ap, %bb.g ], [ %i.bj, %bb.h ], [ %i.dz, %_ZNK5clang6interp7PtrView8elemSizeEv.exit ], [ %.3, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192 ]
  %.sroa.63.0.be = zext i32 %.sroa.30.0.be to i64
  br label %bb.e, !llvm.loop !280

_ZNK5clang6interp7PtrView7isFieldEv.exit.i12:     ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i, %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit
  %i.at = zext i32 %.sroa.30.0 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i.i13 = load i64, ptr %i.aw, align 8 ; 2 uses
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i.i13, 2
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i.i.i13, -3
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = and i1 %i.ay, %i.ba
  br i1 %i.bb, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread

_ZNK5clang6interp7PtrView11isBaseClassEv.exit:    ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.bd = load i16, ptr %i.bc, align 4
  %i.be = and i16 %i.bd, 4
  %.not215 = icmp eq i16 %i.be, 0
  br i1 %.not215, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView11isBaseClassEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %.0, -16
  %i.bj = add i64 %i.bi, %i.bh
  %i.bk = sub i32 %.sroa.30.0, %i.bg
  br label %.backedge

_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread: ; preds = %bb.e, %bb.f, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i12, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit
  %i.bl = phi i32 [ %.sroa.30.0, %bb.f ], [ %.pre227, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit ], [ %.pre227, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i12 ], [ %.pre227, %bb.e ] ; 5 uses
  %i.bm = icmp eq i32 %.sroa.30.0, %i.bl          ; 4 uses
  %.pre.i = zext i32 %.sroa.30.0 to i64           ; 10 uses
  br i1 %i.bm, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %bb.i, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread
  %.0.i.i.i = phi ptr [ %i.bp, %bb.i ], [ %.pre, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 53
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !65, !range !66, !noundef !67
  %i.bs = trunc nuw i8 %i.br to i1
  %.not.i = icmp ne i64 %.sroa.63.0, %.pre.i      ; 5 uses
  %or.cond.not.i = select i1 %i.bs, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.bt = icmp ugt i32 %.sroa.30.0, 15
  br i1 %i.bt, label %bb.k, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = and i16 %i.bw, 256
  %.not2.i = icmp eq i16 %i.bx, 0
  br i1 %.not2.i, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %bb.k
  %i.by = icmp eq i64 %.sroa.63.0, 4294967295
  br i1 %i.by, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %i.bm, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !60, !noalias !290
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i:       ; preds = %bb.m, %bb.n
  %.pre.sink256 = phi ptr [ %i.cb, %bb.n ], [ %.pre, %bb.m ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.sink256, i64 53
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !65, !range !66, !noalias !290, !noundef !67
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.sink256, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !290
  %.not.i.i.i17177 = icmp eq ptr %i.cg, null
  %i.ch = select i1 %i.ce, i1 %.not.i.i.i17177, i1 false
  %..i178 = select i1 %i.ch, i64 8, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre.sink256, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !61, !noalias !290
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %..i178, %.pre.i
  %i.cm = add nuw nsw i64 %i.cl, %i.ck
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

bb.o:                                             ; preds = %bb.l
  %brmerge = or i1 %.not.i, %i.bm
  br i1 %brmerge, label %_ZNK5clang6interp7PtrView6expandEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.63.0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !68, !noalias !290
  %i.cq = sub i32 %.sroa.30.0, %i.cp              ; 3 uses
  %i.cr = icmp eq i32 %i.cq, %i.bl
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !60, !noalias !290
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ %.pre, %bb.p ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 53
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !65, !range !66, !noalias !290, !noundef !67
  %i.cz = trunc nuw i8 %i.cy to i1
  %spec.select = select i1 %i.cz, i32 %i.cq, i32 %.sroa.30.0 ; 2 uses
  %.pre235 = zext i32 %spec.select to i64
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

_ZNK5clang6interp7PtrView6expandEv.exit:          ; preds = %bb.r, %bb.o, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i
  %.pre-phi = phi i64 [ %.pre235, %bb.r ], [ %.pre.i, %bb.o ], [ %.pre.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ] ; 5 uses
  %.sroa.8.0 = phi i32 [ %spec.select, %bb.r ], [ %.sroa.30.0, %bb.o ], [ %.sroa.30.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ] ; 4 uses
  %.sroa.11102.0 = phi i64 [ %.sroa.63.0, %bb.r ], [ %.sroa.63.0, %bb.o ], [ %i.cm, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ] ; 2 uses
  %i.da = icmp ugt i32 %.sroa.8.0, 16
  %i.db = icmp eq i64 %.sroa.11102.0, %.pre-phi   ; 2 uses
  %or.cond.i = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit
  %i.dc = icmp eq i32 %.sroa.8.0, %i.bl           ; 2 uses
  br i1 %i.dc, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre-phi
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.t, %bb.s
  %.0.i.i.i18 = phi ptr [ %i.df, %bb.t ], [ %.pre, %bb.s ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i18, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !69 ; 2 uses
  %.not.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.db, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.dc, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre-phi
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i8.i = phi ptr [ %i.dk, %bb.w ], [ %.pre, %bb.v ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.dm, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.u
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.u ]
  %i.dn = sub i64 %.sroa.11102.0, %.pre-phi
  %i.do = add i64 %i.dn, %.0.neg.i.i
  %i.dp = trunc i64 %i.do to i32
  %i.dq = udiv i32 %i.dp, %i.dh
  %.zext.i = zext i32 %i.dq to i64
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i64 [ 0, %_ZNK5clang6interp7PtrView6expandEv.exit ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %.zext.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ]
  %i.dr = icmp eq i32 %.sroa.8.0, %i.bl
  br i1 %i.dr, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre-phi
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit

_ZNK5clang6interp7PtrView8elemSizeEv.exit:        ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit, %bb.x
  %.0.i.i = phi ptr [ %i.du, %bb.x ], [ %.pre, %_ZNK5clang6interp7PtrView8getIndexEv.exit ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !69
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw i64 %.1.i, %i.dx
  %i.dz = add i64 %i.dy, %.0
  br label %.backedge

_ZNK5clang6interp7PtrView14isArrayElementEv.exit: ; preds = %bb.k, %bb.j
  br i1 %i.bm, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %bb.aa

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !61 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181, label %bb.y

bb.y:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !62
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp ugt i64 %.sroa.63.0, %i.ef
  br i1 %i.eg, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i27

_ZNK5clang6interp7PtrView7getSizeEv.exit.i27:     ; preds = %bb.y
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i21, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i21: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i27
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %.not1.i.i22 = icmp eq ptr %i.ei, null
  %..i.i23 = select i1 %.not1.i.i22, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i27, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i21
  %.0.neg.i.i25 = phi i64 [ %..i.i23, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i21 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i27 ]
  %i.ej = sub nsw i64 %.sroa.63.0, %.pre.i
  %i.ek = add nsw i64 %i.ej, %.0.neg.i.i25
  %i.el = trunc i64 %i.ek to i32
  %i.em = icmp eq i32 %i.eb, %i.el
  br i1 %i.em, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread: ; preds = %bb.y, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %i.en = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.pre) #22 ; 2 uses
  %i.eo = and i64 %i.en, -16
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load ptr, ptr %i.ep, align 16, !tbaa !85 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i8, ptr %i.er, align 16
  %.not.i.i29 = icmp eq i8 %i.es, 49
  br i1 %.not.i.i29, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, label %bb.z

bb.z:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i30 = load i64, ptr %i.et, align 8, !tbaa !44
  %i.eu = and i64 %.sroa.0.0.copyload.i.i.i.i.i30, -16
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !85
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i8, ptr %i.ex, align 16
  %i.ez = icmp eq i8 %i.ey, 49
  br i1 %i.ez, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, label %.thread188

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i: ; preds = %bb.z
  %i.fa = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.eq) #22 ; 2 uses
  %.not.i31 = icmp eq ptr %i.fa, null
  br i1 %.not.i31, label %.thread188, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread
  %.1.i9.i = phi ptr [ %i.fa, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i ], [ %i.eq, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.1.i9.i, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !91
  %i.fd = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #22
  %.not4.i = icmp eq ptr %i.fd, null
  br i1 %.not4.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181, label %.thread188

.thread188:                                       ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, %bb.z
  %i.fe = tail call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.en) #22
  %i.ff = add i64 %i.fe, %.0
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181

bb.aa:                                            ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre.i ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !68, !noalias !291
  %i.fj = sub i32 %.sroa.30.0, %i.fi              ; 2 uses
  %i.fk = icmp eq i32 %i.fj, %i.bl
  br i1 %i.fk, label %_ZNK5clang6interp7PtrView9getRecordEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = zext i32 %i.fj to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView9getRecordEv.exit

_ZNK5clang6interp7PtrView9getRecordEv.exit:       ; preds = %bb.aa, %bb.ab
  %.0.i.i32 = phi ptr [ %i.fo, %bb.ab ], [ %.pre, %bb.aa ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !92
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !111
  %i.fs = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %i.fr) #22
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !30
  %i.fw = icmp eq i32 %.sroa.30.0, %i.fv
  br i1 %i.fw, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang6interp7PtrView9getRecordEv.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i: ; preds = %bb.ac, %_ZNK5clang6interp7PtrView9getRecordEv.exit
  %.0.i.i33 = phi ptr [ %i.fy, %bb.ac ], [ %i.ft, %_ZNK5clang6interp7PtrView9getRecordEv.exit ]
  %.sroa.0.0.copyload.i.i.i.i.i34 = load i64, ptr %.0.i.i33, align 8 ; 3 uses
  %i.fz = and i64 %.sroa.0.0.copyload.i.i.i.i.i34, 2
  %i.ga = icmp eq i64 %i.fz, 0
  %.not.i1.i.i = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i34, 0
  tail call void @llvm.assume(i1 %i.ga)
  tail call void @llvm.assume(i1 %.not.i1.i.i)
  %i.gb = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i34 to ptr ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %i.ge = and i32 %i.gd, 127
  %i.gf = add nsw i32 %i.ge, -50
  %i.gg = icmp ult i32 %i.gf, 3
  %spec.select.i.i.i.i = select i1 %i.gg, ptr %i.gb, ptr null
  %i.gh = and i32 %i.gd, 32768
  %.not.i.i.i37 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i37, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i
  %i.gi = tail call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %i.gb) #22
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i:  ; preds = %bb.ad, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i
  %.0.i.i.i38 = phi ptr [ %i.gi, %bb.ad ], [ %spec.select.i.i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i.i38, i64 68 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 16
  br i1 %i.gl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i
  tail call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i38) #22
  %.pre.i39 = load i32, ptr %i.gj, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i
  %i.gm = phi i32 [ %.pre.i39, %bb.ae ], [ %i.gk, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i ]
  %i.gn = lshr i32 %i.gm, 4
  %i.go = add nsw i32 %i.gn, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !80
  %i.gr = zext i32 %i.go to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !40
  %i.gu = tail call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 noundef %i.gt) #22
  %i.gv = add i64 %i.gu, %.0                      ; 3 uses
  %i.gw = load ptr, ptr %i.r, align 8, !tbaa !20  ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !30 ; 3 uses
  %i.gz = icmp eq i32 %.sroa.30.0, %i.gy          ; 3 uses
  br i1 %i.gz, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41: ; preds = %bb.ag, %bb.af
  %.0.i.i.i42 = phi ptr [ %i.hb, %bb.ag ], [ %i.gw, %bb.af ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i.i42, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !61
  %i.he = icmp eq i32 %i.hd, -1
  br i1 %i.he, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !62
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp ugt i64 %.sroa.63.0, %i.hh
  br i1 %i.hi, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.gz, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43

_ZNK5clang6interp7PtrView7getSizeEv.exit.i52:     ; preds = %bb.ai
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !61
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43: ; preds = %bb.ai
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !60 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !61
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52
  %i.hr = phi i64 [ %i.hl, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52 ], [ %i.hq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43 ]
  %.0.i.i3.i46 = phi ptr [ %i.gw, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52 ], [ %i.hn, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i3.i46, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !63
  %.not1.i.i47 = icmp eq ptr %i.ht, null
  %..i.i48 = select i1 %.not1.i.i47, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45
  %i.hu = phi i64 [ %i.hr, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45 ], [ %i.hl, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52 ], [ %i.hq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43 ]
  %.0.neg.i.i50 = phi i64 [ %..i.i48, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i45 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i52 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i43 ]
  %i.hv = sub nsw i64 %.sroa.63.0, %.pre.i
  %i.hw = add nsw i64 %i.hv, %.0.neg.i.i50
  %i.hx = and i64 %i.hw, 4294967295
  %i.hy = icmp eq i64 %i.hu, %i.hx
  br i1 %i.hy, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread: ; preds = %bb.ah, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54
  br i1 %i.gz, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55: ; preds = %bb.aj, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread
  %.0.i.i56 = phi ptr [ %i.ia, %bb.aj ], [ %i.gw, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread ]
  %.sroa.0.0.copyload.i.i.i.i.i57 = load i64, ptr %.0.i.i56, align 8 ; 3 uses
  %i.ib = and i64 %.sroa.0.0.copyload.i.i.i.i.i57, 2
  %i.ic = icmp eq i64 %i.ib, 0
  %.not.i1.i.i58 = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i57, 0
  tail call void @llvm.assume(i1 %i.ic)
  tail call void @llvm.assume(i1 %.not.i1.i.i58)
  %i.id = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i57 to ptr
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ie, align 8, !tbaa !44 ; 2 uses
  %i.if = and i64 %.sroa.0.0.copyload.i, -16
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = load ptr, ptr %i.ig, align 16, !tbaa !85 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load i8, ptr %i.ii, align 16
  %.not.i.i63 = icmp eq i8 %i.ij, 49
  br i1 %.not.i.i63, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i64 = load i64, ptr %i.ik, align 8, !tbaa !44
  %i.il = and i64 %.sroa.0.0.copyload.i.i.i.i.i64, -16
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load ptr, ptr %i.im, align 16, !tbaa !85
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load i8, ptr %i.io, align 16
  %i.iq = icmp eq i8 %i.ip, 49
  br i1 %i.iq, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i70, label %.thread199

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i70: ; preds = %bb.ak
  %i.ir = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ih) #22 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ir, null
  br i1 %.not.i71, label %.thread199, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i70, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55
  %.1.i9.i73 = phi ptr [ %i.ir, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i70 ], [ %i.ih, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i55 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.1.i9.i73, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !91
  %i.iu = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.it) #22
  %.not4.i74 = icmp eq ptr %i.iu, null
  br i1 %.not4.i74, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181, label %.thread199

.thread199:                                       ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i70, %bb.ak
  %i.iv = tail call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %.sroa.0.0.copyload.i) #22
  %i.iw = add i64 %i.iv, %i.gv
  %.pre229 = load ptr, ptr %i.r, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %.pre229, i64 24
  %.pre231 = load i32, ptr %.phi.trans.insert230, align 8, !tbaa !30
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41, %.thread199, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54
  %i.ix = phi i32 [ %.pre231, %.thread199 ], [ %i.gy, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54 ], [ %i.gy, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41 ]
  %i.iy = phi ptr [ %.pre229, %.thread199 ], [ %i.gw, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54 ], [ %i.gw, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41 ]
  %.3 = phi i64 [ %i.iw, %.thread199 ], [ %i.gv, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54 ], [ %i.gv, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i41 ] ; 2 uses
  %i.iz = load i32, ptr %i.fh, align 8, !tbaa !68, !noalias !292
  %i.ja = sub i32 %.sroa.30.0, %i.iz              ; 2 uses
  %i.jb = icmp eq i32 %i.ja, %i.ix
  br i1 %i.jb, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181, label %.backedge

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread181: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %.thread188, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, %bb.c, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit, %bb.b
  %.sroa.0171.1 = phi i64 [ %i.k, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit ], [ %i.f, %bb.b ], [ %i.p, %bb.c ], [ undef, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i ], [ %.0, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.ff, %.thread188 ], [ %.0, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit ], [ undef, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72 ], [ %.3, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192 ]
  %.sroa.5172.6 = phi i8 [ 1, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i ], [ 1, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ 1, %.thread188 ], [ 1, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit ], [ 0, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i72 ], [ 1, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit54.thread192 ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0171.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.5172.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7PtrView11isBaseClassEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread, label %_ZNK5clang6interp7PtrView7isFieldEv.exit

_ZNK5clang6interp7PtrView7isFieldEv.exit:         ; preds = %bb.b
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.m = icmp eq i64 %i.l, 0
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -3
  %i.o = icmp ne i64 %i.n, 0
  %i.p = and i1 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.r = load i16, ptr %i.q, align 4
  %i.s = and i16 %i.r, 4
  %i.t = icmp ne i16 %i.s, 0
  br label %_ZNK5clang6interp7PtrView7isFieldEv.exit.thread

_ZNK5clang6interp7PtrView7isFieldEv.exit.thread:  ; preds = %bb.a, %bb.b, %bb.c, %_ZNK5clang6interp7PtrView7isFieldEv.exit
  %i.u = phi i1 [ false, %_ZNK5clang6interp7PtrView7isFieldEv.exit ], [ %i.t, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.u
}

declare i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  switch i32 %i.d, label %bb.d [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 2, label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = load i64, ptr %0, align 8, !tbaa !34
  %i.h = add i64 %i.g, %i.f
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread

_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = load i64, ptr %0, align 8, !tbaa !34
  %i.m = add i64 %i.l, %i.k
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = load i64, ptr %0, align 8, !tbaa !34
  %i.r = add i64 %i.q, %i.p
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44, !noalias !304 ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44, !noalias !304
  %i.w = load i64, ptr %0, align 8, !tbaa !34, !noalias !304
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.backedge
  %.sroa.32.0 = phi i32 [ %i.v, %bb.d ], [ %.sroa.32.0.be, %.backedge ] ; 21 uses
  %.sroa.65.0 = phi i64 [ %i.w, %bb.d ], [ %.sroa.65.0.be, %.backedge ] ; 15 uses
  %.0 = phi i64 [ 0, %bb.d ], [ %.0.be, %.backedge ] ; 6 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !20  ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !30   ; 4 uses
  %i.z = icmp eq i32 %.sroa.32.0, %i.y
  br i1 %i.z, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i

_ZNK5clang6interp7PtrView7isFieldEv.exit.i:       ; preds = %bb.e
  %i.aa = zext i32 %.sroa.32.0 to i64             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = and i1 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread

_ZNK5clang6interp7PtrView11isBaseClassEv.exit:    ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = and i16 %i.ak, 4
  %.not = icmp eq i16 %i.al, 0
  br i1 %.not, label %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView11isBaseClassEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68, !noalias !305
  %i.ao = sub i32 %.sroa.32.0, %i.an              ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %i.y
  br i1 %i.ap, label %_ZNK5clang6interp7PtrView9getRecordEv.exit.i, label %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i

_ZNK5clang6interp7PtrView9getRecordEv.exit.i:     ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i, label %bb.g

_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i: ; preds = %bb.f
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92 ; 2 uses
  %.not3.not.i = icmp eq ptr %i.ax, null
  br i1 %.not3.not.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i
  %i.ay = phi ptr [ %i.ax, %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i ], [ %i.ar, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i ]
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !111
  br label %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit"

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i
  %.0.i.i = phi ptr [ %.pre, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i ], [ %i.av, %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i ]
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i, align 8 ; 2 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i, 2
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i, -3
  %i.bd = inttoptr i64 %i.bc to ptr
  %.0.i.i.i.i.i = select i1 %i.bb, ptr %i.bd, ptr null
  br label %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit"

"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit": ; preds = %bb.g, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i
  %.1.i = phi ptr [ %.0.i.i.i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i ], [ %i.az, %bb.g ]
  %i.be = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %.1.i) #22 ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !20  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp eq i32 %.sroa.32.0, %i.bh          ; 2 uses
  br i1 %i.bi, label %_ZNK5clang6interp7PtrView9getRecordEv.exit.i36, label %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29

_ZNK5clang6interp7PtrView9getRecordEv.exit.i36:   ; preds = %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 2 uses
  %.not.not.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i37, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i32, label %bb.h

_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29: ; preds = %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit"
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 2 uses
  %.not3.not.i30 = icmp eq ptr %i.bn, null
  br i1 %.not3.not.i30, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i32, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i36
  %i.bo = phi ptr [ %i.bn, %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29 ], [ %i.bk, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i36 ]
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  br label %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit38"

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i32: ; preds = %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i36
  %.0.i.i33 = phi ptr [ %i.bf, %_ZNK5clang6interp7PtrView9getRecordEv.exit.i36 ], [ %i.bl, %_ZNK5clang6interp7PtrView9getRecordEv.exit.thread.i29 ]
  %.sroa.0.0.copyload.i.i.i.i34 = load i64, ptr %.0.i.i33, align 8 ; 2 uses
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i34, 2
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i34, -3
  %i.bt = inttoptr i64 %i.bs to ptr
  %.0.i.i.i.i.i35 = select i1 %i.br, ptr %i.bt, ptr null
  br label %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit38"

"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit38": ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i32, %bb.h
  %.1.i31 = phi ptr [ %.0.i.i.i.i.i35, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i32 ], [ %i.bp, %bb.h ] ; 3 uses
  br i1 %i.bi, label %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i40

_ZNK5clang6interp7PtrView7isFieldEv.exit.i40:     ; preds = %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit38"
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i.i41 = load i64, ptr %i.bu, align 8 ; 2 uses
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i.i.i41, 2
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i.i41, -3
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = and i1 %i.bw, %i.by
  br i1 %i.bz, label %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit, label %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread

_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit: ; preds = %_ZNK5clang6interp7PtrView7isFieldEv.exit.i40
  %i.ca = load i16, ptr %i.aj, align 4
  %i.cb = and i16 %i.ca, 8
  %.not318 = icmp eq i16 %i.cb, 0
  br i1 %.not318, label %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cc = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %.1.i31)
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !113
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !116
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  %i.cg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ch, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread: ; preds = %"_ZZNK5clang6interp7Pointer19computeLayoutOffsetERKNS_10ASTContextEENK3$_1clENS0_7PtrViewE.exit38", %_ZNK5clang6interp7PtrView7isFieldEv.exit.i40, %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ci = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %.1.i31)
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !113
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i42 = extractvalue { ptr, i8 } %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i42, i64 8
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.cn, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread
  %.sroa.0.0.copyload.i.pn = phi i64 [ %.sroa.0.0.copyload.i, %bb.i ], [ %.sroa.0.0.copyload.i43, %_ZNK5clang6interp7PtrView18isVirtualBaseClassEv.exit.thread ]
  %.1 = add i64 %.sroa.0.0.copyload.i.pn, %.0     ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !20  ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !30
  %i.cr = icmp eq i32 %.sroa.32.0, %i.cq          ; 2 uses
  br i1 %i.cr, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.cs, %bb.k ], [ %i.co, %bb.j ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !61
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ugt i64 %.sroa.65.0, %i.cy
  br i1 %i.cz, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.cr, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i:       ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !61
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.65.0, %i.aa
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i: ; preds = %bb.m
  %i.dd = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !61
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %.not.i5.i = icmp eq i64 %.sroa.65.0, %i.aa
  br i1 %.not.i5.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i
  %i.dh = phi i64 [ %i.dc, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.dg, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.i.i3.i = phi ptr [ %i.co, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.dd, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.dj, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i
  %i.dk = phi i64 [ %i.dh, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.dc, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.dg, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.dl = sub nsw i64 %.sroa.65.0, %i.aa
  %i.dm = add nsw i64 %i.dl, %.0.neg.i.i
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = icmp eq i64 %i.dk, %i.dn
  br i1 %i.do, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread: ; preds = %bb.l, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %i.dp = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %.1.i31) #22
  %i.dq = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.dp) #22
  %i.dr = and i64 %i.dq, 4294967295
  %i.ds = add i64 %i.dr, %.1
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %.2 = phi i64 [ %i.ds, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread ], [ %.1, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit ], [ %.1, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ]
  %i.dt = load i32, ptr %i.am, align 8, !tbaa !68, !noalias !306
  %i.du = sub i32 %.sroa.32.0, %i.dt
  br label %.backedge

.backedge:                                        ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269, %bb.af, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread
  %.sroa.32.0.be = phi i32 [ %i.du, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269 ], [ %.sroa.8.0, %bb.af ], [ %i.nd, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread ] ; 2 uses
  %.0.be = phi i64 [ %.2, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread269 ], [ %i.hd, %bb.af ], [ %.6, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread ]
  %.sroa.65.0.be = zext i32 %.sroa.32.0.be to i64
  br label %bb.e, !llvm.loop !299

_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread: ; preds = %bb.e, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit
  %i.dv = phi i32 [ %i.y, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit ], [ %.sroa.32.0, %bb.e ], [ %i.y, %_ZNK5clang6interp7PtrView7isFieldEv.exit.i ] ; 3 uses
  %i.dw = icmp eq i32 %.sroa.32.0, %i.dv          ; 4 uses
  %.pre.i = zext i32 %.sroa.32.0 to i64           ; 12 uses
  br i1 %i.dw, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %bb.n, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread
  %.0.i.i.i44 = phi ptr [ %i.dz, %bb.n ], [ %.pre, %_ZNK5clang6interp7PtrView11isBaseClassEv.exit.thread ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i44, i64 53
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !65, !range !66, !noundef !67
  %i.ec = trunc nuw i8 %i.eb to i1
  %.not.i45 = icmp ne i64 %.sroa.65.0, %.pre.i    ; 9 uses
  %or.cond.not.i = select i1 %i.ec, i1 %.not.i45, i1 false
  br i1 %or.cond.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.ed = icmp ugt i32 %.sroa.32.0, 15
  br i1 %i.ed, label %bb.p, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.eg = load i16, ptr %i.ef, align 4
  %i.eh = and i16 %i.eg, 256
  %.not2.i = icmp eq i16 %i.eh, 0
  br i1 %.not2.i, label %_ZNK5clang6interp7PtrView14isArrayElementEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %bb.p
  %i.ei = icmp eq i64 %.sroa.65.0, 4294967295
  br i1 %i.ei, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %i.dw, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !60, !noalias !307
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i51

_ZNK5clang6interp7PtrView7getSizeEv.exit.i51:     ; preds = %bb.r, %bb.s
  %.pre.sink374 = phi ptr [ %i.el, %bb.s ], [ %.pre, %bb.r ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pre.sink374, i64 53
  %i.en = load i8, ptr %i.em, align 1, !tbaa !65, !range !66, !noalias !307, !noundef !67
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre.sink374, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !307
  %.not.i.i.i50273 = icmp eq ptr %i.eq, null
  %i.er = select i1 %i.eo, i1 %.not.i.i.i50273, i1 false
  %..i274 = select i1 %i.er, i64 8, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.pre.sink374, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !61, !noalias !307
  %i.eu = zext i32 %i.et to i64
  %i.ev = add nuw nsw i64 %..i274, %.pre.i
  %i.ew = add nuw nsw i64 %i.ev, %i.eu
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

bb.t:                                             ; preds = %bb.q
  %brmerge = or i1 %.not.i45, %i.dw
  br i1 %brmerge, label %_ZNK5clang6interp7PtrView6expandEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.65.0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !68, !noalias !307
  %i.fa = sub i32 %.sroa.32.0, %i.ez              ; 3 uses
  %i.fb = icmp eq i32 %i.fa, %i.dv
  br i1 %i.fb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !60, !noalias !307
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fg = phi ptr [ %i.ff, %bb.v ], [ %.pre, %bb.u ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 53
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !65, !range !66, !noalias !307, !noundef !67
  %i.fj = trunc nuw i8 %i.fi to i1
  %spec.select = select i1 %i.fj, i32 %i.fa, i32 %.sroa.32.0
  br label %_ZNK5clang6interp7PtrView6expandEv.exit

_ZNK5clang6interp7PtrView6expandEv.exit:          ; preds = %bb.w, %bb.t, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i51
  %.sroa.8.0 = phi i32 [ %.sroa.32.0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i51 ], [ %.sroa.32.0, %bb.t ], [ %spec.select, %bb.w ] ; 6 uses
  %.sroa.11184.0 = phi i64 [ %i.ew, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i51 ], [ %.sroa.65.0, %bb.t ], [ %.sroa.65.0, %bb.w ] ; 2 uses
  %i.fk = icmp eq i32 %.sroa.8.0, %i.dv
  br i1 %i.fk, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit
  %i.fl = zext i32 %.sroa.8.0 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7PtrView6expandEv.exit, %bb.x
  %.0.i52 = phi ptr [ %i.fo, %bb.x ], [ %.pre, %_ZNK5clang6interp7PtrView6expandEv.exit ]
  %i.fp = call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i52) #22 ; 2 uses
  %i.fq = and i64 %i.fp, -16
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !85 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i8, ptr %i.ft, align 16
  %.not.i.i53 = icmp eq i8 %i.fu, 49
  br i1 %.not.i.i53, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i54 = load i64, ptr %i.fv, align 8, !tbaa !44
  %i.fw = and i64 %.sroa.0.0.copyload.i.i.i.i.i54, -16
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !85
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i8, ptr %i.fz, align 16
  %i.gb = icmp eq i8 %i.ga, 49
  br i1 %i.gb, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, label %bb.z

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i: ; preds = %bb.y
  %i.gc = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fs) #22 ; 2 uses
  %.not.i55 = icmp eq ptr %i.gc, null
  br i1 %.not.i55, label %bb.z, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %.1.i9.i = phi ptr [ %i.gc, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i ], [ %i.fs, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.1.i9.i, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !91
  %i.gf = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ge) #22
  %.not4.i = icmp eq ptr %i.gf, null
  br i1 %.not4.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i, %bb.y
  %i.gg = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.fp) #22
  %i.gh = icmp ugt i32 %.sroa.8.0, 16
  %i.gi = zext i32 %.sroa.8.0 to i64              ; 4 uses
  %i.gj = icmp eq i64 %.sroa.11184.0, %i.gi       ; 2 uses
  %or.cond.i = select i1 %i.gh, i1 %i.gj, i1 false
  br i1 %or.cond.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = load ptr, ptr %i.t, align 8, !tbaa !20  ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !30
  %i.gn = icmp eq i32 %.sroa.8.0, %i.gm           ; 2 uses
  br i1 %i.gn, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.ab, %bb.aa
  %.0.i.i.i57 = phi ptr [ %i.gq, %bb.ab ], [ %i.gk, %bb.aa ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i.i.i57, i64 16
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !69 ; 2 uses
  %.not.not.i58 = icmp eq i32 %i.gs, 0
  br i1 %.not.not.i58, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.gj, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i62, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.gn, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i59, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i59

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i59: ; preds = %bb.ae, %bb.ad
  %.0.i.i8.i = phi ptr [ %i.gv, %bb.ae ], [ %i.gk, %bb.ad ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !63
  %.not1.i.i60 = icmp eq ptr %i.gx, null
  %..i.i61 = select i1 %.not1.i.i60, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i62

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i62:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i59, %bb.ac
  %.0.neg.i.i63 = phi i64 [ %..i.i61, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i59 ], [ 0, %bb.ac ]
  %i.gy = sub i64 %.sroa.11184.0, %i.gi
  %i.gz = add i64 %i.gy, %.0.neg.i.i63
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = udiv i32 %i.ha, %i.gs
  %.zext.i = zext i32 %i.hb to i64
  %i.hc = mul i64 %i.gg, %.zext.i
  br label %bb.af

bb.af:                                            ; preds = %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i62, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %bb.z
  %.1.i64 = phi i64 [ 0, %bb.z ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %i.hc, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i62 ]
  %i.hd = add i64 %.1.i64, %.0
  br label %.backedge

_ZNK5clang6interp7PtrView14isArrayElementEv.exit: ; preds = %bb.p, %bb.o
  br i1 %i.dw, label %bb.ag, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i107

bb.ag:                                            ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit
  %i.he = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !62
  %i.hg = zext i32 %i.hf to i64
  %i.hh = icmp ugt i64 %.sroa.65.0, %i.hg
  br i1 %i.hh, label %bb.ah, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66: ; preds = %bb.ag
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !61 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, -1
  br i1 %i.hk, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i77

_ZNK5clang6interp7PtrView7getSizeEv.exit.i77:     ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66
  br i1 %.not.i45, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i70, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i70: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i77
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !63
  %.not1.i.i72 = icmp eq ptr %i.hm, null
  %..i.i73 = select i1 %.not1.i.i72, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i77, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i70
  %.0.neg.i.i75 = phi i64 [ %..i.i73, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i70 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i77 ]
  %i.hn = sub nsw i64 %.sroa.65.0, %.pre.i
  %i.ho = add nsw i64 %i.hn, %.0.neg.i.i75
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = icmp eq i32 %i.hj, %i.hp
  br i1 %i.hq, label %bb.ah, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread

bb.ah:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79, %bb.ag
  %i.hr = call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.pre) #22 ; 2 uses
  %i.hs = and i64 %i.hr, -16
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load ptr, ptr %i.ht, align 16, !tbaa !85 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i8, ptr %i.hv, align 16
  %.not.i.i80 = icmp eq i8 %i.hw, 49
  br i1 %.not.i.i80, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i81 = load i64, ptr %i.hx, align 8, !tbaa !44
  %i.hy = and i64 %.sroa.0.0.copyload.i.i.i.i.i81, -16
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = load ptr, ptr %i.hz, align 16, !tbaa !85
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i8, ptr %i.ib, align 16
  %i.id = icmp eq i8 %i.ic, 49
  br i1 %i.id, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i87, label %bb.aj

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i87: ; preds = %bb.ai
  %i.ie = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hu) #22 ; 2 uses
  %.not.i88 = icmp eq ptr %i.ie, null
  br i1 %.not.i88, label %bb.aj, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i87, %bb.ah
  %.1.i9.i90 = phi ptr [ %i.ie, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i87 ], [ %i.hu, %bb.ah ]
  %i.if = getelementptr inbounds nuw i8, ptr %.1.i9.i90, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !91
  %i.ih = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ig) #22
  %.not4.i91 = icmp eq ptr %i.ih, null
  br i1 %.not4.i91, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i87, %bb.ai
  %i.ii = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.hr) #22
  %i.ij = icmp ult i32 %.sroa.32.0, 17
  %or.cond.i94.not = select i1 %i.ij, i1 true, i1 %.not.i45
  br i1 %or.cond.i94.not, label %bb.ak, label %.thread291

bb.ak:                                            ; preds = %bb.aj
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !20  ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load i32, ptr %i.il, align 8, !tbaa !30
  %i.in = icmp eq i32 %.sroa.32.0, %i.im          ; 2 uses
  br i1 %i.in, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.io = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95:    ; preds = %bb.al, %bb.ak
  %.0.i.i.i96 = phi ptr [ %i.iq, %bb.al ], [ %i.ik, %bb.ak ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i.i96, i64 16
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !69 ; 2 uses
  %.not.not.i97 = icmp eq i32 %i.is, 0
  br i1 %.not.not.i97, label %.thread291, label %bb.am

bb.am:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95
  br i1 %.not.i45, label %bb.an, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i102

bb.an:                                            ; preds = %bb.am
  br i1 %i.in, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i98, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.it = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i98

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i98: ; preds = %bb.ao, %bb.an
  %.0.i.i8.i99 = phi ptr [ %i.iv, %bb.ao ], [ %i.ik, %bb.an ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i99, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63
  %.not1.i.i100 = icmp eq ptr %i.ix, null
  %..i.i101 = select i1 %.not1.i.i100, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i102

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i102:  ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i98, %bb.am
  %.0.neg.i.i103 = phi i64 [ %..i.i101, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i98 ], [ 0, %bb.am ]
  %i.iy = sub i64 %.sroa.65.0, %.pre.i
  %i.iz = add i64 %i.iy, %.0.neg.i.i103
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = udiv i32 %i.ja, %i.is
  %.zext.i104 = zext i32 %i.jb to i64
  %i.jc = mul i64 %i.ii, %.zext.i104
  br label %.thread291

.thread291:                                       ; preds = %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i102, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95, %bb.aj
  %.1.i105 = phi i64 [ 0, %bb.aj ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i95 ], [ %i.jc, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i102 ]
  %i.jd = add i64 %.1.i105, %.0
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i107: ; preds = %_ZNK5clang6interp7PtrView14isArrayElementEv.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre.i ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 4 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i.i.i.i109 = load i64, ptr %i.jg, align 8 ; 3 uses
  %i.jh = and i64 %.sroa.0.0.copyload.i.i.i.i.i109, 2
  %i.ji = icmp eq i64 %i.jh, 0
  %.not.i1.i.i = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i109, 0
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.assume(i1 %.not.i1.i.i)
  %i.jj = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i109 to ptr ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 28 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = and i32 %i.jl, 127
  %i.jn = add nsw i32 %i.jm, -50
  %i.jo = icmp ult i32 %i.jn, 3
  %spec.select.i.i.i.i = select i1 %i.jo, ptr %i.jj, ptr null
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jp, align 8 ; 3 uses
  %i.jq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i107
  %i.js = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang9FieldDecl9getParentEv.exit

bb.aq:                                            ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i107
  %i.jt = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !75
  br label %_ZNK5clang9FieldDecl9getParentEv.exit

_ZNK5clang9FieldDecl9getParentEv.exit:            ; preds = %bb.ap, %bb.aq
  %.0.i.i.i112 = phi ptr [ %i.js, %bb.ap ], [ %i.jv, %bb.aq ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.i.i112, i64 8
  %i.jx = load i16, ptr %i.jw, align 8
  %i.jy = and i16 %i.jx, 127
  %i.jz = add nsw i16 %i.jy, -59
  %i.ka = icmp ult i16 %i.jz, 4
  %i.kb = getelementptr inbounds i8, ptr %.0.i.i.i112, i64 -64
  %spec.select.i.i.i = select i1 %i.ka, ptr %i.kb, ptr null
  %i.kc = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %spec.select.i.i.i) #22
  %i.kd = load i32, ptr %i.jk, align 4
  %i.ke = and i32 %i.kd, 32768
  %.not.i.i.i113 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i113, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5clang9FieldDecl9getParentEv.exit
  %i.kf = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %i.jj) #22
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i:  ; preds = %bb.ar, %_ZNK5clang9FieldDecl9getParentEv.exit
  %.0.i.i.i114 = phi ptr [ %i.kf, %bb.ar ], [ %spec.select.i.i.i.i, %_ZNK5clang9FieldDecl9getParentEv.exit ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i114, i64 68 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4            ; 2 uses
  %i.ki = icmp ult i32 %i.kh, 16
  br i1 %i.ki, label %bb.as, label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit

bb.as:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i114) #22
  %.pre.i115 = load i32, ptr %i.kg, align 4
  br label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit

_ZNK5clang9FieldDecl13getFieldIndexEv.exit:       ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, %bb.as
  %i.kj = phi i32 [ %.pre.i115, %bb.as ], [ %i.kh, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i ]
  %i.kk = lshr i32 %i.kj, 4
  %i.kl = add nsw i32 %i.kk, -1
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !80
  %i.ko = zext i32 %i.kl to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !40
  %i.kr = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 noundef %i.kq) #22
  %i.ks = add i64 %i.kr, %.0                      ; 4 uses
  %i.kt = load ptr, ptr %i.t, align 8, !tbaa !20  ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 28
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !62
  %i.kw = zext i32 %i.kv to i64
  %i.kx = icmp ugt i64 %.sroa.65.0, %i.kw
  br i1 %i.kx, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK5clang9FieldDecl13getFieldIndexEv.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !30 ; 3 uses
  %i.la = icmp eq i32 %.sroa.32.0, %i.kz
  br i1 %i.la, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117: ; preds = %bb.at
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !61 ; 2 uses
  %i.ld = icmp eq i32 %i.lc, -1
  br i1 %i.ld, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread: ; preds = %bb.at
  %i.le = load ptr, ptr %i.jf, align 8, !tbaa !60 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !61 ; 2 uses
  %i.lh = icmp eq i32 %i.lg, -1
  br i1 %i.lh, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119

_ZNK5clang6interp7PtrView7getSizeEv.exit.i128:    ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117
  %i.li = zext i32 %i.lc to i64                   ; 2 uses
  br i1 %.not.i45, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread
  %i.lj = zext i32 %i.lg to i64                   ; 2 uses
  br i1 %.not.i45, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128
  %i.lk = phi i64 [ %i.li, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128 ], [ %i.lj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119 ]
  %.0.i.i3.i122 = phi ptr [ %i.kt, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128 ], [ %i.le, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119 ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i.i3.i122, i64 40
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !63
  %.not1.i.i123 = icmp eq ptr %i.lm, null
  %..i.i124 = select i1 %.not1.i.i123, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121
  %i.ln = phi i64 [ %i.lk, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121 ], [ %i.li, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128 ], [ %i.lj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119 ]
  %.0.neg.i.i126 = phi i64 [ %..i.i124, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i121 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i128 ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i119 ]
  %i.lo = sub nsw i64 %.sroa.65.0, %.pre.i
  %i.lp = add nsw i64 %i.lo, %.0.neg.i.i126
  %i.lq = and i64 %i.lp, 4294967295
  %i.lr = icmp eq i64 %i.ln, %i.lq
  br i1 %i.lr, label %bb.au, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread

bb.au:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %.sroa.0.0.copyload.i131 = load i64, ptr %i.ls, align 8, !tbaa !44 ; 2 uses
  %i.lt = and i64 %.sroa.0.0.copyload.i131, -16
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !85 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load i8, ptr %i.lw, align 16
  %.not.i.i132 = icmp eq i8 %i.lx, 49
  br i1 %.not.i.i132, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i133 = load i64, ptr %i.ly, align 8, !tbaa !44
  %i.lz = and i64 %.sroa.0.0.copyload.i.i.i.i.i133, -16
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load ptr, ptr %i.ma, align 16, !tbaa !85
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load i8, ptr %i.mc, align 16
  %i.me = icmp eq i8 %i.md, 49
  br i1 %i.me, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i139, label %bb.aw

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i139: ; preds = %bb.av
  %i.mf = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lv) #22 ; 2 uses
  %.not.i140 = icmp eq ptr %i.mf, null
  br i1 %.not.i140, label %bb.aw, label %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141

_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i139, %bb.au
  %.1.i9.i142 = phi ptr [ %i.mf, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i139 ], [ %i.lv, %bb.au ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.1.i9.i142, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !91
  %i.mi = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.mh) #22
  %.not4.i143 = icmp eq ptr %i.mi, null
  br i1 %.not4.i143, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.i139, %bb.av
  %i.mj = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %.sroa.0.0.copyload.i131) #22
  %i.mk = icmp ult i32 %.sroa.32.0, 17
  %or.cond.i146.not = select i1 %i.mk, i1 true, i1 %.not.i45
  %.pre335.pre = load ptr, ptr %i.t, align 8, !tbaa !20 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.pre335.pre, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !30 ; 2 uses
  br i1 %or.cond.i146.not, label %bb.ax, label %.thread302

bb.ax:                                            ; preds = %bb.aw
  %i.mn = icmp eq i32 %.sroa.32.0, %i.mm          ; 2 uses
  br i1 %i.mn, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mo = load ptr, ptr %i.jf, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147:   ; preds = %bb.ay, %bb.ax
  %.0.i.i.i148 = phi ptr [ %i.mo, %bb.ay ], [ %.pre335.pre, %bb.ax ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i.i.i148, i64 16
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !69 ; 2 uses
  %.not.not.i149 = icmp eq i32 %i.mq, 0
  br i1 %.not.not.i149, label %.thread302, label %bb.az

bb.az:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147
  br i1 %.not.i45, label %bb.ba, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i154

bb.ba:                                            ; preds = %bb.az
  br i1 %i.mn, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i150, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mr = load ptr, ptr %i.jf, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i150

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i150: ; preds = %bb.bb, %bb.ba
  %.0.i.i8.i151 = phi ptr [ %i.mr, %bb.bb ], [ %.pre335.pre, %bb.ba ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i.i8.i151, i64 40
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !63
  %.not1.i.i152 = icmp eq ptr %i.mt, null
  %..i.i153 = select i1 %.not1.i.i152, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i154

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i154:  ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i150, %bb.az
  %.0.neg.i.i155 = phi i64 [ %..i.i153, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i150 ], [ 0, %bb.az ]
  %i.mu = sub i64 %.sroa.65.0, %.pre.i
  %i.mv = add i64 %i.mu, %.0.neg.i.i155
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = udiv i32 %i.mw, %i.mq
  %.zext.i156 = zext i32 %i.mx to i64
  %i.my = mul i64 %i.mj, %.zext.i156
  br label %.thread302

.thread302:                                       ; preds = %bb.aw, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i154, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147
  %.1.i157 = phi i64 [ %i.my, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i154 ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i147 ], [ 0, %bb.aw ]
  %i.mz = add i64 %.1.i157, %i.ks
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117, %.thread302, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130
  %i.na = phi i32 [ %i.mm, %.thread302 ], [ %i.kz, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130 ], [ %.sroa.32.0, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117 ], [ %i.kz, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread ]
  %.6 = phi i64 [ %i.mz, %.thread302 ], [ %i.ks, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130 ], [ %i.ks, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117 ], [ %i.ks, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i117.thread ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !68, !noalias !308
  %i.nd = sub i32 %.sroa.32.0, %i.nc              ; 2 uses
  %i.ne = icmp eq i32 %i.nd, %i.na
  br i1 %i.ne, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread, label %.backedge

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79.thread: ; preds = %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66, %.thread291, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79, %bb.c, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit, %bb.b
  %.sroa.0265.1 = phi i64 [ %i.m, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit ], [ %i.h, %bb.b ], [ %i.r, %bb.c ], [ %.0, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79 ], [ undef, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89 ], [ %.0, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66 ], [ %i.jd, %.thread291 ], [ undef, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141 ], [ undef, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i ], [ %.6, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread ]
  %.sroa.5266.7 = phi i8 [ 1, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit79 ], [ 0, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i89 ], [ 1, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i66 ], [ 1, %.thread291 ], [ 0, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i141 ], [ 0, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit.thread6.i ], [ 1, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit130.thread ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0265.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.5266.7, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7Pointer18toDiagnosticStringB5cxx11ERKNS_10ASTContextE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.clang::APValue", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split24
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = load i64, ptr %1, align 8                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %._crit_edge.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit18

.split24:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %._crit_edge.i.i, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %._crit_edge.i.i, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

._crit_edge.i.i:                                  ; preds = %.split24, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.o, align 8, !tbaa !320
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.p, align 1, !tbaa !44
  br label %bb.f

_ZN4llvmplERKNS_5TwineES2_.exit18:                ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.q = add i64 %i.f, %i.d
  %.sroa.04.0.copyload.i.i.cast = inttoptr i64 %i.q to ptr
  store ptr @.str.13, ptr %4, align 8, !alias.scope !321
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.04.0.copyload.i.i.cast, ptr %i.r, align 8, !alias.scope !321
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !324, !alias.scope !321
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 11, ptr %i.t, align 1, !tbaa !325, !alias.scope !321
  store ptr %4, ptr %3, align 8, !alias.scope !326
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.14, ptr %i.u, align 8, !alias.scope !326
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !324, !alias.scope !326
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !325, !alias.scope !326
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split24, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.x = tail call i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.y = and i64 %i.x, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !85 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16
  %i.ah = icmp eq i8 %i.ag, 42
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.ai = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aa) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %.sroa.0.0 = phi i64 [ %i.ai, %bb.c ], [ %i.x, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2)
  call void @_ZNK5clang7APValue11getAsStringB5cxx11ERKNS_10ASTContextENS_8QualTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(23904) %2, i64 %.sroa.0.0) #22
  %i.aj = load i32, ptr %5, align 8, !tbaa !55
  %switch.i = icmp ult i32 %i.aj, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #22
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang7APValueD2Ev.exit, %_ZN4llvmplERKNS_5TwineES2_.exit18, %._crit_edge.i.i
  ret void
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang6interp7Pointer7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !85  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !44
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16              ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 43, label %bb.d
    i8 42, label %bb.d
    i8 40, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.o = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #22
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = and i64 %i.e, -8
  %i.q = add i8 %i.n, -2
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.q, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load i8, ptr %i.r, align 16
  %i.t = add i8 %i.s, -7
  %switch.i.i.i.i.i.i.i.i.i5.i = icmp ult i8 %i.t, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i5.i, label %bb.g, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #22
  br label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i:   ; preds = %bb.g, %bb.f
  %.1.i.i = phi ptr [ %i.u, %bb.g ], [ %i.h, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i, %bb.e, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.copyload.i.i, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = and i64 %.sroa.0.0.i, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 16
  %i.ab = icmp eq i8 %i.aa, 38
  br i1 %i.ab, label %bb.i, label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i64 @_ZN5clang8QualType12IgnoreParensES0_(i64 %.sroa.0.0.i) #22
  br label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44, !noalias !329
  store ptr %i.ae, ptr %1, align 8, !tbaa !122, !alias.scope !329
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !44, !noalias !329
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !123, !alias.scope !329
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %0, align 8, !tbaa !34, !noalias !329
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !125, !alias.scope !329
  %i.ak = call i64 @_ZNK5clang6interp7PtrView7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.an, align 8
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i, -5
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8, !tbaa !44
  br label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -8
  br label %_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit

bb.m:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp10IntPointer14getPointeeTypeEv.exit: ; preds = %bb.i, %bb.h, %bb.b, %bb.l, %bb.k, %bb.j
  %.sroa.0.0 = phi i64 [ %i.au, %bb.l ], [ %i.ak, %bb.j ], [ %.sroa.0.0.copyload.i, %bb.k ], [ 0, %bb.b ], [ %i.ac, %bb.i ], [ %.sroa.0.0.i, %bb.h ]
  ret i64 %.sroa.0.0
}

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK5clang7APValue11getAsStringB5cxx11ERKNS_10ASTContextENS_8QualTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6interp7Pointer13isInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 14 uses
  %i.f = icmp eq ptr %i.e, null
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old12 = load i32, ptr %.old, align 8, !tbaa !44 ; 13 uses
  br i1 %i.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.thread, label %_ZNK5clang6interp7Pointer6isRootEv.exit

_ZNK5clang6interp7Pointer6isRootEv.exit:          ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp eq i32 %.old12, 8
  %i.k = icmp eq i32 %i.i, 8
  %or.cond = and i1 %i.j, %i.k
  %i.l = load i64, ptr %0, align 8
  %i.m = icmp eq i64 %i.l, 8
  %or.cond33 = select i1 %or.cond, i1 %i.m, i1 false
  br i1 %or.cond33, label %bb.c, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.thread:   ; preds = %bb.b
  %.old13 = icmp eq i32 %.old12, 8
  tail call void @llvm.assume(i1 %.old13)
  %i.n = load i64, ptr %0, align 8, !tbaa !34
  %i.o = icmp eq i64 %i.n, 8
  tail call void @llvm.assume(i1 %i.o)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.thread, %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !128
  %i.r = icmp eq i32 %i.q, 0
  br label %bb.s

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30
  %i.v = icmp eq i32 %.old12, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.w = zext i32 %.old12 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %bb.d
  %.0.i5 = phi ptr [ %i.z, %bb.d ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i5, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65, !range !66, !noundef !67
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = select i1 %i.ac, i1 %.not.i, i1 false
  br i1 %i.af, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.ag = load i64, ptr %0, align 8, !tbaa !34, !noalias !334 ; 4 uses
  %i.ah = icmp ugt i32 %.old12, 16
  %i.ai = zext i32 %.old12 to i64                 ; 6 uses
  %i.aj = icmp eq i64 %i.ag, %i.ai                ; 2 uses
  %or.cond.i.i7 = select i1 %i.ah, i1 %i.aj, i1 false
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !20  ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre14 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  br i1 %or.cond.i.i7, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %.old12, %.pre14            ; 2 uses
  br i1 %i.ak, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %.pre, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i.i, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.aj, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ak, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i8.i.i = phi ptr [ %i.as, %bb.j ], [ %.pre, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63
  %.not1.i.i.i = icmp eq ptr %i.au, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %bb.h
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.h ]
  %i.av = sub i64 %i.ag, %i.ai
  %i.aw = add i64 %i.av, %.0.neg.i.i.i
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = udiv i32 %i.ax, %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  %.0.i6 = phi i32 [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ], [ %i.ay, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.e, ptr %1, align 8, !tbaa !122, !alias.scope !335
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.old12, ptr %i.az, align 8, !tbaa !123, !alias.scope !335
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ag, ptr %i.ba, align 8, !tbaa !125, !alias.scope !335
  %i.bb = icmp eq i32 %.old12, %.pre14            ; 2 uses
  br i1 %i.bb, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.k, %._crit_edge
  %.0.i.i.i = phi ptr [ %i.be, %bb.k ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !129, !range !66, !noundef !67
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = icmp eq i32 %.old12, 0
  %or.cond.i.i9 = and i1 %i.bi, %i.bh
  br i1 %or.cond.i.i9, label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i
  %i.bj = icmp eq i32 %.old12, 8
  %or.cond7.i.i = and i1 %i.bj, %i.bb
  %i.bk = icmp eq i64 %i.ag, 8
  %or.cond10.i.i = select i1 %or.cond7.i.i, i1 %i.bk, i1 false
  br i1 %or.cond10.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !128
  %i.bn = icmp eq i32 %i.bm, 0
  br label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 53
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !65, !range !66, !noundef !67
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i.i.i10 = icmp eq ptr %i.bs, null
  %i.bt = select i1 %i.bq, i1 %.not.i.i.i10, i1 false
  br i1 %i.bt, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ai
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !40 ; 2 uses
  switch i64 %i.bw, label %bb.p [
    i64 1, label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit
    i64 0, label %.fold.split.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = tail call noundef zeroext i1 @_ZNK5clang6interp7InitMap20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i32 noundef %.0.i6) #22, !inline_history !336
  br label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit

bb.q:                                             ; preds = %bb.n
  %i.bz = call noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #23, !inline_history !336
  br label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit

.fold.split.i.i:                                  ; preds = %bb.o
  br label %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit

_ZNK5clang6interp7Pointer20isElementInitializedEj.exit: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.m, %bb.o, %bb.p, %bb.q, %.fold.split.i.i
  %.1.i.i = phi i1 [ %i.bz, %bb.q ], [ %i.bn, %bb.m ], [ true, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ true, %bb.o ], [ %i.by, %bb.p ], [ false, %.fold.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.s

bb.r:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.ca = icmp eq i32 %.old12, 0
  br i1 %i.ca, label %bb.s, label %.thread25

.thread25:                                        ; preds = %bb.r
  %i.cb = zext i32 %.old12 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i16, ptr %i.cd, align 4
  %i.cf = and i16 %i.ce, 2
  %i.cg = icmp ne i16 %i.cf, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit, %.thread25, %bb.r, %bb.a, %bb.c
  %.1 = phi i1 [ %i.r, %bb.c ], [ true, %bb.a ], [ %.1.i.i, %_ZNK5clang6interp7Pointer20isElementInitializedEj.exit ], [ %i.cg, %.thread25 ], [ true, %bb.r ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq i32 %i.b, %i.f                   ; 2 uses
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !129, !range !66, !noundef !67
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.p = icmp eq i32 %i.b, 8
  %or.cond7 = and i1 %i.p, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 8
  %or.cond10 = select i1 %or.cond7, i1 %i.s, i1 false
  br i1 %or.cond10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !128
  %i.v = icmp eq i32 %i.u, 0
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.x = load i8, ptr %i.w, align 1, !tbaa !65, !range !66, !noundef !67
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.aa, null
  %i.ab = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = zext i32 %i.b to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.i
    i64 0, label %.fold.split
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = tail call noundef zeroext i1 @_ZNK5clang6interp7InitMap20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i32 noundef %1) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ai = tail call noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.i

.fold.split:                                      ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.fold.split, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %bb.g, %bb.h, %bb.d
  %.1 = phi i1 [ %i.ai, %bb.h ], [ %i.v, %bb.d ], [ true, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ true, %bb.f ], [ %i.ah, %bb.g ], [ false, %.fold.split ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5clang6interp7InitMap20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq i32 %i.b, %i.f                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.b, 8
  br i1 %i.h, label %bb.c, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %bb.d, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !128
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65, !range !66, !noundef !67
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.w, null
  %i.x = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %i.x, label %bb.f, label %bb.l

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65, !range !66, !noundef !67
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.d, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !69 ; 4 uses
  %.not.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %.not.not.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i15, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.ai, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.k, %bb.j
  %i.at = phi i32 [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.ap, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.au = phi i64 [ %i.ah, %bb.k ], [ %i.ah, %bb.j ], [ %i.j, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.av = phi i64 [ %i.af, %bb.k ], [ %i.af, %bb.j ], [ 8, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %.0.i.i8.i = phi ptr [ %i.as, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.ax, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
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
  %i.bf = tail call noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.1.i)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6interp7Pointer14isElementAliveEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !noalias !339
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !339
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %spec.select.i = icmp ugt i64 %i.h, 1
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !139  ; 2 uses
  %i.k = add i32 %i.j, %1
  %i.l = zext i32 %i.j to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6
  %i.o = lshr i32 %1, 6
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = add nuw nsw i32 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !140
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !40
  %i.w = and i32 %i.k, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.y, %i.v
  %.not.i = icmp eq i64 %i.z, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ %.not.i, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i8 @_ZNK5clang6interp7PtrView11getLifetimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123  ; 6 uses
  %i.c = icmp ult i32 %i.b, 16
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !122    ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.b, %i.g                   ; 2 uses
  br i1 %i.h, label %_ZNK5clang6interp7PtrView7inArrayEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread

_ZNK5clang6interp7PtrView7inArrayEv.exit:         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65, !range !66, !noundef !67
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread:  ; preds = %bb.b
  %i.l = zext i32 %i.b to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 53
  %i.q = load i8, ptr %i.p, align 1, !tbaa !65, !range !66, !noundef !67
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK5clang6interp7PtrView11isArrayRootEv.exit, label %bb.i

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit
  %.pre.i = zext i32 %i.b to i64
  br label %_ZNK5clang6interp7PtrView11isArrayRootEv.exit

_ZNK5clang6interp7PtrView11isArrayRootEv.exit:    ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread, %bb.c
  %.pre.i8 = phi i64 [ %.pre.i, %bb.c ], [ %i.l, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i64 %i.t, %.pre.i8
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6interp7PtrView11isArrayRootEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.pre.i8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !131  ; 3 uses
  %spec.select.i = icmp ugt i64 %i.x, 1
  br i1 %spec.select.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.d, ptr %1, align 8, !tbaa !122, !alias.scope !342
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.z, align 8, !tbaa !123, !alias.scope !342
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.pre.i8, ptr %i.aa, align 8, !tbaa !125, !alias.scope !342
  %i.ab = call noundef zeroext i8 @_ZNK5clang6interp7PtrView11getLifetimeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %i.x to ptr                ; 2 uses
  br i1 %i.h, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %.not.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre.i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.not.not.i14 = icmp eq i32 %i.aj, 0
  br i1 %.not.not.i14, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  %i.an = phi i32 [ %i.aj, %bb.h ], [ %i.ae, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ]
  %.0.i.i8.i = phi ptr [ %i.am, %bb.h ], [ %i.e, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.ap, null
  %..i.i = select i1 %.not1.i.i, i64 4294967288, i64 4294967280
  %i.aq = sub i64 %i.t, %.pre.i8
  %i.ar = add i64 %i.aq, %..i.i
  %i.as = trunc i64 %i.ar to i32
  %i.at = udiv i32 %i.as, %i.an
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ %i.at, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ] ; 2 uses
  %i.au = load i32, ptr %i.ac, align 8, !tbaa !139 ; 2 uses
  %i.av = add i32 %i.au, %.1.i
  %i.aw = zext i32 %i.au to i64
  %i.ax = add nuw nsw i64 %i.aw, 63
  %i.ay = lshr i64 %i.ax, 6
  %i.az = lshr i32 %.1.i, 6
  %i.ba = trunc nuw nsw i64 %i.ay to i32
  %i.bb = add nuw nsw i32 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !140
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !40
  %i.bh = and i32 %i.av, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bj, %i.bg
end_hunk_1
begin_hunk_2_@_ZNK5clang6interp7PtrView11getLifetimeEv:bb.a
  %i.bm = zext i32 %i.b to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 30
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !141
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZNK5clang6interp7PtrView8getIndexEv.exit, %bb.e, %bb.a, %bb.i
  %.1 = phi i8 [ 0, %bb.a ], [ %i.bp, %bb.i ], [ %i.bl, %_ZNK5clang6interp7PtrView8getIndexEv.exit ], [ %i.ab, %bb.f ], [ 0, %bb.e ]
  ret i8 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7PtrView12setLifeStateENS0_8LifetimeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123  ; 4 uses
  %i.c = icmp ult i32 %i.b, 16
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.b, %i.g
  br i1 %i.h, label %_ZNK5clang6interp7PtrView7inArrayEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread

_ZNK5clang6interp7PtrView7inArrayEv.exit:         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65, !range !66, !noundef !67
  %i.k = trunc nuw i8 %i.j to i1
  %.pre.i = zext i32 %i.b to i64                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ne i64 %i.m, %.pre.i
  %or.cond.not = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond.not, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit._crit_edge

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread:  ; preds = %bb.b
  %i.o = zext i32 %i.b to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 53
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65, !range !66, !noundef !67
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ne i64 %i.w, %i.o
  %or.cond51.not = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond51.not, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit._crit_edge

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread, %_ZNK5clang6interp7PtrView7inArrayEv.exit
  %.pre.i273034 = phi i64 [ %.pre.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit ], [ %i.o, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread ]
  %i.y = phi ptr [ %i.l, %_ZNK5clang6interp7PtrView7inArrayEv.exit ], [ %i.v, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread ] ; 2 uses
  %.0.i = phi ptr [ %i.e, %_ZNK5clang6interp7PtrView7inArrayEv.exit ], [ %i.r, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.pre.i273034 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !131 ; 2 uses
  %spec.select.i = icmp ugt i64 %i.ab, 1
  br i1 %spec.select.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.ac = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !61 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  %i.ai = udiv i32 %i.ae, %i.ah
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.c, %bb.d
  %i.aj = phi i32 [ %i.ai, %bb.d ], [ 0, %bb.c ]  ; 4 uses
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !131
  %i.al = icmp eq i64 %i.ak, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ac, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.an = select i1 %i.al, i32 0, i32 %i.aj
  store i32 %i.an, ptr %i.am, align 4, !tbaa !142
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !143
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aq = zext i32 %i.aj to i64
  %i.ar = add nuw nsw i64 %i.aq, 63               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.as = lshr i64 %i.ar, 2
  %i.at = and i64 %i.as, 2147483632               ; 2 uses
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #24, !noalias !347 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.at, i1 false), !noalias !347
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !140, !alias.scope !347
  br i1 %i.al, label %.preheader.i, label %_ZN5clang6interp7InitMapC2Ejb.exit

.preheader.i:                                     ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %i.av = lshr i64 %i.ar, 6                       ; 4 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZN5clang6interp7InitMapC2Ejb.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %i.aj, 833
  br i1 %min.iters.check, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.av, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.aw, align 8, !tbaa !40
  store <2 x i64> splat (i64 -1), ptr %i.ax, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN5clang6interp7InitMapC2Ejb.exit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader54, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  store i64 -1, ptr %i.az, align 8, !tbaa !40
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.ba = and i64 %indvars.iv.next.i, 4294967295
  %.not.i = icmp eq i64 %i.av, %i.ba
  br i1 %.not.i, label %_ZN5clang6interp7InitMapC2Ejb.exit, label %.lr.ph.i, !llvm.loop !346

_ZN5clang6interp7InitMapC2Ejb.exit:               ; preds = %.lr.ph.i, %middle.block, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %.preheader.i
  %i.bb = ptrtoint ptr %i.ac to i64               ; 2 uses
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !131
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang6interp7InitMapC2Ejb.exit, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.bc = phi i64 [ %i.bb, %_ZN5clang6interp7InitMapC2Ejb.exit ], [ %i.ab, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ] ; 2 uses
  switch i8 %1, label %bb.t [
    i8 3, label %bb.f
    i8 0, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %0, align 8, !tbaa !122   ; 4 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  %i.bg = icmp ugt i32 %i.bf, 16
  %i.bh = zext i32 %i.bf to i64                   ; 4 uses
  %i.bi = load i64, ptr %i.y, align 8             ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.bh                ; 2 uses
  %or.cond.i = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.bn = icmp eq i32 %i.bf, %i.bm                ; 2 uses
  br i1 %i.bn, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.i, %bb.h
  %.0.i.i.i9 = phi ptr [ %i.bq, %bb.i ], [ %i.bk, %bb.h ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i9, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !69 ; 2 uses
  %.not.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.bj, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.bn, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i8.i = phi ptr [ %i.bv, %bb.l ], [ %i.bk, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.bx, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.j
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.j ]
  %i.by = sub i64 %i.bi, %i.bh
  %i.bz = add i64 %i.by, %.0.neg.i.i
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = udiv i32 %i.ca, %i.bs
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %bb.f, %bb.g, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.cb, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ]
  tail call void @_ZN5clang6interp7InitMap18endElementLifetimeEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i32 noundef %.1.i) #22
  br label %bb.t

bb.m:                                             ; preds = %bb.e
  %i.cc = inttoptr i64 %i.bc to ptr
  %i.cd = load ptr, ptr %0, align 8, !tbaa !122   ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i10, label %_ZNK5clang6interp7PtrView8getIndexEv.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, 16
  %i.cg = zext i32 %i.ce to i64                   ; 4 uses
  %i.ch = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %i.cg                ; 2 uses
  %or.cond.i11 = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %or.cond.i11, label %_ZNK5clang6interp7PtrView8getIndexEv.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !30
  %i.cm = icmp eq i32 %i.ce, %i.cl                ; 2 uses
  br i1 %i.cm, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12:    ; preds = %bb.p, %bb.o
  %.0.i.i.i13 = phi ptr [ %i.cp, %bb.p ], [ %i.cj, %bb.o ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i13, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !69 ; 2 uses
  %.not.not.i14 = icmp eq i32 %i.cr, 0
  br i1 %.not.not.i14, label %_ZNK5clang6interp7PtrView8getIndexEv.exit23, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12
  br i1 %i.ci, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i19, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.cm, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i15, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i15

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i15: ; preds = %bb.s, %bb.r
  %.0.i.i8.i16 = phi ptr [ %i.cu, %bb.s ], [ %i.cj, %bb.r ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i8.i16, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !63
  %.not1.i.i17 = icmp eq ptr %i.cw, null
  %..i.i18 = select i1 %.not1.i.i17, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i19

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i19:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i15, %bb.q
  %.0.neg.i.i20 = phi i64 [ %..i.i18, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i15 ], [ 0, %bb.q ]
  %i.cx = sub i64 %i.ch, %i.cg
  %i.cy = add i64 %i.cx, %.0.neg.i.i20
  %i.cz = trunc i64 %i.cy to i32
  %i.da = udiv i32 %i.cz, %i.cr
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit23

_ZNK5clang6interp7PtrView8getIndexEv.exit23:      ; preds = %bb.m, %bb.n, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i19
  %.1.i22 = phi i32 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.da, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i19 ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i12 ]
  tail call void @_ZN5clang6interp7InitMap20startElementLifetimeEj(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i32 noundef %.1.i22) #22
  br label %bb.t

_ZNK5clang6interp7PtrView7inArrayEv.exit._crit_edge: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread
  %.pre-phi = phi i64 [ %.pre.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit ], [ %i.o, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre-phi
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 30
  store i8 %1, ptr %i.dc, align 2, !tbaa !141
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit, %_ZNK5clang6interp7PtrView8getIndexEv.exit23, %bb.e, %bb.a, %_ZNK5clang6interp7PtrView7inArrayEv.exit._crit_edge
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN5clang6interp7InitMap18endElementLifetimeEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang6interp7InitMap20startElementLifetimeEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7PtrView10initializeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq i32 %i.b, %i.f                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.b, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 8
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !128
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.m = zext i32 %i.b to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.p, %bb.d ], [ %i.d, %bb.b ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.r = load i8, ptr %i.q, align 1, !tbaa !65, !range !66, !noundef !67
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i = icmp eq ptr %i.u, null
  %i.v = select i1 %i.s, i1 %.not.i, i1 false
  br i1 %i.v, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61   ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69
  %.not = icmp ugt i32 %i.aa, %i.x
  br i1 %.not, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %i.ab = icmp ugt i32 %i.b, 16
  %i.ac = zext i32 %i.b to i64                    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ac                ; 2 uses
  %or.cond.i = select i1 %i.ab, i1 %i.af, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.d, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.not.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.af, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i8.i = phi ptr [ %i.an, %bb.k ], [ %i.d, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  %.not1.i.i = icmp eq ptr %i.ap, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.i
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.i ]
  %i.aq = sub i64 %i.ae, %i.ac
  %i.ar = add i64 %i.aq, %.0.neg.i.i
  %i.as = trunc i64 %i.ar to i32
  %i.at = udiv i32 %i.as, %i.ak
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %bb.f, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ 0, %bb.f ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %i.at, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ]
  tail call void @_ZNK5clang6interp7PtrView17initializeElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.1.i)
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.au = zext i32 %i.b to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 28 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = or i16 %i.ax, 2
  store i16 %i.ay, ptr %i.aw, align 4
  %i.az = load i32, ptr %i.a, align 8, !tbaa !123
  %i.ba = load ptr, ptr %0, align 8, !tbaa !122
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 30
  store i8 0, ptr %i.bd, align 2, !tbaa !141
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit.thread: ; preds = %bb.e, %bb.l, %_ZNK5clang6interp7PtrView8getIndexEv.exit, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7PtrView17initializeElementEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !129, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.i
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = icmp eq i32 %i.f, %i.n
  br i1 %i.o, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69
  %i.y = udiv i32 %i.u, %i.x
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %bb.e
  %i.z = phi i32 [ %i.y, %bb.e ], [ 0, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ] ; 3 uses
  store i32 %i.z, ptr %i.s, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.ab, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = zext i32 %i.z to i64
  %i.ae = add nuw nsw i64 %i.ad, 63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.af = lshr i64 %i.ae, 2
  %i.ag = and i64 %i.af, 2147483632               ; 2 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #24, !noalias !352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ah, i8 0, i64 %i.ag, i1 false), !noalias !352
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !140, !alias.scope !352
  %i.ai = ptrtoint ptr %i.s to i64                ; 2 uses
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %i.aj = phi i64 [ %i.k, %bb.b ], [ %i.ai, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ]
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = tail call noundef zeroext i1 @_ZN5clang6interp7InitMap17initializeElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i32 noundef %1) #22
  br i1 %i.al, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.j, align 8, !tbaa !131 ; 2 uses
  %spec.select.i.i = icmp ugt i64 %i.am, 1
  br i1 %spec.select.i.i, label %bb.h, label %_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit

bb.h:                                             ; preds = %bb.g
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZN5clang6interp7InitMapD2Ev.exit.i, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #25
  br label %_ZN5clang6interp7InitMapD2Ev.exit.i

_ZN5clang6interp7InitMapD2Ev.exit.i:              ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #25
  br label %_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit

_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit: ; preds = %bb.g, %_ZN5clang6interp7InitMapD2Ev.exit.i
  store i64 1, ptr %i.j, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN5clang6interp7InitMap17initializeElementEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7Pointer21initializeAllElementsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !noalias !355
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !355
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %spec.select.i.i = icmp ugt i64 %i.h, 1
  br i1 %spec.select.i.i, label %bb.b, label %_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5clang6interp7InitMapD2Ev.exit.i, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #25
  br label %_ZN5clang6interp7InitMapD2Ev.exit.i

_ZN5clang6interp7InitMapD2Ev.exit.i:              ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #25
  br label %_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit

_ZN5clang6interp10InitMapPtr18noteAllInitializedEv.exit: ; preds = %bb.a, %_ZN5clang6interp7InitMapD2Ev.exit.i
  store i64 1, ptr %i.g, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6interp7PtrView22allElementsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !129, !range !66, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp eq i32 %i.f, 8
  %i.l = icmp eq i32 %i.j, 8
  %or.cond6 = and i1 %i.k, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, 8
  %or.cond9 = select i1 %or.cond6, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %or.cond9, label %bb.c, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN5clang6interp7Pointer17computeSplitPointERKS1_S3_:bb.a
  %.sroa.558.1.lcssa.sink = phi i32 [ %i.x, %_ZNK5clang6interp7Pointer6isRootEv.exit._crit_edge ], [ %.sroa.558.1, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ]
  %.sroa.960.1.lcssa.sink = phi i64 [ %.pre135, %_ZNK5clang6interp7Pointer6isRootEv.exit._crit_edge ], [ %.sroa.960.1, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ]
  store ptr %i.h, ptr %0, align 8
  %.sroa.061.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.590.1.lcssa.sink, ptr %.sroa.061.sroa.4.0..sroa_idx, align 8
  %.sroa.061.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.992.1.lcssa.sink, ptr %.sroa.061.sroa.6.0..sroa_idx, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.558.1.lcssa.sink, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.960.1.lcssa.sink, ptr %.sroa.764.0..sroa_idx, align 8
  br label %_ZNK5clang6interp7Pointer6isRootEv.exit14.thread

_ZNK5clang6interp7Pointer6isRootEv.exit14.thread: ; preds = %bb.u, %_ZNK5clang6interp7Pointer6isRootEv.exit14.thread.sink.split, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, %_ZNK5clang6interp7Pointer6isRootEv.exit14, %bb.b, %bb.a
  %.sink = phi i8 [ 0, %_ZNK5clang6interp7Pointer6isRootEv.exit14 ], [ 1, %_ZNK5clang6interp7Pointer6isRootEv.exit14.thread.sink.split ], [ 0, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.u ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.dk, align 8, !tbaa !393
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6interp7Pointer8toRValueERKNS0_7ContextENS_8QualTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.472") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 %3) local_unnamed_addr #0 align 2 {
"_ZNSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEaSIZNKS2_7Pointer8toRValueERKNS2_7ContextES1_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSF_.exit":
  %4 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 6 uses
  %7 = alloca %"class.llvm::APSInt", align 8      ; 6 uses
  %8 = alloca %"class.std::function.495", align 8 ; 10 uses
  %9 = alloca %"class.clang::APValue", align 8    ; 6 uses
  %10 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %11 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %12 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %13 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %14 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %15 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %16 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %17 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %18 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %19 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %20 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %21 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %22 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %23 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %24 = alloca %"class.clang::APValue", align 8   ; 6 uses
  %25 = alloca %"class.clang::APValue", align 8   ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !172, !nonnull !67, !align !173 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  store ptr %8, ptr %i.b, align 16, !tbaa !175
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !178
  store ptr %i.b, ptr %8, align 8
  %.sroa.4.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx149, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @"_ZNSt17_Function_handlerIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEZNKS2_7Pointer8toRValueERKNS2_7ContextES1_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.c, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEZNKS2_7Pointer8toRValueERKNS2_7ContextES1_E3$_0E9_M_invokeERKSt9_Any_dataOS1_OS3_S5_", ptr %i.d, align 8, !tbaa !144
  %i.e = and i64 %3, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16
  %i.n = add i8 %i.m, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.n, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %"_ZNSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEaSIZNKS2_7Pointer8toRValueERKNS2_7ContextES1_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSF_.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.o, align 8, !tbaa !447
  br label %.critedge

bb.b:                                             ; preds = %"_ZNSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEaSIZNKS2_7Pointer8toRValueERKNS2_7ContextES1_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSF_.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35
  switch i32 %i.q, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %.split
    i32 3, label %._ZNK5clang6interp7Pointer6isZeroEv.exit.thread_crit_edge.i
    i32 2, label %.split3.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44, !noalias !448 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.s, null
  br i1 %.not.i.i22, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120, label %_ZNK5clang6interp7Pointer7isDummyEv.exit

_ZNK5clang6interp7Pointer7isDummyEv.exit:         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !179
  %i.v = and i8 %i.u, 8
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer6isLiveEv.exit, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120

_ZNK5clang6interp7Pointer6isLiveEv.exit:          ; preds = %_ZNK5clang6interp7Pointer7isDummyEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !179
  %i.y = and i8 %i.x, 2
  %.not1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not1.i.i, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.thread146, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120

._ZNK5clang6interp7Pointer6isZeroEv.exit.thread_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %_ZNK5clang6interp7Pointer9isPastEndEv.exit

.split3.i:                                        ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i25, label %.split, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit

bb.d:                                             ; preds = %bb.b
  unreachable

_ZNK5clang6interp7Pointer9isPastEndEv.exit:       ; preds = %._ZNK5clang6interp7Pointer6isZeroEv.exit.thread_crit_edge.i, %.split3.i
  %i.ab = phi ptr [ %.pre.i, %._ZNK5clang6interp7Pointer6isZeroEv.exit.thread_crit_edge.i ], [ %i.aa, %.split3.i ]
  %i.ac = load i64, ptr %1, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !62
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp ugt i64 %i.ac, %i.ag
  br i1 %i.ah, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer9isPastEndEv.exit.thread146: ; preds = %_ZNK5clang6interp7Pointer6isLiveEv.exit
  %i.ai = load i64, ptr %1, align 8, !tbaa !34
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !62
  %i.am = zext i32 %i.al to i64
  %i.an = icmp ugt i64 %i.ai, %i.am
  br i1 %i.an, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.thread146
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !44, !noalias !449 ; 4 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !20  ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !30
  %i.at = icmp eq i32 %i.ap, %i.as                ; 3 uses
  br i1 %i.at, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.au = zext i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.e, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ax, %bb.e ], [ %i.aq, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !61
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.bb = load i64, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  %.pre.i28 = zext i32 %i.ap to i64               ; 4 uses
  br i1 %i.at, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !61 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.bb, %.pre.i28
  br i1 %.not.i.i6.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre.i28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !61 ; 2 uses
  %.not.i.i612.i = icmp eq i64 %i.bb, %.pre.i28
  br i1 %.not.i.i612.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.bn = phi i32 [ %i.bh, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.bm, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i = phi ptr [ %i.aq, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.bk, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63
  %.not1.i.i.i = icmp eq ptr %i.bp, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.bq = phi i32 [ %i.bn, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.bh, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.bm, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.br = sub nsw i64 %i.bb, %.pre.i28
  %i.bs = add nsw i64 %i.br, %.0.neg.i.i.i
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp eq i32 %i.bq, %i.bt
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  br i1 %i.at, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.bv = zext i32 %i.ap to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.0.i.i = load ptr, ptr %i.bx, align 8, !tbaa !64 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120, label %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit

_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i
  %.0.i.sink.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !61
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120

_ZNK5clang6interp7Pointer6isLiveEv.exit.thread120: ; preds = %bb.c, %_ZNK5clang6interp7Pointer9isPastEndEv.exit.thread146, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, %_ZNK5clang6interp7Pointer9isPastEndEv.exit, %_ZNK5clang6interp7Pointer6isLiveEv.exit, %_ZNK5clang6interp7Pointer7isDummyEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.cb, align 8, !tbaa !447
  br label %.critedge

.split:                                           ; preds = %bb.b, %.split3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.a)
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %9) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cc, align 8, !tbaa !447
  %i.cd = load i32, ptr %9, align 8, !tbaa !55
  %switch.i = icmp ult i32 %i.cd, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.split
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #22
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.critedge

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit, %_ZNK5clang6interp7Pointer15isZeroSizeArrayEv.exit, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit, %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.ce = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %2, i64 %3) #22 ; 3 uses
  %.not137 = icmp eq i8 %i.ce, -1
  br i1 %.not137, label %bb.bc, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.cf = call noundef zeroext i1 @_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext %i.ce)
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.cg, align 8, !tbaa !447
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  switch i8 %i.ce, label %bb.bc [
    i8 0, label %bb.j
    i8 1, label %bb.m
    i8 2, label %bb.p
    i8 3, label %bb.s
    i8 4, label %bb.v
    i8 5, label %bb.y
    i8 6, label %bb.ab
    i8 7, label %bb.ae
    i8 8, label %bb.ah
    i8 9, label %bb.ak
    i8 12, label %bb.an
    i8 10, label %bb.aq
    i8 13, label %bb.at
    i8 14, label %bb.aw
    i8 11, label %bb.az
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !44, !noalias !450 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !44, !noalias !450 ; 2 uses
  %i.cl = load i64, ptr %1, align 8, !tbaa !34, !noalias !450 ; 2 uses
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !30
  %i.cp = icmp eq i32 %i.ck, %i.co
  %.pre.i.i.i = zext i32 %i.ck to i64             ; 3 uses
  br i1 %i.cp, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pre.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.cs, %bb.k ], [ %i.cm, %bb.j ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !65, !range !66, !noundef !67
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = icmp eq i64 %i.cl, %.pre.i.i.i
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pre.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cl
  %.0.i.i31 = select i1 %i.cx, ptr %i.cz, ptr %i.db
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.dc = load i8, ptr %.0.i.i31, align 1, !tbaa !181, !noalias !452
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.de, align 4, !alias.scope !451
  %i.dg = and i8 %i.df, -2
  store i8 %i.dg, ptr %i.de, align 4, !alias.scope !451
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 2, ptr %10, align 8, !tbaa !55, !alias.scope !451
  store i64 %i.dd, ptr %i.dh, align 8, !alias.scope !451
  store i32 8, ptr %i.di, align 8, !tbaa !183, !alias.scope !451
  store i8 0, ptr %i.dj, align 4, !tbaa !185, !alias.scope !451
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %10) #22
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dk, align 8, !tbaa !447
  %i.dl = load i32, ptr %10, align 8, !tbaa !55
  %switch.i32 = icmp ult i32 %i.dl, 2
  br i1 %switch.i32, label %_ZN5clang7APValueD2Ev.exit33, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #22
  br label %_ZN5clang7APValueD2Ev.exit33

_ZN5clang7APValueD2Ev.exit33:                     ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44, !noalias !453 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !44, !noalias !453 ; 2 uses
  %i.dq = load i64, ptr %1, align 8, !tbaa !34, !noalias !453 ; 2 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !20 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !30
  %i.du = icmp eq i32 %i.dp, %i.dt
  %.pre.i.i.i34 = zext i32 %i.dp to i64           ; 3 uses
  br i1 %i.du, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.pre.i.i.i34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !60
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i35 = phi ptr [ %i.dx, %bb.n ], [ %i.dr, %bb.m ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i35, i64 53
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !65, !range !66, !noundef !67
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = icmp eq i64 %i.dq, %.pre.i.i.i34
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.pre.i.i.i34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dq
  %.0.i.i36 = select i1 %i.ec, ptr %i.ee, ptr %i.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.eh = load i8, ptr %.0.i.i36, align 1, !tbaa !187, !noalias !455
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 4, !alias.scope !454
  %i.el = and i8 %i.ek, -2
  store i8 %i.el, ptr %i.ej, align 4, !alias.scope !454
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 2, ptr %11, align 8, !tbaa !55, !alias.scope !454
  store i64 %i.ei, ptr %i.em, align 8, !alias.scope !454
  store i32 8, ptr %i.en, align 8, !tbaa !183, !alias.scope !454
  store i8 1, ptr %i.eo, align 4, !tbaa !185, !alias.scope !454
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %11) #22
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.ep, align 8, !tbaa !447
  %i.eq = load i32, ptr %11, align 8, !tbaa !55
  %switch.i37 = icmp ult i32 %i.eq, 2
  br i1 %switch.i37, label %_ZN5clang7APValueD2Ev.exit38, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
end_hunk_3
begin_hunk_4_@"_ZZNK5clang6interp7Pointer8toRValueERKNS0_7ContextENS_8QualTypeEENK3$_0clES5_NS0_7PtrViewERNS_7APValueE":bb.a
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0.i.i492, i64 16
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !69
  %i.aqy = trunc nuw i64 %indvars.iv1044 to i32
  %i.aqz = mul i32 %i.aqx, %i.aqy
  %i.ara = add i32 %i.aqm, 8
  %i.arb = add i32 %i.ara, %i.aqz
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqn, i64 40
  %i.ard = zext i32 %i.arb to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 %i.ard
  %i.arf = load ptr, ptr %i.aep, align 8, !tbaa !768, !nonnull !67, !align !173
  call void @_ZNK5clang6interp7Pointer9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %71, ptr noundef nonnull align 8 dereferenceable(48) %i.are, ptr noundef nonnull align 8 dereferenceable(23904) %i.arf)
  %i.arg = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.afq, ptr noundef nonnull align 8 dereferenceable(56) %71) #22 ; 0 uses
  %i.arh = load i32, ptr %71, align 8, !tbaa !55
  %switch.i493 = icmp ult i32 %i.arh, 2
  br i1 %switch.i493, label %_ZN5clang7APValueD2Ev.exit494, label %bb.fh

bb.fh:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %71) #22
  br label %_ZN5clang7APValueD2Ev.exit494

_ZN5clang7APValueD2Ev.exit494:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  br label %bb.fv

bb.fi:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  %i.ari = load i32, ptr %i.z, align 8, !tbaa !123 ; 3 uses
  %i.arj = load ptr, ptr %2, align 8, !tbaa !122  ; 3 uses
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !20 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 24
  %i.arm = load i32, ptr %i.arl, align 8, !tbaa !30
  %i.arn = icmp eq i32 %i.ari, %i.arm
  br i1 %i.arn, label %_ZNK5clang6interp7PtrView4elemINS0_13MemberPointerEEERT_j.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aro = zext i32 %i.ari to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.aro
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 32
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView4elemINS0_13MemberPointerEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_13MemberPointerEEERT_j.exit: ; preds = %bb.fi, %bb.fj
  %.0.i.i495 = phi ptr [ %i.arr, %bb.fj ], [ %i.ark, %bb.fi ]
  %i.ars = getelementptr inbounds nuw i8, ptr %.0.i.i495, i64 16
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !69
  %i.aru = trunc nuw i64 %indvars.iv1044 to i32
  %i.arv = mul i32 %i.art, %i.aru
  %i.arw = add i32 %i.ari, 8
  %i.arx = add i32 %i.arw, %i.arv
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arj, i64 40
  %i.arz = zext i32 %i.arx to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.arz
  %i.asb = load ptr, ptr %i.aep, align 8, !tbaa !768, !nonnull !67, !align !173
  call void @_ZNK5clang6interp13MemberPointer9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %72, ptr noundef nonnull align 8 dereferenceable(72) %i.asa, ptr noundef nonnull align 8 dereferenceable(23904) %i.asb) #22
  %i.asc = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.afq, ptr noundef nonnull align 8 dereferenceable(56) %72) #22 ; 0 uses
  %i.asd = load i32, ptr %72, align 8, !tbaa !55
  %switch.i496 = icmp ult i32 %i.asd, 2
  br i1 %switch.i496, label %_ZN5clang7APValueD2Ev.exit497, label %bb.fk

bb.fk:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_13MemberPointerEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %72) #22
  br label %_ZN5clang7APValueD2Ev.exit497

_ZN5clang7APValueD2Ev.exit497:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_13MemberPointerEEERT_j.exit, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  br label %bb.fv

bb.fl:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  %i.ase = load i32, ptr %i.z, align 8, !tbaa !123 ; 3 uses
  %i.asf = load ptr, ptr %2, align 8, !tbaa !122  ; 3 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !20 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !30
  %i.asj = icmp eq i32 %i.ase, %i.asi
  br i1 %i.asj, label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ask = zext i32 %i.ase to i64
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.ask
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 32
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit: ; preds = %bb.fl, %bb.fm
  %.0.i.i498 = phi ptr [ %i.asn, %bb.fm ], [ %i.asg, %bb.fl ]
  %i.aso = getelementptr inbounds nuw i8, ptr %.0.i.i498, i64 16
  %i.asp = load i32, ptr %i.aso, align 8, !tbaa !69
  %i.asq = trunc nuw i64 %indvars.iv1044 to i32
  %i.asr = mul i32 %i.asp, %i.asq
  %i.ass = add i32 %i.ase, 8
  %i.ast = add i32 %i.ass, %i.asr
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asf, i64 40
  %i.asv = zext i32 %i.ast to i64
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.asv
  %i.asx = load ptr, ptr %i.aep, align 8, !tbaa !768, !nonnull !67, !align !173
  call void @_ZNK5clang6interp10FixedPoint9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %73, ptr noundef nonnull align 8 dereferenceable(24) %i.asw, ptr noundef nonnull align 8 dereferenceable(23904) %i.asx)
  %i.asy = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.afq, ptr noundef nonnull align 8 dereferenceable(56) %73) #22 ; 0 uses
  %i.asz = load i32, ptr %73, align 8, !tbaa !55
  %switch.i499 = icmp ult i32 %i.asz, 2
  br i1 %switch.i499, label %_ZN5clang7APValueD2Ev.exit500, label %bb.fn

bb.fn:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %73) #22
  br label %_ZN5clang7APValueD2Ev.exit500

_ZN5clang7APValueD2Ev.exit500:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.fv

bb.fo:                                            ; preds = %bb.du
  %i.ata = load ptr, ptr %0, align 8, !tbaa !773, !nonnull !67, !align !173 ; 3 uses
  %i.atb = load i32, ptr %i.z, align 8, !tbaa !123, !noalias !800 ; 18 uses
  %i.atc = load ptr, ptr %2, align 8, !tbaa !122, !noalias !800 ; 5 uses
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !20, !noalias !800 ; 8 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !30, !noalias !800
  %i.atg = icmp eq i32 %i.atb, %i.atf             ; 3 uses
  br i1 %i.atg, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ath = zext i32 %i.atb to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 32
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !60, !noalias !800
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pn5.i = phi ptr [ %i.atk, %bb.fp ], [ %i.atd, %bb.fo ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i501 = load i32, ptr %.pn.in.i, align 8, !tbaa !69, !noalias !800
  %i.atl = trunc nuw i64 %indvars.iv1044 to i32
  %i.atm = mul i32 %.pn.i501, %i.atl
  %i.atn = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !63, !noalias !800
  %.not.i502 = icmp eq ptr %i.ato, null
  %.0.v.i = select i1 %.not.i502, i32 8, i32 16
  %.0.i503 = add i32 %i.atm, %i.atb
  %i.atp = add i32 %.0.i503, %.0.v.i              ; 7 uses
  %i.atq = zext i32 %i.atp to i64                 ; 7 uses
  br i1 %i.atg, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.fq
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atd, i64 20
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !61, !noalias !801 ; 2 uses
  %i.att = icmp eq i32 %i.ats, -1
  br i1 %i.att, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.fq
  %i.atu = zext i32 %i.atb to i64                 ; 3 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.atu
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 32
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !60, !noalias !801 ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 20
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !61, !noalias !801 ; 2 uses
  %i.aua = icmp eq i32 %i.atz, -1
  br i1 %i.aua, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atd, i64 53
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !65, !range !66, !noalias !801, !noundef !67
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atx, i64 53
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !65, !range !66, !noalias !801, !noundef !67
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atd, i64 28
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !62, !noalias !801
  %i.auj = icmp ugt i32 %i.atp, %i.aui
  br i1 %i.auj, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.fr

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atd, i64 28
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !62, !noalias !801
  %i.aum = icmp ugt i32 %i.atp, %i.aul
  br i1 %i.aum, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.fr:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.aun = zext i32 %i.ats to i64                 ; 2 uses
  %i.auo = zext i32 %i.atb to i64                 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.atp, %i.atb
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.aup = zext i32 %i.atz to i64                 ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.atp, %i.atb
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.fr
  %i.auq = phi i64 [ %i.aun, %bb.fr ], [ %i.aup, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.aur = phi i64 [ %i.auo, %bb.fr ], [ %i.atu, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.atd, %bb.fr ], [ %i.atx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.aus = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !63, !noalias !801
  %.not1.i.i.i = icmp eq ptr %i.aut, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.fr
  %i.auu = phi i64 [ %i.aur, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.auo, %bb.fr ], [ %i.atu, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.auv = phi i64 [ %i.auq, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.aun, %bb.fr ], [ %i.aup, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.fr ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.auw = sub nsw i64 %i.atq, %i.auu
  %i.aux = add nsw i64 %i.auw, %.0.neg.i.i.i
  %i.auy = and i64 %i.aux, 4294967295
  %i.auz = icmp eq i64 %i.auv, %i.auy
  br i1 %i.auz, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %i.ava = zext i32 %i.atb to i64
  %.not.i505 = icmp eq i32 %i.atp, %i.atb
  br i1 %.not.i505, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.fs

bb.fs:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.atg, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avb = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.ava
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 32
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !60, !noalias !801
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.ft, %bb.fs
  %.0.i.i3.i = phi ptr [ %i.avd, %bb.ft ], [ %i.atd, %bb.fs ] ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !65, !range !66, !noalias !801, !noundef !67
  %i.avg = trunc nuw i8 %i.avf to i1
  %i.avh = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.avi = load ptr, ptr %i.avh, align 8, !noalias !801
  %.not.i.i4.i = icmp eq ptr %i.avi, null
  %i.avj = select i1 %i.avg, i1 %.not.i.i4.i, i1 false
  %spec.select979 = select i1 %i.avj, i32 %i.atb, i32 %i.atp
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.14.0 = phi i64 [ %i.atq, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.atq, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.atq, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.atq, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.atq, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.atq, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.6.0 = phi i32 [ %i.atb, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.atb, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %spec.select979, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.atb, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.atb, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.atb, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.atb, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.atb, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.atb, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.atc, ptr %9, align 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload.i453, ptr %8, align 8
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !146
  %.not.i.i506 = icmp eq ptr %i.avl, null
  br i1 %.not.i.i506, label %bb.fu, label %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit507

bb.fu:                                            ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit507: ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !191
  %i.avo = call noundef zeroext i1 %i.avn(ptr noundef nonnull align 8 dereferenceable(32) %i.ata, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(56) %i.afq) #22, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.avp = select i1 %i.avo, i1 %.02181021, i1 false
  br label %bb.fv

bb.fv:                                            ; preds = %bb.du, %_ZN5clang7APValueD2Ev.exit458, %_ZN5clang7APValueD2Ev.exit461, %_ZN5clang7APValueD2Ev.exit464, %_ZN5clang7APValueD2Ev.exit467, %_ZN5clang7APValueD2Ev.exit470, %_ZN5clang7APValueD2Ev.exit473, %_ZN5clang7APValueD2Ev.exit476, %_ZN5clang7APValueD2Ev.exit479, %_ZN5clang7APValueD2Ev.exit482, %_ZN5clang7APValueD2Ev.exit485, %_ZN5clang7APValueD2Ev.exit488, %_ZN5clang7APValueD2Ev.exit491, %_ZN5clang7APValueD2Ev.exit494, %_ZN5clang7APValueD2Ev.exit497, %_ZN5clang7APValueD2Ev.exit500, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit507
  %.1219 = phi i1 [ %.02181021, %bb.du ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit458 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit461 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit464 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit467 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit470 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit473 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit476 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit479 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit482 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit485 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit488 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit491 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit494 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit497 ], [ %.02181021, %_ZN5clang7APValueD2Ev.exit500 ], [ %i.avp, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit507 ] ; 2 uses
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %.not251 = icmp eq i64 %indvars.iv.next1045, %i.afo
  br i1 %.not251, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.du, !llvm.loop !691

.thread939:                                       ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread939_crit_edge, %bb.dq
  %.pre-phi1049 = phi ptr [ %.pre1048, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread939_crit_edge ], [ %i.an, %bb.dq ]
  %i.avq = phi ptr [ %.pre, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread939_crit_edge ], [ %i.ak, %bb.dq ]
  %i.avr = load ptr, ptr %.pre-phi1049, align 8, !tbaa !85
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 16
  %i.avt = load i8, ptr %i.avs, align 16
  %i.avu = icmp eq i8 %i.avt, 14
  br i1 %i.avu, label %bb.fw, label %bb.iz

bb.fw:                                            ; preds = %.thread939
  %i.avv = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #22
  %i.avw = and i64 %i.avv, -16
  %i.avx = inttoptr i64 %i.avw to ptr
  %i.avy = load ptr, ptr %i.avx, align 16, !tbaa !85
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %.sroa.0.0.copyload.i.i.i.i511 = load i64, ptr %i.avz, align 8, !tbaa !44
  %i.awa = and i64 %.sroa.0.0.copyload.i.i.i.i511, -16
  %i.awb = inttoptr i64 %i.awa to ptr
  %i.awc = load ptr, ptr %i.awb, align 16, !tbaa !85
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 16
  %i.awe = load i8, ptr %i.awd, align 16
  %i.awf = icmp eq i8 %i.awe, 14
  br i1 %i.awf, label %bb.fx, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.fx:                                            ; preds = %bb.fw
  %i.awg = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !192 ; 3 uses
  %i.awi = icmp ult i8 %i.awh, 11
  br i1 %i.awi, label %bb.fy, label %bb.iw

bb.fy:                                            ; preds = %bb.fx
  switch i8 %i.awh, label %default.unreachable [
    i8 0, label %bb.fz
    i8 1, label %bb.gg
    i8 2, label %bb.gn
    i8 3, label %bb.gu
    i8 4, label %bb.hb
    i8 5, label %bb.hi
    i8 6, label %bb.hp
    i8 7, label %bb.hw
    i8 8, label %_ZNK5clang6interp7PtrView4elemINS0_10IntegralAPILb0EEEEERT_j.exit576
    i8 9, label %_ZNK5clang6interp7PtrView4elemINS0_10IntegralAPILb1EEEEERT_j.exit584
    i8 10, label %bb.ip
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.awj = load i32, ptr %i.z, align 8, !tbaa !123 ; 3 uses
  %i.awk = load ptr, ptr %2, align 8, !tbaa !122  ; 4 uses
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !20 ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 24
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !30
  %i.awo = icmp eq i32 %i.awj, %i.awn
  %i.awp = add i32 %i.awj, 8                      ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awk, i64 40
  %i.awr = zext i32 %i.awp to i64
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awr
  br i1 %i.awo, label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit515, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.awt = zext i32 %i.awj to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 32
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !60
  br label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit515

_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit515: ; preds = %bb.fz, %bb.ga
  %.0.i.i514 = phi ptr [ %i.aww, %bb.ga ], [ %i.awl, %bb.fz ]
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awk, i64 40
  %i.awy = load i8, ptr %i.aws, align 1, !tbaa !44
  %i.awz = getelementptr inbounds nuw i8, ptr %.0.i.i514, i64 16
  %i.axa = load i32, ptr %i.awz, align 8, !tbaa !69
  %i.axb = add i32 %i.axa, %i.awp
  %i.axc = zext i32 %i.axb to i64
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awx, i64 %i.axc
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  %i.axf = zext i8 %i.awy to i64
  %i.axg = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i32 8, ptr %i.axg, align 8, !tbaa !183, !alias.scope !802
  store i64 %i.axf, ptr %75, align 8, !alias.scope !802
  %i.axh = getelementptr inbounds nuw i8, ptr %75, i64 12
  store i8 0, ptr %i.axh, align 4, !tbaa !185, !alias.scope !802
  %i.axi = zext i8 %i.axe to i64
  %i.axj = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  store i32 8, ptr %i.axj, align 8, !tbaa !183, !alias.scope !803
  store i64 %i.axi, ptr %76, align 8, !alias.scope !803
  %i.axk = getelementptr inbounds nuw i8, ptr %76, i64 12
  store i8 0, ptr %i.axk, align 4, !tbaa !185, !alias.scope !803
  call void @_ZN5clang7APValueC2EN4llvm6APSIntES2_(ptr noundef nonnull align 8 dereferenceable(56) %74, ptr nofree noundef nonnull align 8 dereferenceable(16) %75, ptr nofree noundef nonnull align 8 dereferenceable(16) %76)
  %i.axl = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %74) #22 ; 0 uses
  %i.axm = load i32, ptr %74, align 8, !tbaa !55
  %switch.i516 = icmp ult i32 %i.axm, 2
  br i1 %switch.i516, label %_ZN5clang7APValueD2Ev.exit517, label %bb.gb

bb.gb:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit515
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %74) #22
  br label %_ZN5clang7APValueD2Ev.exit517

_ZN5clang7APValueD2Ev.exit517:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit515, %bb.gb
  %i.axn = load i32, ptr %i.axj, align 8, !tbaa !183
  %i.axo = icmp ugt i32 %i.axn, 64
  br i1 %i.axo, label %bb.gc, label %_ZN4llvm5APIntD2Ev.exit

bb.gc:                                            ; preds = %_ZN5clang7APValueD2Ev.exit517
  %i.axp = load ptr, ptr %76, align 8, !tbaa !44  ; 2 uses
  %i.axq = icmp eq ptr %i.axp, null
  br i1 %i.axq, label %_ZN4llvm5APIntD2Ev.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_ZdaPv(ptr noundef nonnull %i.axp) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang7APValueD2Ev.exit517, %bb.gc, %bb.gd
  %i.axr = load i32, ptr %i.axg, align 8, !tbaa !183
  %i.axs = icmp ugt i32 %i.axr, 64
  br i1 %i.axs, label %bb.ge, label %_ZN4llvm5APIntD2Ev.exit518

bb.ge:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.axt = load ptr, ptr %75, align 8, !tbaa !44  ; 2 uses
  %i.axu = icmp eq ptr %i.axt, null
  br i1 %i.axu, label %_ZN4llvm5APIntD2Ev.exit518, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @_ZdaPv(ptr noundef nonnull %i.axt) #25
  br label %_ZN4llvm5APIntD2Ev.exit518

_ZN4llvm5APIntD2Ev.exit518:                       ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  br label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread
end_hunk_4
