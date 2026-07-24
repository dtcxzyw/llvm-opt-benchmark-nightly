inline.NumInlined: 904
inline.NumDeleted: 514
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm6detail20mapStringMayAllocateERNS0_13RuntimeModuleEPKc:bb.a
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
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
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
  %i.l = load ptr, ptr %0, align 8, !tbaa !64     ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %.idx.i = shl i64 %i.n, 3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i
  %i.p = ptrtoaddr ptr %i.l to i64                ; 4 uses
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add i64 %.idx.i, %i.p
  %i.s = add i64 %i.p, 8
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.s)
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  %i.y = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond9 = or i1 %min.iters.check, %diff.check
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
end_hunk_0
