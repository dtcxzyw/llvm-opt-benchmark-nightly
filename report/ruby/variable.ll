inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@obj_transition_too_complex:bb.a
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = and i64 %i.d, 4294901729
  %i.h = zext i32 %i.b to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !42
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = and i64 %i.d, 4294967265
  %i.p = zext i32 %i.b to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.o, %i.q
  store i64 %i.r, ptr %i.c, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.s, align 8, !tbaa !42
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #26
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = and i64 %i.d, 256
  %i.u = icmp ne i64 %i.t, 0
  %i.v = tail call i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %i.u) #26 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i32 %i.b to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.f, label %rb_vm_lock_enter.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.ad)
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i5.i, label %bb.g, label %rb_obj_replace_fields.exit

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_obj_replace_fields.exit

rb_obj_replace_fields.exit:                       ; preds = %rb_vm_lock_enter.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c, %bb.d, %rb_obj_replace_fields.exit
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_attr_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 4, 37) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i = icmp eq i64 %i.l, 0
  %or.cond.i = or i1 %i.k, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.m = phi i64 [ %i.h, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31                         ; 3 uses
  switch i32 %i.o, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %.thread100
  ]

bb.c:                                             ; preds = %rb_check_frozen_inline.exit, %rb_check_frozen_inline.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.q = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.q, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.d, !prof !69

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.r = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i74 = icmp eq i32 %i.r, 0
  br i1 %.not.i74, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.47) #27
  unreachable

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.d, %rb_ractor_main_p.exit.i, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !20
  %i.u = and i64 %i.t, 16384
  %.not10.i.i = icmp eq i64 %i.u, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.v = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.w, null
  br i1 %.not.i.i75, label %.split.i.i, label %bb.g

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.x = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.h

.split7.i.i:                                      ; preds = %bb.g
  %i.ab = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.w)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split7.i.i, %.split.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.ac, %bb.h ], [ %i.x, %.split.i.i ], [ %i.ab, %.split7.i.i ]
  %i.ad = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112 ; 5 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.ai, label %bb.j

.thread:                                          ; preds = %rb_check_frozen_inline.exit
  %i.af = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) ; 3 uses
  %.not113 = icmp eq i64 %i.af, 0
  br i1 %.not113, label %bb.ai, label %.thread100

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i76 = icmp eq ptr %i.ag, null
  br i1 %.not.i76, label %bb.k, label %.thread100

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.ae) #26
  br label %.thread100

.thread100:                                       ; preds = %.thread, %rb_check_frozen_inline.exit, %bb.k, %bb.j
  %.06499103 = phi i64 [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 2 uses
  %.165 = phi i64 [ %i.ah, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 10 uses
  %i.ai = inttoptr i64 %.165 to ptr               ; 8 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.am = call i32 @rb_shape_transition_remove_ivar(i64 noundef %.165, i64 noundef %1, ptr noundef nonnull %i.b) #26 ; 6 uses
  %i.an = and i32 %i.am, 134217728
  %.not104 = icmp eq i32 %i.an, 0
  br i1 %.not104, label %3, label %bb.l, !prof !97

bb.l:                                             ; preds = %.thread100
  %i.ao = and i32 %i.al, 134217728
  %.not105 = icmp eq i32 %i.ao, 0
  br i1 %.not105, label %bb.m, label %bb.p, !prof !94

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i32 %i.o, 1
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = call fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %.165, i32 noundef %i.am)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.2 = phi i64 [ %.165, %bb.n ], [ %i.ar, %bb.o ], [ %.165, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %1, ptr %i.c, align 8, !tbaa !16
  %.not.i77 = icmp eq i64 %.2, 0
  br i1 %.not.i77, label %rb_imemo_fields_complex_tbl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = inttoptr i64 %.2 to ptr
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.au, %bb.q ], [ null, %bb.p ]
  %i.av = call i32 @rb_st_delete(ptr noundef %.0.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #26
  %.not72 = icmp eq i32 %i.av, 0
  br i1 %.not72, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_imemo_fields_complex_tbl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.aa

3:                                                ; preds = %.thread100
  %4 = icmp eq i32 %i.am, %i.al
  br i1 %4, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %3
  %.not.i78.a = icmp eq i64 %.165, 0
  br i1 %.not.i78.a, label %rb_imemo_fields_ptr.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ax = and i64 %i.aw, 65536
  %.not5.i = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr i8, ptr %i.ai, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.v, !prof !97

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.t, %bb.u, %bb.v
  %.0.i79 = phi ptr [ %i.az, %bb.v ], [ null, %bb.t ], [ %i.ay, %bb.u ] ; 3 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bb = and i32 %i.ba, 524287
  %i.bc = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr [40 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 28
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !120
  %i.bh = add i16 %i.bg, -1                       ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %.0.i79, i64 %i.bi ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !16
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !16
  %i.bl = and i32 %i.am, 524287
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr [40 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 28
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !120 ; 3 uses
  %.not69 = icmp eq i16 %i.bp, 0
  br i1 %.not69, label %bb.z, label %bb.w

bb.w:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = zext i16 %i.bh to i32
  %i.bs = sub nsw i32 %i.bq, %i.br                ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp slt i32 %i.bs, 0
  br i1 %i.bu, label %bb.x, label %rbimpl_size_mul_or_raise.exit, !prof !94

bb.x:                                             ; preds = %bb.w
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -65534, 4294967296) %i.bt) #27
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.w
  %i.bv = getelementptr i8, ptr %i.bj, i64 8
  %i.bw = shl nuw nsw i64 %i.bt, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bj, ptr noundef nonnull align 1 %i.bv, i64 noundef %i.bw, i1 noundef false) #26
  %i.bx = load i64, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = zext i32 %i.am to i64
  %i.ca = shl nuw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.ai, align 8, !tbaa !20
  %i.cc = and i64 %i.bx, 65536
  %.not70 = icmp eq i64 %i.cc, 0
  br i1 %.not70, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.cd = call i64 @rb_obj_embedded_size(i32 noundef %i.bq) #26
  %i.ce = call i64 @rb_gc_obj_slot_size(i64 noundef %.165) #26
  %.not71 = icmp ugt i64 %i.cd, %i.ce
  br i1 %.not71, label %bb.aa, label %rb_imemo_fields_ptr.exit83

rb_imemo_fields_ptr.exit83:                       ; preds = %bb.y
  %i.cf = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.cg = and i64 %i.cf, -65537
  store i64 %i.cg, ptr %i.ai, align 8, !tbaa !20
  %i.ch = zext i16 %i.bp to i64
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %5 = getelementptr i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %5, ptr noundef nonnull readonly align 1 %.0.i79, i64 noundef range(i64 1, 0) %i.ci, i1 noundef false) #26
  call void @ruby_xfree(ptr noundef nonnull %.0.i79) #26
  br label %bb.aa

bb.z:                                             ; preds = %rb_imemo_fields_ptr.exit
  call void @rb_free_generic_ivar(i64 noundef %0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rb_imemo_fields_ptr.exit83, %bb.y, %rbimpl_size_mul_or_raise.exit, %bb.s
  %.4 = phi i64 [ %.2, %bb.s ], [ 0, %bb.z ], [ %.165, %rb_imemo_fields_ptr.exit83 ], [ %.165, %bb.y ], [ %.165, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = zext i32 %i.am to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.ck, %i.cm
  store i64 %i.cn, ptr %i.g, align 8, !tbaa !20
  %.not73 = icmp eq i64 %.4, %.06499103
  br i1 %.not73, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.o, label %bb.ag [
    i32 1, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  ]

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93:      ; preds = %bb.ab, %bb.ab
  %i.co = and i64 %i.cj, 16384
  %.not10.i.i94 = icmp eq i64 %i.co, 0
  br i1 %.not10.i.i94, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88, label %bb.ac, !prof !121

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.cp = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.cq = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i89, label %.split.i.i92, label %bb.ad

.split.i.i92:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cr = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ad:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cs = getelementptr i8, ptr %i.cq, i64 128
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !32, !range !34, !noundef !35
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.split7.i.i91, label %bb.ae

.split7.i.i91:                                    ; preds = %bb.ad
  %i.cv = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.cq)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.ae, %.split7.i.i91, %.split.i.i92, %bb.ac
  %.0.i.i90 = phi ptr [ %i.cp, %bb.ac ], [ %i.cw, %bb.ae ], [ %i.cr, %.split.i.i92 ], [ %i.cv, %.split7.i.i91 ]
  %i.cx = getelementptr i8, ptr %.0.i.i90, i64 16
  store atomic volatile i64 %.4, ptr %i.cx seq_cst, align 8
  %i.cy = icmp eq i64 %.4, 0
  %i.cz = and i64 %.4, 7
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = or i1 %i.cy, %i.da
  br i1 %i.db, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.af

bb.af:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.4) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

bb.ag:                                            ; preds = %bb.ab
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %.4, i64 noundef %1, i64 noundef %.06499103)
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.af, %RCLASS_EXT_WRITABLE.exit.i, %bb.ab, %bb.ag, %bb.aa
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %3, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
  %.0 = phi i64 [ %i.dc, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit ], [ %2, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.i, %bb.ah
  %.1 = phi i64 [ %.0, %bb.ah ], [ %2, %bb.i ], [ %2, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_init_too_complex(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  br i1 %.not, label %ROBJECT_FIELDS.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = zext i32 %2 to i64
  %i.g = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.e, i64 noundef %i.f, i64 noundef 8) #30
  br label %bb.d

ROBJECT_FIELDS.exit:                              ; preds = %bb.a
  %i.h = zext i32 %2 to i64
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.h, i64 noundef 8) #31 ; 2 uses
  %.not.i11 = icmp eq i32 %1, 0
  br i1 %.not.i11, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %ROBJECT_FIELDS.exit
  %i.j = zext i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull readonly align 1 %i.d, i64 noundef range(i64 1, 0) %i.k, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ROBJECT_FIELDS.exit, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = or i64 %i.l, 65536
  store i64 %i.m, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.sink = phi ptr [ %i.i, %ruby_nonempty_memcpy.exit ], [ %i.g, %bb.b ]
  store ptr %.sink, ptr %i.d, align 8, !tbaa !42
  ret void
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ivar_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_obj_copy_ivs_to_hash_table_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  tail call void @rb_st_add_direct(ptr noundef %i.a, i64 noundef %0, i64 noundef %1) #26
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_fields_to_hash_table(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %5 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %6 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %7 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.s [
    i32 26, label %imemo_type_p.exit
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.j
  ]

imemo_type_p.exit:                                ; preds = %bb.b
  %i.i = and i64 %i.f, 61471
  %.not44 = icmp eq i64 %i.i, 53274
  br i1 %.not44, label %bb.c, label %bb.w

bb.c:                                             ; preds = %imemo_type_p.exit
  %i.j = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %0, ptr %7, align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.l, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.j, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %i.q = lshr i64 %i.f, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  %i.s = and i32 %i.r, 134217728
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = ptrtoint ptr %7 to i64
  %i.w = call i32 @rb_st_foreach(ptr noundef %i.u, ptr noundef nonnull @each_hash_iv, i64 noundef %i.v) #26 ; 0 uses
  br label %imemo_fields_each.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %i.f, 65536
  %.not5.i.i = icmp eq i64 %i.x, 0
  %i.y = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.e, %bb.d
  %.0.i12.i = phi ptr [ %i.z, %bb.e ], [ %i.y, %bb.d ]
  store ptr %.0.i12.i, ptr %i.n, align 8, !tbaa !133
  %i.aa = call zeroext i1 @rb_shape_foreach_field(i32 noundef %i.r, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %7) #26 ; 0 uses
  br label %imemo_fields_each.exit

imemo_fields_each.exit:                           ; preds = %rb_imemo_fields_complex_tbl.exit.i, %rb_imemo_fields_ptr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  %i.ab = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 %0, ptr %6, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %i.ad, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %i.ab, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ah, i8 0, i64 7, i1 false)
  %i.ai = lshr i64 %i.f, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = and i32 %i.aj, 134217728
  %.not.i25 = icmp eq i32 %i.ak, 0
  br i1 %.not.i25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.e, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = ptrtoint ptr %6 to i64
  %i.ao = call i32 @rb_st_foreach(ptr noundef %i.am, ptr noundef nonnull @each_hash_iv, i64 noundef %i.an) #26 ; 0 uses
  br label %obj_fields_each.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %i.e, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.i, !prof !97

bb.i:                                             ; preds = %bb.h
end_hunk_0
