Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_visit_stmt:bb.a
  %.6 = phi i32 [ -1, %Py_DECREF.exit186.i ], [ %i.e, %bb.b ], [ -1, %bb.oo ], [ -1, %bb.jt ], [ %.0.i181, %codegen_return.exit ], [ -1, %bb.as ], [ %.13.i, %bb.on ], [ -1, %bb.mi ], [ -1, %addop_binary.exit.thread.i ], [ %.9.i, %codegen_for.exit ], [ %.8.i, %codegen_while.exit ], [ %.8.i235, %codegen_if.exit ], [ %.14.i, %codegen_match_inner.exit ], [ -1, %bb.jq ], [ %.0.i237, %codegen_try.exit ], [ %.0.i240, %codegen_try_star.exit ], [ -1, %bb.fs ], [ %..i252, %bb.kp ], [ %.182.i, %._crit_edge244.i ], [ %.9.i321, %codegen_async_for.exit ], [ %i.bfh, %bb.pc ], [ -1, %Py_DECREF.exit.i281 ], [ %i.bfg, %bb.pb ], [ %.0.i303, %codegen_break.exit ], [ %.0.i305, %codegen_continue.exit ], [ %i.bff, %bb.pa ], [ -1, %bb.h ], [ -1, %bb.z ], [ -1, %bb.q ], [ -1, %bb.s ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.y ], [ -1, %bb.af ], [ %.98.i, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.ae ], [ -1, %.thread362 ], [ -1, %Py_DECREF.exit.i ], [ -1, %bb.ad ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %Py_DECREF.exit100.i ], [ -1, %codegen_addop_load_const.exit77.i ], [ -1, %bb.bm ], [ -1, %codegen_addop_load_const.exit74.i ], [ -1, %bb.bk ], [ %.68.i, %bb.bs ], [ -1, %bb.bl ], [ -1, %bb.br ], [ -1, %Py_DECREF.exit.i179 ], [ -1, %bb.bq ], [ -1, %bb.aq ], [ -1, %codegen_addop_load_const.exit.thread.i ], [ -1, %Py_DECREF.exit70.i ], [ -1, %bb.ak ], [ -1, %bb.ar ], [ -1, %bb.du ], [ -1, %bb.ds ], [ -1, %bb.cy ], [ -1, %bb.cz ], [ -1, %bb.dt ], [ -1, %bb.dv ], [ -1, %switch.lookup ], [ -1, %update_start_location_to_match_attr.exit173.i ], [ -1, %bb.cw ], [ -1, %bb.ea ], [ -1, %bb.eh ], [ -1, %bb.ei ], [ -1, %bb.ej ], [ -1, %bb.ek ], [ -1, %should_apply_two_element_slice_optimization.exit176.thread.i ], [ -1, %bb.el ], [ %i.rs, %bb.en ], [ -1, %update_start_location_to_match_attr.exit.i ], [ -1, %bb.de ], [ -1, %bb.dl ], [ -1, %bb.dm ], [ -1, %bb.dn ], [ -1, %bb.do ], [ -1, %bb.dp ], [ -1, %should_apply_two_element_slice_optimization.exit.thread.i ], [ -1, %bb.dq ], [ -1, %bb.dr ], [ -1, %bb.em ], [ -1, %codegen_check_ann_expr.exit.i ], [ -1, %bb.eq ], [ -1, %bb.fu ], [ -1, %bb.er ], [ -1, %bb.ex ], [ -1, %codegen_check_ann_expr.exit99.i ], [ 0, %.loopexit599 ], [ -1, %Py_DECREF.exit87.i ], [ -1, %.critedge85.i ], [ -1, %bb.fd ], [ -1, %bb.ey ], [ -1, %bb.ft ], [ -1, %bb.ez ], [ -1, %bb.fq ], [ 0, %.critedge.thread.i ], [ -1, %bb.kh ], [ -1, %bb.ko ], [ -1, %bb.ki ], [ -1, %bb.kj ], [ -1, %bb.kk ], [ -1, %bb.km ], [ -1, %bb.kn ], [ %.12.i, %bb.ol ], [ 0, %bb.kr ], [ 0, %bb.kq ], [ -1, %bb.cs ], [ -1, %.lr.ph.i326 ], [ -1, %bb.js ], [ -1, %bb.ls ], [ -1, %codegen_addop_name_custom.exit.i286 ], [ -1, %Py_DECREF.exit.i198.i ], [ -1, %bb.nn ], [ -1, %bb.md ], [ %i.awq, %bb.nb ], [ -1, %codegen_validate_lazy_import.exit.i282 ], [ -1, %Py_DECREF.exit.i.i285 ], [ -1, %codegen_validate_lazy_import.exit.thread.i283 ], [ -1, %bb.nj ], [ -1, %bb.od ], [ %.180.i, %bb.oe ], [ -1, %bb.oa ], [ -1, %bb.nz ], [ -1, %bb.lb ], [ -1, %bb.om ], [ -1, %bb.oh ], [ %..i300, %bb.oj ], [ -1, %bb.oi ], [ -1, %bb.cp ], [ -1, %codegen_addop_name_custom.exit201.i ], [ -1, %bb.cv ], [ -1, %.preheader.i.i ], [ -1, %bb.ll ], [ -1, %Py_DECREF.exit.i93.i ], [ -1, %bb.lr ], [ -1, %bb.kt ], [ -1, %Py_DECREF.exit.i.i265 ], [ -1, %bb.lt ], [ -1, %bb.lk ], [ 0, %.critedge.i269 ], [ -1, %bb.lx ], [ -1, %codegen_addop_name_custom.exit.i ], [ -1, %Py_DECREF.exit.i273 ], [ -1, %codegen_addop_name_custom.exit91.i ], [ -1, %codegen_validate_lazy_import.exit.i ], [ -1, %codegen_addop_load_const.exit75.i ], [ -1, %codegen_addop_load_const.exit.i262 ], [ -1, %bb.lf ], [ -1, %codegen_addop_name_custom.exit85.i ], [ -1, %bb.ks ], [ -1, %codegen_validate_lazy_import.exit.thread.i ], [ -1, %Py_DECREF.exit.i82.i ], [ -1, %codegen_import_as.exit.i ], [ -1, %Py_DECREF.exit.i88.i ], [ -1, %.lr.ph243.peel.next.i ], [ -1, %bb.of ]
  ret i32 %.6
}

declare ptr @_PyCompile_MaybeMangle(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyST_GetScope(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyCompile_ResolveNameop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyCompile_IsInInlinedComp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_load_classdict_freevar(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = tail call i64 @_PyCompile_DictAddObj(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63688)) #10 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %codegen_addop_o.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.g = trunc i64 %i.d to i32
  %i.h = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.f, i32 noundef 83, i32 noundef %i.g, i64 %1, i64 %2) #10
  %i.i = icmp eq i32 %i.h, -1
  %i.j = sext i1 %i.i to i32
  br label %codegen_addop_o.exit

codegen_addop_o.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ -1, %bb.a ], [ %i.j, %bb.b ]
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63688), align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %codegen_addop_o.exit
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63688), align 8, !tbaa !36
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63688)) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %codegen_addop_o.exit, %bb.c, %bb.d
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_function(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._PyCompile_CodeUnitMetadata, align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct._PyCompile_CodeUnitMetadata, align 8 ; 7 uses
  %.0123.in = getelementptr i8, ptr %1, i64 56
  %.0123 = load ptr, ptr %.0123.in, align 8, !tbaa !36 ; 4 uses
  %.0124.in = getelementptr i8, ptr %1, i64 32
  %.0124 = load ptr, ptr %.0124.in, align 8, !tbaa !36 ; 6 uses
  %.0125.in = getelementptr i8, ptr %1, i64 8     ; 2 uses
  %.0125 = load ptr, ptr %.0125.in, align 8, !tbaa !36 ; 2 uses
  %.0126.in = getelementptr i8, ptr %1, i64 40
  %.0126 = load ptr, ptr %.0126.in, align 8, !tbaa !36
  %.0127.in = getelementptr i8, ptr %1, i64 16    ; 2 uses
  %.0127 = load ptr, ptr %.0127.in, align 8, !tbaa !36 ; 9 uses
  %.not.i152 = icmp eq ptr %.0124, null           ; 2 uses
  br i1 %.not.i152, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.0124, i64 16     ; 2 uses
  %i.d = load i64, ptr %.0124, align 8, !tbaa !41 ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.loopexit174

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.0913.i, 1              ; 2 uses
  %i.g = load i64, ptr %.0124, align 8, !tbaa !41 ; 2 uses
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit174, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.0913.i = phi i64 [ %i.f, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.c, i64 %.0913.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.k = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.j)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.critedge145, label %bb.b

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  br label %.critedge

.loopexit174:                                     ; preds = %bb.b, %.preheader.i
  %i.o = phi i64 [ %i.d, %.preheader.i ], [ %i.g, %bb.b ]
  %i.p = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.loopexit174
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.t = getelementptr i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %.loopexit174
  %i.v = phi i32 [ %i.q, %bb.d ], [ %i.q, %.loopexit174 ], [ %i.n, %bb.c ]
  %i.w = phi ptr [ %i.p, %bb.d ], [ %i.p, %.loopexit174 ], [ %i.m, %bb.c ]
  %.0122 = phi i32 [ %i.u, %bb.d ], [ %i.q, %.loopexit174 ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !62
  %.sroa.0.4.insert.ext = zext i32 %i.y to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext ; 21 uses
  %i.z = getelementptr i8, ptr %1, i64 68         ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !63
  %.sroa.16.8.insert.ext = zext i32 %i.aa to i64
  %i.ab = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %.sroa.16.12.insert.ext = zext i32 %i.ac to i64
  %.sroa.16.12.insert.shift = shl nuw i64 %.sroa.16.12.insert.ext, 32
  %.sroa.16.12.insert.insert = or disjoint i64 %.sroa.16.12.insert.shift, %.sroa.16.8.insert.ext ; 21 uses
  %i.ad = icmp eq ptr %.0123, null
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ae = load i64, ptr %.0123, align 8, !tbaa !41
  %i.af = icmp sgt i64 %i.ae, 0
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.ag = phi i1 [ %i.af, %bb.e ], [ false, %.critedge ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.0127, i64 48    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98 ; 4 uses
  %.not.i153 = icmp eq ptr %i.ai, null
  br i1 %.not.i153, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.i, %bb.h
  %.016.i.i = phi i32 [ %i.ar, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.am = sext i32 %.016.i.i to i64               ; 2 uses
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !41
  %.not22.i.i = icmp sgt i64 %i.an, %i.am
  br i1 %.not22.i.i, label %bb.i, label %.split24.us.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.aq = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ap), !inline_history !205
  %.not.i.i = icmp eq i32 %i.aq, -1
  %i.ar = add i32 %.016.i.i, 1
  br i1 %.not.i.i, label %.critedge145, label %.split.i.i, !llvm.loop !2

.split24.us.i.i:                                  ; preds = %.split.i.i
  %i.as = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !205
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !98 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %codegen_defaults.exit.i, label %bb.j

bb.j:                                             ; preds = %.split24.us.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !41
  %i.aw = trunc i64 %i.av to i32
  br label %codegen_defaults.exit.i

codegen_defaults.exit.i:                          ; preds = %bb.j, %.split24.us.i.i
  %i.ax = phi i32 [ %i.aw, %bb.j ], [ 0, %.split24.us.i.i ]
  %i.ay = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.as, i32 noundef 51, i32 noundef %i.ax, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert) #10, !inline_history !205
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %.critedge145, label %bb.k

bb.k:                                             ; preds = %codegen_defaults.exit.i, %bb.g, %bb.f
  %.017.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %codegen_defaults.exit.i ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.0127, i64 24    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 2 uses
  %.not23.i = icmp eq ptr %i.bb, null
  br i1 %.not23.i, label %codegen_default_arguments.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %.0127, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !100
  %i.be = tail call fastcc i32 @codegen_kwonlydefaults(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert, ptr noundef %i.bb, ptr noundef %i.bd), !inline_history !3 ; 2 uses
  %.not24.i = icmp eq i32 %i.be, -1
  %i.bf = icmp slt i32 %i.be, 1
  %i.bg = or disjoint i64 %.017.i, 2
  %.2.i = select i1 %i.bf, i64 %.017.i, i64 %i.bg
  br i1 %.not24.i, label %.critedge145, label %codegen_default_arguments.exit

codegen_default_arguments.exit:                   ; preds = %bb.k, %bb.l
  %.119.i = phi i64 [ %.2.i, %bb.l ], [ %.017.i, %bb.k ] ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.w

bb.m:                                             ; preds = %codegen_default_arguments.exit
  %.not138 = trunc nuw nsw i64 %.119.i to i32     ; 2 uses
  %spec.select = and i32 %.not138, 1
  %5 = lshr i32 %.not138, 1
  %.1 = add nuw nsw i32 %5, %spec.select          ; 5 uses
  %i.bh = icmp eq i32 %.1, 2
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.bj = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.bi, i32 noundef 117, i32 noundef 2, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert) #10
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %.critedge145, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.240, ptr noundef %.0125) #10 ; 5 uses
  %.not140 = icmp eq ptr %i.bl, null
  br i1 %.not140, label %.critedge145, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bn = zext nneg i32 %.1 to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !101
  %i.bo = call fastcc i32 @codegen_enter_scope(ptr noundef %0, ptr noundef nonnull %i.bl, i32 noundef 6, ptr noundef %.0123, i32 noundef %.0122, ptr noundef null, ptr noundef nonnull %4)
  %i.bp = load i32, ptr %i.bl, align 8, !tbaa !36 ; 2 uses
  %.not.i149 = icmp sgt i32 %i.bp, -1
  br i1 %.not.i149, label %bb.q, label %Py_DECREF.exit150

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bl, align 8, !tbaa !36
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %Py_DECREF.exit150

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #10
  br label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %bb.p, %bb.q, %bb.r
  %i.bs = icmp eq i32 %i.bo, -1
  br i1 %i.bs, label %.critedge145.critedge, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit150
  %i.bt = call fastcc i32 @codegen_type_params(ptr noundef %0, ptr noundef %.0123)
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %.not141.not175.not = icmp eq i32 %.1, 0
  br i1 %.not141.not175.not, label %.critedge148, label %.lr.ph

bb.t:                                             ; preds = %bb.s
  call void @_PyCompile_ExitScope(ptr noundef %0) #10
  br label %.critedge145.critedge

bb.u:                                             ; preds = %.lr.ph
  %i.bv = add nuw nsw i32 %.0176, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %.1
  br i1 %exitcond.not, label %.critedge148, label %.lr.ph, !llvm.loop !206

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.0176 = phi i32 [ %i.bv, %bb.u ], [ 0, %.preheader ] ; 2 uses
  %i.bw = call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.bx = call i32 @_PyInstructionSequence_Addop(ptr noundef %i.bw, i32 noundef 84, i32 noundef %.0176, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert) #10
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.v, label %bb.u

bb.v:                                             ; preds = %.lr.ph
  call void @_PyCompile_ExitScope(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.critedge145

.critedge148:                                     ; preds = %bb.u, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.w

bb.w:                                             ; preds = %.critedge148, %codegen_default_arguments.exit
  %.2 = phi i32 [ %.1, %.critedge148 ], [ 0, %codegen_default_arguments.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bz = call ptr @_PyCompile_Symtable(ptr noundef %0) #10
  %i.ca = call i32 @_PySymtable_LookupOptional(ptr noundef %i.bz, ptr noundef %.0127, ptr noundef nonnull %i.b) #10
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %select.unfold165, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !209 ; 5 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 92
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = and i8 %i.ce, 4
  %.not.i154 = icmp eq i8 %i.cf, 0
  br i1 %.not.i154, label %bb.am, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr i8, ptr %i.cc, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54
  %i.ci = call fastcc i32 @codegen_setup_annotations_scope(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert, ptr noundef %.0127, ptr noundef %i.ch)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !209 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i17.i, label %bb.z, label %Py_DECREF.exit18.i

bb.z:                                             ; preds = %bb.y
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !36
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %Py_DECREF.exit18.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #10
  br label %Py_DECREF.exit18.i

Py_DECREF.exit18.i:                               ; preds = %bb.aa, %bb.z, %bb.y
  %i.cn = icmp eq i32 %i.ci, -1
  br i1 %i.cn, label %select.unfold165, label %bb.ab

bb.ab:                                            ; preds = %Py_DECREF.exit18.i
  %i.co = getelementptr i8, ptr %.0127, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %.loopexit56.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.011.i.i.i = phi i32 [ %i.db, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cs = sext i32 %.011.i.i.i to i64             ; 2 uses
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !41
  %i.cu = icmp sgt i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.ac, label %.loopexit56.i.i

bb.ac:                                            ; preds = %.split.i.i.i
  %i.cv = getelementptr [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !103 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !105
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !210
  %i.da = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.cx, ptr noundef %i.cz, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %.not.i.i.i = icmp eq i32 %i.da, -1
  %i.db = add i32 %.011.i.i.i, 1
  br i1 %.not.i.i.i, label %codegen_annotations_in_scope.exit.thread.i, label %.split.i.i.i, !llvm.loop !207

.loopexit56.i.i:                                  ; preds = %.split.i.i.i, %bb.ab
  %i.dc = load ptr, ptr %.0127, align 8, !tbaa !106 ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = icmp eq ptr %i.dc, null
  br i1 %i.de, label %.loopexit54.i.i, label %.split.i41.i.i

.split.i41.i.i:                                   ; preds = %.loopexit56.i.i, %bb.ad
  %.011.i42.i.i = phi i32 [ %i.do, %bb.ad ], [ 0, %.loopexit56.i.i ] ; 2 uses
  %i.df = sext i32 %.011.i42.i.i to i64           ; 2 uses
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !41
  %i.dh = icmp sgt i64 %i.dg, %i.df
  br i1 %i.dh, label %bb.ad, label %.loopexit54.i.i

bb.ad:                                            ; preds = %.split.i41.i.i
  %i.di = getelementptr [8 x i8], ptr %i.dd, i64 %i.df
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !103 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !105
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !210
  %i.dn = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.dk, ptr noundef %i.dm, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %.not.i44.i.i = icmp eq i32 %i.dn, -1
  %i.do = add i32 %.011.i42.i.i, 1
  br i1 %.not.i44.i.i, label %codegen_annotations_in_scope.exit.thread.i, label %.split.i41.i.i, !llvm.loop !207

.loopexit54.i.i:                                  ; preds = %.split.i41.i.i, %.loopexit56.i.i
  %i.dp = getelementptr i8, ptr %.0127, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !211 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.dq, null
  br i1 %.not.i20.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit54.i.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !210 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.ds, null
  br i1 %.not38.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !105
  %i.du = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.dt, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %i.dv = icmp eq i32 %i.du, -1
  br i1 %i.dv, label %codegen_annotations_in_scope.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.loopexit54.i.i
  %i.dw = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %.loopexit.i.i, label %.split.i46.i.i

.split.i46.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.011.i47.i.i = phi i32 [ %i.ei, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.dz = sext i32 %.011.i47.i.i to i64           ; 2 uses
  %i.ea = load i64, ptr %i.dw, align 8, !tbaa !41
  %i.eb = icmp sgt i64 %i.ea, %i.dz
  br i1 %i.eb, label %bb.ah, label %.loopexit.i.i

bb.ah:                                            ; preds = %.split.i46.i.i
  %i.ec = getelementptr [8 x i8], ptr %i.dx, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !103 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !105
  %i.ef = getelementptr i8, ptr %i.ed, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !210
end_hunk_0
