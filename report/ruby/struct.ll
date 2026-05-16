inline.NumInlined: 263
inline.NumDeleted: 69
begin_hunk_0_@struct_member_pos:bb.a
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
  %i.bk = add nsw i64 %.0.i45, -1                 ; 2 uses
  br i1 %.not.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %internal_RSTRUCT_LEN.exit50
  %i.bl = getelementptr i8, ptr %i.z, i64 16
  br label %RARRAY_AREF.exit53

bb.s:                                             ; preds = %internal_RSTRUCT_LEN.exit50
  %i.bm = getelementptr i8, ptr %i.z, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  br label %RARRAY_AREF.exit53

RARRAY_AREF.exit53:                               ; preds = %bb.r, %bb.s
  %.0.i.i52 = phi ptr [ %i.bl, %bb.r ], [ %i.bn, %bb.s ]
  %i.bo = getelementptr [8 x i8], ptr %.0.i.i52, i64 %i.bk
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = tail call i64 @rb_fix2int(i64 noundef %i.bp) #22
  %sext = shl i64 %i.bq, 32
  %i.br = ashr exact i64 %sext, 32
  %.not = icmp eq i64 %.0.i49, %i.br
  br i1 %.not, label %bb.w, label %bb.t, !prof !18

bb.t:                                             ; preds = %RARRAY_AREF.exit53
  %i.bs = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.bt = load i64, ptr %i.z, align 8, !tbaa !13
  %i.bu = and i64 %i.bt, 8192
  %.not.i.i54 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i54, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %i.z, i64 16
  br label %RARRAY_AREF.exit56

bb.v:                                             ; preds = %bb.t
  %i.bw = getelementptr i8, ptr %i.z, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15
  br label %RARRAY_AREF.exit56

RARRAY_AREF.exit56:                               ; preds = %bb.u, %bb.v
  %.0.i.i55 = phi ptr [ %i.bv, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = getelementptr [8 x i8], ptr %.0.i.i55, i64 %i.bk
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = tail call fastcc i32 @RB_FIX2INT(i64 noundef %i.bz)
  %i.cb = tail call fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.36, i32 noundef %i.ca, i64 noundef %i.cb) #24
  unreachable

bb.w:                                             ; preds = %RARRAY_AREF.exit53
  %i.cc = add nsw i64 %.0.i45, -3                 ; 4 uses
  %i.cd = tail call i64 @rb_sym2id(i64 noundef %1) #22
  %i.ce = lshr i64 %i.cd, 3                       ; 2 uses
  %i.cf = load i64, ptr %i.z, align 8, !tbaa !13
  %i.cg = and i64 %i.cf, 8192
  %.not.i.i57 = icmp eq i64 %i.cg, 0
  %i.ch = getelementptr i8, ptr %i.z, i64 16      ; 4 uses
  br i1 %.not.i.i57, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.w
  %i.ci = getelementptr i8, ptr %i.z, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 4 uses
  %.138.us81 = and i64 %i.ce, %i.cc               ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %.138.us81
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %1
  br i1 %i.cm, label %RARRAY_AREF.exit62, label %.lr.ph83

.lr.ph83:                                         ; preds = %.split.us, %RARRAY_AREF.exit59.us
  %i.cn = phi i64 [ %i.cs, %RARRAY_AREF.exit59.us ], [ %i.cl, %.split.us ]
  %.138.us82 = phi i64 [ %.138.us, %RARRAY_AREF.exit59.us ], [ %.138.us81, %.split.us ]
  %i.co = and i64 %i.cn, -5
  %.not71.us = icmp eq i64 %i.co, 0
  br i1 %.not71.us, label %.thread67, label %RARRAY_AREF.exit59.us

RARRAY_AREF.exit59.us:                            ; preds = %.lr.ph83
  %i.cp = mul i64 %.138.us82, 5
  %i.cq = add i64 %i.cp, 2
  %.138.us = and i64 %i.cq, %i.cc                 ; 3 uses
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %.138.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %1
  br i1 %i.ct, label %RARRAY_AREF.exit62, label %.lr.ph83

.split:                                           ; preds = %bb.w
  %.13879 = and i64 %i.ce, %i.cc                  ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ch, i64 %.13879
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %1
  br i1 %i.cw, label %RARRAY_AREF.exit62, label %.lr.ph

RARRAY_AREF.exit62:                               ; preds = %RARRAY_AREF.exit59.thread, %RARRAY_AREF.exit59.us, %.split.us, %.split
  %.13876 = phi i64 [ %.138.us, %RARRAY_AREF.exit59.us ], [ %.13879, %.split ], [ %.138.us81, %.split.us ], [ %.138, %RARRAY_AREF.exit59.thread ]
  %.0.i.i61 = phi ptr [ %i.cj, %RARRAY_AREF.exit59.us ], [ %i.ch, %.split ], [ %i.cj, %.split.us ], [ %i.ch, %RARRAY_AREF.exit59.thread ]
  %i.cx = getelementptr [8 x i8], ptr %.0.i.i61, i64 %.13876
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11
  %i.da = tail call i64 @rb_fix2int(i64 noundef %i.cz) #22
  %i.db = trunc i64 %i.da to i32
  br label %.thread67

.lr.ph:                                           ; preds = %.split, %RARRAY_AREF.exit59.thread
  %i.dc = phi i64 [ %i.dh, %RARRAY_AREF.exit59.thread ], [ %i.cv, %.split ]
  %.13880 = phi i64 [ %.138, %RARRAY_AREF.exit59.thread ], [ %.13879, %.split ]
  %i.dd = and i64 %i.dc, -5
  %.not71 = icmp eq i64 %i.dd, 0
  br i1 %.not71, label %.thread67, label %RARRAY_AREF.exit59.thread

RARRAY_AREF.exit59.thread:                        ; preds = %.lr.ph
  %i.de = mul i64 %.13880, 5
  %i.df = add i64 %i.de, 2
  %.138 = and i64 %i.df, %i.cc                    ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.ch, i64 %.138
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !11 ; 2 uses
  %i.di = icmp eq i64 %i.dh, %1
  br i1 %i.di, label %RARRAY_AREF.exit62, label %.lr.ph

.thread67:                                        ; preds = %.lr.ph, %.lr.ph83, %bb.n, %bb.l, %.preheader, %RARRAY_AREF.exit62, %.split88.us
  %.2 = phi i32 [ %i.be, %.split88.us ], [ %i.db, %RARRAY_AREF.exit62 ], [ -1, %.preheader ], [ -1, %bb.l ], [ -1, %.lr.ph83 ], [ -1, %bb.n ], [ -1, %.lr.ph ]
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
  %1 = load i64, ptr %i.p, align 8, !tbaa !13     ; 3 uses
  br i1 %i.r, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %2 = and i64 %1, 578712547822141440
  %.not53 = icmp eq i64 %2, 0
  br i1 %.not53, label %bb.e, label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i64 @rb_gc_obj_slot_size(i64 noundef %i.o) #22
  %i.t = icmp ult i64 %spec.select, %i.s
  br i1 %i.t, label %bb.f, label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  %i.v = and i64 %i.u, -1048577
  store i64 %i.v, ptr %i.p, align 8, !tbaa !13
  %i.w = lshr i64 %i.u, 13
  %i.x = and i64 %i.w, 127                        ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %i.u, 1040384
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.p, i64 16
  br label %internal_RSTRUCT_SET.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.p, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  br label %internal_RSTRUCT_SET.exit.i

internal_RSTRUCT_SET.exit.i:                      ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.z, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.x
  store i64 0, ptr %i.ac, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.j:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.p, i64 32
  store i64 0, ptr %i.ad, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.k:                                             ; preds = %bb.c
  %i.ae = lshr i64 %1, 13
  %i.af = and i64 %i.ae, 127                      ; 2 uses
  %.not.i47 = icmp eq i64 %i.af, 0
  br i1 %.not.i47, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = and i64 %1, 1040384
  %.not.i.i.i48 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %i.p, i64 16
  br label %internal_RSTRUCT_SET.exit.i49

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.p, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15
  br label %internal_RSTRUCT_SET.exit.i49

internal_RSTRUCT_SET.exit.i49:                    ; preds = %bb.n, %bb.m
  %.0.i.i.i50 = phi ptr [ %i.ah, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = getelementptr [8 x i8], ptr %.0.i.i.i50, i64 %i.af
  store i64 0, ptr %i.ak, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.o:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.p, i64 32
  store i64 0, ptr %i.al, align 8, !tbaa !11
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

RSTRUCT_SET_FIELDS_OBJ.exit:                      ; preds = %bb.o, %internal_RSTRUCT_SET.exit.i49, %bb.j, %internal_RSTRUCT_SET.exit.i, %bb.d, %bb.e
  %i.am = getelementptr i8, ptr %i.p, i64 16
  tail call void @rb_mem_clear(ptr noundef %i.am, i64 noundef %i.c) #26
  br label %bb.q

bb.p:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33
  store volatile ptr %i.ao, ptr %i.a, align 8, !tbaa !33
  %.0..0..0..0..0..0..i52 = load volatile ptr, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i52, i64 noundef %0, i64 noundef 9, i32 noundef 0, i64 noundef 40) #22 ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.at = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.c, i64 noundef 8) #27 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !15
  tail call void @rb_mem_clear(ptr noundef nonnull %i.at, i64 noundef %i.c) #26
  store i64 %i.c, ptr %i.ar, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %RSTRUCT_SET_FIELDS_OBJ.exit
  %.0 = phi i64 [ %i.o, %RSTRUCT_SET_FIELDS_OBJ.exit ], [ %i.ap, %bb.p ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_struct_define_without_accessor_under(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.a = call fastcc i64 @struct_make_members_list(ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  %.not17.i = icmp eq i64 %0, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @rb_define_class_under(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #22
  br label %struct_define_without_accessor.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i64 @rb_define_class(ptr noundef nonnull %1, i64 noundef %2) #22
  br label %struct_define_without_accessor.exit

struct_define_without_accessor.exit:              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 3 uses
  %i.d = call fastcc i64 @struct_set_members(i64 noundef %.0.i, i64 noundef %i.a) ; 0 uses
  %.not18.i = icmp eq ptr %3, null
  %struct_alloc..i = select i1 %.not18.i, ptr @struct_alloc, ptr %3
  call void @rb_define_alloc_func(i64 noundef %.0.i, ptr noundef nonnull %struct_alloc..i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @struct_make_members_list(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ident_hash_new() #22   ; 4 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = load i32, ptr %0, align 8                ; 3 uses
  %i.g = icmp ult i32 %i.f, 41
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.f, 8
  store i32 %i.k, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.j, %bb.c ], [ %i.l, %bb.d ]
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i64 @rb_sym_intern_ascii_cstr(ptr noundef nonnull %i.o) #22 ; 2 uses
  %i.q = tail call i64 @rb_hash_has_key(i64 noundef %i.a, i64 noundef %i.p) #22
  %i.r = and i64 %i.q, -5
  %.not12 = icmp eq i64 %i.r, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.o) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = tail call i64 @rb_hash_aset(i64 noundef %i.a, i64 noundef %i.p, i64 noundef 20) #22 ; 0 uses
  br label %bb.b, !llvm.loop !37

bb.i:                                             ; preds = %bb.e
  %i.u = tail call i64 @rb_hash_keys(i64 noundef %i.a) #22 ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !11
  tail call void @rb_obj_freeze_inline(i64 noundef %i.u) #22
  ret i64 %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_struct_define_without_accessor(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call fastcc i64 @struct_make_members_list(ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @rb_define_class(ptr noundef nonnull %0, i64 noundef %1) #22
  br label %struct_define_without_accessor.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i64 @rb_class_new(i64 noundef %1) #22 ; 3 uses
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = call i64 @rb_make_metaclass(i64 noundef %i.c, i64 noundef %i.f) #22 ; 0 uses
  %i.h = call i64 @rb_class_inherited(i64 noundef %1, i64 noundef %i.c) #22 ; 0 uses
  br label %struct_define_without_accessor.exit

struct_define_without_accessor.exit:              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.i = call fastcc i64 @struct_set_members(i64 noundef %.0.i, i64 noundef %i.a) ; 0 uses
  %.not18.i = icmp eq ptr %2, null
  %struct_alloc..i = select i1 %.not18.i, ptr @struct_alloc, ptr %2
  call void @rb_define_alloc_func(i64 noundef %.0.i, ptr noundef nonnull %struct_alloc..i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_struct_define(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call fastcc i64 @struct_make_members_list(ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_cStruct, align 8, !tbaa !11 ; 3 uses
  %i.c = call i64 @rb_class_new(i64 noundef %i.b) #22 ; 3 uses
  %i.d = inttoptr i64 %i.b to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = call i64 @rb_make_metaclass(i64 noundef %i.c, i64 noundef %i.f) #22 ; 0 uses
  %i.h = call i64 @rb_class_inherited(i64 noundef %i.b, i64 noundef %i.c) #22 ; 0 uses
end_hunk_0
