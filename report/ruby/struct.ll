inline.NumInlined: 263
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_struct_members:bb.a
  %i.c = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 1040384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 13
  %i.g = and i64 %i.f, 127
  br label %internal_RSTRUCT_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = and i64 %i.k, 8192
  %.not.i6 = icmp eq i64 %i.l, 0
  br i1 %.not.i6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %internal_RSTRUCT_LEN.exit
  %i.m = lshr i64 %i.k, 15
  %i.n = and i64 %i.m, 127
  br label %rb_array_len.exit

bb.e:                                             ; preds = %internal_RSTRUCT_LEN.exit
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.d, %bb.e
  %.0.i7 = phi i64 [ %i.n, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.not = icmp eq i64 %.0.i, %.0.i7
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_array_len.exit
  %i.q = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.r = tail call fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.2, i64 noundef %.0.i7, i64 noundef %i.r) #24
  unreachable

bb.g:                                             ; preds = %rb_array_len.exit
  ret i64 %i.b
}

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 1040384
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 13
  %i.e = and i64 %i.d, 127
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_struct_getmember(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_id2sym(i64 noundef %1) #22
  %i.b = tail call fastcc i32 @struct_member_pos(i64 noundef %0, i64 noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = and i64 %i.d, 1040384
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %internal_RSTRUCT_GET.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit

internal_RSTRUCT_GET.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  ret i64 %i.k

bb.e:                                             ; preds = %bb.a
  %i.l = tail call i64 @rb_id2sym(i64 noundef %1) #22
  tail call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.3, i64 noundef %0, i64 noundef %i.l) #25
  unreachable
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @struct_member_pos(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %0) #22 ; 6 uses
  %i.b = load i64, ptr @id_back_members, align 8, !tbaa !11 ; 3 uses
  %i.c = tail call i64 @rb_attr_get(i64 noundef %i.a, i64 noundef %i.b) #22 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.018.i = phi i64 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.e = tail call i64 @rb_class_superclass(i64 noundef %.018.i) #23 ; 5 uses
  %i.f = load i64, ptr @rb_cStruct, align 8, !tbaa !11
  %i.g = icmp ne i64 %i.e, %i.f
  %i.h = load i64, ptr @rb_cData, align 8
  %i.i = icmp ne i64 %i.e, %i.h
  %or.cond.not25.i = select i1 %i.g, i1 %i.i, i1 false
  %i.j = and i64 %i.e, -5
  %i.k = icmp ne i64 %i.j, 0
  %or.cond23.i = and i1 %i.k, %or.cond.not25.i
  br i1 %or.cond23.i, label %bb.b, label %struct_ivar_get.exit

bb.b:                                             ; preds = %.preheader.i
  %i.l = tail call i64 @rb_attr_get(i64 noundef %i.e, i64 noundef %i.b) #22 ; 5 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ne i64 %i.a, 0
  %i.o = and i64 %i.a, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %bb.e

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.a to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = and i64 %i.r, 2048
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  %i.t = tail call i64 @rb_ivar_set(i64 noundef %i.a, i64 noundef %i.b, i64 noundef %i.l) #22 ; 0 uses
  br label %bb.e

struct_ivar_get.exit:                             ; preds = %.preheader.i
  %i.u = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str) #24
  unreachable

bb.e:                                             ; preds = %bb.a, %RB_OBJ_FROZEN.exit.i, %bb.c, %bb.d
  %.0.i43.ph = phi i64 [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %RB_OBJ_FROZEN.exit.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.v = icmp eq i64 %.0.i43.ph, 0
  %i.w = and i64 %.0.i43.ph, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !16

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.z = inttoptr i64 %.0.i43.ph to ptr           ; 12 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 3 uses
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 7
  br i1 %i.ac, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !17

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ad = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.1) #24
  unreachable

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ae = and i64 %i.aa, 8192
  %.not.i44 = icmp eq i64 %i.ae, 0                ; 3 uses
  br i1 %.not.i44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i64 %i.aa, 15
  %i.ag = and i64 %i.af, 127
  br label %rb_array_len.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.z, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.g, %bb.h
  %.0.i45 = phi i64 [ %i.ag, %bb.g ], [ %i.ai, %bb.h ] ; 8 uses
  %i.aj = icmp slt i64 %.0.i45, 11
  %i.ak = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 3 uses
  %i.am = and i64 %i.al, 1040384
  %.not.i46 = icmp eq i64 %i.am, 0                ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.o

bb.i:                                             ; preds = %rb_array_len.exit
  br i1 %.not.i46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = lshr i64 %i.al, 13
  %i.ao = and i64 %i.an, 127
  br label %internal_RSTRUCT_LEN.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.ak, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.j, %bb.k
  %.0.i47 = phi i64 [ %i.ao, %bb.j ], [ %i.aq, %bb.k ]
  %.not42 = icmp eq i64 %.0.i47, %.0.i45
  br i1 %.not42, label %.preheader, label %bb.m, !prof !18

.preheader:                                       ; preds = %internal_RSTRUCT_LEN.exit
  %i.ar = icmp sgt i64 %.0.i45, 0
  br i1 %i.ar, label %.lr.ph86, label %.thread67

.lr.ph86:                                         ; preds = %.preheader
  %i.as = getelementptr i8, ptr %i.z, i64 16
  br i1 %.not.i44, label %.lr.ph86.split.us, label %RARRAY_AREF.exit

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.at = getelementptr i8, ptr %i.z, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  br label %RARRAY_AREF.exit.us

RARRAY_AREF.exit.us:                              ; preds = %bb.l, %.lr.ph86.split.us
  %.03785.us = phi i64 [ 0, %.lr.ph86.split.us ], [ %i.ay, %bb.l ] ; 3 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.03785.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = icmp eq i64 %i.aw, %1
  br i1 %i.ax, label %.split88.us, label %bb.l

bb.l:                                             ; preds = %RARRAY_AREF.exit.us
  %i.ay = add nuw nsw i64 %.03785.us, 1           ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ay, %.0.i45
  br i1 %exitcond96.not, label %.thread67, label %RARRAY_AREF.exit.us, !llvm.loop !19

bb.m:                                             ; preds = %internal_RSTRUCT_LEN.exit
  %i.az = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ba = tail call fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.2, i64 noundef %.0.i45, i64 noundef %i.ba) #24
  unreachable

RARRAY_AREF.exit:                                 ; preds = %.lr.ph86, %bb.n
  %.03785 = phi i64 [ %i.bf, %bb.n ], [ 0, %.lr.ph86 ] ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.as, i64 %.03785
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = icmp eq i64 %i.bc, %1
  br i1 %i.bd, label %.split88.us, label %bb.n

.split88.us:                                      ; preds = %RARRAY_AREF.exit, %RARRAY_AREF.exit.us
  %.us-phi = phi i64 [ %.03785.us, %RARRAY_AREF.exit.us ], [ %.03785, %RARRAY_AREF.exit ]
  %i.be = trunc i64 %.us-phi to i32
  br label %.thread67

bb.n:                                             ; preds = %RARRAY_AREF.exit
  %i.bf = add nuw nsw i64 %.03785, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %.0.i45
  br i1 %exitcond.not, label %.thread67, label %RARRAY_AREF.exit, !llvm.loop !19

bb.o:                                             ; preds = %rb_array_len.exit
  br i1 %.not.i46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = lshr i64 %i.al, 13
  %i.bh = and i64 %i.bg, 127
  br label %internal_RSTRUCT_LEN.exit50

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %i.ak, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit50

internal_RSTRUCT_LEN.exit50:                      ; preds = %bb.p, %bb.q
  %.0.i49 = phi i64 [ %i.bh, %bb.p ], [ %i.bj, %bb.q ]
  %2 = add nsw i64 %.0.i45, -1                    ; 2 uses
  br i1 %.not.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %internal_RSTRUCT_LEN.exit50
  %i.bk = getelementptr i8, ptr %i.z, i64 16
  br label %RARRAY_AREF.exit53

bb.s:                                             ; preds = %internal_RSTRUCT_LEN.exit50
  %i.bl = getelementptr i8, ptr %i.z, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  br label %RARRAY_AREF.exit53

RARRAY_AREF.exit53:                               ; preds = %bb.r, %bb.s
  %.0.i.i52 = phi ptr [ %i.bk, %bb.r ], [ %i.bm, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.0.i.i52, i64 %2
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = tail call i64 @rb_fix2int(i64 noundef %i.bo) #22
  %sext = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext, 32
  %.not = icmp eq i64 %.0.i49, %i.bq
  br i1 %.not, label %bb.w, label %bb.t, !prof !18

bb.t:                                             ; preds = %RARRAY_AREF.exit53
  %i.br = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.bs = load i64, ptr %i.z, align 8, !tbaa !13
  %i.bt = and i64 %i.bs, 8192
  %.not.i.i54 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i54, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr i8, ptr %i.z, i64 16
  br label %RARRAY_AREF.exit56

bb.v:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %i.z, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  br label %RARRAY_AREF.exit56

RARRAY_AREF.exit56:                               ; preds = %bb.u, %bb.v
  %.0.i.i55 = phi ptr [ %i.bu, %bb.u ], [ %i.bw, %bb.v ]
  %i.bx = getelementptr [8 x i8], ptr %.0.i.i55, i64 %2
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = tail call fastcc i32 @RB_FIX2INT(i64 noundef %i.by)
  %i.ca = tail call fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.br, ptr noundef nonnull @.str.36, i32 noundef %i.bz, i64 noundef %i.ca) #24
  unreachable

bb.w:                                             ; preds = %RARRAY_AREF.exit53
  %i.cb = add nsw i64 %.0.i45, -3                 ; 4 uses
  %i.cc = tail call i64 @rb_sym2id(i64 noundef %1) #22
  %i.cd = lshr i64 %i.cc, 3                       ; 2 uses
  %i.ce = load i64, ptr %i.z, align 8, !tbaa !13
  %i.cf = and i64 %i.ce, 8192
  %.not.i.i57 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr i8, ptr %i.z, i64 16      ; 4 uses
  br i1 %.not.i.i57, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.w
  %i.ch = getelementptr i8, ptr %i.z, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !15 ; 4 uses
  %.138.us81 = and i64 %i.cd, %i.cb               ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %.138.us81
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %1
  br i1 %i.cl, label %RARRAY_AREF.exit62, label %.lr.ph83

.lr.ph83:                                         ; preds = %.split.us, %RARRAY_AREF.exit59.us
  %i.cm = phi i64 [ %i.cr, %RARRAY_AREF.exit59.us ], [ %i.ck, %.split.us ]
  %.138.us82 = phi i64 [ %.138.us, %RARRAY_AREF.exit59.us ], [ %.138.us81, %.split.us ]
  %i.cn = and i64 %i.cm, -5
  %.not71.us = icmp eq i64 %i.cn, 0
  br i1 %.not71.us, label %.thread67, label %RARRAY_AREF.exit59.us

RARRAY_AREF.exit59.us:                            ; preds = %.lr.ph83
  %i.co = mul i64 %.138.us82, 5
  %i.cp = add i64 %i.co, 2
  %.138.us = and i64 %i.cp, %i.cb                 ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.ci, i64 %.138.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %1
  br i1 %i.cs, label %RARRAY_AREF.exit62, label %.lr.ph83

.split:                                           ; preds = %bb.w
  %.13879 = and i64 %i.cd, %i.cb                  ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cg, i64 %.13879
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, %1
  br i1 %i.cv, label %RARRAY_AREF.exit62, label %.lr.ph

RARRAY_AREF.exit62:                               ; preds = %RARRAY_AREF.exit59.thread, %RARRAY_AREF.exit59.us, %.split.us, %.split
  %.13876 = phi i64 [ %.138.us, %RARRAY_AREF.exit59.us ], [ %.13879, %.split ], [ %.138.us81, %.split.us ], [ %.138, %RARRAY_AREF.exit59.thread ]
  %.0.i.i61 = phi ptr [ %i.ci, %RARRAY_AREF.exit59.us ], [ %i.cg, %.split ], [ %i.ci, %.split.us ], [ %i.cg, %RARRAY_AREF.exit59.thread ]
  %i.cw = getelementptr [8 x i8], ptr %.0.i.i61, i64 %.13876
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.cz = tail call i64 @rb_fix2int(i64 noundef %i.cy) #22
  %i.da = trunc i64 %i.cz to i32
  br label %.thread67

.lr.ph:                                           ; preds = %.split, %RARRAY_AREF.exit59.thread
  %i.db = phi i64 [ %i.dg, %RARRAY_AREF.exit59.thread ], [ %i.cu, %.split ]
  %.13880 = phi i64 [ %.138, %RARRAY_AREF.exit59.thread ], [ %.13879, %.split ]
  %i.dc = and i64 %i.db, -5
  %.not71 = icmp eq i64 %i.dc, 0
  br i1 %.not71, label %.thread67, label %RARRAY_AREF.exit59.thread

RARRAY_AREF.exit59.thread:                        ; preds = %.lr.ph
  %i.dd = mul i64 %.13880, 5
  %i.de = add i64 %i.dd, 2
  %.138 = and i64 %i.de, %i.cb                    ; 3 uses
  %i.df = getelementptr [8 x i8], ptr %i.cg, i64 %.138
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %1
  br i1 %i.dh, label %RARRAY_AREF.exit62, label %.lr.ph

.thread67:                                        ; preds = %.lr.ph, %.lr.ph83, %bb.n, %bb.l, %.preheader, %RARRAY_AREF.exit62, %.split88.us
  %.2 = phi i32 [ %i.be, %.split88.us ], [ %i.da, %RARRAY_AREF.exit62 ], [ -1, %.preheader ], [ -1, %bb.l ], [ -1, %.lr.ph83 ], [ -1, %bb.n ], [ -1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_fstring_cstr(ptr noundef %0) #22
  tail call fastcc void @rb_name_err_raise_str(i64 noundef %i.a, i64 noundef %1, i64 noundef %2) #25
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_struct_alloc_noinit(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @struct_alloc(i64 noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @struct_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call fastcc i64 @num_members(i64 noundef %0) ; 7 uses
  %i.d = shl i64 %i.c, 3
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 144      ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !21
  %.not = icmp eq i16 %i.g, 0
  %spec.select.v = select i1 %.not, i64 16, i64 24
  %spec.select = add i64 %spec.select.v, %i.d     ; 3 uses
  %i.h = icmp sgt i64 %i.c, 0
  br i1 %i.h, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.select) #22
  br i1 %i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %i.c, 13
  %i.k = load i16, ptr %i.f, align 8, !tbaa !21
  %i.l = icmp eq i16 %i.k, 0
  %spec.select46.v = select i1 %i.l, i64 1048585, i64 9
  %spec.select46 = or i64 %spec.select46.v, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !33
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %spec.select46, i32 noundef 0, i64 noundef %spec.select) #22 ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 10 uses
  %i.q = load i16, ptr %i.f, align 8, !tbaa !21
  %i.r = icmp eq i16 %i.q, 0
  %i.s = load i64, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  br i1 %i.r, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %i.s, 578712547822141440
  %.not53 = icmp eq i64 %i.t, 0
  br i1 %.not53, label %bb.e, label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i64 @rb_gc_obj_slot_size(i64 noundef %i.o) #22
  %i.v = icmp ult i64 %spec.select, %i.u
  br i1 %i.v, label %bb.f, label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  %i.x = and i64 %i.w, -1048577
  store i64 %i.x, ptr %i.p, align 8, !tbaa !13
  %i.y = lshr i64 %i.w, 13
  %i.z = and i64 %i.y, 127                        ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i64 %i.w, 1040384
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.p, i64 16
  br label %internal_RSTRUCT_SET.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.p, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  br label %internal_RSTRUCT_SET.exit.i

internal_RSTRUCT_SET.exit.i:                      ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.z
  store i64 0, ptr %i.ae, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.j:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.p, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.k:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.s, 13
  %i.ah = and i64 %i.ag, 127                      ; 2 uses
  %.not.i47 = icmp eq i64 %i.ah, 0
  br i1 %.not.i47, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = and i64 %i.s, 1040384
  %.not.i.i.i48 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.p, i64 16
  br label %internal_RSTRUCT_SET.exit.i49

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.p, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  br label %internal_RSTRUCT_SET.exit.i49

internal_RSTRUCT_SET.exit.i49:                    ; preds = %bb.n, %bb.m
  %.0.i.i.i50 = phi ptr [ %i.aj, %bb.m ], [ %i.al, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.0.i.i.i50, i64 %i.ah
  store i64 0, ptr %i.am, align 8, !tbaa !11
end_hunk_0
