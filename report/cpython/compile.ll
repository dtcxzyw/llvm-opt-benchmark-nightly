Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/compile?download=true
inline.NumInlined: 69
inline.NumDeleted: 21
begin_hunk_0_@const_cache_insert:bb.a
  br i1 %.not.i113, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.g, align 8, !tbaa !29
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %.critedge

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.au = call i32 @_PySet_NextEntry(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not96153 = icmp eq i32 %i.au, 0
  br i1 %.not96153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.av = getelementptr i8, ptr %i.ap, i64 32
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %Py_DECREF.exit110
  %.073154 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %Py_DECREF.exit110 ] ; 2 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ax = call fastcc ptr @const_cache_insert(ptr noundef %0, ptr noundef %i.aw, i1 noundef zeroext true) ; 7 uses
  %.not98 = icmp eq ptr %i.ax, null
  br i1 %.not98, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ay = load i32, ptr %i.ap, align 8, !tbaa !29 ; 2 uses
  %.not.i111 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i111, label %bb.ah, label %Py_DECREF.exit112

bb.ah:                                            ; preds = %bb.ag
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !29
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ai, label %Py_DECREF.exit112

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #11
  br label %Py_DECREF.exit112

Py_DECREF.exit112:                                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %.not.i109 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i109, label %bb.aj, label %Py_DECREF.exit114.thread146

bb.aj:                                            ; preds = %Py_DECREF.exit112
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.g, align 8, !tbaa !29
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %Py_DECREF.exit114.thread146.sink.split, label %Py_DECREF.exit114.thread146

bb.ak:                                            ; preds = %bb.af
  %i.be = getelementptr i8, ptr %i.ax, i64 8
  %.val = load ptr, ptr %i.be, align 8, !tbaa !100
  %.not151 = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not151, label %bb.al, label %Py_DECREF.exit110

bb.al:                                            ; preds = %bb.ak
  %i.bf = getelementptr i8, ptr %i.ax, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 5 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, -1073741825
  br i1 %i.bi, label %_Py_NewRef.exit141, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bj = add nuw i32 %i.bh, 1
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !29
  br label %_Py_NewRef.exit141

_Py_NewRef.exit141:                               ; preds = %bb.al, %bb.am
  %i.bk = load i32, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %.not.i107 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i107, label %bb.an, label %Py_DECREF.exit110

bb.an:                                            ; preds = %_Py_NewRef.exit141
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.ax, align 8, !tbaa !29
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ao, label %Py_DECREF.exit110

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #11
  br label %Py_DECREF.exit110

Py_DECREF.exit110:                                ; preds = %bb.ak, %_Py_NewRef.exit141, %bb.an, %bb.ao
  %.0 = phi ptr [ %i.ax, %bb.ak ], [ %i.bg, %_Py_NewRef.exit141 ], [ %i.bg, %bb.an ], [ %i.bg, %bb.ao ]
  %i.bn = getelementptr [8 x i8], ptr %i.av, i64 %.073154
  store ptr %.0, ptr %i.bn, align 8, !tbaa !50
  %i.bo = add i64 %.073154, 1
  %i.bp = call i32 @_PySet_NextEntry(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not96 = icmp eq i32 %i.bp, 0
  br i1 %.not96, label %._crit_edge, label %bb.af, !llvm.loop !170

._crit_edge:                                      ; preds = %Py_DECREF.exit110, %bb.ae
  %i.bq = call ptr @PyFrozenSet_New(ptr noundef nonnull %i.ap) #11 ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !29 ; 2 uses
  %.not.i105 = icmp sgt i32 %i.br, -1
  br i1 %.not.i105, label %bb.ap, label %Py_DECREF.exit106

bb.ap:                                            ; preds = %._crit_edge
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.ap, align 8, !tbaa !29
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aq, label %Py_DECREF.exit106

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #11
  br label %Py_DECREF.exit106

Py_DECREF.exit106:                                ; preds = %._crit_edge, %bb.ap, %bb.aq
  %.not152 = icmp eq ptr %i.bq, null
  br i1 %.not152, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %Py_DECREF.exit106
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %.not.i103 = icmp sgt i32 %i.bu, -1
  br i1 %.not.i103, label %bb.as, label %Py_DECREF.exit114.thread146

bb.as:                                            ; preds = %bb.ar
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.g, align 8, !tbaa !29
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %Py_DECREF.exit114.thread146.sink.split, label %Py_DECREF.exit114.thread146

bb.at:                                            ; preds = %Py_DECREF.exit106
  %i.bx = load i32, ptr %1, align 8, !tbaa !29    ; 2 uses
  %.not.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i, label %bb.au, label %Py_DECREF.exit114

bb.au:                                            ; preds = %bb.at
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %1, align 8, !tbaa !29
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.av, label %Py_DECREF.exit114

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %1) #11
  br label %Py_DECREF.exit114

Py_DECREF.exit114.thread146.sink.split:           ; preds = %bb.as, %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %Py_DECREF.exit114.thread146

Py_DECREF.exit114.thread146:                      ; preds = %Py_DECREF.exit114.thread146.sink.split, %bb.ar, %bb.as, %bb.aj, %Py_DECREF.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge

Py_DECREF.exit114:                                ; preds = %bb.av, %bb.au, %bb.at
  %i.ca = getelementptr i8, ptr %i.g, i64 40
  store ptr %i.bq, ptr %i.ca, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit120, %bb.k, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %Py_DECREF.exit114, %Py_DECREF.exit114.thread146, %bb.m, %bb.n, %bb.o, %Py_DECREF.exit122, %Py_DECREF.exit124
  %.9 = phi ptr [ %i.m, %Py_DECREF.exit124 ], [ %i.g, %bb.y ], [ %i.g, %Py_DECREF.exit122 ], [ null, %Py_DECREF.exit114.thread146 ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ %i.g, %Py_DECREF.exit114 ], [ %i.g, %bb.z ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ %i.g, %bb.k ], [ %i.g, %Py_DECREF.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %bb.b, %bb.a
  %.11 = phi ptr [ %1, %bb.a ], [ %.9, %.critedge ], [ null, %bb.b ]
  ret ptr %.11
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCompile_OptimizeAndAssemble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !174 {
bb.a:
  %2 = alloca %struct.instruction_sequence, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !89
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !66   ; 5 uses
  %i.i = tail call i32 @_PyST_IsFunctionLike(ptr noundef %i.h) #11
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr i8, ptr %i.h, i64 92
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  %.pre39.i = and i8 %.pre.i, 3
  br label %compute_code_flags.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !175
  %.not24.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not24.i, i32 3, i32 19 ; 3 uses
  %i.l = getelementptr i8, ptr %i.h, i64 92
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 3                           ; 3 uses
  %or.cond.i = icmp eq i8 %i.n, 1
  %i.o = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %or.cond.i, i32 %i.o, i32 %spec.select.i
  %or.cond35.not.i = icmp eq i8 %i.n, 3
  %i.p = or disjoint i32 %spec.select.i, 512
  %.2.i = select i1 %or.cond35.not.i, i32 %i.p, i32 %.1.i
  %i.q = getelementptr i8, ptr %i.h, i64 100
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %i.s = shl i16 %i.r, 2
  %i.t = and i16 %i.r, 768
  %i.u = zext nneg i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 18
  %.338.i = and i16 %i.s, 12
  %.3.i = zext nneg i16 %.338.i to i32
  %.4.i = or disjoint i32 %i.v, %.3.i
  %spec.select37.i = or disjoint i32 %.4.i, %.2.i
  br label %compute_code_flags.exit

compute_code_flags.exit:                          ; preds = %._crit_edge.i, %bb.b
  %.pre-phi.i = phi i8 [ %.pre39.i, %._crit_edge.i ], [ %i.n, %bb.b ]
  %.6.i = phi i32 [ 0, %._crit_edge.i ], [ %spec.select37.i, %bb.b ] ; 2 uses
  %or.cond36.i = icmp eq i8 %.pre-phi.i, 2
  %i.w = or i32 %.6.i, 128
  %.7.i = select i1 %or.cond36.i, i32 %i.w, i32 %.6.i
  %i.x = getelementptr i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !176
  %i.z = and i32 %i.y, 33423360
  %i.aa = or i32 %.7.i, %i.z
  %i.ab = tail call i32 @_PyCodegen_AddReturnAtEnd(ptr noundef nonnull %0, i32 noundef %1) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.c

bb.c:                                             ; preds = %compute_code_flags.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %i.ad = getelementptr i8, ptr %i.d, i64 928     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 944
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ag = tail call fastcc ptr @consts_dict_keys_inorder(ptr noundef %i.af) ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %optimize_and_assemble_code_unit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.d, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = tail call ptr @_PyCfg_FromInstructionSequence(ptr noundef %i.aj) #11 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.d, i64 960
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val24.i = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.ap = trunc i64 %.val24.i to i32
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %.val.i = load i64, ptr %i.at, align 8, !tbaa !44
  %i.au = trunc i64 %.val.i to i32
  %i.av = getelementptr i8, ptr %i.d, i64 1016
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !78
  %i.ax = tail call i32 @_PyCfg_OptimizeCodeUnit(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ag, ptr noundef %i.f, i32 noundef %i.ap, i32 noundef %i.au, i32 noundef %i.aw) #11
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = call i32 @_PyCfg_OptimizedCfgToInstructionSequence(ptr noundef nonnull %i.ak, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #11
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bd = call ptr @_PyAssemble_MakeCodeObject(ptr noundef %i.ad, ptr noundef %i.f, ptr noundef nonnull %i.ag, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.bc, i32 noundef range(i32 0, -2147483648) %i.aa, ptr noundef %i.g) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.021.ph.i = phi ptr [ %i.bd, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.i, label %optimize_and_assemble_code_unit.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.ag, align 8, !tbaa !29
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %optimize_and_assemble_code_unit.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #11
  br label %optimize_and_assemble_code_unit.exit

optimize_and_assemble_code_unit.exit:             ; preds = %bb.c, %bb.h, %bb.i, %bb.j
  %.030.i = phi ptr [ %i.ak, %bb.j ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ null, %bb.c ]
  %.02128.i = phi ptr [ %.021.ph.i, %bb.j ], [ %.021.ph.i, %bb.h ], [ %.021.ph.i, %bb.i ], [ null, %bb.c ]
  call void @PyInstructionSequence_Fini(ptr noundef nonnull %2) #11
  call void @_PyCfgBuilder_Free(ptr noundef %.030.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %compute_code_flags.exit, %optimize_and_assemble_code_unit.exit
  %.0 = phi ptr [ %.02128.i, %optimize_and_assemble_code_unit.exit ], [ null, %compute_code_flags.exit ]
  ret ptr %.0
}

declare i32 @_PyCodegen_AddReturnAtEnd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyAST_Compile(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !guid !177 {
bb.a:
  %i.a = tail call fastcc ptr @new_compiler(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !102
  %i.d = tail call fastcc i32 @compiler_codegen(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %compiler_mod.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i32 %i.c, 3
  %i.g = zext i1 %i.f to i32
  %i.h = tail call ptr @_PyCompile_OptimizeAndAssemble(ptr noundef nonnull %i.a, i32 noundef %i.g)
  br label %compiler_mod.exit

compiler_mod.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  tail call void @_PyCompile_ExitScope(ptr noundef nonnull %i.a)
  tail call fastcc void @compiler_free(ptr noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %compiler_mod.exit
  %.0 = phi ptr [ %.0.i, %compiler_mod.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @new_compiler(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !guid !178 {
bb.a:
  %6 = alloca %struct.PyCompilerFlags, align 8    ; 5 uses
  %i.a = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 96) #11 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 64424509440, ptr %6, align 8
  %i.c = tail call ptr @PyDict_New() #11          ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyList_New(i64 noundef 0) #11 ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 72
  store ptr %i.e, ptr %i.f, align 8, !tbaa !39
  %.not36.i = icmp eq ptr %i.e, null
  br i1 %.not36.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.e, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  %i.j = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  %i.k = tail call i32 @_PyFuture_FromAST(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.j) #11
  %.not37.i = icmp eq i32 %i.k, 0
  br i1 %.not37.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit.i
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_XNewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %5, align 8, !tbaa !29
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %i.o = getelementptr i8, ptr %i.a, i64 88
  store ptr %5, ptr %i.o, align 8, !tbaa !96
  %.not38.i = icmp eq ptr %2, null
  %spec.store.select.i = select i1 %.not38.i, ptr %6, ptr %2 ; 3 uses
  %i.p = load i32, ptr %i.j, align 8, !tbaa !97
  %i.q = load i32, ptr %spec.store.select.i, align 4, !tbaa !103
end_hunk_0
