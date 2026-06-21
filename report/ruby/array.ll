inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_transpose:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bl = lshr i64 %i.ap, 15
  %i.bm = and i64 %i.bl, 127
  br label %rb_array_len.exit51

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %i.ao, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14
  br label %rb_array_len.exit51

rb_array_len.exit51:                              ; preds = %bb.o, %bb.p
  %.0.i50 = phi i64 [ %i.bm, %bb.o ], [ %i.bo, %bb.p ] ; 2 uses
  %.not = icmp eq i64 %.03583, %.0.i50
  br i1 %.not, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %rb_array_len.exit51
  %i.bp = load i64, ptr @rb_eIndexError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.159, i64 noundef %.0.i50, i64 noundef %.03583) #23
  unreachable

.loopexit:                                        ; preds = %ary_new.exit, %rb_array_len.exit51
  %.136 = phi i64 [ %.03583, %rb_array_len.exit51 ], [ %.0.i47, %ary_new.exit ] ; 4 uses
  %.1 = phi i64 [ %.085, %rb_array_len.exit51 ], [ %i.aw, %ary_new.exit ] ; 3 uses
  %i.bq = icmp sgt i64 %.136, 0
  br i1 %i.bq, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %.loopexit
  %i.br = inttoptr i64 %.1 to ptr                 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 32
  %i.bu = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 32
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph82, %rb_ary_elt.exit68
  %.13381 = phi i64 [ 0, %.lr.ph82 ], [ %i.cn, %rb_ary_elt.exit68 ] ; 7 uses
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %i.by = and i64 %i.bx, 8192
  %.not.i.i52 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i52, label %rb_array_len.exit.i53, label %rb_array_len.exit.i53.thread

rb_array_len.exit.i53:                            ; preds = %bb.r
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !14
  %.not.i55 = icmp sgt i64 %i.bz, %.13381
  br i1 %.not.i55, label %bb.s, label %rb_ary_elt.exit59

rb_array_len.exit.i53.thread:                     ; preds = %bb.r
  %i.ca = lshr i64 %i.bx, 15
  %i.cb = and i64 %i.ca, 127
  %.not.i55106 = icmp samesign ugt i64 %i.cb, %.13381
  br i1 %.not.i55106, label %RARRAY_AREF.exit.i57, label %rb_ary_elt.exit59

bb.s:                                             ; preds = %rb_array_len.exit.i53
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i57

RARRAY_AREF.exit.i57:                             ; preds = %rb_array_len.exit.i53.thread, %bb.s
  %.0.i.i.i58 = phi ptr [ %i.cc, %bb.s ], [ %i.bs, %rb_array_len.exit.i53.thread ]
  %i.cd = getelementptr [8 x i8], ptr %.0.i.i.i58, i64 %.13381
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15
  br label %rb_ary_elt.exit59

rb_ary_elt.exit59:                                ; preds = %rb_array_len.exit.i53.thread, %rb_array_len.exit.i53, %RARRAY_AREF.exit.i57
  %.0.i56 = phi i64 [ %i.ce, %RARRAY_AREF.exit.i57 ], [ 4, %rb_array_len.exit.i53 ], [ 4, %rb_array_len.exit.i53.thread ]
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.cg = and i64 %i.cf, 8192
  %.not.i.i60 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i60, label %rb_array_len.exit.i61, label %rb_array_len.exit.i61.thread

rb_array_len.exit.i61:                            ; preds = %rb_ary_elt.exit59
  %i.ch = load i64, ptr %i.bv, align 8, !tbaa !14
  %.not.i63 = icmp sgt i64 %i.ch, %.13381
  br i1 %.not.i63, label %bb.t, label %rb_ary_elt.exit68

rb_array_len.exit.i61.thread:                     ; preds = %rb_ary_elt.exit59
  %i.ci = lshr i64 %i.cf, 15
  %i.cj = and i64 %i.ci, 127
  %.not.i63109 = icmp samesign ugt i64 %i.cj, %.13381
  br i1 %.not.i63109, label %RARRAY_AREF.exit.i66, label %rb_ary_elt.exit68

bb.t:                                             ; preds = %rb_array_len.exit.i61
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i66

RARRAY_AREF.exit.i66:                             ; preds = %rb_array_len.exit.i61.thread, %bb.t
  %.0.i.i.i67 = phi ptr [ %i.ck, %bb.t ], [ %i.bv, %rb_array_len.exit.i61.thread ]
  %i.cl = getelementptr [8 x i8], ptr %.0.i.i.i67, i64 %.13381
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  br label %rb_ary_elt.exit68

rb_ary_elt.exit68:                                ; preds = %rb_array_len.exit.i61.thread, %rb_array_len.exit.i61, %RARRAY_AREF.exit.i66
  %.0.i65 = phi i64 [ %i.cm, %RARRAY_AREF.exit.i66 ], [ 4, %rb_array_len.exit.i61 ], [ 4, %rb_array_len.exit.i61.thread ]
  tail call void @rb_ary_store(i64 noundef %.0.i56, i64 noundef %.03484, i64 noundef %.0.i65)
  %i.cn = add nuw nsw i64 %.13381, 1              ; 2 uses
  %exitcond90.not = icmp eq i64 %i.cn, %.136
  br i1 %exitcond90.not, label %._crit_edge, label %bb.r, !llvm.loop !130

._crit_edge:                                      ; preds = %rb_ary_elt.exit68, %rb_array_len.exit48, %.loopexit
  %.1104 = phi i64 [ %i.aw, %rb_array_len.exit48 ], [ %.1, %.loopexit ], [ %.1, %rb_ary_elt.exit68 ] ; 2 uses
  %.136103 = phi i64 [ %.0.i47, %rb_array_len.exit48 ], [ %.136, %.loopexit ], [ %.136, %rb_ary_elt.exit68 ]
  %i.co = add nuw nsw i64 %.03484, 1              ; 2 uses
  %exitcond91.not = icmp eq i64 %i.co, %.0.i71.ph97
  br i1 %exitcond91.not, label %rb_ary_dup.exit, label %bb.f, !llvm.loop !131

rb_ary_dup.exit:                                  ; preds = %._crit_edge, %.preheader, %bb.e, %bb.d
  %.031 = phi i64 [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ 0, %.preheader ], [ %.1104, %._crit_edge ]
  ret i64 %.031
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_ary_fill(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !15
  %i.c = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %0, 0
  br i1 %i.d, label %bb.f, label %.preheader134.preheader

.preheader134.preheader:                          ; preds = %bb.b
  %.not173 = icmp eq i32 %0, 0
  br i1 %.not173, label %.preheader134.1, label %bb.c

bb.c:                                             ; preds = %.preheader134.preheader
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  br label %.preheader134.1

.preheader134.1:                                  ; preds = %.preheader134.preheader, %bb.c
  %i.f = phi i64 [ %i.e, %bb.c ], [ 4, %.preheader134.preheader ]
  %.286.i75 = phi i32 [ 1, %bb.c ], [ 0, %.preheader134.preheader ] ; 4 uses
  %i.g = icmp samesign ult i32 %.286.i75, %0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader134.1
  %i.h = zext nneg i32 %.286.i75 to i64
  %i.i = getelementptr [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %i.k = add nuw nsw i32 %.286.i75, 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader134.1, %bb.d
  %i.l = phi i64 [ %i.j, %bb.d ], [ 4, %.preheader134.1 ]
  %.286.i75.1 = phi i32 [ %i.k, %bb.d ], [ %.286.i75, %.preheader134.1 ]
  %i.m = icmp eq i32 %.286.i75.1, %0
  br i1 %i.m, label %rb_scan_args_set.exit78, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #23
  unreachable

rb_scan_args_set.exit78:                          ; preds = %bb.e
  %i.n = add nuw nsw i32 %0, 1
  br label %rb_scan_args_set.exit

bb.g:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %0, 1
  br i1 %i.o, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.p = load i64, ptr %1, align 8, !tbaa !15
  %.not174 = icmp eq i32 %0, 1
  br i1 %.not174, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.h
  %i.s = phi i64 [ %i.r, %bb.h ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.h ], [ 1, %.preheader ] ; 4 uses
  %i.t = icmp samesign ult i32 %.286.i, %0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i32 %.286.i to i64
  %i.v = getelementptr [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = add nuw nsw i32 %.286.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.y = phi i64 [ %i.w, %bb.j ], [ 4, %bb.i ]
  %.286.i.1 = phi i32 [ %i.x, %bb.j ], [ %.286.i, %bb.i ]
  %i.z = icmp eq i32 %.286.i.1, %0
  br i1 %i.z, label %rb_scan_args_set.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #23
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.k, %rb_scan_args_set.exit78
  %.0 = phi i64 [ %i.p, %bb.k ], [ 36, %rb_scan_args_set.exit78 ] ; 6 uses
  %i.aa = phi i64 [ %i.y, %bb.k ], [ %i.l, %rb_scan_args_set.exit78 ] ; 4 uses
  %i.ab = phi i64 [ %i.s, %bb.k ], [ %i.f, %rb_scan_args_set.exit78 ] ; 5 uses
  %.045 = phi i32 [ %0, %bb.k ], [ %i.n, %rb_scan_args_set.exit78 ]
  switch i32 %.045, label %default.unreachable [
    i32 1, label %bb.m
    i32 2, label %bb.p
    i32 3, label %bb.s
  ]

bb.m:                                             ; preds = %rb_scan_args_set.exit
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.ac = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i89 = icmp eq i64 %i.ae, 0
  br i1 %.not.i89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = lshr i64 %i.ad, 15
  %i.ag = and i64 %i.af, 127
  br label %.sink.split175

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14
  br label %.sink.split175

bb.p:                                             ; preds = %rb_scan_args_set.exit
  %i.aj = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i90 = icmp eq i64 %i.al, 0
  br i1 %.not.i90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = lshr i64 %i.ak, 15
  %i.an = and i64 %i.am, 127
  br label %rb_array_len.exit92

bb.r:                                             ; preds = %bb.p
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  br label %rb_array_len.exit92

rb_array_len.exit92:                              ; preds = %bb.q, %bb.r
  %.0.i91 = phi i64 [ %i.an, %bb.q ], [ %i.ap, %bb.r ]
  %i.aq = call i64 @rb_range_beg_len(i64 noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0.i91, i32 noundef 1) #24
  %.not50 = icmp eq i64 %i.aq, 0
  br i1 %.not50, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %rb_array_len.exit92, %rb_scan_args_set.exit
  %i.ar = icmp eq i64 %i.ab, 4
  br i1 %i.ar, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = trunc i64 %i.ab to i1
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = ashr i64 %i.ab, 1
  br label %rb_num2long_inline.exit

bb.v:                                             ; preds = %bb.t
  %i.au = call i64 @rb_num2long(i64 noundef %i.ab) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.v, %bb.u
  %i.av = phi i64 [ %i.au, %bb.v ], [ %i.at, %bb.u ] ; 4 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !15
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %rb_num2long_inline.exit
  %i.ax = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = and i64 %i.ay, 8192
  %.not.i94 = icmp eq i64 %i.az, 0
  br i1 %.not.i94, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = lshr i64 %i.ay, 15
  %i.bb = and i64 %i.ba, 127
  br label %rb_array_len.exit96

bb.y:                                             ; preds = %bb.w
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  br label %rb_array_len.exit96

rb_array_len.exit96:                              ; preds = %bb.x, %bb.y
  %.0.i95 = phi i64 [ %i.bb, %bb.x ], [ %i.bd, %bb.y ]
  %i.be = add i64 %.0.i95, %i.av
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.be, i64 0)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %rb_array_len.exit96
  %.sink = phi i64 [ %spec.store.select, %rb_array_len.exit96 ], [ 0, %bb.s ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %rb_num2long_inline.exit
  %i.bf = phi i64 [ %i.av, %rb_num2long_inline.exit ], [ %.sink, %.sink.split ]
  %i.bg = icmp eq i64 %i.aa, 4
  br i1 %i.bg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bh = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = and i64 %i.bi, 8192
  %.not.i97 = icmp eq i64 %i.bj, 0
  br i1 %.not.i97, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = lshr i64 %i.bi, 15
  %i.bl = and i64 %i.bk, 127
  br label %rb_array_len.exit99

bb.ac:                                            ; preds = %bb.aa
  %i.bm = getelementptr i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  br label %rb_array_len.exit99

rb_array_len.exit99:                              ; preds = %bb.ab, %bb.ac
  %.0.i98 = phi i64 [ %i.bl, %bb.ab ], [ %i.bn, %bb.ac ]
  %i.bo = sub i64 %.0.i98, %i.bf
  br label %.sink.split175

bb.ad:                                            ; preds = %bb.z
  %i.bp = trunc i64 %i.aa to i1
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = ashr i64 %i.aa, 1
  br label %.sink.split175

bb.af:                                            ; preds = %bb.ad
  %i.br = call i64 @rb_num2long(i64 noundef %i.aa) #24
  br label %.sink.split175

default.unreachable:                              ; preds = %rb_scan_args_set.exit
  unreachable

.sink.split175:                                   ; preds = %rb_array_len.exit99, %bb.ae, %bb.af, %bb.o, %bb.n
  %.sink176 = phi i64 [ %i.ai, %bb.o ], [ %i.ag, %bb.n ], [ %i.bo, %rb_array_len.exit99 ], [ %i.bq, %bb.ae ], [ %i.br, %bb.af ]
  store i64 %.sink176, ptr %i.b, align 8, !tbaa !15
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split175, %rb_array_len.exit92
  %i.bs = icmp ne i64 %2, 0
  %i.bt = and i64 %2, 7
  %i.bu = icmp eq i64 %i.bt, 0
  %.not3.i.i.i.i = and i1 %i.bs, %i.bu
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !22

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.ag
  %i.bv = inttoptr i64 %2 to ptr                  ; 16 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11 ; 3 uses
  %i.bx = and i64 %i.bw, 2048
  %.not.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.ag
  call void @rb_error_frozen_object(i64 noundef %2) #23
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.by = and i64 %i.bw, 31
  %i.bz = icmp ne i64 %i.by, 5
  %i.ca = and i64 %i.bw, 49152
  %.not8.i.i.i = icmp eq i64 %i.ca, 0
  %or.cond.i.i.i = or i1 %i.bz, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_ary_modify.exit, label %bb.ah, !prof !24

bb.ah:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  call void @rb_str_modify(i64 noundef %2) #24
  br label %rb_ary_modify.exit

rb_ary_modify.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.ah
  call void @rb_ary_cancel_sharing(i64 noundef %2)
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %ary_memfill.exit, label %bb.ai

bb.ai:                                            ; preds = %rb_ary_modify.exit
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, 1152921504606846974
  %i.cf = sub i64 1152921504606846975, %i.cd
  %i.cg = icmp sgt i64 %i.cb, %i.cf
  %or.cond = or i1 %i.ce, %i.cg
  br i1 %or.cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ch = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ch, ptr noundef nonnull @.str.161) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = add i64 %i.cd, %i.cb                    ; 9 uses
  %i.cj = load i64, ptr %i.bv, align 8, !tbaa !11 ; 5 uses
  %i.ck = and i64 %i.cj, 8192
  %.not.i102 = icmp eq i64 %i.ck, 0
  br i1 %.not.i102, label %rb_array_len.exit104.thread, label %rb_array_len.exit104

end_hunk_0
