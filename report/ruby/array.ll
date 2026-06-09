inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_uniq:bb.a
  %i.bp = getelementptr [8 x i8], ptr %.0.i.i.i.i, i64 %.0.i.i12
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %i.br = tail call i32 @rb_hash_add_new_element(i64 noundef %i.bc, i64 noundef %i.bq, i64 noundef %i.bq) #24 ; 0 uses
  %i.bs = add nuw nsw i64 %.0.i.i12, 1
  br label %bb.n, !llvm.loop !81

ary_make_hash.exit:                               ; preds = %rb_array_len.exit.i.i15, %rb_array_len.exit.thread.i.i14
  %i.bt = tail call i64 @rb_hash_values(i64 noundef %i.bc) #24
  br label %rb_ary_dup.exit

rb_ary_dup.exit:                                  ; preds = %bb.e, %bb.d, %ary_make_hash_by.exit, %ary_make_hash.exit
  %.0 = phi i64 [ %i.bt, %ary_make_hash.exit ], [ %i.ax, %ary_make_hash_by.exit ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_ary_uniq_bang(i64 noundef %0) #4 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !22

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 19 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #23
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_ary_modify_check.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #24
  %.pre = load i64, ptr %i.d, align 8, !tbaa !11
  br label %rb_ary_modify_check.exit

rb_ary_modify_check.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_ary_modify_check.exit
  %i.l = lshr i64 %i.j, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %rb_ary_modify_check.exit
  %i.n = getelementptr i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.m, %bb.c ], [ %i.o, %bb.d ]
  %i.p = icmp slt i64 %.0.i, 2
  br i1 %i.p, label %bb.z, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit
  %i.q = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.q, 0
  %i.r = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.s = and i64 %i.r, 8192
  %.not.i.i.i24 = icmp eq i64 %i.s, 0             ; 2 uses
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i.i24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.r, 15
  %i.u = and i64 %i.t, 127
  br label %ary_tmp_hash_new.exit.i

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  br label %ary_tmp_hash_new.exit.i

ary_tmp_hash_new.exit.i:                          ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.u, %bb.g ], [ %i.w, %bb.h ]
  %i.x = tail call i64 @rb_hash_new_with_size(i64 noundef %.0.i.i.i) #24 ; 4 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.d, i64 32
  br label %bb.i

bb.i:                                             ; preds = %RARRAY_AREF.exit.i.i.i, %ary_tmp_hash_new.exit.i
  %.0.i.i = phi i64 [ 0, %ary_tmp_hash_new.exit.i ], [ %i.ao, %RARRAY_AREF.exit.i.i.i ] ; 4 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i3.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i3.i, label %rb_array_len.exit.i.i, label %rb_array_len.exit.thread.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.i
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.af = icmp slt i64 %.0.i.i, %i.ae
  br i1 %i.af, label %rb_array_len.exit.i.i.i, label %ary_make_hash_by.exit

rb_array_len.exit.thread.i.i:                     ; preds = %bb.i
  %i.ag = lshr i64 %i.ac, 15
  %i.ah = and i64 %i.ag, 127
  %i.ai = icmp samesign ult i64 %.0.i.i, %i.ah
  br i1 %i.ai, label %RARRAY_AREF.exit.i.i.i, label %ary_make_hash_by.exit

rb_array_len.exit.i.i.i:                          ; preds = %rb_array_len.exit.i.i
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i.i.i

RARRAY_AREF.exit.i.i.i:                           ; preds = %rb_array_len.exit.i.i.i, %rb_array_len.exit.thread.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.aj, %rb_array_len.exit.i.i.i ], [ %i.aa, %rb_array_len.exit.thread.i.i ]
  %i.ak = getelementptr [8 x i8], ptr %.0.i.i.i.i.i, i64 %.0.i.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %i.am = tail call i64 @rb_yield(i64 noundef %i.al) #24
  %i.an = tail call i32 @rb_hash_add_new_element(i64 noundef %i.x, i64 noundef %i.am, i64 noundef %i.al) #24 ; 0 uses
  %i.ao = add nuw nsw i64 %.0.i.i, 1
  br label %bb.i, !llvm.loop !146

bb.j:                                             ; preds = %bb.e
  br i1 %.not.i.i.i24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.r, 15
  %i.aq = and i64 %i.ap, 127
  br label %ary_tmp_hash_new.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %i.d, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14
  br label %ary_tmp_hash_new.exit.i25

ary_tmp_hash_new.exit.i25:                        ; preds = %bb.l, %bb.k
  %.0.i.i.i26 = phi i64 [ %i.aq, %bb.k ], [ %i.as, %bb.l ]
  %i.at = tail call i64 @rb_hash_new_with_size(i64 noundef %.0.i.i.i26) #24 ; 4 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !15
  %i.aw = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %i.ax = getelementptr i8, ptr %i.d, i64 32
  br label %bb.m

bb.m:                                             ; preds = %RARRAY_AREF.exit.i.i, %ary_tmp_hash_new.exit.i25
  %.0.i.i27 = phi i64 [ 0, %ary_tmp_hash_new.exit.i25 ], [ %i.bj, %RARRAY_AREF.exit.i.i ] ; 4 uses
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.az = and i64 %i.ay, 8192
  %.not.i.i3.i28 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i3.i28, label %rb_array_len.exit.i.i30, label %rb_array_len.exit.thread.i.i29

rb_array_len.exit.i.i30:                          ; preds = %bb.m
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.bb = icmp slt i64 %.0.i.i27, %i.ba
  br i1 %i.bb, label %bb.n, label %ary_make_hash_by.exit

rb_array_len.exit.thread.i.i29:                   ; preds = %bb.m
  %i.bc = lshr i64 %i.ay, 15
  %i.bd = and i64 %i.bc, 127
  %i.be = icmp samesign ult i64 %.0.i.i27, %i.bd
  br i1 %i.be, label %RARRAY_AREF.exit.i.i, label %ary_make_hash_by.exit

bb.n:                                             ; preds = %rb_array_len.exit.i.i30
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.n, %rb_array_len.exit.thread.i.i29
  %.0.i.i.i.i = phi ptr [ %i.bf, %bb.n ], [ %i.aw, %rb_array_len.exit.thread.i.i29 ]
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i.i.i, i64 %.0.i.i27
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %i.bi = tail call i32 @rb_hash_add_new_element(i64 noundef %i.at, i64 noundef %i.bh, i64 noundef %i.bh) #24 ; 0 uses
  %i.bj = add nuw nsw i64 %.0.i.i27, 1
  br label %bb.m, !llvm.loop !81

ary_make_hash_by.exit:                            ; preds = %rb_array_len.exit.thread.i.i, %rb_array_len.exit.i.i, %rb_array_len.exit.thread.i.i29, %rb_array_len.exit.i.i30
  %.pre-phi = phi ptr [ %i.au, %rb_array_len.exit.thread.i.i29 ], [ %i.au, %rb_array_len.exit.i.i30 ], [ %i.y, %rb_array_len.exit.i.i ], [ %i.y, %rb_array_len.exit.thread.i.i ]
  %i.bk = phi i64 [ %i.ay, %rb_array_len.exit.thread.i.i29 ], [ %i.ay, %rb_array_len.exit.i.i30 ], [ %i.ac, %rb_array_len.exit.i.i ], [ %i.ac, %rb_array_len.exit.thread.i.i ] ; 6 uses
  %.022 = phi i64 [ %i.at, %rb_array_len.exit.thread.i.i29 ], [ %i.at, %rb_array_len.exit.i.i30 ], [ %i.x, %rb_array_len.exit.i.i ], [ %i.x, %rb_array_len.exit.thread.i.i ] ; 2 uses
  %i.bl = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 2 uses
  %i.bm = and i64 %i.bl, 32768
  %.not.i.i31 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %ary_make_hash_by.exit
  %i.bn = lshr i64 %i.bl, 16
  %i.bo = and i64 %i.bn, 15
  br label %RHASH_SIZE.exit

bb.p:                                             ; preds = %ary_make_hash_by.exit
  %i.bp = add i64 %.022, 24
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !147
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i32 = phi i64 [ %i.bo, %bb.o ], [ %i.bs, %bb.p ] ; 2 uses
  %i.bt = and i64 %i.bk, 8192
  %.not.i33 = icmp eq i64 %i.bt, 0
  br i1 %.not.i33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %RHASH_SIZE.exit
  %i.bu = lshr i64 %i.bk, 15
  %i.bv = and i64 %i.bu, 127
  br label %rb_array_len.exit35

bb.r:                                             ; preds = %RHASH_SIZE.exit
  %i.bw = getelementptr i8, ptr %i.d, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !14
  br label %rb_array_len.exit35

rb_array_len.exit35:                              ; preds = %bb.q, %bb.r
  %.0.i34 = phi i64 [ %i.bv, %bb.q ], [ %i.bx, %bb.r ]
  %i.by = icmp eq i64 %.0.i34, %.0.i32
  br i1 %i.by, label %bb.z, label %RB_OBJ_FROZEN.exit.i.i38

RB_OBJ_FROZEN.exit.i.i38:                         ; preds = %rb_array_len.exit35
  %i.bz = and i64 %i.bk, 2048
  %.not.i.i39 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i39, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i40, label %RB_OBJ_FROZEN.exit.thread.i.i37, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i37:                  ; preds = %RB_OBJ_FROZEN.exit.i.i38
  tail call void @rb_error_frozen_object(i64 noundef %0) #23
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i40:             ; preds = %RB_OBJ_FROZEN.exit.i.i38
  %i.ca = and i64 %i.bk, 31
  %i.cb = icmp ne i64 %i.ca, 5
  %i.cc = and i64 %i.bk, 49152
  %.not8.i.i41 = icmp eq i64 %i.cc, 0
  %or.cond.i.i42 = or i1 %i.cb, %.not8.i.i41
  br i1 %or.cond.i.i42, label %rb_ary_modify_check.exit43, label %bb.s, !prof !24

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i40
  tail call void @rb_str_modify(i64 noundef %0) #24
  %.pre51 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %rb_ary_modify_check.exit43

rb_ary_modify_check.exit43:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i40, %bb.s
  %i.cd = phi i64 [ %i.bk, %rbimpl_RB_TYPE_P_fastpath.exit.i.i40 ], [ %.pre51, %bb.s ] ; 3 uses
  %i.ce = and i64 %i.cd, 8192
  %.not47 = icmp eq i64 %i.ce, 0
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %rb_ary_modify_check.exit43
  %i.cf = and i64 %i.cd, -4161537                 ; 2 uses
  store i64 %i.cf, ptr %i.d, align 8, !tbaa !11
  br label %bb.v

bb.u:                                             ; preds = %rb_ary_modify_check.exit43
  %i.cg = getelementptr i8, ptr %i.d, i64 16
  store i64 0, ptr %i.cg, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = phi i64 [ %i.cd, %bb.u ], [ %i.cf, %bb.t ] ; 3 uses
  %i.ci = and i64 %i.ch, 4096
  %.not48 = icmp eq i64 %i.ci, 0
  br i1 %.not48, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr i8, ptr %i.d, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !14 ; 3 uses
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i64 %i.ck, 7
  %i.cn = icmp eq i64 %i.cm, 0
  %.not3.i.i.i44 = and i1 %i.cl, %i.cn
  br i1 %.not3.i.i.i44, label %RB_OBJ_FROZEN.exit.i.i45, label %RB_FL_SET.exit

RB_OBJ_FROZEN.exit.i.i45:                         ; preds = %bb.w
  %i.co = inttoptr i64 %i.ck to ptr               ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = and i64 %i.cp, 2048
  %.not.i.i46 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i46, label %bb.x, label %RB_FL_SET.exit

bb.x:                                             ; preds = %RB_OBJ_FROZEN.exit.i.i45
  %i.cr = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !14
  %i.ct = add i64 %i.cs, -1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !14
  %.pre52 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.x, %RB_OBJ_FROZEN.exit.i.i45, %bb.w
  %i.cu = phi i64 [ %.pre52, %bb.x ], [ %i.ch, %RB_OBJ_FROZEN.exit.i.i45 ], [ %i.ch, %bb.w ]
  %i.cv = and i64 %i.cu, -12289
  %i.cw = or disjoint i64 %i.cv, 8192
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %RB_FL_SET.exit, %bb.v
  tail call fastcc void @ary_resize_capa(i64 noundef %0, i64 noundef %.0.i32)
  tail call void @rb_hash_foreach(i64 noundef %.022, ptr noundef nonnull @push_value, i64 noundef %0) #24
  br label %bb.z

bb.z:                                             ; preds = %rb_array_len.exit35, %rb_array_len.exit, %bb.y
  %.0 = phi i64 [ %0, %bb.y ], [ 4, %rb_array_len.exit ], [ 4, %rb_array_len.exit35 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_compact(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.i = tail call fastcc i64 @ary_new(i64 noundef %i.h, i64 noundef %.0.i.i) ; 5 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i13.i = icmp eq i64 %i.k, 0
  br i1 %.not.i13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.l = getelementptr i8, ptr %i.a, i64 16
  br label %rb_array_const_ptr.exit.i

bb.e:                                             ; preds = %rb_array_len.exit.i
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.e, %bb.d
  %.0.i14.i = phi ptr [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  tail call fastcc void @ary_memcpy0(i64 noundef %i.i, i64 noundef 0, i64 noundef %.0.i.i, ptr noundef readonly %.0.i14.i, i64 noundef %i.i)
  %i.o = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = and i64 %i.p, 8192
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_array_const_ptr.exit.i
  %i.r = and i64 %i.p, -4161537
  %i.s = shl i64 %.0.i.i, 15
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !11
  br label %rb_ary_dup.exit

bb.g:                                             ; preds = %rb_array_const_ptr.exit.i
  %i.u = getelementptr i8, ptr %i.o, i64 16
  store i64 %.0.i.i, ptr %i.u, align 8, !tbaa !14
  br label %rb_ary_dup.exit

rb_ary_dup.exit:                                  ; preds = %bb.f, %bb.g
  %i.v = tail call i64 @rb_ary_compact_bang(i64 noundef %i.i) ; 0 uses
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_ary_compact_bang(i64 noundef %0) #4 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !22

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #23
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i.i = or i1 %i.h, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_ary_modify.exit, label %bb.b, !prof !24
end_hunk_0
begin_hunk_1_@rb_ary_splice:bb.a

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %0) #24
  br label %rb_ary_modify.exit

rb_ary_modify.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.aa
  tail call void @rb_ary_cancel_sharing(i64 noundef %0)
  %i.by = add i64 %.0.i, %4
  %i.bz = sub i64 %i.by, %.0105                   ; 5 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cb = and i64 %i.ca, 8192
  %.not150 = icmp eq i64 %i.cb, 0
  br i1 %.not150, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %rb_ary_modify.exit
  %i.cc = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #24
  %i.cd = add i64 %i.cc, -16
  %i.ce = lshr i64 %i.cd, 3
  br label %bb.ae

bb.ac:                                            ; preds = %rb_ary_modify.exit
  %i.cf = and i64 %i.ca, 16777216
  %.not151 = icmp eq i64 %i.cf, 0
  br i1 %.not151, label %bb.ad, label %rb_array_len.exit137

rb_array_len.exit137:                             ; preds = %bb.ac
  %i.cg = getelementptr i8, ptr %i.c, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr i8, ptr %i.c, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %rb_array_len.exit137, %bb.ad, %bb.ab
  %i.ck = phi i64 [ %i.ce, %bb.ab ], [ %i.ch, %rb_array_len.exit137 ], [ %i.cj, %bb.ad ]
  %.not123 = icmp slt i64 %i.bz, %i.ck
  br i1 %.not123, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cm = and i64 %i.cl, 8192
  %.not14.i = icmp eq i64 %i.cm, 0
  br i1 %.not14.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #24
  %i.co = add i64 %i.cn, -16
  %i.cp = lshr i64 %i.co, 3
  br label %ary_double_capa.exit

bb.ah:                                            ; preds = %bb.af
  %i.cq = and i64 %i.cl, 16777216
  %.not15.i = icmp eq i64 %i.cq, 0
  br i1 %.not15.i, label %bb.ai, label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ah
  %i.cr = getelementptr i8, ptr %i.c, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !14
  br label %ary_double_capa.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr i8, ptr %i.c, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !14
  br label %ary_double_capa.exit

ary_double_capa.exit:                             ; preds = %bb.ag, %rb_array_len.exit.i, %bb.ai
  %i.cv = phi i64 [ %i.cp, %bb.ag ], [ %i.cs, %rb_array_len.exit.i ], [ %i.cu, %bb.ai ]
  %i.cw = sdiv i64 %i.cv, 2
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 16) ; 2 uses
  %i.cx = sub i64 1152921504606846975, %i.bz      ; 2 uses
  %.not.i138 = icmp slt i64 %spec.store.select.i, %i.cx
  %i.cy = sdiv i64 %i.cx, 2
  %.0.i139 = select i1 %.not.i138, i64 %spec.store.select.i, i64 %i.cy
  %i.cz = add i64 %.0.i139, %i.bz
  tail call fastcc void @ary_resize_capa(i64 noundef %0, i64 noundef %i.cz)
  br label %bb.aj

bb.aj:                                            ; preds = %ary_double_capa.exit, %bb.ae
  %.not124 = icmp eq i64 %.0105, %4
  br i1 %.not124, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = load i64, ptr %i.c, align 8, !tbaa !11
  %i.db = and i64 %i.da, 8192
  %.not.i.i140 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i140, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = getelementptr i8, ptr %i.c, i64 16
  br label %rb_ary_ptr_use_start.exit

bb.am:                                            ; preds = %bb.ak
  %i.dd = getelementptr i8, ptr %i.c, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit

rb_ary_ptr_use_start.exit:                        ; preds = %bb.al, %bb.am
  %.0.i.i = phi ptr [ %i.dc, %bb.al ], [ %i.de, %bb.am ]
  %i.df = add i64 %.0, %.0105
  %i.dg = sub i64 %.0.i, %i.df                    ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 2305843009213693951
  br i1 %i.dh, label %bb.an, label %rbimpl_size_mul_or_raise.exit, !prof !21

bb.an:                                            ; preds = %rb_ary_ptr_use_start.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.dg) #23
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_ary_ptr_use_start.exit
  %i.di = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0 ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %.0105
  %i.dk = getelementptr [8 x i8], ptr %i.di, i64 %4
  %i.dl = shl nuw i64 %i.dg, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.dk, ptr noundef nonnull align 1 %i.dj, i64 noundef %i.dl, i1 noundef false) #24
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.dn = and i64 %i.dm, 8192
  %.not152 = icmp eq i64 %i.dn, 0
  br i1 %.not152, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.do = and i64 %i.dm, -4161537
  %i.dp = shl i64 %i.bz, 15
  %i.dq = or i64 %i.do, %i.dp
  store i64 %i.dq, ptr %i.c, align 8, !tbaa !11
  br label %bb.aq

bb.ap:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.dr = getelementptr i8, ptr %i.c, i64 16
  store i64 %i.bz, ptr %i.dr, align 8, !tbaa !14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.aj
  %i.ds = icmp sgt i64 %4, 0
  br i1 %i.ds, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.dt = icmp eq i64 %i.ab, -1
  br i1 %i.dt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @rb_gc_writebarrier_remember(i64 noundef %0) #24
  %.pre = load i64, ptr %i.c, align 8, !tbaa !11
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.du = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.dv = and i64 %i.du, 8192
  %.not.i141 = icmp eq i64 %i.dv, 0
  br i1 %.not.i141, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = getelementptr i8, ptr %i.c, i64 16
  br label %rb_array_const_ptr.exit143

bb.av:                                            ; preds = %bb.at
  %i.dx = getelementptr i8, ptr %i.c, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit143

rb_array_const_ptr.exit143:                       ; preds = %bb.au, %bb.av
  %.0.i142 = phi ptr [ %i.dw, %bb.au ], [ %i.dy, %bb.av ]
  %i.dz = getelementptr [8 x i8], ptr %.0.i142, i64 %i.ab
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %rb_array_const_ptr.exit143
  %i.ea = phi i64 [ %.pre, %bb.as ], [ %i.du, %rb_array_const_ptr.exit143 ]
  %.1 = phi ptr [ %3, %bb.as ], [ %i.dz, %rb_array_const_ptr.exit143 ]
  %i.eb = and i64 %i.ea, 8192
  %.not.i.i144 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i144, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ec = getelementptr i8, ptr %i.c, i64 16
  br label %rb_ary_ptr_use_start.exit146

bb.ay:                                            ; preds = %bb.aw
  %i.ed = getelementptr i8, ptr %i.c, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit146

rb_ary_ptr_use_start.exit146:                     ; preds = %bb.ax, %bb.ay
  %.0.i.i145 = phi ptr [ %i.ec, %bb.ax ], [ %i.ee, %bb.ay ]
  %i.ef = icmp samesign ugt i64 %4, 2305843009213693951
  br i1 %i.ef, label %bb.az, label %rbimpl_size_mul_or_raise.exit147, !prof !21

bb.az:                                            ; preds = %rb_ary_ptr_use_start.exit146
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %4) #23
  unreachable

rbimpl_size_mul_or_raise.exit147:                 ; preds = %rb_ary_ptr_use_start.exit146
  %i.eg = getelementptr [8 x i8], ptr %.0.i.i145, i64 %.0
  %i.eh = shl nuw i64 %4, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.eg, ptr noundef nonnull align 1 %.1, i64 noundef %i.eh, i1 noundef false) #24
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aq, %rbimpl_size_mul_or_raise.exit147, %bb.v, %bb.w
  ret void
}

declare i64 @rb_hash_start(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #17

declare i64 @rb_hash(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #17

declare i32 @rb_eql(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #6

declare i32 @rb_hash_add_new_element(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @rb_obj_call_init_kw(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @rb_keyword_given_p() local_unnamed_addr #6

declare i64 @rb_class_new_instance_pass_kw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #18

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #6

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #6

declare i64 @rb_yield_force_blockarg(i64 noundef) local_unnamed_addr #6

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @recursive_equal(i64 noundef %0, i64 noundef %1, i32 noundef %2) #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %rb_array_const_ptr.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 8192
  %.not.i34 = icmp eq i64 %i.i, 0
  br i1 %.not.i34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_array_const_ptr.exit
  %i.j = getelementptr i8, ptr %i.g, i64 16
  br label %rb_array_const_ptr.exit36

bb.f:                                             ; preds = %rb_array_const_ptr.exit
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit36

rb_array_const_ptr.exit36:                        ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.j, %bb.e ], [ %i.l, %bb.f ]
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_array_const_ptr.exit36
  %i.m = lshr i64 %i.b, 15
  %i.n = and i64 %i.m, 127
  br label %rb_array_len.exit

bb.h:                                             ; preds = %rb_array_const_ptr.exit36
  %i.o = getelementptr i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.g, %bb.h
  %.0.i38 = phi i64 [ %i.n, %bb.g ], [ %i.p, %bb.h ] ; 2 uses
  %i.q = icmp sgt i64 %.0.i38, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_array_len.exit
  %i.r = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.s = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.t = getelementptr i8, ptr %i.a, i64 32
  %i.u = getelementptr i8, ptr %i.g, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.054 = phi ptr [ %.0.i35, %.lr.ph ], [ %i.ao, %bb.t ] ; 2 uses
  %.02253 = phi ptr [ %.0.i, %.lr.ph ], [ %i.an, %bb.t ] ; 2 uses
  %.02452 = phi i64 [ %.0.i38, %.lr.ph ], [ %.125, %bb.t ]
  %.02651 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.t ] ; 4 uses
  %i.v = load i64, ptr %.02253, align 8, !tbaa !15 ; 2 uses
  %i.w = load i64, ptr %.054, align 8, !tbaa !15  ; 2 uses
  %.not31 = icmp eq i64 %i.v, %i.w
  br i1 %.not31, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i64 @rb_equal(i64 noundef %i.v, i64 noundef %i.w) #24
  %.not32 = icmp eq i64 %i.x, 0
  br i1 %.not32, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.z = and i64 %i.y, 8192
  %.not.i39 = icmp eq i64 %i.z, 0                 ; 2 uses
  br i1 %.not.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = lshr i64 %i.y, 15
  %i.ab = and i64 %i.aa, 127
  br label %rb_array_len.exit41

bb.m:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !14
  br label %rb_array_len.exit41

rb_array_len.exit41:                              ; preds = %bb.l, %bb.m
  %.0.i40 = phi i64 [ %i.ab, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i42 = icmp eq i64 %i.ae, 0                ; 2 uses
  br i1 %.not.i42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %rb_array_len.exit41
  %i.af = lshr i64 %i.ad, 15
  %i.ag = and i64 %i.af, 127
  br label %rb_array_len.exit44

bb.o:                                             ; preds = %rb_array_len.exit41
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !14
  br label %rb_array_len.exit44

rb_array_len.exit44:                              ; preds = %bb.n, %bb.o
  %.0.i43 = phi i64 [ %i.ag, %bb.n ], [ %i.ah, %bb.o ]
  %.not33 = icmp eq i64 %.0.i40, %.0.i43
  br i1 %.not33, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %rb_array_len.exit44
  %i.ai = icmp slt i64 %.0.i40, %.02651
  br i1 %i.ai, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i39, label %bb.r, label %rb_array_const_ptr.exit47

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit47

rb_array_const_ptr.exit47:                        ; preds = %bb.q, %bb.r
  %.0.i46 = phi ptr [ %i.aj, %bb.r ], [ %i.r, %bb.q ]
  %i.ak = getelementptr [8 x i8], ptr %.0.i46, i64 %.02651
  br i1 %.not.i42, label %bb.s, label %rb_array_const_ptr.exit50

bb.s:                                             ; preds = %rb_array_const_ptr.exit47
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit50

rb_array_const_ptr.exit50:                        ; preds = %rb_array_const_ptr.exit47, %bb.s
  %.0.i49 = phi ptr [ %i.al, %bb.s ], [ %i.s, %rb_array_const_ptr.exit47 ]
  %i.am = getelementptr [8 x i8], ptr %.0.i49, i64 %.02651
  br label %bb.t

bb.t:                                             ; preds = %rb_array_const_ptr.exit50, %bb.i
  %.125 = phi i64 [ %.0.i40, %rb_array_const_ptr.exit50 ], [ %.02452, %bb.i ] ; 2 uses
  %.123 = phi ptr [ %i.ak, %rb_array_const_ptr.exit50 ], [ %.02253, %bb.i ]
  %.1 = phi ptr [ %i.am, %rb_array_const_ptr.exit50 ], [ %.054, %bb.i ]
  %i.an = getelementptr i8, ptr %.123, i64 8
  %i.ao = getelementptr i8, ptr %.1, i64 8
  %i.ap = add nuw nsw i64 %.02651, 1              ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %.125
  br i1 %i.aq, label %bb.i, label %.loopexit, !llvm.loop !230

.loopexit:                                        ; preds = %rb_array_len.exit44, %bb.p, %bb.j, %bb.t, %rb_array_len.exit, %bb.a
  %.027 = phi i64 [ 20, %bb.a ], [ 20, %rb_array_len.exit ], [ 0, %bb.j ], [ 0, %rb_array_len.exit44 ], [ 20, %bb.p ], [ 20, %bb.t ]
  ret i64 %.027
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @recursive_eql(i64 noundef %0, i64 noundef %1, i32 noundef %2) #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %i.d = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %rb_ary_elt.exit21, %.preheader
  %.0 = phi i64 [ %i.aa, %rb_ary_elt.exit21 ], [ 0, %.preheader ] ; 6 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0                   ; 2 uses
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp slt i64 %.0, %i.i
  br i1 %i.j, label %rb_array_len.exit.i, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.b
  %i.k = lshr i64 %i.g, 15
  %i.l = and i64 %i.k, 127                        ; 2 uses
  %i.m = icmp samesign ult i64 %.0, %i.l
  br i1 %i.m, label %rb_array_len.exit.i, label %.loopexit

end_hunk_1
begin_hunk_2_@recursive_eql:bb.a

rb_ary_elt.exit:                                  ; preds = %rb_array_len.exit.i, %RARRAY_AREF.exit.i
  %.0.i12 = phi i64 [ %i.p, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ]
  %i.q = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.r = and i64 %i.q, 8192
  %.not.i.i13 = icmp eq i64 %i.r, 0               ; 2 uses
  br i1 %.not.i.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_ary_elt.exit
  %i.s = lshr i64 %i.q, 15
  %i.t = and i64 %i.s, 127
  br label %rb_array_len.exit.i14

bb.f:                                             ; preds = %rb_ary_elt.exit
  %i.u = load i64, ptr %i.e, align 8, !tbaa !14
  br label %rb_array_len.exit.i14

rb_array_len.exit.i14:                            ; preds = %bb.f, %bb.e
  %.0.i.i15 = phi i64 [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = icmp ne i64 %.0.i.i15, 0
  %.not.i16 = icmp sgt i64 %.0.i.i15, %.0
  %or.cond = select i1 %i.v, i1 %.not.i16, i1 false
  br i1 %or.cond, label %bb.g, label %rb_ary_elt.exit21

bb.g:                                             ; preds = %rb_array_len.exit.i14
  br i1 %.not.i.i13, label %bb.h, label %RARRAY_AREF.exit.i19

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i19

RARRAY_AREF.exit.i19:                             ; preds = %bb.g, %bb.h
  %.0.i.i.i20 = phi ptr [ %i.w, %bb.h ], [ %i.e, %bb.g ]
  %i.x = getelementptr [8 x i8], ptr %.0.i.i.i20, i64 %.0
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15
  br label %rb_ary_elt.exit21

rb_ary_elt.exit21:                                ; preds = %rb_array_len.exit.i14, %RARRAY_AREF.exit.i19
  %.0.i18 = phi i64 [ %i.y, %RARRAY_AREF.exit.i19 ], [ 4, %rb_array_len.exit.i14 ]
  %i.z = tail call i32 @rb_eql(i64 noundef %.0.i12, i64 noundef %.0.i18) #24
  %.not10 = icmp eq i32 %i.z, 0
  %i.aa = add nuw nsw i64 %.0, 1
  br i1 %.not10, label %.loopexit, label %bb.b, !llvm.loop !231

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %rb_ary_elt.exit21, %bb.a
  %.09 = phi i64 [ 20, %bb.a ], [ 20, %rb_array_len.exit.thread ], [ 20, %rb_array_len.exit ], [ 0, %rb_ary_elt.exit21 ]
  ret i64 %.09
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_ary_union(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %rb_ary_includes_by_eql.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ax, %rb_ary_includes_by_eql.exit ] ; 5 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0                   ; 2 uses
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp slt i64 %.0, %i.i
  br i1 %i.j, label %rb_array_len.exit.i, label %bb.m

rb_array_len.exit.thread:                         ; preds = %bb.b
  %i.k = lshr i64 %i.g, 15
  %i.l = and i64 %i.k, 127                        ; 2 uses
  %i.m = icmp slt i64 %.0, %i.l
  br i1 %i.m, label %rb_array_len.exit.i, label %bb.m

rb_array_len.exit.i:                              ; preds = %rb_array_len.exit, %rb_array_len.exit.thread
  %.0.i.i = phi i64 [ %i.l, %rb_array_len.exit.thread ], [ %i.i, %rb_array_len.exit ]
  %i.n = icmp ne i64 %.0.i.i, 0
  %i.o = icmp sgt i64 %.0, -1
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %rb_ary_elt.exit

bb.c:                                             ; preds = %rb_array_len.exit.i
  br i1 %.not.i, label %bb.d, label %RARRAY_AREF.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.b, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %rb_ary_elt.exit

rb_ary_elt.exit:                                  ; preds = %rb_array_len.exit.i, %RARRAY_AREF.exit.i
  %.0.i10 = phi i64 [ %i.r, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ] ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit.i13, %rb_ary_elt.exit
  %.08.i = phi i64 [ 0, %rb_ary_elt.exit ], [ %i.ad, %RARRAY_AREF.exit.i13 ] ; 4 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.t = and i64 %i.s, 8192
  %.not.i.i11 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i11, label %rb_array_len.exit.i16, label %rb_array_len.exit.thread.i

rb_array_len.exit.i16:                            ; preds = %bb.e
  %i.u = load i64, ptr %i.e, align 8, !tbaa !14
  %i.v = icmp slt i64 %.08.i, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

rb_array_len.exit.thread.i:                       ; preds = %bb.e
  %i.w = lshr i64 %i.s, 15
  %i.x = and i64 %i.w, 127
  %i.y = icmp samesign ult i64 %.08.i, %i.x
  br i1 %i.y, label %RARRAY_AREF.exit.i13, label %bb.g

bb.f:                                             ; preds = %rb_array_len.exit.i16
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i13

RARRAY_AREF.exit.i13:                             ; preds = %bb.f, %rb_array_len.exit.thread.i
  %.0.i.i.i14 = phi ptr [ %i.z, %bb.f ], [ %i.e, %rb_array_len.exit.thread.i ]
  %i.aa = getelementptr [8 x i8], ptr %.0.i.i.i14, i64 %.08.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = tail call i32 @rb_eql(i64 noundef %.0.i10, i64 noundef %i.ab) #24
  %.not.i15 = icmp eq i32 %i.ac, 0
  %i.ad = add nuw nsw i64 %.08.i, 1
  br i1 %.not.i15, label %bb.e, label %rb_ary_includes_by_eql.exit, !llvm.loop !79

bb.g:                                             ; preds = %rb_array_len.exit.thread.i
  %i.ae = lshr i64 %i.s, 15
  %i.af = and i64 %i.ae, 127
  br label %rb_array_len.exit.i18

bb.h:                                             ; preds = %rb_array_len.exit.i16
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !14
  br label %rb_array_len.exit.i18

rb_array_len.exit.i18:                            ; preds = %bb.h, %bb.g
  %.0.i.i19 = phi i64 [ %i.af, %bb.g ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ah = tail call fastcc i64 @ary_ensure_room_for_push(i64 noundef %0, i64 noundef 1)
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !11
  %i.aj = and i64 %i.ai, 8192
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.i, label %rb_ary_ptr_use_start.exit.i

bb.i:                                             ; preds = %rb_array_len.exit.i18
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i

rb_ary_ptr_use_start.exit.i:                      ; preds = %rb_array_len.exit.i18, %bb.i
  %.0.i.i.i20 = phi ptr [ %i.ak, %bb.i ], [ %i.e, %rb_array_len.exit.i18 ]
  %i.al = getelementptr [8 x i8], ptr %.0.i.i.i20, i64 %.0.i.i19
  store i64 %.0.i10, ptr %i.al, align 8, !tbaa !15
  %i.am = icmp eq i64 %.0.i10, 0
  %i.an = and i64 %.0.i10, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %rb_obj_write.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_ary_ptr_use_start.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.ah, i64 noundef %.0.i10) #24
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.j, %rb_ary_ptr_use_start.exit.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.ar = and i64 %i.aq, 8192
  %.not.i21 = icmp eq i64 %i.ar, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_write.exit.i
  %i.as = and i64 %i.aq, -4161537
  %i.at = shl i64 %.0.i.i19, 15
  %i.au = add i64 %i.at, 32768
  %i.av = or i64 %i.as, %i.au
  store i64 %i.av, ptr %i.d, align 8, !tbaa !11
  br label %rb_ary_includes_by_eql.exit

bb.l:                                             ; preds = %rb_obj_write.exit.i
  %i.aw = add i64 %.0.i.i19, 1
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !14
  br label %rb_ary_includes_by_eql.exit

rb_ary_includes_by_eql.exit:                      ; preds = %RARRAY_AREF.exit.i13, %bb.l, %bb.k
  %i.ax = add i64 %.0, 1
  br label %bb.b, !llvm.loop !232

bb.m:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  ret void
}

declare i64 @rb_hash_values(i64 noundef) local_unnamed_addr #6

declare i32 @rb_hash_stlike_update(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 0, 2) i32 @ary_hash_orset(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #19 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !15
  store i64 %2, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #18

declare i64 @rb_block_call(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @sort_by_i(i64 noundef %0, i64 %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4) #4 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %0) #24
  ret i64 %i.a
}

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @select_bang_i(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load volatile i64, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 32
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.018 = phi i64 [ 0, %bb.a ], [ %.1, %bb.g ]    ; 5 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.u, %bb.g ]     ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !14
  %i.k = icmp slt i64 %.0, %i.j
  br i1 %i.k, label %bb.c, label %bb.h

rb_array_len.exit.thread:                         ; preds = %bb.b
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 127
  %i.n = icmp samesign ult i64 %.0, %i.m
  br i1 %i.n, label %RARRAY_AREF.exit, label %bb.h

bb.c:                                             ; preds = %rb_array_len.exit
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.d, %rb_array_len.exit.thread ]
  %i.p = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.r = tail call i64 @rb_yield(i64 noundef %i.q) #24
  %i.s = and i64 %i.r, -5
  %.not20 = icmp eq i64 %i.s, 0
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %RARRAY_AREF.exit
  %.not = icmp eq i64 %.0, %.018
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_ary_store(i64 noundef %i.b, i64 noundef %.018, i64 noundef %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = add i64 %.018, 1                         ; 2 uses
  store volatile i64 %i.t, ptr %i.f, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %RARRAY_AREF.exit, %bb.f
  %.1 = phi i64 [ %i.t, %bb.f ], [ %.018, %RARRAY_AREF.exit ]
  %i.u = add nuw nsw i64 %.0, 1                   ; 2 uses
  store volatile i64 %i.u, ptr %i.g, align 8, !tbaa !15
  br label %bb.b, !llvm.loop !233

bb.h:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  %i.v = icmp eq i64 %.0, %.018
  %i.w = select i1 %i.v, i64 4, i64 %i.b
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @select_bang_ensure(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load volatile i64, ptr %i.a, align 8, !tbaa !115 ; 7 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 15
  %i.g = and i64 %i.f, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr i8, ptr %i.a, i64 8
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !15 ; 4 uses
  %i.l = getelementptr i8, ptr %i.a, i64 16
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !15 ; 4 uses
  %i.n = icmp slt i64 %i.m, %.0.i
  %i.o = icmp slt i64 %i.m, %i.k
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.d, label %bb.m

bb.d:                                             ; preds = %rb_array_len.exit
  %i.p = icmp ne i64 %i.b, 0
  %i.q = and i64 %i.b, 7
  %i.r = and i64 %i.d, 2048
  %i.s = or disjoint i64 %i.r, %i.q
  %i.t = icmp eq i64 %i.s, 0
  %or.cond34 = and i1 %i.p, %i.t
  br i1 %or.cond34, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !33

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %bb.d
  tail call void @rb_error_frozen_object(i64 noundef %i.b) #23
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.d
  %i.u = and i64 %i.d, 31
  %i.v = icmp ne i64 %i.u, 5
  %i.w = and i64 %i.d, 49152
  %.not8.i.i.i = icmp eq i64 %i.w, 0
  %or.cond.i.i.i = or i1 %i.v, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_ary_modify.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.b) #24
  br label %rb_ary_modify.exit

rb_ary_modify.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.e
  tail call void @rb_ary_cancel_sharing(i64 noundef %i.b)
  %i.x = icmp slt i64 %i.k, %.0.i
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %rb_ary_modify.exit
  %i.y = sub i64 %.0.i, %i.k                      ; 4 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 8192
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.c, i64 16
  br label %rb_ary_ptr_use_start.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.c, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit

rb_ary_ptr_use_start.exit:                        ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ae = icmp ugt i64 %i.y, 2305843009213693951
  br i1 %i.ae, label %bb.i, label %rbimpl_size_mul_or_raise.exit, !prof !21

bb.i:                                             ; preds = %rb_ary_ptr_use_start.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.y) #23
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_ary_ptr_use_start.exit
  %i.af = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.k
  %i.ag = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.m
  %i.ah = shl nuw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ag, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ah, i1 noundef false) #24
  br label %bb.j

bb.j:                                             ; preds = %rb_ary_modify.exit, %rbimpl_size_mul_or_raise.exit
  %.0 = phi i64 [ %i.y, %rbimpl_size_mul_or_raise.exit ], [ 0, %rb_ary_modify.exit ]
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.aj = and i64 %i.ai, 8192
  %.not = icmp eq i64 %i.aj, 0
  %i.ak = add i64 %.0, %i.m                       ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = and i64 %i.ai, -4161537
  %i.am = shl i64 %i.ak, 15
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %i.c, align 8, !tbaa !11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.c, i64 16
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %rb_array_len.exit
  ret i64 %i.b
}
end_hunk_2
begin_hunk_3_@flatten:.peel.begin

bb.cd:                                            ; preds = %bb.cc
  tail call void @rb_gc_writebarrier(i64 noundef %i.ah, i64 noundef %i.jh) #24
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.cd, %bb.cc, %rb_array_len.exit85
  %.0 = phi i64 [ %0, %rb_array_len.exit85 ], [ %i.ah, %bb.cc ], [ %i.ah, %bb.cd ]
  ret i64 %.0
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #6

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #6

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #6

declare i64 @rb_ident_hash_new() local_unnamed_addr #6

declare i64 @rb_hash_clear(i64 noundef) local_unnamed_addr #6

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_cycle_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

rb_array_len.exit.thread:                         ; preds = %bb.b
  %i.g = and i64 %i.b, 4161536
  %.not22 = icmp eq i64 %i.g, 0
  br i1 %.not22, label %bb.d, label %.thread

.thread:                                          ; preds = %rb_array_len.exit.thread
  %i.h = getelementptr i8, ptr %i.a, i64 16
  br label %RARRAY_AREF.exit

bb.c:                                             ; preds = %rb_array_len.exit
  %i.i = getelementptr i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread, %bb.c
  %.0.i.i = phi ptr [ %i.h, %.thread ], [ %i.j, %bb.c ]
  %i.k = load i64, ptr %.0.i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.thread, %RARRAY_AREF.exit, %rb_array_len.exit, %bb.a
  %.0 = phi i64 [ %i.k, %RARRAY_AREF.exit ], [ 4, %rb_array_len.exit ], [ 4, %bb.a ], [ 4, %rb_array_len.exit.thread ] ; 4 uses
  %i.l = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = and i64 %i.m, 8192
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = lshr i64 %i.m, 15
  %i.p = and i64 %i.o, 127
  br label %rb_array_len.exit16

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  br label %rb_array_len.exit16

rb_array_len.exit16:                              ; preds = %bb.e, %bb.f
  %.0.i15 = phi i64 [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i64 %.0.i15, 0
  br i1 %i.s, label %rb_fix_mul_fix.exit, label %bb.g

bb.g:                                             ; preds = %rb_array_len.exit16
  %i.t = icmp eq i64 %.0, 4
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @rb_float_new_in_heap(double noundef +inf) #24
  br label %rb_fix_mul_fix.exit

bb.i:                                             ; preds = %bb.g
  %i.v = trunc i64 %.0 to i1
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = ashr i64 %.0, 1
  br label %rb_num2long_inline.exit

bb.k:                                             ; preds = %bb.i
  %i.x = tail call i64 @rb_num2long(i64 noundef %.0) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.j, %bb.k
  %.0.i18 = phi i64 [ %i.w, %bb.j ], [ %i.x, %bb.k ] ; 2 uses
  %i.y = icmp slt i64 %.0.i18, 1
  br i1 %i.y, label %rb_fix_mul_fix.exit, label %bb.l

bb.l:                                             ; preds = %rb_num2long_inline.exit
  %i.z = shl nuw i64 %.0.i18, 1
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i19 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = lshr i64 %i.aa, 15
  %i.ad = and i64 %i.ac, 127
  br label %rb_array_len.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %i.l, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.n, %bb.m
  %.0.i.i20 = phi i64 [ %i.ad, %bb.m ], [ %i.af, %bb.n ] ; 3 uses
  %i.ag = add i64 %.0.i.i20, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.ag, -1
  br i1 %or.cond.i.i, label %rb_ary_length.exit, label %bb.o

bb.o:                                             ; preds = %rb_array_len.exit.i
  %i.ah = tail call i64 @rb_int2big(i64 noundef %.0.i.i20) #24
  %i.ai = ashr i64 %i.ah, 1
  br label %rb_ary_length.exit

rb_ary_length.exit:                               ; preds = %rb_array_len.exit.i, %bb.o
  %.0.i2.i = phi i64 [ %i.ai, %bb.o ], [ %.0.i.i20, %rb_array_len.exit.i ]
  %i.aj = ashr exact i64 %i.z, 1
  %i.ak = sext i64 %.0.i2.i to i128
  %i.al = sext i64 %i.aj to i128
  %i.am = mul nsw i128 %i.ak, %i.al               ; 3 uses
  %i.an = add nsw i128 %i.am, 4611686018427387904
  %or.cond.i = icmp ult i128 %i.an, 9223372036854775808
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rb_ary_length.exit
  %i.ao = trunc nsw i128 %i.am to i64
  %i.ap = shl nsw i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %rb_fix_mul_fix.exit

bb.q:                                             ; preds = %rb_ary_length.exit
  %i.ar = tail call i64 @rb_int128t2big(i128 noundef %i.am) #24
  br label %rb_fix_mul_fix.exit

rb_fix_mul_fix.exit:                              ; preds = %bb.q, %bb.p, %rb_num2long_inline.exit, %rb_array_len.exit16, %bb.h
  %.011 = phi i64 [ 1, %rb_num2long_inline.exit ], [ %i.u, %bb.h ], [ 1, %rb_array_len.exit16 ], [ %i.aq, %bb.p ], [ %i.ar, %bb.q ]
  ret i64 %.011
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_float_new_inline(double noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 5 uses
  %cond = icmp eq i64 %i.a, 3458764513820540928
  br i1 %cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 60
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 7
  %i.e = add nsw i32 %i.d, -5
  %i.f = icmp ult i32 %i.e, -2
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.a, i64 range(i64 3458764513820540929, 3458764513820540928) %i.a, i64 3)
  %i.h = and i64 %i.g, -4
  %i.i = or disjoint i64 %i.h, 2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.k = tail call i64 @rb_float_new_in_heap(double noundef %0) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

declare i64 @rb_int128t2big(i128 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_permutation_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %rb_num2long_inline.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  %i.h = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = and i64 %i.i, 8192
  %.not.i7 = icmp eq i64 %i.j, 0
  br i1 %.not.i7, label %rb_array_len.exit9, label %rb_array_len.exit9.thread

rb_array_len.exit9:                               ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %rb_num2long_inline.exit

rb_array_len.exit9.thread:                        ; preds = %bb.d
  %i.n = and i64 %i.i, 4161536
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %rb_num2long_inline.exit, label %.thread

.thread:                                          ; preds = %rb_array_len.exit9.thread
  %i.o = getelementptr i8, ptr %i.h, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %rb_array_len.exit9
  %i.p = getelementptr i8, ptr %i.h, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread, %bb.e
  %.0.i.i = phi ptr [ %i.o, %.thread ], [ %i.q, %bb.e ]
  %i.r = load i64, ptr %.0.i.i, align 8, !tbaa !15 ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.t = ashr i64 %i.r, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %RARRAY_AREF.exit
  %i.u = tail call i64 @rb_num2long(i64 noundef %i.r) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.g, %bb.f, %rb_array_len.exit9.thread, %rb_array_len.exit, %rb_array_len.exit9
  %i.v = phi i64 [ %.0.i, %rb_array_len.exit9.thread ], [ %.0.i, %rb_array_len.exit9 ], [ %.0.i, %rb_array_len.exit ], [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 4 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.x = shl i64 %.0.i, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %.not.i11 = icmp eq i64 %i.v, 1
  br i1 %.not.i11, label %descending_factorial.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.015.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.0.i, %bb.h ]
  %.0814.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.y, %bb.h ]
  %.0913.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.z = add nsw i64 %.0913.i, -1
  %i.aa = add i64 %.015.i, -1                     ; 2 uses
  %i.ab = shl i64 %i.aa, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = tail call i64 @rb_int_mul(i64 noundef %.0814.i, i64 noundef %i.ac) #24 ; 2 uses
  %i.ae = icmp samesign ugt i64 %.0913.i, 2
  br i1 %i.ae, label %.lr.ph.i, label %descending_factorial.exit, !llvm.loop !241

bb.i:                                             ; preds = %rb_num2long_inline.exit
  %i.af = icmp eq i64 %i.v, 0
  %i.ag = select i1 %i.af, i64 3, i64 1
  br label %descending_factorial.exit

descending_factorial.exit:                        ; preds = %.lr.ph.i, %bb.h, %bb.i
  %.1.i = phi i64 [ %i.ag, %bb.i ], [ %i.y, %bb.h ], [ %i.ad, %.lr.ph.i ]
  ret i64 %.1.i
}

declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_combination_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  %i.k = getelementptr i8, ptr %i.h, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i64, ptr %.0.i.i, align 8, !tbaa !15 ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.p = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %RARRAY_AREF.exit
  %i.q = tail call i64 @rb_num2long(i64 noundef %i.n) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i4 = phi i64 [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.r = sub i64 %.0.i, %.0.i4
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.0.i4, i64 %i.r) ; 4 uses
  %i.s = icmp slt i64 %spec.select.i, 0
  br i1 %i.s, label %binomial_coefficient.exit, label %bb.h

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.t = icmp eq i64 %spec.select.i, 0
  br i1 %i.t, label %binomial_coefficient.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = shl i64 %.0.i, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %.not.i5 = icmp eq i64 %spec.select.i, 1
  br i1 %.not.i5, label %binomial_coefficient.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.024.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 1, %bb.i ] ; 2 uses
  %.01823.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.v, %bb.i ]
  %i.w = sub i64 %.0.i, %.024.i
  %i.x = shl i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = tail call i64 @rb_int_mul(i64 noundef %.01823.i, i64 noundef %i.y) #24
  %i.aa = add nuw nsw i64 %.024.i, 1              ; 3 uses
  %i.ab = shl nuw i64 %i.aa, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = tail call i64 @rb_int_idiv(i64 noundef %i.z, i64 noundef %i.ac) #24 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %spec.select.i
  br i1 %exitcond.not.i, label %binomial_coefficient.exit, label %.lr.ph.i, !llvm.loop !242

binomial_coefficient.exit:                        ; preds = %.lr.ph.i, %rb_num2long_inline.exit, %bb.h, %bb.i
  %.019.i = phi i64 [ 3, %bb.h ], [ 1, %rb_num2long_inline.exit ], [ %i.v, %bb.i ], [ %i.ad, %.lr.ph.i ]
  ret i64 %.019.i
}

declare i64 @rb_int_idiv(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_repeated_permutation_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  %i.k = getelementptr i8, ptr %i.h, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i64, ptr %.0.i.i, align 8, !tbaa !15 ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.p = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %RARRAY_AREF.exit
  %i.q = tail call i64 @rb_num2long(i64 noundef %i.n) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i10 = phi i64 [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 3 uses
  %i.r = icmp slt i64 %.0.i10, 0
  br i1 %i.r, label %bb.k, label %bb.h

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.s = icmp slt i64 %.0.i, 1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i64 %.0.i10, 0
  %i.t = select i1 %.not, i64 3, i64 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = tail call i64 @rb_int_positive_pow(i64 noundef %.0.i, i64 noundef %.0.i10) #24
  br label %bb.k

bb.k:                                             ; preds = %rb_num2long_inline.exit, %bb.j, %bb.i
  %.0 = phi i64 [ %i.u, %bb.j ], [ %i.t, %bb.i ], [ 1, %rb_num2long_inline.exit ]
  ret i64 %.0
}

declare i64 @rb_int_positive_pow(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_repeated_combination_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  %i.k = getelementptr i8, ptr %i.h, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i64, ptr %.0.i.i, align 8, !tbaa !15 ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.p = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %RARRAY_AREF.exit
  %i.q = tail call i64 @rb_num2long(i64 noundef %i.n) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 3 uses
  %i.r = icmp eq i64 %.0.i8, 0
  br i1 %i.r, label %binomial_coefficient.exit, label %bb.h

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.s = add i64 %.0.i, -1                        ; 2 uses
  %i.t = add i64 %i.s, %.0.i8                     ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.0.i8, i64 %i.s) ; 4 uses
  %i.u = icmp slt i64 %spec.select.i, 0
  br i1 %i.u, label %binomial_coefficient.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %spec.select.i, 0
  br i1 %i.v, label %binomial_coefficient.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = shl i64 %i.t, 1
  %i.x = or disjoint i64 %i.w, 1                  ; 2 uses
  %.not.i9 = icmp eq i64 %spec.select.i, 1
  br i1 %.not.i9, label %binomial_coefficient.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.024.i = phi i64 [ %i.ac, %.lr.ph.i ], [ 1, %bb.j ] ; 2 uses
  %.01823.i = phi i64 [ %i.af, %.lr.ph.i ], [ %i.x, %bb.j ]
  %i.y = sub i64 %i.t, %.024.i
  %i.z = shl i64 %i.y, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = tail call i64 @rb_int_mul(i64 noundef %.01823.i, i64 noundef %i.aa) #24
  %i.ac = add nuw nsw i64 %.024.i, 1              ; 3 uses
  %i.ad = shl nuw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = tail call i64 @rb_int_idiv(i64 noundef %i.ab, i64 noundef %i.ae) #24 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %spec.select.i
  br i1 %exitcond.not.i, label %binomial_coefficient.exit, label %.lr.ph.i, !llvm.loop !242

binomial_coefficient.exit:                        ; preds = %.lr.ph.i, %bb.j, %bb.i, %bb.h, %rb_num2long_inline.exit
  %.0 = phi i64 [ 3, %rb_num2long_inline.exit ], [ 3, %bb.i ], [ 1, %bb.h ], [ %i.x, %bb.j ], [ %i.af, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #20

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #6

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #6

declare i64 @rb_obj_dig(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_big_plus(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_rational_plus(i64 noundef, i64 noundef) local_unnamed_addr #6

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #6

declare double @rb_big2dbl(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

declare i64 @rb_fix_plus(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_random_ulong_limited(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #6

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @rb_st_free_table(ptr noundef) #6

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(1,2) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17, !19, !18}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2146410443, i32 1073205}
!23 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!24 = !{!"branch_weights", i32 4001, i32 1}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS27rb_execution_context_struct", !27, i64 0}
!27 = !{!"any pointer", !9, i64 0}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17, !18, !19}
!30 = distinct !{!30, !17, !19, !18}
!31 = !{!32, !13, i64 0}
!32 = !{!"RArray", !12, i64 0, !9, i64 16}
!33 = !{!"branch_weights", i32 -2146410, i32 2146410}
!34 = distinct !{!34, !17, !18, !19}
!35 = distinct !{!35, !17, !19, !18}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17, !18, !19}
!38 = distinct !{!38, !17, !19, !18}
!39 = distinct !{!39, !17, !18, !19}
!40 = distinct !{!40, !17, !19, !18}
!41 = distinct !{!41, !17, !18, !19}
!42 = distinct !{!42, !17, !19, !18}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17, !18, !19}
!46 = distinct !{!46, !17, !19, !18}
!47 = distinct !{!47, !17}
!48 = !{!49, !13, i64 16}
!49 = !{!"RString", !12, i64 0, !13, i64 16, !9, i64 24}
!50 = !{!"branch_weights", i32 1073205, i32 2146410443}
!51 = distinct !{!51, !17}
!52 = distinct !{ptr @rb_str_new, null}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17, !55}
!55 = !{!"llvm.loop.peeled.count", i32 1}
!56 = distinct !{null}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = !{!60, !13, i64 0}
!60 = !{!"ary_sort_data", !13, i64 0, !13, i64 8}
!61 = !{!60, !13, i64 8}
!62 = !{!12, !13, i64 8}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !9, i64 0}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 long", !27, i64 0}
!72 = !{i64 2156030648}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{null}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17, !18, !19}
!85 = distinct !{!85, !17, !19, !18}
!86 = distinct !{!86, !17}
!87 = !{i64 2155982560}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = !{!94, !94, i64 0}
!94 = !{!"_Bool", !9, i64 0}
!95 = distinct !{!95, !17}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17}
!115 = !{!116, !13, i64 0}
!116 = !{!"select_bang_arg", !13, i64 0, !9, i64 8}
!117 = distinct !{!117, !17}
!118 = !{i64 2156006922}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17, !18, !19}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17, !19, !18}
!125 = distinct !{!125, !17}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17, !18, !19}
!133 = distinct !{!133, !17, !19, !18}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17, !18, !19}
!136 = distinct !{!136, !17, !19, !18}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = !{!148, !13, i64 16}
!148 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !149, i64 8, !13, i64 16, !71, i64 24, !13, i64 32, !13, i64 40, !150, i64 48}
!149 = !{!"p1 _ZTS12st_hash_type", !27, i64 0}
!150 = !{!"p1 _ZTS14st_table_entry", !27, i64 0}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17, !18, !19}
!162 = distinct !{!162, !17, !19, !18}
!163 = distinct !{!163, !17}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17}
!166 = distinct !{!166, !17}
!167 = distinct !{!167, !17}
!168 = distinct !{!168, !18, !19}
!169 = distinct !{!169, !19, !18}
!170 = distinct !{!170, !18, !19}
!171 = distinct !{!171, !19, !18}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17, !18, !19}
!174 = distinct !{!174, !17, !19, !18}
!175 = distinct !{!175, !17}
!176 = distinct !{!176, !17}
!177 = distinct !{!177, !17}
!178 = distinct !{!178, !17}
!179 = distinct !{!179, !17}
!180 = distinct !{!180, !17}
!181 = distinct !{!181, !17}
!182 = distinct !{!182, !17}
!183 = distinct !{!183, !17}
!184 = distinct !{!184, !17}
!185 = distinct !{!185, !17}
!186 = distinct !{!186, !17}
end_hunk_3
