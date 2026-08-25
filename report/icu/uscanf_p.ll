Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uscanf_p?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.u_scanf_info = type { i32, ptr }
%union.ufmt_args = type { i64 }
%struct.u_scanf_spec = type { %struct.u_scanf_spec_info, i32 }
%struct.u_scanf_spec_info = type { i32, i16, i16, i8, i8, i8, i8, i8, i8 }

@_ZL15g_u_scanf_infos = internal unnamed_addr constant <{ [89 x %struct.u_scanf_info], [19 x %struct.u_scanf_info] }> <{ [89 x %struct.u_scanf_info] [%struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 1, ptr @_ZL30u_scanf_simple_percent_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 9, ptr @_ZL21u_scanf_uchar_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 8, ptr @_ZL26u_scanf_scientific_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 8, ptr @_ZL22u_scanf_scidbl_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 8, ptr @_ZL23u_scanf_percent_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 10, ptr @_ZL23u_scanf_ustring_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 8, ptr @_ZL24u_scanf_spellout_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 3, ptr @_ZL19u_scanf_hex_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 5, ptr @_ZL23u_scanf_scanset_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 5, ptr @_ZL20u_scanf_char_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 3, ptr @_ZL23u_scanf_integer_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 8, ptr @_ZL26u_scanf_scientific_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 8, ptr @_ZL22u_scanf_double_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 8, ptr @_ZL22u_scanf_scidbl_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 3, ptr @_ZL23u_scanf_integer_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 2, ptr @_ZL21u_scanf_count_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 3, ptr @_ZL21u_scanf_octal_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info { i32 6, ptr @_ZL23u_scanf_pointer_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 5, ptr @_ZL22u_scanf_string_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 3, ptr @_ZL24u_scanf_uinteger_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info zeroinitializer, %struct.u_scanf_info { i32 3, ptr @_ZL19u_scanf_hex_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ }], [19 x %struct.u_scanf_info] zeroinitializer }>, align 16
@switch.table._ZL23u_scanf_integer_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_ = private unnamed_addr constant [18 x i8] c"\01\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01", align 4

; Function Attrs: mustprogress uwtable
define range(i32 -1, -2147483648) i32 @u_scanf_parse_78(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %union.ufmt_args, align 8           ; 4 uses
  %4 = alloca %struct.u_scanf_spec, align 4       ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.ae, %bb.a
  %.027.ph = phi ptr [ %i.dd, %bb.ae ], [ %1, %bb.a ]
  %.025.ph = phi i32 [ %i.cz, %bb.ae ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %i.cy, %bb.ae ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge73, %.outer
  %.027 = phi ptr [ %.027.ph, %.outer ], [ %i.cb, %.backedge73 ]
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.128 = phi ptr [ %.027, %bb.b ], [ %i.r, %bb.e ] ; 7 uses
  %i.n = load i16, ptr %.128, align 2, !tbaa !9   ; 3 uses
  switch i16 %i.n, label %bb.d [
    i16 37, label %.critedge
    i16 0, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = call zeroext i16 @u_fgetc_78(ptr noundef %0)
  %i.p = load i16, ptr %.128, align 2, !tbaa !9   ; 2 uses
  %i.q = icmp eq i16 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.128, i64 2
  br label %bb.c, !llvm.loop !11

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.d
  %i.s = phi i16 [ %i.n, %bb.c ], [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  %.not35 = icmp eq i16 %i.s, 37
  br i1 %.not35, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.critedge
  store i32 -1, ptr %i.c, align 4, !tbaa !13
  store i32 -1, ptr %4, align 4, !tbaa !16
  store i16 0, ptr %i.d, align 4, !tbaa !17
  store i16 32, ptr %i.e, align 2, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.k, align 1, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %.128, i64 2 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !9    ; 2 uses
  %.off.i = add i16 %i.u, -48
  %switch.i = icmp ult i16 %.off.i, 10
  br i1 %switch.i, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.128, i64 4 ; 3 uses
  %i.w = zext nneg i16 %i.u to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = load i16, ptr %i.v, align 2, !tbaa !9    ; 3 uses
  %.off121129.i = add i16 %i.y, -48
  %switch122130.i = icmp ult i16 %.off121129.i, 10
  br i1 %switch122130.i, label %.critedge.i, label %._crit_edge.i.a

.critedge.i:                                      ; preds = %bb.g, %.critedge.i
  %i.z = phi i16 [ %i.af, %.critedge.i ], [ %i.y, %bb.g ]
  %.0132.i = phi ptr [ %i.ab, %.critedge.i ], [ %i.v, %bb.g ]
  %storemerge131.i = phi i32 [ %i.ae, %.critedge.i ], [ %i.x, %bb.g ]
  %i.aa = mul nsw i32 %storemerge131.i, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %.0132.i, i64 2 ; 3 uses
  %i.ac = zext nneg i16 %i.z to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = add i32 %i.ad, %i.aa                    ; 2 uses
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !9  ; 3 uses
  %.off121.i = add i16 %i.af, -48
  %switch122.i = icmp ult i16 %.off121.i, 10
  br i1 %switch122.i, label %.critedge.i, label %._crit_edge.i.a, !llvm.loop !20

._crit_edge.i.a:                                  ; preds = %.critedge.i, %bb.g
  %i.ag = phi i16 [ %i.y, %bb.g ], [ %i.af, %.critedge.i ]
  %storemerge.lcssa.i = phi i32 [ %i.x, %bb.g ], [ %i.ae, %.critedge.i ]
  %.0.lcssa.i = phi ptr [ %i.v, %bb.g ], [ %i.ab, %.critedge.i ]
  store i32 %storemerge.lcssa.i, ptr %i.c, align 4, !tbaa !13
  %.not.i = icmp eq i16 %i.ag, 36
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.a
  store i32 -1, ptr %i.c, align 4, !tbaa !13
  br label %.preheader

bb.i:                                             ; preds = %._crit_edge.i.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h, %bb.f
  %.3.i.ph = phi ptr [ %i.ah, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.f ]
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.preheader
  %.3.i = phi ptr [ %.3.i.ph, %.preheader ], [ %.3.i.be, %.backedge ] ; 8 uses
  %i.ai = load i16, ptr %.3.i, align 2, !tbaa !9  ; 4 uses
  switch i16 %i.ai, label %.loopexit125.i [
    i16 42, label %.critedge2.i
    i16 40, label %.critedge2.i
    i16 48, label %bb.m
    i16 49, label %bb.m
    i16 50, label %bb.m
    i16 51, label %bb.m
    i16 52, label %bb.m
    i16 53, label %bb.m
    i16 54, label %bb.m
    i16 55, label %bb.m
    i16 56, label %bb.m
    i16 57, label %bb.m
  ]

.critedge2.i:                                     ; preds = %bb.j, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 3 uses
  switch i16 %i.ai, label %.backedge [
    i16 42, label %bb.k
    i16 40, label %bb.l
  ]

bb.k:                                             ; preds = %.critedge2.i
  store i8 1, ptr %i.f, align 4, !tbaa !21
  br label %.backedge

bb.l:                                             ; preds = %.critedge2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  %i.al = load i16, ptr %i.aj, align 2, !tbaa !9
  %i.am = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.al) ; 2 uses
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %i.e, align 2, !tbaa !18
  %i.ao = shl i32 %i.am, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.i, i64 6
  %i.aq = load i16, ptr %i.ak, align 2, !tbaa !9
  %i.ar = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.aq)
  %i.as = add i32 %i.ar, %i.ao                    ; 2 uses
  %i.at = trunc i32 %i.as to i16
  store i16 %i.at, ptr %i.e, align 2, !tbaa !18
  %i.au = shl i32 %i.as, 4
  %i.av = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.aw = load i16, ptr %i.ap, align 2, !tbaa !9
  %i.ax = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.aw)
  %i.ay = add i32 %i.ax, %i.au                    ; 2 uses
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %i.e, align 2, !tbaa !18
  %i.ba = shl i32 %i.ay, 4
  %i.bb = load i16, ptr %i.av, align 2, !tbaa !9
  %i.bc = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.bb)
  %i.bd = add i32 %i.bc, %i.ba
  %i.be = trunc i32 %i.bd to i16
  store i16 %i.be, ptr %i.e, align 2, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.3.i, i64 12
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k, %.critedge2.i
  %.3.i.be = phi ptr [ %i.aj, %.critedge2.i ], [ %i.aj, %bb.k ], [ %i.bf, %bb.l ]
  br label %bb.j, !llvm.loop !22

bb.m:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.bg = zext nneg i16 %i.ai to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %.5134.i = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 3 uses
  %i.bi = load i16, ptr %.5134.i, align 2, !tbaa !9 ; 3 uses
  %.off123135.i = add i16 %i.bi, -48
  %switch124136.i = icmp ult i16 %.off123135.i, 10
  br i1 %switch124136.i, label %.critedge4.i, label %.loopexit.i.a

.critedge4.i:                                     ; preds = %bb.m, %.critedge4.i
  %i.bj = phi i16 [ %i.bo, %.critedge4.i ], [ %i.bi, %bb.m ]
  %.5138.i = phi ptr [ %.5.i, %.critedge4.i ], [ %.5134.i, %bb.m ]
  %storemerge118137.i = phi i32 [ %i.bn, %.critedge4.i ], [ %i.bh, %bb.m ]
  %i.bk = mul nsw i32 %storemerge118137.i, 10
  %i.bl = zext nneg i16 %i.bj to i32
  %i.bm = add nsw i32 %i.bl, -48
  %i.bn = add i32 %i.bm, %i.bk                    ; 2 uses
  %.5.i = getelementptr inbounds nuw i8, ptr %.5138.i, i64 2 ; 3 uses
  %i.bo = load i16, ptr %.5.i, align 2, !tbaa !9  ; 3 uses
  %.off123.i = add i16 %i.bo, -48
  %switch124.i = icmp ult i16 %.off123.i, 10
  br i1 %switch124.i, label %.critedge4.i, label %.loopexit.i.a, !llvm.loop !23

.loopexit.i.a:                                    ; preds = %.critedge4.i, %bb.m
  %storemerge118.lcssa.i = phi i32 [ %i.bh, %bb.m ], [ %i.bn, %.critedge4.i ]
  %.5.lcssa.i = phi ptr [ %.5134.i, %bb.m ], [ %.5.i, %.critedge4.i ]
  %.lcssa.i = phi i16 [ %i.bi, %bb.m ], [ %i.bo, %.critedge4.i ]
  store i32 %storemerge118.lcssa.i, ptr %4, align 4, !tbaa !16
  br label %.loopexit125.i

.loopexit125.i:                                   ; preds = %bb.j, %.loopexit.i.a
  %5 = phi i16 [ %.lcssa.i, %.loopexit.i.a ], [ %i.ai, %bb.j ] ; 2 uses
  %.6.i = phi ptr [ %.5.lcssa.i, %.loopexit.i.a ], [ %.3.i, %bb.j ] ; 3 uses
  switch i16 %5, label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit [
    i16 104, label %bb.n
    i16 108, label %bb.n
    i16 76, label %bb.n
  ]

bb.n:                                             ; preds = %.loopexit125.i, %.loopexit125.i, %.loopexit125.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.6.i, i64 2 ; 5 uses
  switch i16 %5, label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit [
    i16 104, label %bb.o
    i16 108, label %bb.p
    i16 76, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.h, align 2, !tbaa !24
  br label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !9
  %i.br = icmp eq i16 %i.bq, 108
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.j, align 4, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.6.i, i64 4
  br label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit

bb.r:                                             ; preds = %bb.p
  store i8 1, ptr %i.i, align 1, !tbaa !26
  br label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit

bb.s:                                             ; preds = %bb.n
  store i8 1, ptr %i.g, align 1, !tbaa !27
  br label %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit

_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit:  ; preds = %.loopexit125.i, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  %.7.i = phi ptr [ %i.bp, %bb.n ], [ %i.bp, %bb.o ], [ %i.bs, %bb.q ], [ %i.bp, %bb.r ], [ %i.bp, %bb.s ], [ %.6.i, %.loopexit125.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.7.i, i64 2
  %i.bu = load i16, ptr %.7.i, align 2, !tbaa !9  ; 2 uses
  store i16 %i.bu, ptr %i.d, align 4, !tbaa !17
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %.128 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr exact i64 %i.bx, 1
  %i.bz = trunc i64 %i.by to i32
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !8
  %sext = shl i64 %i.bx, 31
  %i.ca = ashr i64 %sext, 32
  %i.cb = getelementptr inbounds [2 x i8], ptr %.128, i64 %i.ca ; 3 uses
  %i.cc = add i16 %i.bu, -32                      ; 3 uses
  %i.cd = icmp ult i16 %i.cc, 108
  br i1 %i.cd, label %bb.t, label %.backedge73

bb.t:                                             ; preds = %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit
  %i.ce = zext nneg i16 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @_ZL15g_u_scanf_infos, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !28
  %.not36 = icmp eq i16 %i.cc, 78
  br i1 %.not36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = call signext i8 @u_feof_78(ptr noundef %0)
  %.not37 = icmp eq i8 %i.ch, 0
  br i1 %.not37, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = load i8, ptr %i.f, align 4, !tbaa !32
  %.not38 = icmp eq i8 %i.ci, 0
  br i1 %.not38, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  switch i32 %i.cg, label %bb.ac [
    i32 2, label %bb.x
    i32 4, label %bb.y
    i32 9, label %bb.y
    i32 3, label %bb.y
    i32 5, label %bb.y
    i32 10, label %bb.y
    i32 6, label %bb.y
    i32 7, label %bb.y
    i32 8, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store i32 %.0.ph, ptr %4, align 4, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.cj = load i32, ptr %2, align 8               ; 3 uses
  %i.ck = icmp ult i32 %i.cj, 41
  br i1 %i.ck, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.m, align 8
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  %i.co = add nuw nsw i32 %i.cj, 8
  store i32 %i.co, ptr %2, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cp = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.l, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cr = phi ptr [ %i.cn, %bb.z ], [ %i.cp, %bb.aa ]
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.v, %bb.ab
  %.sink = phi ptr [ %i.cs, %bb.ab ], [ null, %bb.v ], [ null, %bb.w ]
  store ptr %.sink, ptr %3, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %.not39 = icmp eq ptr %i.cu, null
  br i1 %.not39, label %.backedge73, label %bb.ad

.backedge73:                                      ; preds = %bb.ac, %_ZL18u_scanf_parse_specPKDsP12u_scanf_spec.exit
  br label %bb.b, !llvm.loop !37

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.cv = call noundef i32 %i.cu(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add nsw i32 %i.cv, %.0.ph
  %i.cz = add nuw nsw i32 %i.cw, %.025.ph
  %i.da = load i32, ptr %i.a, align 4, !tbaa !8
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [2 x i8], ptr %i.cb, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -2
  br label %.outer, !llvm.loop !37

.loopexit:                                        ; preds = %bb.ad, %bb.u, %.critedge
  %.2 = phi i32 [ %.025.ph, %bb.u ], [ %.025.ph, %.critedge ], [ -1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i16 @u_fgetc_78(ptr noundef) local_unnamed_addr #2

declare signext i8 @u_feof_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL30u_scanf_simple_percent_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) #0 {
bb.a:
  store i32 0, ptr %5, align 4, !tbaa !8
  %i.a = tail call zeroext i16 @u_fgetc_78(ptr noundef %0)
  %.not = icmp eq i16 %i.a, 37
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %5, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21u_scanf_uchar_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_(ptr noundef %0, ptr nofree noundef captures(none) initializes((13, 14)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 0, ptr %i.c, align 1, !tbaa !19
  %i.d = tail call noundef i32 @_ZL23u_scanf_ustring_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL26u_scanf_scientific_handlerP5UFILEP17u_scanf_spec_infoP9ufmt_argsPKDsPiS7_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
end_hunk_0
