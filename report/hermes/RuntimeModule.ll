inline.NumInlined: 904
inline.NumDeleted: 514
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm13RuntimeModule28importStringIDMapMayAllocateEv:bb.a
  %i.bg = zext i32 %.159 to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 1            ; 5 uses
  %i.bj = icmp ugt i32 %i.bi, -16777217
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !63

bb.m:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  %i.bl = lshr i32 %i.bi, 1
  %i.bm = and i32 %i.bl, 8388607
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !396
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.bp, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !3
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
  %i.bu = zext i32 %.12258 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i30, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3  ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bx, align 8, !tbaa !68
  %i.by = icmp slt i32 %spec.select.i7.i, 0
  %i.bz = zext i32 %.sroa.0.0.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bz ; 4 uses
  br i1 %i.by, label %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i

_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit
  %i.cb = and i32 %.sink.i, 2147483647
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = load i8, ptr %i.at, align 8
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !76, !align !77 ; 4 uses
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.ch = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.cg, ptr %i.ca, i64 %i.cc, i32 noundef %i.bw) #17
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

bb.p:                                             ; preds = %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !78 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 208 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !91 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.cp = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %i.cf, ptr %i.ca, i64 %i.cc, i32 noundef %i.bw) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %bb.q, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, !prof !63

bb.q:                                             ; preds = %bb.p
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i: ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cq = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cs = zext i32 %i.cn to i64
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !92
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !91
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !94
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !81
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit
  %i.cy = load i8, ptr %i.at, align 8
  %i.cz = trunc i8 %i.cy to i1
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !76, !align !77 ; 4 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 9240
  %i.dc = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.db, ptr %i.ca, i64 %.sroa.3.0.insert.ext.i, i32 noundef %i.bw) #17
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

bb.s:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !78 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 208 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !91 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 9240
  %i.dk = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.dj, ptr noundef nonnull align 8 dereferenceable(9816) %i.da, ptr %i.ca, i64 %.sroa.3.0.insert.ext.i, i32 noundef %i.bw) #17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.dk, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i24.i, label %bb.t, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i, !prof !63

bb.t:                                             ; preds = %bb.s
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i: ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i.i26.i = load i64, ptr %i.dk, align 8, !tbaa !10
  %i.dl = trunc i64 %.sroa.0.0.copyload.i.i.i.i26.i to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.dn = zext i32 %i.di to i64
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !91
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !94
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !81
  br label %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit

_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit: ; preds = %bb.o, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, %bb.r, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i
  %.sroa.013.0.i27.sink.i = phi i32 [ %i.cq, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i ], [ %i.ch, %bb.o ], [ %i.dc, %bb.r ], [ %i.dl, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i25.i ]
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.bg
  store i32 %.sroa.013.0.i27.sink.i, ptr %i.du, align 4
  %i.dv = add i32 %.159, 1                        ; 2 uses
  %i.dw = add i32 %.12258, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, %i.bb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !397

.loopexit:                                        ; preds = %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit, %.preheader, %bb.l
  %.223 = phi i32 [ %.02163, %bb.l ], [ %.02163, %.preheader ], [ %i.bb, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ]
  %.2 = phi i32 [ %i.bc, %bb.l ], [ %.064, %.preheader ], [ %i.dv, %_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE.exit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.02462, i64 4 ; 2 uses
  %.not27 = icmp eq ptr %i.dx, %i.as
  br i1 %.not27, label %._crit_edge, label %bb.k

bb.u:                                             ; preds = %._crit_edge
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !67
  call void @_ZN6hermes3hbc20BCProviderFromBuffer23adviseStringTableRandomEv(ptr noundef nonnull align 8 dereferenceable(376) %i.dy) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.dz = icmp eq i32 %i.q, 0
  br i1 %i.dz, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !148 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116
  %.not.i.i37 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i.i37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 536870911, ptr %i.ea, align 4
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !148
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store ptr %i.ee, ptr %i.t, align 8, !tbaa !148
  br label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit

bb.y:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.r, align 8, !tbaa !96  ; 7 uses
  %i.eg = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
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
  %i.es = ptrtoaddr ptr %i.eq to i64
  %i.et = sub i64 %i.eg, %i.eh
  %i.eu = add i64 %i.et, -4                       ; 2 uses
  %i.ev = lshr i64 %i.eu, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eu, 44
  %i.ex = sub i64 %i.eh, %i.es
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ew, 9223372036854775800     ; 3 uses
  %i.ey = shl i64 %n.vec, 2                       ; 2 uses
  %i.ez = getelementptr i8, ptr %i.eq, i64 %i.ey  ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ef, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eq, i64 %i.fb ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.ef, i64 %i.fb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.fc = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep100, align 4, !alias.scope !401, !noalias !398
  %wide.load101 = load <4 x i32>, ptr %i.fc, align 4, !alias.scope !401, !noalias !398
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !398, !noalias !401
  store <4 x i32> %wide.load101, ptr %i.fd, align 4, !alias.scope !398, !noalias !401
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader103

.lr.ph.i.i.i.i.i.i.preheader103:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ez, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader103, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader103 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader103 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.ff = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !401, !noalias !398
  store i32 %i.ff, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !398, !noalias !401
  %i.fg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fg, %i.ea
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !406

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ez, %middle.block ], [ %i.fh, %.lr.ph.i.i.i.i.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ei) #19
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.eq, ptr %i.r, align 8, !tbaa !96
  store ptr %i.fi, ptr %i.t, align 8, !tbaa !148
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.fj, ptr %i.eb, align 8, !tbaa !116
  br label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fl = load i8, ptr %i.fk, align 8
  %i.fm = trunc i8 %i.fl to i1
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !76, !align !77 ; 4 uses
  br i1 %i.fm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 9240
  %i.fp = call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fo, ptr null, i64 0, i32 noundef 0) #17
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit

bb.ac:                                            ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !78 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 192 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !81
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 208 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !91 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 9240
  %i.fx = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fw, ptr noundef nonnull align 8 dereferenceable(9816) %i.fn, ptr null, i64 0, i32 noundef 0) #17 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.fx, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i38, label %bb.ad, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i, !prof !63

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i: ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.fx, align 8, !tbaa !10
  %i.fy = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  %i.ga = zext i32 %i.fv to i64
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !92
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !93
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  store i32 %i.fv, ptr %i.fu, align 8, !tbaa !91
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 200
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !94
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !81
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit

_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEjj.exit: ; preds = %bb.ab, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i
  %.sroa.013.0.i = phi i32 [ %i.fp, %bb.ab ], [ %i.fy, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i ]
  %i.gg = load ptr, ptr %i.r, align 8, !tbaa !96
  store i32 %.sroa.013.0.i, ptr %i.gg, align 4
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
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
  store ptr %i.q, ptr %i.g, align 8, !tbaa !122
  br label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm13RuntimeModule20importCJSModuleTableEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !76, !align !77 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125  ; 2 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d, !prof !126

bb.c:                                             ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !81
  store i64 %.0.i.i.i.i, ptr %i.n, align 8, !tbaa !10
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
  %i.s = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.l, i64 %.0.i.i.i.i) #17
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm13RuntimeModule28findCachedLiteralHiddenClassERNS0_7RuntimeEjj:bb.a
  %i.k = mul i32 %i.f, 37
  %i.l = add i32 %i.i, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.l, %i.k                ; 2 uses
  %i.m = zext i32 %.02744.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = icmp eq i32 %i.f, %i.o
  br i1 %i.p, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit, label %.lr.ph.i.i, !prof !434

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.w, %bb.d ], [ %i.o, %bb.c ]
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.c ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPKSB_.exit.i, label %bb.d, !prof !126

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add i32 %.02546.i.i, 1
  %i.t = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.t, %i.l                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.loopexit, label %.lr.ph.i.i, !prof !435, !llvm.loop !436

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
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125 ; 2 uses
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !nonnull !76, !align !77
  %i.am = or i64 %i.ai, -281474976710656          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 192 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.at = icmp ult ptr %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %bb.h, !prof !126

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !81
  store i64 %i.am, ptr %i.aq, align 8, !tbaa !10
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !437  ; 2 uses
  %i.d = icmp ult i32 %2, 16777216
  %i.e = icmp ult i32 %i.c, 256
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = shl nuw i32 %2, 8
  %i.i = or disjoint i32 %i.c, %i.h
  store i32 %i.i, ptr %i.a, align 4, !tbaa !3
  %i.j = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E16FindAndConstructEOj(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = ptrtoint ptr %3 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %i.k, align 4, !tbaa !3
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !432
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = add i64 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load i32, ptr %i.m, align 8, !tbaa !427
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 536870911, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.g, ptr %i.b, align 8, !tbaa !148
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !96   ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
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
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = sub i64 %i.i, %i.j
  %i.w = add i64 %i.v, -4                         ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %i.z = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.ae = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !alias.scope !453, !noalias !450
  %wide.load16 = load <4 x i32>, ptr %i.ae, align 4, !alias.scope !453, !noalias !450
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !450, !noalias !453
  store <4 x i32> %wide.load16, ptr %i.af, align 4, !alias.scope !450, !noalias !453
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.i.preheader18:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.ah = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !453, !noalias !450
  store i32 %i.ah, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !450, !noalias !453
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !456

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #19
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !96
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.d, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.am = tail call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef %1) #17 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 4 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 6 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !96
  %.not10.i.i = icmp samesign eq i64 %i.ao, 0
  br i1 %.not10.i.i, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.ar = icmp ult i64 %i.ao, 4
  br i1 %i.ar, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ao, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.an, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.as = load i8, ptr %.0811.i.i, align 1, !tbaa !12
  %i.at = sext i8 %i.as to i32
  %i.au = add i32 %.012.i.i, %i.at
  %i.av = mul i32 %i.au, 1025                     ; 2 uses
  %i.aw = lshr i32 %i.av, 6
  %i.ax = xor i32 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = sext i8 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = mul i32 %i.bb, 1025                     ; 2 uses
  %i.bd = lshr i32 %i.bc, 6
  %i.be = xor i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add i32 %i.be, %i.bh
  %i.bj = mul i32 %i.bi, 1025                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 6
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add i32 %i.bl, %i.bo
  %i.bq = mul i32 %i.bp, 1025                     ; 2 uses
  %i.br = lshr i32 %i.bq, 6
  %i.bs = xor i32 %i.br, %i.bq                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bs, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.an, %.lr.ph.i.i.preheader ], [ %i.bt, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.bz, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.ca, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bu = load i8, ptr %.0811.i.i.epil, align 1, !tbaa !12
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add i32 %.012.i.i.epil, %i.bv
  %i.bx = mul i32 %i.bw, 1025                     ; 2 uses
  %i.by = lshr i32 %i.bx, 6
  %i.bz = xor i32 %i.by, %i.bx                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !457

_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i: ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE9push_backEOS2_.exit ], [ %i.bs, %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph.i.i.epil ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = trunc i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !26, !nonnull !76, !align !77 ; 4 uses
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.ch = tail call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.cg, ptr %i.an, i64 %i.ao, i32 noundef %.0.lcssa.i.i) #17
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit

bb.g:                                             ; preds = %_ZN6hermes10hashStringIcEEjN4llvh8ArrayRefIT_EE.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !78 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 208 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !91 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 9240
  %i.cp = tail call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %i.cf, ptr %i.an, i64 %i.ao, i32 noundef %.0.lcssa.i.i) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %bb.h, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i, !prof !63

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cq = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cs = zext i32 %i.cn to i64
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !92
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !91
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !94
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !81
  br label %_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit

_ZN6hermes2vm13RuntimeModule20mapStringMayAllocateIcEENS0_8SymbolIDEN4llvh8ArrayRefIT_EEj.exit: ; preds = %bb.f, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i
  %.sroa.013.0.i.i = phi i32 [ %i.ch, %bb.f ], [ %i.cq, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit.i.i ]
  %i.cy = ptrtoint ptr %i.ap to i64
  %i.cz = ptrtoint ptr %i.aq to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 4294967295
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dd
  store i32 %.sroa.013.0.i.i, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 2
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = add i32 %i.dm, -1
  ret i32 %i.dn
}

declare { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = sub i64 %i.b, %i.c
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %_ZN6hermes14checkedMalloc2Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef 5) #17 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0
  %i.j = extractvalue { i32, ptr } %i.h, 1
  tail call void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717) %1, i32 %i.i, ptr %i.j) #18
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i:             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1) ; 2 uses
  %mul.val.i.i = shl nuw i64 %.sroa.speculated, 3
  %i.k = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i) #17 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %.idx.i = shl i64 %i.n, 3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.s = add i64 %.idx.i, %i.r
  %i.t = add i64 %i.r, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.t)
  %i.u = xor i64 %i.r, -1
  %i.v = add i64 %umax, %i.u                      ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  %i.y = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond9 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond9, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep6, align 8, !tbaa !65
  %wide.load7 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !65
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !65
  store <2 x ptr> %wide.load7, ptr %i.ae, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01011.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.012.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %.01011.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ag = load ptr, ptr %.01011.i, align 8, !tbaa !65
  store ptr %i.ag, ptr %.012.i, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %.01011.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.aj = icmp ult ptr %i.ah, %i.o
  br i1 %i.aj, label %.lr.ph.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, !llvm.loop !459

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN6hermes14checkedMalloc2Emm.exit.i
  tail call void @free(ptr noundef %i.l) #17
  store ptr %i.k, ptr %0, align 8, !tbaa !64
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !62
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717), i32, ptr) local_unnamed_addr #9

declare { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #9

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !460
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !460
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN6hermes2vm6detail19IdentifierHashTable13growAndRehashEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #3

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr, i64, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i32 noundef) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr, i64, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm12RootSymbolIDESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 18 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not49 = icmp ult i64 %i.h, %2
  br i1 %.not49, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -4                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not7.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 4611686018427387903
  %i.p = and i64 %i.o, 4611686018427387903        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check149 = icmp samesign ult i64 %i.p, 7
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.i.i.preheader234, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec152 = and i64 %i.q, 9223372036854775800   ; 3 uses
  %i.r = shl i64 %n.vec152, 2                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph150
  %index154 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.u = shl i64 %index154, 2                     ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4
  %wide.load158 = load <4 x i32>, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4
  store <4 x i32> %wide.load158, ptr %i.w, align 4
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.x, label %middle.block160, label %vector.body153, !llvm.loop !461

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.q, %n.vec152
  br i1 %cmp.n161, label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.preheader234:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block160
  %.09.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block160 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block160 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  %i.y = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i32 %i.y, ptr %.09.i.i.i.i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !462

_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block160
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !148
  br label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !148
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = sub i64 %i.ad, %i.j                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !126

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %1, i64 %i.ae, i1 false)
  br label %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aj = icmp eq i64 %i.ae, 4
  br i1 %i.aj, label %bb.g, label %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.al = load i32, ptr %1, align 4
  store i32 %i.al, ptr %i.ak, align 4
  br label %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.an, 28
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit
  %n.vec168 = and i64 %i.ap, 9223372036854775800  ; 3 uses
  %i.aq = shl i64 %n.vec168, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert169 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat170 = shufflevector <4 x i32> %broadcast.splatinsert169, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph166
  %index172 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body171 ] ; 2 uses
  %i.as = shl i64 %index172, 2
  %next.gep173 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x i32> %broadcast.splat170, ptr %next.gep173, align 4
  store <4 x i32> %broadcast.splat170, ptr %i.at, align 4
  %index.next174 = add nuw i64 %index172, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next174, %n.vec168
  br i1 %i.au, label %middle.block175, label %vector.body171, !llvm.loop !463

middle.block175:                                  ; preds = %vector.body171
  %cmp.n176 = icmp eq i64 %i.ap, %n.vec168
  br i1 %cmp.n176, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit, %middle.block175
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPN6hermes2vm12RootSymbolIDES3_ET0_T_S5_S4_.exit ], [ %i.ar, %middle.block175 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !464

bb.h:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader237, label %vector.ph

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
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader237

.lr.ph.i.i.i.i.preheader237:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader237, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader237 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader237 ]
  store i32 %i.i, ptr %.09.i.i.i.i, align 4
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !466

_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.h
  %i.bf = phi ptr [ %i.d, %bb.h ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !148
  %.not7.i.i.i.i.i50 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i50, label %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread, label %.lr.ph.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = sub i64 %i.f, %i.j
  %i.bi = add i64 %i.bh, -4                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.bi, 44
  %i.bl = sub i64 %i.j, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check120, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i51.preheader236, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %n.vec123 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bm = shl i64 %n.vec123, 2                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body124 ] ; 2 uses
  %i.bp = shl i64 %index125, 2                    ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep127 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep127, align 4
  %wide.load128 = load <4 x i32>, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %next.gep126, i64 16
  store <4 x i32> %wide.load, ptr %next.gep126, align 4
  store <4 x i32> %wide.load128, ptr %i.br, align 4
  %index.next129 = add nuw i64 %index125, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next129, %n.vec123
  br i1 %i.bs, label %middle.block130, label %vector.body124, !llvm.loop !467

middle.block130:                                  ; preds = %vector.body124
  %cmp.n131 = icmp eq i64 %i.bk, %n.vec123
  br i1 %cmp.n131, label %.lr.ph.preheader.i.i.i58, label %.lr.ph.i.i.i.i.i51.preheader236

.lr.ph.i.i.i.i.i51.preheader236:                  ; preds = %.lr.ph.i.i.i.i.i51.preheader, %middle.block130
  %.09.i.i.i.i.i52.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.bn, %middle.block130 ]
  %.sroa.04.08.i.i.i.i.i53.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.bo, %middle.block130 ]
  br label %.lr.ph.i.i.i.i.i51

_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !148
  br label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader236, %.lr.ph.i.i.i.i.i51
  %.09.i.i.i.i.i52 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i51 ], [ %.09.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i51.preheader236 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i53 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i51 ], [ %.sroa.04.08.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i51.preheader236 ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.04.08.i.i.i.i.i53, align 4
  store i32 %i.bu, ptr %.09.i.i.i.i.i52, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i53, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i52, i64 4
  %.not.i.i.i.i.i54 = icmp eq ptr %i.bv, %i.d
  br i1 %.not.i.i.i.i.i54, label %.lr.ph.preheader.i.i.i58, label %.lr.ph.i.i.i.i.i51, !llvm.loop !468

.lr.ph.preheader.i.i.i58:                         ; preds = %.lr.ph.i.i.i.i.i51, %middle.block130
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8, !tbaa !148
  %i.bz = sub i64 %i.f, %i.j
  %i.ca = add i64 %i.bz, -4                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check135, label %.lr.ph.i.i.i60.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.preheader.i.i.i58
  %n.vec138 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec138, 2
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body141 ] ; 2 uses
  %i.cf = shl i64 %index142, 2
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x i32> %broadcast.splat140, ptr %next.gep143, align 4
  store <4 x i32> %broadcast.splat140, ptr %i.cg, align 4
  %index.next144 = add nuw i64 %index142, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.ch, label %middle.block145, label %vector.body141, !llvm.loop !469

middle.block145:                                  ; preds = %vector.body141
  %cmp.n146 = icmp eq i64 %i.cc, %n.vec138
  br i1 %cmp.n146, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i60.preheader

.lr.ph.i.i.i60.preheader:                         ; preds = %.lr.ph.preheader.i.i.i58, %middle.block145
  %.06.i.i.i61.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i58 ], [ %i.ce, %middle.block145 ]
  br label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %.lr.ph.i.i.i60.preheader, %.lr.ph.i.i.i60
  %.06.i.i.i61 = phi ptr [ %i.ci, %.lr.ph.i.i.i60 ], [ %.06.i.i.i61.ph, %.lr.ph.i.i.i60.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i61, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 4 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i62, label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i60, !llvm.loop !470

bb.i:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !96    ; 7 uses
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
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %.pre.i.i.i.i66 = load i32, ptr %3, align 4     ; 2 uses
  %min.iters.check179 = icmp ult i64 %2, 8
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i67.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.preheader.i.i.i.i65
  %n.vec182 = and i64 %2, -8                      ; 3 uses
  %i.da = shl i64 %n.vec182, 2
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = and i64 %2, 7
  %broadcast.splatinsert183 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i66, i64 0
  %broadcast.splat184 = shufflevector <4 x i32> %broadcast.splatinsert183, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph180
  %index186 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body185 ] ; 2 uses
  %i.dd = shl i64 %index186, 2
  %next.gep187 = getelementptr i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep187, i64 16
  store <4 x i32> %broadcast.splat184, ptr %next.gep187, align 4
  store <4 x i32> %broadcast.splat184, ptr %i.de, align 4
  %index.next188 = add nuw i64 %index186, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next188, %n.vec182
  br i1 %i.df, label %middle.block189, label %vector.body185, !llvm.loop !471

middle.block189:                                  ; preds = %vector.body185
  %cmp.n190 = icmp eq i64 %2, %n.vec182
  br i1 %cmp.n190, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67.preheader

.lr.ph.i.i.i.i67.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i65, %middle.block189
  %.09.i.i.i.i68.ph = phi ptr [ %i.cz, %.lr.ph.preheader.i.i.i.i65 ], [ %i.db, %middle.block189 ]
  %.068.i.i.i.i69.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i65 ], [ %i.dc, %middle.block189 ]
  br label %.lr.ph.i.i.i.i67

.lr.ph.i.i.i.i67:                                 ; preds = %.lr.ph.i.i.i.i67.preheader, %.lr.ph.i.i.i.i67
  %.09.i.i.i.i68 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i67 ], [ %.09.i.i.i.i68.ph, %.lr.ph.i.i.i.i67.preheader ] ; 2 uses
  %.068.i.i.i.i69 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i67 ], [ %.068.i.i.i.i69.ph, %.lr.ph.i.i.i.i67.preheader ]
  store i32 %.pre.i.i.i.i66, ptr %.09.i.i.i.i68, align 4
  %i.dg = add i64 %.068.i.i.i.i69, -1             ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i68, i64 4
  %.not.i.i.i.i70 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i70, label %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72, label %.lr.ph.i.i.i.i67, !llvm.loop !472

_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72: ; preds = %.lr.ph.i.i.i.i67, %middle.block189
  %.not7.i.i.i.i.i73 = icmp eq ptr %i.cj, %1
  br i1 %.not7.i.i.i.i.i73, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i74.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72
  %i.di = sub i64 %i.ct, %i.ck
  %i.dj = add i64 %i.di, -4                       ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.dj, 44
  %i.dm = sub i64 %i.ck, %i.cy
  %diff.check194 = icmp ugt i64 %i.dm, -32
  %or.cond230 = or i1 %min.iters.check196, %diff.check194
  br i1 %or.cond230, label %.lr.ph.i.i.i.i.i74.preheader232, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.i.i.i.i.i74.preheader
  %n.vec199 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dn = shl i64 %n.vec199, 2                    ; 2 uses
  %i.do = getelementptr i8, ptr %i.cx, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cj, i64 %i.dn
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.dq = shl i64 %index201, 2                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.cx, i64 %i.dq ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.cj, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load204 = load <4 x i32>, ptr %next.gep203, align 4
  %wide.load205 = load <4 x i32>, ptr %i.dr, align 4
  %i.ds = getelementptr i8, ptr %next.gep202, i64 16
  store <4 x i32> %wide.load204, ptr %next.gep202, align 4
  store <4 x i32> %wide.load205, ptr %i.ds, align 4
  %index.next206 = add nuw i64 %index201, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.dt, label %middle.block207, label %vector.body200, !llvm.loop !473

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.dl, %n.vec199
  br i1 %cmp.n208, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74.preheader232

.lr.ph.i.i.i.i.i74.preheader232:                  ; preds = %.lr.ph.i.i.i.i.i74.preheader, %middle.block207
  %.09.i.i.i.i.i75.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i74.preheader ], [ %i.do, %middle.block207 ]
  %.sroa.04.08.i.i.i.i.i76.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i74.preheader ], [ %i.dp, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i74

.lr.ph.i.i.i.i.i74:                               ; preds = %.lr.ph.i.i.i.i.i74.preheader232, %.lr.ph.i.i.i.i.i74
  %.09.i.i.i.i.i75 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i74 ], [ %.09.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i74.preheader232 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i76 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i74 ], [ %.sroa.04.08.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i74.preheader232 ] ; 2 uses
  %i.du = load i32, ptr %.sroa.04.08.i.i.i.i.i76, align 4
  store i32 %i.du, ptr %.09.i.i.i.i.i75, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i76, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.dv, %1
  br i1 %.not.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i74, !llvm.loop !474

_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i74, %middle.block207, %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72
  %.0.lcssa.i.i.i.i.i78 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPN6hermes2vm12RootSymbolIDEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit72 ], [ %i.do, %middle.block207 ], [ %i.dw, %.lr.ph.i.i.i.i.i74 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i78212 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i78 to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i.i.i.i78, i64 %2 ; 5 uses
  %.not7.i.i.i.i.i79 = icmp eq ptr %1, %i.d
  br i1 %.not7.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.dy = sub i64 %i.f, %i.ct
  %i.dz = add i64 %i.dy, -4                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.dz, 76
  br i1 %min.iters.check215, label %.lr.ph.i.i.i.i.i80.preheader231, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader
  %i.ec = shl i64 %2, 2
  %i.ed = add i64 %i.ec, %.0.lcssa.i.i.i.i.i78212
  %i.ee = sub i64 %i.ct, %i.ed
  %diff.check213 = icmp ugt i64 %i.ee, -32
  br i1 %diff.check213, label %.lr.ph.i.i.i.i.i80.preheader231, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck211
  %n.vec218 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ef = shl i64 %n.vec218, 2                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %1, i64 %i.ef
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next225, %vector.body219 ] ; 2 uses
  %i.ei = shl i64 %index220, 2                    ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep222 = getelementptr i8, ptr %1, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load223 = load <4 x i32>, ptr %next.gep222, align 4
  %wide.load224 = load <4 x i32>, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %next.gep221, i64 16
  store <4 x i32> %wide.load223, ptr %next.gep221, align 4
  store <4 x i32> %wide.load224, ptr %i.ek, align 4
  %index.next225 = add nuw i64 %index220, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next225, %n.vec218
  br i1 %i.el, label %middle.block226, label %vector.body219, !llvm.loop !475

middle.block226:                                  ; preds = %vector.body219
  %cmp.n227 = icmp eq i64 %i.eb, %n.vec218
  br i1 %cmp.n227, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader231

.lr.ph.i.i.i.i.i80.preheader231:                  ; preds = %vector.memcheck211, %.lr.ph.i.i.i.i.i80.preheader, %middle.block226
  %.09.i.i.i.i.i81.ph = phi ptr [ %i.dx, %vector.memcheck211 ], [ %i.dx, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.eg, %middle.block226 ]
  %.sroa.04.08.i.i.i.i.i82.ph = phi ptr [ %1, %vector.memcheck211 ], [ %1, %.lr.ph.i.i.i.i.i80.preheader ], [ %i.eh, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %.lr.ph.i.i.i.i.i80.preheader231, %.lr.ph.i.i.i.i.i80
  %.09.i.i.i.i.i81 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i80 ], [ %.09.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i80.preheader231 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i82 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i80 ], [ %.sroa.04.08.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i80.preheader231 ] ; 2 uses
  %i.em = load i32, ptr %.sroa.04.08.i.i.i.i.i82, align 4
  store i32 %i.em, ptr %.09.i.i.i.i.i81, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 4 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.en, %i.d
  br i1 %.not.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, label %.lr.ph.i.i.i.i.i80, !llvm.loop !476

_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85: ; preds = %.lr.ph.i.i.i.i.i80, %middle.block226, %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ %i.dx, %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.eg, %middle.block226 ], [ %i.eo, %.lr.ph.i.i.i.i.i80 ]
  %.not.i86 = icmp eq ptr %i.cj, null
  br i1 %.not.i86, label %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.er) #19
  br label %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit85, %bb.l
  store ptr %i.cx, ptr %0, align 8, !tbaa !96
  store ptr %.0.lcssa.i.i.i.i.i84, ptr %i.c, align 8, !tbaa !148
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.es, ptr %i.a, align 8, !tbaa !116
  br label %_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit

_ZSt4fillIPN6hermes2vm12RootSymbolIDES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i60, %.lr.ph.i.i.i, %middle.block145, %middle.block175, %_ZSt22__uninitialized_move_aIPN6hermes2vm12RootSymbolIDES3_SaIS2_EET0_T_S6_S5_RT1_.exit56.thread, %_ZNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !117
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !122
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
  store ptr null, ptr %i.y, align 8, !tbaa !117
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !117
  br label %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #19
  br label %_ZNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm9CodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !114
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN6hermes2vm9CodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN6hermes2vm9CodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E16FindAndConstructEOj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !432  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes2vm8WeakRootINS3_11HiddenClassEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02744.i.i to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !434

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !126

bb.c:                                             ; preds = %.lr.ph.i.i
end_hunk_1
