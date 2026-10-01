Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RuntimeModule?download=true
inline.NumInlined: 904
inline.NumDeleted: 514
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm13RuntimeModule28importStringIDMapMayAllocateEv:bb.a
  %i.ax = and i32 %i.aw, 32
  %.not28 = icmp eq i32 %i.ax, 0
  br i1 %.not28, label %bb.v, label %bb.u

bb.k:                                             ; preds = %.lr.ph64, %.loopexit
  %.063 = phi i32 [ 0, %.lr.ph64 ], [ %.2, %.loopexit ] ; 3 uses
  %.02162 = phi i32 [ 0, %.lr.ph64 ], [ %.223, %.loopexit ] ; 4 uses
  %.02461 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph64 ], [ %i.dx, %.loopexit ] ; 2 uses
  %i.ay = load i32, ptr %.02461, align 4, !tbaa !7 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ba = and i32 %i.ay, 2147483647               ; 2 uses
  %.not65 = icmp eq i32 %i.ba, 0
  br i1 %.not65, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bb = add i32 %.02162, %i.ba                  ; 2 uses
  br label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.bc = add i32 %i.ay, %.063
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit
  %.158 = phi i32 [ %i.dv, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ], [ %.063, %.lr.ph.preheader ] ; 2 uses
  %.12257 = phi i32 [ %i.dw, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ], [ %.02162, %.lr.ph.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !57  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 304
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !156
  %i.bg = zext i32 %.158 to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 1            ; 5 uses
  %i.bj = icmp ugt i32 %i.bi, -16777217
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !53

bb.m:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  %i.bl = lshr i32 %i.bi, 1
  %i.bm = and i32 %i.bl, 8388607
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !157
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.bp, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !7
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bq = lshr i32 %i.bi, 1
  %i.br = and i32 %i.bq, 8388607
  %i.bs = lshr i32 %i.bi, 24
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit

_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit: ; preds = %bb.m, %bb.n
  %.sink.i = phi i32 [ %i.bs, %bb.n ], [ %.sroa.4.0.copyload.i, %bb.m ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.br, %bb.n ], [ %.sroa.0.0.copyload.i35, %bb.m ]
  %i.bt = shl i32 %i.bi, 31
  %spec.select.i7.i = or i32 %.sink.i, %i.bt      ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i32 %spec.select.i7.i to i64 ; 2 uses
  %i.bu = zext i32 %.12257 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i30, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7  ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.by = icmp slt i32 %spec.select.i7.i, 0
  %i.bz = zext i32 %.sroa.0.0.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bz ; 4 uses
  br i1 %i.by, label %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i

_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit
  %i.cb = and i32 %.sink.i, 2147483647
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = load i8, ptr %i.at, align 8
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !60, !align !61 ; 4 uses
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.ch = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.cg, ptr %i.ca, i64 %i.cc, i32 noundef %i.bw) #17
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

bb.p:                                             ; preds = %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !64 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 208 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !75 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.cp = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %i.cf, ptr %i.ca, i64 %i.cc, i32 noundef %i.bw) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %bb.q, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, !prof !53

bb.q:                                             ; preds = %bb.p
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i: ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !11
  %i.cq = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cs = zext i32 %i.cn to i64
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !76
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !78
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !74
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit
  %i.cy = load i8, ptr %i.at, align 8
  %i.cz = trunc i8 %i.cy to i1
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !60, !align !61 ; 4 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 9240
  %i.dc = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.db, ptr %i.ca, i64 %.sroa.3.0.insert.ext.i, i32 noundef %i.bw) #17
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

bb.s:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 208 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !75 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 9240
  %i.dk = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.dj, ptr noundef nonnull align 8 dereferenceable(9816) %i.da, ptr %i.ca, i64 %.sroa.3.0.insert.ext.i, i32 noundef %i.bw) #17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.dk, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i24.i, label %bb.t, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i, !prof !53

bb.t:                                             ; preds = %bb.s
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i: ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i.i26.i = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.dl = trunc i64 %.sroa.0.0.copyload.i.i.i.i26.i to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.dn = zext i32 %i.di to i64
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !78
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !74
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit: ; preds = %bb.o, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, %bb.r, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i
  %.sroa.013.0.i27.sink.i = phi i32 [ %i.cq, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i ], [ %i.ch, %bb.o ], [ %i.dc, %bb.r ], [ %i.dl, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i ]
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.bg
  store i32 %.sroa.013.0.i27.sink.i, ptr %i.du, align 4
  %i.dv = add i32 %.158, 1                        ; 2 uses
  %i.dw = add i32 %.12257, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, %i.bb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !189

.loopexit:                                        ; preds = %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit, %.preheader, %bb.l
  %.223 = phi i32 [ %.02162, %bb.l ], [ %.02162, %.preheader ], [ %i.bb, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ]
  %.2 = phi i32 [ %i.bc, %bb.l ], [ %.063, %.preheader ], [ %i.dv, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.02461, i64 4 ; 2 uses
  %.not27 = icmp eq ptr %i.dx, %i.as
  br i1 %.not27, label %._crit_edge, label %bb.k

bb.u:                                             ; preds = %._crit_edge
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !57
  call void @_ZN6hermes3hbc20BCProviderFromBuffer23adviseStringTableRandomEv(ptr noundef nonnull align 8 dereferenceable(376) %i.dy) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.dz = icmp eq i32 %i.q, 0
  br i1 %i.dz, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !122 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !98
  %.not.i.i37 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i.i37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 536870911, ptr %i.ea, align 4
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store ptr %i.ee, ptr %i.t, align 8, !tbaa !122
  br label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit

bb.y:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.r, align 8, !tbaa !79  ; 7 uses
  %i.eg = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 4 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775804
  br i1 %i.ej, label %bb.z, label %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.ek = ashr exact i64 %i.ei, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 2305843009213693951)
  %i.eo = select i1 %i.em, i64 2305843009213693951, i64 %i.en ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ep = shl nuw nsw i64 %i.eo, 2
  %i.eq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #20 ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei
  store i32 536870911, ptr %i.er, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ef, %i.ea
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %3 = ptrtoaddr ptr %i.eq to i64
  %i.es = add i64 %i.eg, -4
  %i.et = sub i64 %i.es, %i.eh                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.et, 44
  %4 = sub i64 %i.eh, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ev, 9223372036854775800     ; 3 uses
  %i.ew = shl i64 %n.vec, 2                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eq, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ef, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eq, i64 %i.ez ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.ef, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.fa = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !alias.scope !414, !noalias !413
  %wide.load100 = load <4 x i32>, ptr %i.fa, align 4, !alias.scope !414, !noalias !413
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !413, !noalias !414
  store <4 x i32> %wide.load100, ptr %i.fb, align 4, !alias.scope !413, !noalias !414
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.preheader102:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ex, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader102 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.fd = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !414, !noalias !413
  store i32 %i.fd, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !413, !noalias !414
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fe, %i.ea
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !194

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ex, %middle.block ], [ %i.ff, %.lr.ph.i.i.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.fh = load ptr, ptr %i.eb, align 8, !tbaa !98
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.fj) #19
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.eq, ptr %i.r, align 8, !tbaa !79
  store ptr %i.fg, ptr %i.t, align 8, !tbaa !122
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.fk, ptr %i.eb, align 8, !tbaa !98
  br label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fm = load i8, ptr %i.fl, align 8
  %i.fn = trunc i8 %i.fm to i1
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !60, !align !61 ; 4 uses
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 9240
  %i.fq = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fp, ptr null, i64 0, i32 noundef 0) #17
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit

bb.ac:                                            ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !64 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 192 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !74
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 208 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !75 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 9240
  %i.fy = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fx, ptr noundef nonnull align 8 dereferenceable(9816) %i.fo, ptr null, i64 0, i32 noundef 0) #17 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.fy, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i38, label %bb.ad, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i, !prof !53

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i: ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.fy, align 8, !tbaa !11
  %i.fz = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 144
  %i.gb = zext i32 %i.fw to i64
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !76
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !77
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !75
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !78
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !74
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit

_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit: ; preds = %bb.ab, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i
  %.sroa.013.0.i = phi i32 [ %i.fq, %bb.ab ], [ %i.fz, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i ]
  %i.gh = load ptr, ptr %i.r, align 8, !tbaa !79
  store i32 %.sroa.013.0.i, ptr %i.gh, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit, %bb.v
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm13RuntimeModule21initializeFunctionMapEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !121
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o)
  br label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.g, align 8, !tbaa !104
  br label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm13RuntimeModule20importCJSModuleTableEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !60, !align !61 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = zext i32 %i.d to i64
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.e, ptr noundef %i.i) #17
  %i.j = or i64 %i.h, -281474976710656
  br label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i

_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ -281474976710656, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d, !prof !107

bb.c:                                             ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !74
  store i64 %.0.i.i.i.i, ptr %i.n, align 8, !tbaa !11
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm13RuntimeModule22markLongLivedWeakRootsERNS0_16WeakRootAcceptorE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.1, i64 8 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.ae, %.pn12.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIjN6hermes2vm8WeakRootINS2_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !438

_ZN4llvh16DenseMapIteratorIjN6hermes2vm8WeakRootINS2_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %bb.i
  %.sroa.013.2 = phi ptr [ %i.ac, %bb.i ], [ %.sroa.013.1, %.lr.ph.i4.i ], [ %i.ae, %.critedge2.i6.i ] ; 2 uses
  %.not21 = icmp eq ptr %.sroa.013.2, %i.r
  br i1 %.not21, label %._crit_edge28, label %.lr.ph27
}

declare void @_ZN6hermes2vm9CodeBlock23markCachedHiddenClassesERNS0_7RuntimeERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZNK6hermes2vm13RuntimeModule28findCachedLiteralHiddenClassERNS0_7RuntimeEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 16777216
  %i.b = icmp ult i32 %3, 256
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = shl nuw i32 %2, 8
  %i.f = or disjoint i32 %i.e, %3                 ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !91   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !162  ; 4 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = mul i32 %i.f, 37
  %i.l = add i32 %i.i, -1                         ; 2 uses
  %.02544.i.i = and i32 %i.l, %i.k                ; 2 uses
  %i.m = zext i32 %.02544.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 2 uses
  %i.p = icmp eq i32 %i.f, %i.o
  br i1 %i.p, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit, label %.lr.ph.i.i, !prof !163

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.w, %bb.d ], [ %i.o, %bb.c ]
  %.02547.i.i = phi i32 [ %.025.i.i, %bb.d ], [ %.02544.i.i, %bb.c ]
  %.046.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i, label %bb.d, !prof !107

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add i32 %.046.i.i, 1
  %i.t = add i32 %.046.i.i, %.02547.i.i
  %.025.i.i = and i32 %i.t, %i.l                  ; 2 uses
  %i.u = zext i32 %.025.i.i to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit, label %.lr.ph.i.i, !prof !164, !llvm.loop !0

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %i.y = zext i32 %i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.y
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.u
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit, %bb.c, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i
  %.sink.i.ph.pn.i = phi ptr [ %i.z, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i ], [ %i.n, %bb.c ], [ %i.aa, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit ] ; 2 uses
  %i.ab = zext i32 %i.i to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  %.not19 = icmp eq ptr %.sink.i.ph.pn.i, %i.ac
  br i1 %.not19, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %.critedge.thread, label %_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit

_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = zext i32 %i.ae to i64
  %i.ai = add i64 %i.ah, %i.ag                    ; 3 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  tail call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.af, ptr noundef %i.aj) #17
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48, !nonnull !60, !align !61
  %i.am = or i64 %i.ai, -281474976710656          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 192 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !74 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  %i.at = icmp ult ptr %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %bb.h, !prof !107

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !74
  store i64 %i.am, ptr %i.aq, align 8, !tbaa !11
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.av = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ao, i64 %i.am) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.av, %bb.h ]
  %i.aw = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.e, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit, %_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit, %bb.a, %.critedge
  %.sroa.014.2 = phi i64 [ %i.aw, %.critedge ], [ undef, %bb.a ], [ undef, %_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit ], [ undef, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit ], [ undef, %bb.e ]
  %.sroa.2.1 = phi i8 [ 1, %.critedge ], [ 0, %bb.a ], [ 0, %_ZNK6hermes2vm8WeakRootINS0_11HiddenClassEE3getERNS0_11PointerBaseERNS0_7HadesGCE.exit ], [ 0, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.014.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm13RuntimeModule26tryCacheLiteralHiddenClassERNS0_7RuntimeEjPNS0_11HiddenClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !451  ; 2 uses
  %i.d = icmp ult i32 %2, 16777216
  %i.e = icmp ult i32 %i.c, 256
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = shl nuw i32 %2, 8
  %i.i = or disjoint i32 %i.c, %i.h
  store i32 %i.i, ptr %i.a, align 4, !tbaa !7
  %i.j = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E16FindAndConstructEOj(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = ptrtoint ptr %3 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %i.k, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK6hermes2vm13RuntimeModule20additionalMemorySizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !162
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = add i64 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load i32, ptr %i.m, align 8, !tbaa !160
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = add i64 %i.l, %i.p
  ret i64 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm6detail20mapStringMayAllocateERNS0_13RuntimeModuleEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 536870911, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.g, ptr %i.b, align 8, !tbaa !122
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !79   ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i32 536870911, ptr %i.t, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %2 = ptrtoaddr ptr %i.s to i64
  %i.u = add i64 %i.i, -4
  %i.v = sub i64 %i.u, %i.j                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %3 = sub i64 %i.j, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.ac = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !alias.scope !459, !noalias !458
  %wide.load16 = load <4 x i32>, ptr %i.ac, align 4, !alias.scope !459, !noalias !458
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !458, !noalias !459
  store <4 x i32> %wide.load16, ptr %i.ad, align 4, !alias.scope !458, !noalias !459
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.i.preheader18:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.af = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !459, !noalias !458
  store i32 %i.af, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !458, !noalias !459
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !456

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.al) #19
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !79
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  store ptr %i.am, ptr %i.d, align 8, !tbaa !98
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.an = tail call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef %1) #17 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 4 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 6 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not10.i.i = icmp samesign eq i64 %i.ap, 0
  br i1 %.not10.i.i, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.as = icmp ult i64 %i.ap, 4
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ap, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.at = load i8, ptr %.0811.i.i, align 1, !tbaa !12
  %i.au = sext i8 %i.at to i32
  %i.av = add i32 %.012.i.i, %i.au
  %i.aw = mul i32 %i.av, 1025                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 6
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = sext i8 %i.ba to i32
  %i.bc = add i32 %i.ay, %i.bb
  %i.bd = mul i32 %i.bc, 1025                     ; 2 uses
  %i.be = lshr i32 %i.bd, 6
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = mul i32 %i.bj, 1025                     ; 2 uses
  %i.bl = lshr i32 %i.bk, 6
  %i.bm = xor i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = mul i32 %i.bq, 1025                     ; 2 uses
  %i.bs = lshr i32 %i.br, 6
  %i.bt = xor i32 %i.bs, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bt, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.ao, %.lr.ph.i.i.preheader ], [ %i.bu, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.ca, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.cb, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bv = load i8, ptr %.0811.i.i.epil, align 1, !tbaa !12
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add i32 %.012.i.i.epil, %i.bw
  %i.by = mul i32 %i.bx, 1025                     ; 2 uses
  %i.bz = lshr i32 %i.by, 6
  %i.ca = xor i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !457

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit ], [ %i.bt, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i.i.epil ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48, !nonnull !60, !align !61 ; 4 uses
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 9240
  %i.ci = tail call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ch, ptr %i.ao, i64 %i.ap, i32 noundef %.0.lcssa.i.i) #17
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit

bb.g:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !64 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 208 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !75 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 9240
  %i.cq = tail call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.cp, ptr noundef nonnull align 8 dereferenceable(9816) %i.cg, ptr %i.ao, i64 %i.ap, i32 noundef %.0.lcssa.i.i) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %bb.h, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, !prof !53

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cq, align 8, !tbaa !11
  %i.cr = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.ct = zext i32 %i.co to i64
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !77
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  store i32 %i.co, ptr %i.cn, align 8, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !78
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !74
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit

_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit: ; preds = %bb.f, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i
  %.sroa.013.0.i.i = phi i32 [ %i.ci, %bb.f ], [ %i.cr, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i ]
  %i.cz = ptrtoint ptr %i.aq to i64
  %i.da = ptrtoint ptr %i.ar to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 4294967295
  %i.de = and i64 %i.dd, 4294967295
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !79
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.an, 28
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit
  %n.vec164 = and i64 %i.ap, 9223372036854775800  ; 3 uses
  %i.aq = shl i64 %n.vec164, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.as = shl i64 %index168, 2
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep169, i64 16
  store <4 x i32> %broadcast.splat166, ptr %next.gep169, align 4
  store <4 x i32> %broadcast.splat166, ptr %i.at, align 4
  %index.next170 = add nuw i64 %index168, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.au, label %middle.block171, label %vector.body167, !llvm.loop !464

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.ap, %n.vec164
  br i1 %cmp.n172, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit, %middle.block171
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit ], [ %i.ar, %middle.block171 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !465

bb.h:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader230, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, -8                      ; 3 uses
  %i.ax = shl i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %i.d, i64 %i.ax   ; 2 uses
  %i.az = and i64 %i.aw, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader230

.lr.ph.i.i.i.i.preheader230:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader230, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader230 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader230 ]
  store i32 %i.i, ptr %.09.i.i.i.i, align 4
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !467

_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.h
  %i.bf = phi ptr [ %i.d, %bb.h ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !122
  %.not7.i.i.i.i.i50 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i50, label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread, label %.lr.ph.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = add i64 %i.f, -4
  %i.bi = sub i64 %i.bh, %i.j                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.bi, 44
  %i.bl = sub i64 %i.j, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check120, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i51.preheader229, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %n.vec122 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bm = shl i64 %n.vec122, 2                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body123 ] ; 2 uses
  %i.bp = shl i64 %index124, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep126 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep126, align 4
  %wide.load127 = load <4 x i32>, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %next.gep125, i64 16
  store <4 x i32> %wide.load, ptr %next.gep125, align 4
  store <4 x i32> %wide.load127, ptr %i.br, align 4
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.bs, label %middle.block129, label %vector.body123, !llvm.loop !468

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %i.bk, %n.vec122
  br i1 %cmp.n130, label %.lr.ph.preheader.i.i.i58, label %.lr.ph.i.i.i.i.i51.preheader229

.lr.ph.i.i.i.i.i51.preheader229:                  ; preds = %.lr.ph.i.i.i.i.i51.preheader, %middle.block129
  %.09.i.i.i.i.i52.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.bn, %middle.block129 ]
  %.sroa.04.08.i.i.i.i.i53.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.bo, %middle.block129 ]
  br label %.lr.ph.i.i.i.i.i51

_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !122
  br label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader229, %.lr.ph.i.i.i.i.i51
  %.09.i.i.i.i.i52 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i51 ], [ %.09.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i51.preheader229 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i53 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i51 ], [ %.sroa.04.08.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i51.preheader229 ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.04.08.i.i.i.i.i53, align 4
  store i32 %i.bu, ptr %.09.i.i.i.i.i52, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i53, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i52, i64 4
  %.not.i.i.i.i.i54 = icmp eq ptr %i.bv, %i.d
  br i1 %.not.i.i.i.i.i54, label %.lr.ph.preheader.i.i.i58, label %.lr.ph.i.i.i.i.i51, !llvm.loop !469

.lr.ph.preheader.i.i.i58:                         ; preds = %.lr.ph.i.i.i.i.i51, %middle.block129
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8, !tbaa !122
  %i.bz = add i64 %i.f, -4
  %i.ca = sub i64 %i.bz, %i.j                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check134, label %.lr.ph.i.i.i60.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.preheader.i.i.i58
  %n.vec136 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec136, 2
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body139 ] ; 2 uses
  %i.cf = shl i64 %index140, 2
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep141, i64 16
  store <4 x i32> %broadcast.splat138, ptr %next.gep141, align 4
  store <4 x i32> %broadcast.splat138, ptr %i.cg, align 4
  %index.next142 = add nuw i64 %index140, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.ch, label %middle.block143, label %vector.body139, !llvm.loop !470

middle.block143:                                  ; preds = %vector.body139
  %cmp.n144 = icmp eq i64 %i.cc, %n.vec136
  br i1 %cmp.n144, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i60.preheader

.lr.ph.i.i.i60.preheader:                         ; preds = %.lr.ph.preheader.i.i.i58, %middle.block143
  %.06.i.i.i61.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i58 ], [ %i.ce, %middle.block143 ]
  br label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %.lr.ph.i.i.i60.preheader, %.lr.ph.i.i.i60
  %.06.i.i.i61 = phi ptr [ %i.ci, %.lr.ph.i.i.i60 ], [ %.06.i.i.i61.ph, %.lr.ph.i.i.i60.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i61, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 4 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i62, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i60, !llvm.loop !471

bb.i:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !79    ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 5 uses
  %i.cl = sub i64 %i.f, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 4 uses
  %i.cn = sub nsw i64 2305843009213693951, %i.cm
  %i.co = icmp ult i64 %i.cn, %2
  br i1 %i.co, label %bb.j, label %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %2)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 2305843009213693951)
  %i.cs = select i1 %i.cq, i64 2305843009213693951, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cu = sub i64 %i.ct, %i.ck
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i65, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cs, 2
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #20
  br label %.lr.ph.preheader.i.i.i.i65

.lr.ph.preheader.i.i.i.i65:                       ; preds = %bb.k, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.k ], [ null, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %4 = ptrtoaddr ptr %i.cx to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %.pre.i.i.i.i66 = load i32, ptr %3, align 4     ; 2 uses
  %min.iters.check175 = icmp ult i64 %2, 8
  br i1 %min.iters.check175, label %.lr.ph.i.i.i.i67.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.preheader.i.i.i.i65
  %n.vec177 = and i64 %2, -8                      ; 3 uses
  %i.cz = shl i64 %n.vec177, 2
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = and i64 %2, 7
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i66, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph176
  %index181 = phi i64 [ 0, %vector.ph176 ], [ %index.next183, %vector.body180 ] ; 2 uses
  %i.dc = shl i64 %index181, 2
  %next.gep182 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep182, i64 16
  store <4 x i32> %broadcast.splat179, ptr %next.gep182, align 4
  store <4 x i32> %broadcast.splat179, ptr %i.dd, align 4
  %index.next183 = add nuw i64 %index181, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.de, label %middle.block184, label %vector.body180, !llvm.loop !472

middle.block184:                                  ; preds = %vector.body180
  %cmp.n185 = icmp eq i64 %2, %n.vec177
  br i1 %cmp.n185, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67.preheader

.lr.ph.i.i.i.i67.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i65, %middle.block184
  %.09.i.i.i.i68.ph = phi ptr [ %i.cy, %.lr.ph.preheader.i.i.i.i65 ], [ %i.da, %middle.block184 ]
  %.068.i.i.i.i69.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i65 ], [ %i.db, %middle.block184 ]
  br label %.lr.ph.i.i.i.i67

.lr.ph.i.i.i.i67:                                 ; preds = %.lr.ph.i.i.i.i67.preheader, %.lr.ph.i.i.i.i67
  %.09.i.i.i.i68 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i67 ], [ %.09.i.i.i.i68.ph, %.lr.ph.i.i.i.i67.preheader ] ; 2 uses
  %.068.i.i.i.i69 = phi i64 [ %i.df, %.lr.ph.i.i.i.i67 ], [ %.068.i.i.i.i69.ph, %.lr.ph.i.i.i.i67.preheader ]
  store i32 %.pre.i.i.i.i66, ptr %.09.i.i.i.i68, align 4
  %i.df = add i64 %.068.i.i.i.i69, -1             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i68, i64 4
  %.not.i.i.i.i70 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i70, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67, !llvm.loop !473

_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72: ; preds = %.lr.ph.i.i.i.i67, %middle.block184
  %.not7.i.i.i.i.i73 = icmp eq ptr %i.cj, %1
  br i1 %.not7.i.i.i.i.i73, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i74.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72
  %i.dh = add i64 %i.ct, -4
  %i.di = sub i64 %i.dh, %i.ck                    ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.di, 44
  %5 = sub i64 %i.ck, %4
  %diff.check189 = icmp ugt i64 %5, -32
  %or.cond223 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond223, label %.lr.ph.i.i.i.i.i74.preheader225, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i74.preheader
  %n.vec193 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec193, 2                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cx, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cj, i64 %i.dl
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %i.do = shl i64 %index195, 2                    ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.cx, i64 %i.do ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.cj, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep197, i64 16
  %wide.load198 = load <4 x i32>, ptr %next.gep197, align 4
  %wide.load199 = load <4 x i32>, ptr %i.dp, align 4
  %i.dq = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %wide.load198, ptr %next.gep196, align 4
  store <4 x i32> %wide.load199, ptr %i.dq, align 4
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.dr, label %middle.block201, label %vector.body194, !llvm.loop !474

middle.block201:                                  ; preds = %vector.body194
  %cmp.n202 = icmp eq i64 %i.dk, %n.vec193
  br i1 %cmp.n202, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74.preheader225

.lr.ph.i.i.i.i.i74.preheader225:                  ; preds = %.lr.ph.i.i.i.i.i74.preheader, %middle.block201
  %.09.i.i.i.i.i75.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i74.preheader ], [ %i.dm, %middle.block201 ]
  %.sroa.04.08.i.i.i.i.i76.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i74.preheader ], [ %i.dn, %middle.block201 ]
  br label %.lr.ph.i.i.i.i.i74

.lr.ph.i.i.i.i.i74:                               ; preds = %.lr.ph.i.i.i.i.i74.preheader225, %.lr.ph.i.i.i.i.i74
  %.09.i.i.i.i.i75 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i74 ], [ %.09.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i74.preheader225 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i76 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i74 ], [ %.sroa.04.08.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i74.preheader225 ] ; 2 uses
  %i.ds = load i32, ptr %.sroa.04.08.i.i.i.i.i76, align 4
  store i32 %i.ds, ptr %.09.i.i.i.i.i75, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i76, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.dt, %1
  br i1 %.not.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74, !llvm.loop !475

_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i74, %middle.block201, %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72
  %.0.lcssa.i.i.i.i.i78 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72 ], [ %i.dm, %middle.block201 ], [ %i.du, %.lr.ph.i.i.i.i.i74 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i78206 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i78 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i.i.i.i78, i64 %2 ; 5 uses
  %.not7.i.i.i.i.i79 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.dw = add i64 %i.f, -4
  %i.dx = sub i64 %i.dw, %i.ct                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check209 = icmp ult i64 %i.dx, 76
  br i1 %min.iters.check209, label %.lr.ph.i.i.i.i.i80.preheader224, label %vector.memcheck205

vector.memcheck205:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader
  %i.ea = shl i64 %2, 2
  %i.eb = add i64 %i.ea, %.0.lcssa.i.i.i.i.i78206
  %i.ec = sub i64 %i.ct, %i.eb
  %diff.check207 = icmp ugt i64 %i.ec, -32
  br i1 %diff.check207, label %.lr.ph.i.i.i.i.i80.preheader224, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck205
  %n.vec211 = and i64 %i.dz, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec211, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.eg = shl i64 %index213, 2                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %next.gep215 = getelementptr i8, ptr %1, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep215, i64 16
  %wide.load216 = load <4 x i32>, ptr %next.gep215, align 4
  %wide.load217 = load <4 x i32>, ptr %i.eh, align 4
  %i.ei = getelementptr i8, ptr %next.gep214, i64 16
  store <4 x i32> %wide.load216, ptr %next.gep214, align 4
  store <4 x i32> %wide.load217, ptr %i.ei, align 4
  %index.next218 = add nuw i64 %index213, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.ej, label %middle.block219, label %vector.body212, !llvm.loop !476

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %i.dz, %n.vec211
  br i1 %cmp.n220, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader224

.lr.ph.i.i.i.i.i80.preheader224:                  ; preds = %vector.memcheck205, %.lr.ph.i.i.i.i.i80.preheader, %middle.block219
  %.09.i.i.i.i.i81.ph = phi ptr [ %i.dv, %vector.memcheck205 ], [ %i.dv, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.ee, %middle.block219 ]
  %.sroa.04.08.i.i.i.i.i82.ph = phi ptr [ %1, %vector.memcheck205 ], [ %1, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.ef, %middle.block219 ]
  br label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader224, %.lr.ph.i.i.i.i.i80
  %.09.i.i.i.i.i81 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i80 ], [ %.09.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i80.preheader224 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i82 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i80 ], [ %.sroa.04.08.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i80.preheader224 ] ; 2 uses
  %i.ek = load i32, ptr %.sroa.04.08.i.i.i.i.i82, align 4
  store i32 %i.ek, ptr %.09.i.i.i.i.i81, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.el, %i.d
  br i1 %.not.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80, !llvm.loop !477

_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85: ; preds = %.lr.ph.i.i.i.i.i80, %middle.block219, %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ %i.dv, %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ee, %middle.block219 ], [ %i.em, %.lr.ph.i.i.i.i.i80 ]
  %.not.i86 = icmp eq ptr %i.cj, null
  br i1 %.not.i86, label %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.ep) #19
  br label %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, %bb.l
  store ptr %i.cx, ptr %0, align 8, !tbaa !79
  store ptr %.0.lcssa.i.i.i.i.i84, ptr %i.c, align 8, !tbaa !122
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !98
  br label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit

_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i60, %.lr.ph.i.i.i, %middle.block143, %middle.block171, %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread, %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !100
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !104
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !100
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !100
end_hunk_2
begin_hunk_3_@llvm.umax.i32
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !105}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !8, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !10, i64 8, !5, i64 16}
!17 = !{!16, !10, i64 8}
!18 = !{!16, !13, i64 0}
!19 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !8, i64 0}
!20 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !19, i64 0, !19, i64 8}
!21 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !20, i64 0}
!22 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes2vm13RuntimeModuleEJEEE", !21, i64 0}
!23 = !{!"p1 _ZTSN6hermes2vm12RootSymbolIDE", !8, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE", !26, i64 0}
!28 = !{!"_ZTSN6hermes2vm12BasedPointerE", !6, i64 0}
!29 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !28, i64 0}
!30 = !{!"_ZTSN6hermes2vm12WeakRootBaseE", !29, i64 0}
!31 = !{!"_ZTSN6hermes2vm8WeakRootINS0_6DomainEEE", !30, i64 0}
!32 = !{!"any p2 pointer", !8, i64 0}
!33 = !{!"p2 _ZTSN6hermes2vm9CodeBlockE", !32, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE", !36, i64 0}
!38 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !8, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!41 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0, !40, i64 8}
!42 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !41, i64 0}
!43 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjN6hermes2vm8WeakRootINS3_11HiddenClassEEEEE", !8, i64 0}
!44 = !{!"_ZTSN4llvh8DenseMapIjN6hermes2vm8WeakRootINS2_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEE", !43, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!45 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjPN6hermes2vm8JSObjectEEE", !8, i64 0}
!46 = !{!"_ZTSN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEE", !45, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!47 = !{!"_ZTSN6hermes2vm13RuntimeModuleE", !22, i64 0, !9, i64 16, !27, i64 24, !31, i64 48, !37, i64 56, !42, i64 80, !5, i64 96, !16, i64 104, !6, i64 136, !44, i64 144, !46, i64 168}
!48 = !{!47, !9, i64 16}
!49 = !{!"p2 _ZTSN6hermes2vm13RuntimeModuleE", !32, i64 0}
!50 = !{!"_ZTSN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEEE", !49, i64 0, !10, i64 8, !10, i64 16}
!51 = !{!50, !10, i64 8}
!52 = !{!50, !10, i64 16}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!50, !49, i64 0}
!55 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !8, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!41, !38, i64 0}
!58 = !{!13, !13, i64 0}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{}
!61 = !{i64 8}
!62 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !8, i64 0}
!63 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !62, i64 8}
!64 = !{!63, !62, i64 8}
!65 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !8, i64 0}
!66 = !{!"_ZTSN4llvh15SmallVectorBaseE", !8, i64 0, !6, i64 8, !6, i64 12}
!67 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !66, i64 0}
!68 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !67, i64 0}
!69 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !68, i64 0}
!70 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!71 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !69, i64 0, !70, i64 16}
!72 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !8, i64 0}
!73 = !{!"_ZTSN6hermes2vm7GCScopeE", !65, i64 0, !62, i64 8, !5, i64 16, !71, i64 144, !72, i64 192, !72, i64 200, !6, i64 208}
!74 = !{!73, !72, i64 192}
!75 = !{!73, !6, i64 208}
!76 = !{!66, !8, i64 0}
!77 = !{!72, !72, i64 0}
!78 = !{!73, !72, i64 200}
!79 = !{!24, !23, i64 0}
!80 = !{!"p1 _ZTSN6hermes6BufferE", !8, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSN6hermes6BufferE", !13, i64 8, !10, i64 16}
!83 = !{!82, !10, i64 16}
!84 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !8, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !40, i64 8}
!86 = !{!85, !84, i64 0}
!87 = !{!"vtable pointer", !4, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!33, !33, i64 0}
!90 = !{!46, !45, i64 0}
!91 = !{!44, !43, i64 0}
!92 = !{!40, !39, i64 0}
!93 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!94 = !{!93, !6, i64 8}
!95 = !{!93, !6, i64 12}
!96 = !{!34, !33, i64 0}
!97 = !{!34, !33, i64 16}
!98 = !{!24, !23, i64 16}
!99 = !{!"p1 _ZTSN6hermes2vm9CodeBlockE", !8, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !13, i64 0}
!102 = !{!"_ZTSN6hermes2vm9CodeBlockE", !55, i64 0, !101, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!103 = !{!102, !55, i64 0}
!104 = !{!34, !33, i64 8}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!28, !6, i64 0}
!107 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!108 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !8, i64 0}
!109 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !108, i64 0, !10, i64 8}
!110 = !{!"p1 int", !8, i64 0}
!111 = !{!"_ZTSN4llvh8ArrayRefIjEE", !110, i64 0, !10, i64 8}
!112 = !{!"_ZTSN4llvh8ArrayRefIhEE", !13, i64 0, !10, i64 8}
!113 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !8, i64 0}
!114 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !113, i64 0, !10, i64 8}
!115 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !8, i64 0}
!116 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !115, i64 0, !10, i64 8}
!117 = !{!"p1 _ZTSSt4pairIjjE", !8, i64 0}
!118 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !117, i64 0, !10, i64 8}
!119 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !8, i64 0}
!120 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !5, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !109, i64 24, !111, i64 40, !112, i64 56, !112, i64 72, !112, i64 88, !112, i64 104, !114, i64 120, !112, i64 136, !116, i64 152, !112, i64 168, !6, i64 184, !118, i64 192, !118, i64 208, !118, i64 224, !119, i64 240, !16, i64 248}
!121 = !{!120, !6, i64 12}
!122 = !{!24, !23, i64 8}
!123 = !{!"bool", !5, i64 0}
!124 = !{!"p1 long", !8, i64 0}
!125 = !{!"_ZTSSt13__atomic_baseIbE", !123, i64 0}
!126 = !{!"_ZTSSt6atomicIbE", !125, i64 0}
!127 = !{!"p1 _ZTSN6hermes2vm15IdentifierTable11LookupEntryE", !8, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!"_ZTSN4llvh8ArrayRefImEE", !124, i64 0, !10, i64 8}
!130 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !129, i64 0}
!131 = !{!"_ZTSN4llvh9BitVectorE", !130, i64 0, !6, i64 16}
!132 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !5, i64 0}
!133 = !{!"_ZTSN6hermes12CompactArrayE", !6, i64 0, !132, i64 4, !13, i64 8}
!134 = !{!"_ZTSSt10_Head_baseILm0EPKN6hermes6BufferELb0EE", !80, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6hermes6BufferESt14default_deleteIS2_EEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJPKN6hermes6BufferESt14default_deleteIS2_EEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIKN6hermes6BufferESt14default_deleteIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt15__uniq_ptr_dataIKN6hermes6BufferESt14default_deleteIS2_ELb1ELb1EE", !137, i64 0}
!139 = !{!"_ZTSSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EE", !138, i64 0}
!140 = !{!"p1 _ZTSN6hermes3hbc15SmallFuncHeaderE", !8, i64 0}
!141 = !{!"p1 _ZTSN6hermes3hbc21SmallStringTableEntryE", !8, i64 0}
!142 = !{!"p1 _ZTSN6hermes3hbc24OverflowStringTableEntryE", !8, i64 0}
!143 = !{!"_ZTSN4llvh8ArrayRefIN6hermes3hbc24OverflowStringTableEntryEEE", !142, i64 0, !10, i64 8}
!144 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !5, i64 0}
!145 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !144, i64 0}
!146 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !145, i64 0, !123, i64 8}
!147 = !{!"_ZTSN4llvh8OptionalISt6threadEE", !146, i64 0}
!148 = !{!"p1 _ZTSN6hermes17PageAccessTrackerE", !8, i64 0}
!149 = !{!"_ZTSSt10_Head_baseILm0EPVN6hermes17PageAccessTrackerELb0EE", !148, i64 0}
!150 = !{!"_ZTSSt11_Tuple_implILm0EJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !149, i64 0}
!151 = !{!"_ZTSSt5tupleIJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !150, i64 0}
!152 = !{!"_ZTSSt15__uniq_ptr_implIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !151, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_dataIVN6hermes17PageAccessTrackerESt14default_deleteIS2_ELb1ELb1EE", !152, i64 0}
!154 = !{!"_ZTSSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !153, i64 0}
!155 = !{!"_ZTSN6hermes3hbc20BCProviderFromBufferE", !120, i64 0, !139, i64 280, !13, i64 288, !140, i64 296, !141, i64 304, !143, i64 312, !6, i64 328, !147, i64 336, !126, i64 352, !154, i64 360, !13, i64 368}
!156 = !{!155, !141, i64 304}
!157 = !{!143, !142, i64 0}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !{!"llvm.loop.unroll.runtime.disable"}
!160 = !{!46, !6, i64 16}
!161 = !{!44, !6, i64 8}
!162 = !{!44, !6, i64 16}
!163 = !{!"branch_weights", i32 1999, i32 1}
!164 = !{!"branch_weights", i32 1, i32 0}
!165 = !{!43, !43, i64 0}
!166 = !{!44, !6, i64 12}
!167 = distinct !{!167, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!168 = distinct !{!168, !167, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!169 = distinct !{!169, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!170 = distinct !{!170, !169, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!171 = !{!9, !9, i64 0}
!172 = !{!168}
!173 = !{!170}
!174 = !{!170, !168}
!175 = !{!47, !6, i64 136}
!176 = !{!20, !19, i64 0}
!177 = !{!20, !19, i64 8}
!178 = distinct !{!178, !59}
!179 = distinct !{!179, !59}
!180 = !{!"_ZTSN6hermes16StringTableEntryE", !6, i64 0, !6, i64 4}
!181 = !{!180, !6, i64 4}
!182 = !{!180, !6, i64 0}
!183 = !{!"char16_t", !5, i64 0}
!184 = !{!183, !183, i64 0}
!185 = distinct !{null, null, null}
!186 = distinct !{!186, !105}
!187 = distinct !{null, null, null, null, null}
!188 = !{!8, !8, i64 0}
!189 = distinct !{!189, !105}
!190 = distinct !{!190, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_"}
!191 = distinct !{!191, !190, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!192 = distinct !{!192, !190, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!193 = distinct !{!193, !105, !158, !159}
!194 = distinct !{!194, !105, !158}
!195 = !{!65, !65, i64 0}
!196 = !{!73, !62, i64 8}
!197 = !{!66, !6, i64 12}
!198 = !{!66, !6, i64 8}
!199 = !{!120, !6, i64 20}
!200 = !{!"_ZTSN6hermes2vm6GCBase11GCCallbacksE"}
!201 = !{!"_ZTSN6hermes2vm11HermesValueE", !10, i64 0}
!202 = !{!"_ZTSN6hermes2vm17PinnedHermesValueE", !201, i64 0}
!203 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !8, i64 0}
!204 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEvEE", !66, i64 0}
!205 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EEE", !204, i64 0}
!206 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEE", !205, i64 0}
!207 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !5, i64 0}
!208 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !206, i64 0, !207, i64 16}
!209 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!210 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !8, i64 0}
!211 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !210, i64 0}
!212 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !211, i64 0}
!213 = !{!"_ZTSSt5tupleIJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !212, i64 0}
!214 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !213, i64 0}
!215 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_ELb1ELb1EE", !214, i64 0}
!216 = !{!"_ZTSSt10unique_ptrIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !215, i64 0}
!217 = !{!"p1 _ZTSN6hermes2vm16TimeLimitMonitorE", !8, i64 0}
!218 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EE", !217, i64 0, !40, i64 8}
!219 = !{!"_ZTSSt10shared_ptrIN6hermes2vm16TimeLimitMonitorEE", !218, i64 0}
!220 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!221 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !8, i64 0}
!222 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !8, i64 0}
!223 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !85, i64 0}
!224 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!225 = !{!"_ZTSSt14_Function_base", !5, i64 0, !8, i64 16}
!226 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !225, i64 0, !8, i64 24}
!227 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !8, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!229 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !228, i64 0}
!230 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !229, i64 0}
!231 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !230, i64 0}
!232 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !10, i64 0}
!233 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !232, i64 0}
!234 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !10, i64 0}
!235 = !{!"double", !5, i64 0}
!236 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !6, i64 0, !235, i64 8, !235, i64 16, !235, i64 24, !235, i64 32}
!237 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !235, i64 24}
!238 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !6, i64 0, !236, i64 8, !236, i64 48, !6, i64 88, !237, i64 96, !237, i64 128}
!239 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !8, i64 0}
!240 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !235, i64 0, !235, i64 8}
!241 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !8, i64 0}
!242 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !239, i64 0, !10, i64 8, !240, i64 16, !241, i64 32, !235, i64 40}
!243 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE5ChunkE", !8, i64 0}
!244 = !{!"p1 _ZTSN6hermes2vm16WeakMapEntrySlotE", !8, i64 0}
!245 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EEE", !243, i64 0, !10, i64 8, !240, i64 16, !244, i64 32, !235, i64 40}
!246 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!247 = !{!"_ZTSSt15recursive_mutex", !246, i64 0}
!248 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjjEE", !8, i64 0}
!249 = !{!"_ZTSN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEE", !248, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!250 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKvjEE", !8, i64 0}
!251 = !{!"_ZTSN4llvh8DenseMapIPKvjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !250, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!252 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNS_11SmallVectorIjLj1EEEEE", !8, i64 0}
!253 = !{!"_ZTSN4llvh8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEE", !252, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!254 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIdjEE", !8, i64 0}
!255 = !{!"_ZTSN4llvh8DenseMapIdjN6hermes2vm6GCBase9IDTracker16DoubleComparatorENS_6detail12DenseMapPairIdjEEEE", !254, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!256 = !{!"_ZTSN6hermes2vm6GCBase9IDTrackerE", !247, i64 0, !6, i64 40, !249, i64 48, !249, i64 72, !251, i64 96, !253, i64 120, !249, i64 144, !255, i64 168, !123, i64 192}
!257 = !{!"_ZTSSt8functionIFvRN6hermes2vm17GCTripwireContextEEE", !225, i64 0, !8, i64 24}
!258 = !{!"_ZTSN6hermes2vm6GCBaseE", !6, i64 8, !10, i64 16, !220, i64 24, !221, i64 32, !222, i64 40, !223, i64 48, !224, i64 64, !226, i64 72, !231, i64 104, !123, i64 128, !123, i64 129, !123, i64 130, !123, i64 131, !233, i64 136, !234, i64 144, !10, i64 152, !10, i64 160, !238, i64 168, !16, i64 328, !242, i64 360, !245, i64 408, !256, i64 456, !5, i64 656, !257, i64 680, !6, i64 712, !123, i64 716}
!259 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!260 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !259, i64 0}
!261 = !{!"_ZTSSt12_Vector_baseImSaImEE", !260, i64 0}
!262 = !{!"_ZTSSt6vectorImSaImEE", !261, i64 0}
!263 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !8, i64 0}
!264 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm15StorageProviderELN9__gnu_cxx12_Lock_policyE2EE", !263, i64 0, !40, i64 8}
!265 = !{!"_ZTSSt10shared_ptrIN6hermes2vm15StorageProviderEE", !264, i64 0}
!266 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !13, i64 0, !263, i64 8}
!267 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !266, i64 0, !13, i64 16, !13, i64 24}
!268 = !{!"_ZTSN6hermes2vm7HadesGC11HeapSegmentE", !267, i64 0}
!269 = !{!"_ZTSN6hermes2vm27AssignableCompressedPointerE", !29, i64 0}
!270 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !32, i64 0}
!271 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !270, i64 0, !270, i64 8, !270, i64 16}
!272 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE12_Vector_implE", !271, i64 0}
!273 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE", !272, i64 0}
!274 = !{!"_ZTSSt6vectorIPN6hermes2vm6GCCellESaIS3_EE", !273, i64 0}
!275 = !{!"p1 _ZTSN6hermes2vm7HadesGCE", !8, i64 0}
!276 = !{!"p2 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !32, i64 0}
!277 = !{!"p1 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !8, i64 0}
!278 = !{!"_ZTSSt15_Deque_iteratorIN6hermes2vm7HadesGC11HeapSegmentERS3_PS3_E", !277, i64 0, !277, i64 8, !277, i64 16, !276, i64 24}
!279 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE16_Deque_impl_dataE", !276, i64 0, !10, i64 8, !278, i64 16, !278, i64 48}
!280 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE11_Deque_implE", !279, i64 0}
!281 = !{!"_ZTSSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !280, i64 0}
!282 = !{!"_ZTSSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !281, i64 0}
!283 = !{!"_ZTSSt5arrayImLm5EE", !5, i64 0}
!284 = !{!"_ZTSN6hermes8BitArrayILm267ELm8EEE", !283, i64 0}
!285 = !{!"p2 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !32, i64 0}
!286 = !{!"p1 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !8, i64 0}
!287 = !{!"_ZTSSt15_Deque_iteratorISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EERS6_PS6_E", !286, i64 0, !286, i64 8, !286, i64 16, !285, i64 24}
!288 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE16_Deque_impl_dataE", !285, i64 0, !10, i64 8, !287, i64 16, !287, i64 48}
!289 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE11_Deque_implE", !288, i64 0}
!290 = !{!"_ZTSSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !289, i64 0}
!291 = !{!"_ZTSSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !290, i64 0}
!292 = !{!"_ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !5, i64 0}
!293 = !{!"_ZTSN6hermes2vm7HadesGC6OldGen13SweepIteratorE", !10, i64 0, !10, i64 8, !10, i64 16}
!294 = !{!"_ZTSN6hermes2vm7HadesGC6OldGenE", !275, i64 0, !282, i64 8, !240, i64 88, !10, i64 104, !10, i64 112, !284, i64 120, !291, i64 160, !292, i64 240, !293, i64 6648}
!295 = !{!"_ZTSSt9__condvar", !5, i64 0}
!296 = !{!"_ZTSSt18condition_variable", !295, i64 0}
!297 = !{!"p1 _ZTSSt5mutex", !8, i64 0}
!298 = !{!"_ZTSSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EE", !297, i64 0, !40, i64 8}
!299 = !{!"_ZTSSt10shared_ptrISt5mutexE", !298, i64 0}
!300 = !{!"_ZTSNSt3_V222condition_variable_anyE", !296, i64 0, !299, i64 48}
!301 = !{!"_ZTSN6hermes2vm7HadesGC5PhaseE", !5, i64 0}
!302 = !{!"p1 _ZTSN6hermes2vm7HadesGC12MarkAcceptorE", !8, i64 0}
!303 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC12MarkAcceptorELb0EE", !302, i64 0}
!304 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EEE", !303, i64 0}
!305 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EEE", !304, i64 0}
!306 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EE", !305, i64 0}
!307 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_ELb1ELb1EE", !306, i64 0}
!308 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EE", !307, i64 0}
!309 = !{!"p1 _ZTSN6hermes2vm7HadesGC8ExecutorE", !8, i64 0}
!310 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC8ExecutorELb0EE", !309, i64 0}
!311 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !310, i64 0}
!312 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !311, i64 0}
!313 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EE", !312, i64 0}
!314 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_ELb1ELb1EE", !313, i64 0}
!315 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EE", !314, i64 0}
!316 = !{!"p1 _ZTSN6hermes2vm7HadesGC15CollectionStatsE", !8, i64 0}
!317 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC15CollectionStatsELb0EE", !316, i64 0}
!318 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !317, i64 0}
!319 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !318, i64 0}
!320 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !319, i64 0}
!321 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_ELb1ELb1EE", !320, i64 0}
!322 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !321, i64 0}
!323 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm7HadesGC11HeapSegmentELN9__gnu_cxx12_Lock_policyE2EE", !277, i64 0, !40, i64 8}
!324 = !{!"_ZTSSt10shared_ptrIN6hermes2vm7HadesGC11HeapSegmentEE", !323, i64 0}
!325 = !{!"_ZTSN6hermes2vm7HadesGC14CompacteeStateE", !8, i64 0, !269, i64 8, !8, i64 16, !269, i64 24, !324, i64 32}
!326 = !{!"_ZTSN6hermes2vm7HadesGC9NativeIDsE", !6, i64 0, !6, i64 4}
!327 = !{!"_ZTSN6hermes2vm7HadesGCE", !258, i64 0, !10, i64 720, !10, i64 728, !262, i64 736, !265, i64 760, !268, i64 776, !269, i64 808, !274, i64 816, !235, i64 840, !294, i64 848, !247, i64 7520, !126, i64 7560, !300, i64 7568, !301, i64 7632, !123, i64 7633, !308, i64 7640, !315, i64 7648, !123, i64 7656, !123, i64 7657, !123, i64 7658, !123, i64 7659, !235, i64 7664, !240, i64 7672, !322, i64 7688, !322, i64 7696, !238, i64 7704, !238, i64 7864, !240, i64 8024, !10, i64 8040, !325, i64 8048, !10, i64 8096, !326, i64 8104}
!328 = !{!"_ZTSN6hermes2vm9GCStorageE", !327, i64 0}
!329 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !8, i64 0}
!330 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !329, i64 0, !329, i64 8, !329, i64 16}
!331 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE12_Vector_implE", !330, i64 0}
!332 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !331, i64 0}
!333 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !332, i64 0}
!334 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !8, i64 0}
!335 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !334, i64 0, !334, i64 8, !334, i64 16}
!336 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE12_Vector_implE", !335, i64 0}
!337 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !336, i64 0}
!338 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !337, i64 0}
!339 = !{!"p1 _ZTSSt8functionIFvRN6hermes2vm12HeapSnapshotEEE", !8, i64 0}
!340 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE17_Vector_impl_dataE", !339, i64 0, !339, i64 8, !339, i64 16}
!341 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE12_Vector_implE", !340, i64 0}
!342 = !{!"_ZTSSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !341, i64 0}
!343 = !{!"_ZTSSt6vectorISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !342, i64 0}
!344 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE12_Vector_implE", !128, i64 0}
!345 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !344, i64 0}
!346 = !{!"_ZTSSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !345, i64 0}
!347 = !{!"_ZTSN6hermes2vm15IdentifierTable18ConservativeVectorINS1_11LookupEntryEEE", !346, i64 0}
!348 = !{!"_ZTSN6hermes12CompactTableE", !133, i64 0}
!349 = !{!"p1 _ZTSN6hermes2vm15IdentifierTableE", !8, i64 0}
!350 = !{!"_ZTSN6hermes2vm6detail19IdentifierHashTableE", !348, i64 0, !349, i64 16, !6, i64 24, !6, i64 28}
!351 = !{!"_ZTSN6hermes2vm15IdentifierTableE", !347, i64 0, !131, i64 24, !350, i64 48, !6, i64 80}
!352 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIN6hermes2vm8SymbolIDEEE", !8, i64 0}
!353 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !352, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!354 = !{!"_ZTSN4llvh6detail12DenseSetImplIN6hermes2vm8SymbolIDENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_EE", !353, i64 0}
!355 = !{!"_ZTSN4llvh8DenseSetIN6hermes2vm8SymbolIDENS_12DenseMapInfoIS3_EEEE", !354, i64 0}
!356 = !{!"_ZTSN6hermes2vm14SymbolRegistryE", !202, i64 0, !355, i64 8}
!357 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !8, i64 0}
!358 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm12JSLibStorageELb0EE", !357, i64 0}
!359 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !358, i64 0}
!360 = !{!"_ZTSSt5tupleIJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !359, i64 0}
!361 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !360, i64 0}
!362 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm12JSLibStorageESt14default_deleteIS2_ELb1ELb1EE", !361, i64 0}
!363 = !{!"_ZTSSt10unique_ptrIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !362, i64 0}
!364 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !21, i64 0}
!365 = !{!"_ZTSN4llvh12simple_ilistIN6hermes2vm13RuntimeModuleEJEEE", !364, i64 0}
!366 = !{!"_ZTSN6hermes2vm14CrashTraceNoopE"}
!367 = !{!"_ZTSN4llvh8ArrayRefIN6hermes2vm17PinnedHermesValueEEE", !72, i64 0, !10, i64 8}
!368 = !{!"_ZTSN4llvh15MutableArrayRefIN6hermes2vm17PinnedHermesValueEEE", !367, i64 0}
!369 = !{!"_ZTSN6hermes2vm14StackFramePtrTILb0EEE", !72, i64 0}
!370 = !{!"_ZTSN6hermes18StackOverflowGuardE", !10, i64 0, !10, i64 8}
!371 = !{!"_ZTSSt5arrayIN6hermes2vm17PinnedHermesValueELm8EE", !5, i64 0}
!372 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!373 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE12_Vector_implE", !372, i64 0}
!374 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE", !373, i64 0}
!375 = !{!"_ZTSSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE", !374, i64 0}
!376 = !{!"p2 _ZTSN6hermes2vm8JSObjectE", !32, i64 0}
!377 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE17_Vector_impl_dataE", !376, i64 0, !376, i64 8, !376, i64 16}
!378 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE12_Vector_implE", !377, i64 0}
!379 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE", !378, i64 0}
!380 = !{!"_ZTSSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE", !379, i64 0}
!381 = !{!"p2 _ZTSN6hermes2vm8CallableE", !32, i64 0}
!382 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE17_Vector_impl_dataE", !381, i64 0, !381, i64 8, !381, i64 16}
!383 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE12_Vector_implE", !382, i64 0}
!384 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE", !383, i64 0}
!385 = !{!"_ZTSSt6vectorIPN6hermes2vm8CallableESaIS3_EE", !384, i64 0}
!386 = !{!"any p3 pointer", !32, i64 0}
!387 = !{!"p3 _ZTSN6hermes2vm8CallableE", !386, i64 0}
!388 = !{!"_ZTSSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_E", !381, i64 0, !381, i64 8, !381, i64 16, !387, i64 24}
!389 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE16_Deque_impl_dataE", !387, i64 0, !10, i64 8, !388, i64 16, !388, i64 48}
!390 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE11_Deque_implE", !389, i64 0}
!391 = !{!"_ZTSSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE", !390, i64 0}
!392 = !{!"_ZTSSt5dequeIPN6hermes2vm8CallableESaIS3_EE", !391, i64 0}
!393 = !{!"p1 _ZTSN6hermes2vm20CodeCoverageProfilerE", !8, i64 0}
!394 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm20CodeCoverageProfilerELb0EE", !393, i64 0}
!395 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !394, i64 0}
!396 = !{!"_ZTSSt5tupleIJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !395, i64 0}
!397 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !396, i64 0}
!398 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_ELb1ELb1EE", !397, i64 0}
!399 = !{!"_ZTSSt10unique_ptrIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !398, i64 0}
!400 = !{!"_ZTSSt13__atomic_baseIhE", !5, i64 0}
!401 = !{!"_ZTSSt6atomicIhE", !400, i64 0}
!402 = !{!"p1 _ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !8, i64 0}
!403 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE17_Vector_impl_dataE", !402, i64 0, !402, i64 8, !402, i64 16}
!404 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_Vector_implE", !403, i64 0}
!405 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !404, i64 0}
!406 = !{!"_ZTSSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !405, i64 0}
!407 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !225, i64 0, !8, i64 24}
!408 = !{!"p1 _ZTSN6hermes4inst4InstE", !8, i64 0}
!409 = !{!"_ZTSN6hermes2vm7RuntimeE", !63, i64 0, !200, i64 16, !202, i64 24, !202, i64 32, !202, i64 40, !202, i64 48, !202, i64 56, !202, i64 64, !202, i64 72, !202, i64 80, !202, i64 88, !202, i64 96, !202, i64 104, !202, i64 112, !202, i64 120, !202, i64 128, !202, i64 136, !202, i64 144, !202, i64 152, !202, i64 160, !202, i64 168, !202, i64 176, !202, i64 184, !202, i64 192, !202, i64 200, !202, i64 208, !202, i64 216, !202, i64 224, !202, i64 232, !202, i64 240, !202, i64 248, !202, i64 256, !202, i64 264, !202, i64 272, !202, i64 280, !202, i64 288, !202, i64 296, !202, i64 304, !202, i64 312, !202, i64 320, !202, i64 328, !202, i64 336, !202, i64 344, !202, i64 352, !202, i64 360, !202, i64 368, !202, i64 376, !202, i64 384, !202, i64 392, !202, i64 400, !202, i64 408, !202, i64 416, !202, i64 424, !202, i64 432, !202, i64 440, !202, i64 448, !202, i64 456, !202, i64 464, !202, i64 472, !202, i64 480, !202, i64 488, !202, i64 496, !202, i64 504, !202, i64 512, !202, i64 520, !202, i64 528, !202, i64 536, !202, i64 544, !202, i64 552, !202, i64 560, !202, i64 568, !202, i64 576, !202, i64 584, !202, i64 592, !202, i64 600, !202, i64 608, !202, i64 616, !202, i64 624, !202, i64 632, !202, i64 640, !202, i64 648, !202, i64 656, !202, i64 664, !202, i64 672, !202, i64 680, !202, i64 688, !202, i64 696, !202, i64 704, !202, i64 712, !202, i64 720, !202, i64 728, !202, i64 736, !203, i64 744, !203, i64 752, !208, i64 760, !123, i64 824, !123, i64 824, !123, i64 824, !123, i64 824, !123, i64 824, !209, i64 825, !216, i64 832, !219, i64 840, !328, i64 856, !333, i64 8968, !338, i64 8992, !343, i64 9016, !343, i64 9040, !123, i64 9064, !123, i64 9065, !123, i64 9066, !123, i64 9067, !123, i64 9068, !123, i64 9069, !123, i64 9070, !5, i64 9071, !123, i64 9072, !123, i64 9073, !6, i64 9076, !233, i64 9080, !5, i64 9088, !235, i64 9224, !6, i64 9232, !351, i64 9240, !356, i64 9328, !363, i64 9360, !99, i64 9368, !99, i64 9376, !55, i64 9384, !365, i64 9392, !366, i64 9408, !368, i64 9416, !72, i64 9432, !72, i64 9440, !72, i64 9448, !223, i64 9456, !369, i64 9472, !370, i64 9480, !371, i64 9496, !5, i64 9560, !375, i64 9568, !380, i64 9592, !385, i64 9616, !123, i64 9640, !392, i64 9648, !6, i64 9728, !6, i64 9732, !399, i64 9736, !401, i64 9744, !406, i64 9752, !407, i64 9776, !408, i64 9808}
!410 = !{!409, !6, i64 9076}
!411 = !{!108, !108, i64 0}
!412 = !{!110, !110, i64 0}
!413 = !{!191}
!414 = !{!192}
!415 = !{!155, !140, i64 296}
!416 = !{!155, !13, i64 288}
!417 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29, !5, i64 30}
!418 = !{!417, !6, i64 0}
!419 = distinct !{!419, !"_ZSt19__relocate_object_aIN6hermes2vm15IdentifierTable11LookupEntryES3_SaIS3_EEvPT_PT0_RT1_"}
!420 = distinct !{!420, !419, !"_ZSt19__relocate_object_aIN6hermes2vm15IdentifierTable11LookupEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!421 = distinct !{!421, !419, !"_ZSt19__relocate_object_aIN6hermes2vm15IdentifierTable11LookupEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!422 = distinct !{!422, !105}
!423 = !{!128, !127, i64 16}
!424 = !{!128, !127, i64 0}
!425 = !{!128, !127, i64 8}
!426 = !{i64 0, i64 8, !12, i64 8, i64 4, !12, i64 12, i64 4, !7}
!427 = !{!421, !420}
!428 = !{!133, !6, i64 0}
!429 = !{!129, !10, i64 8}
!430 = !{!129, !124, i64 0}
!431 = !{!131, !6, i64 16}
!432 = !{!113, !113, i64 0}
!433 = !{!115, !115, i64 0}
!434 = distinct !{!434, !105}
!435 = distinct !{null}
!436 = !{!46, !6, i64 8}
!437 = !{!23, !23, i64 0}
!438 = distinct !{!438, !105}
!439 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!440 = !{!"_ZTSN6hermes2vm8SymbolIDE", !6, i64 0}
!441 = !{!"_ZTSN6hermes2vm10GCSymbolIDE", !440, i64 0}
!442 = !{!"_ZTSN6hermes2vm13PropertyFlagsE", !5, i64 0}
!443 = !{!"_ZTSN6hermes2vm10ClassFlagsE", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!444 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !29, i64 0}
!445 = !{!"_ZTSN6hermes2vm9GCPointerINS0_15DictPropertyMapEEE", !444, i64 0}
!446 = !{!"_ZTSN6hermes2vm6detail10TransitionE", !440, i64 0, !442, i64 4}
!447 = !{!"_ZTSN6hermes2vm6detail13TransitionMapE", !446, i64 0, !5, i64 8}
!448 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !444, i64 0}
!449 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE", !444, i64 0}
!450 = !{!"_ZTSN6hermes2vm11HiddenClassE", !439, i64 0, !441, i64 4, !442, i64 8, !443, i64 10, !6, i64 12, !445, i64 16, !447, i64 24, !448, i64 40, !449, i64 44}
!451 = !{!450, !6, i64 12}
!452 = distinct !{!452, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_"}
!453 = distinct !{!453, !452, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!454 = distinct !{!454, !452, !"_ZSt19__relocate_object_aIN6hermes2vm12RootSymbolIDES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!455 = distinct !{!455, !105, !158, !159}
!456 = distinct !{!456, !105, !158}
!457 = distinct !{!457, !59}
!458 = !{!453}
!459 = !{!454}
!460 = distinct !{!460, !105}
!461 = distinct !{null}
!462 = distinct !{!462, !105, !158, !159}
!463 = distinct !{!463, !105, !159, !158}
!464 = distinct !{!464, !105, !158, !159}
!465 = distinct !{!465, !105, !159, !158}
!466 = distinct !{!466, !105, !158, !159}
!467 = distinct !{!467, !105, !159, !158}
!468 = distinct !{!468, !105, !158, !159}
!469 = distinct !{!469, !105, !158}
!470 = distinct !{!470, !105, !158, !159}
!471 = distinct !{!471, !105, !159, !158}
!472 = distinct !{!472, !105, !158, !159}
!473 = distinct !{!473, !105, !159, !158}
!474 = distinct !{!474, !105, !158, !159}
!475 = distinct !{!475, !105, !158}
!476 = distinct !{!476, !105, !158, !159}
!477 = distinct !{!477, !105, !158}
!478 = distinct !{!478, !59}
!479 = distinct !{!479, !105}
!480 = distinct !{!480, !59}
!481 = distinct !{!481, !105}
end_hunk_3
