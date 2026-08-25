Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uprntf_p?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.u_printf_info = type { i32, ptr }
%union.ufmt_args = type { i64 }
%struct.u_printf_spec = type { %struct.u_printf_spec_info, i32, i32, i32 }
%struct.u_printf_spec_info = type { i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@_ZL16g_u_printf_infos = internal unnamed_addr constant <{ [89 x %struct.u_printf_info], [19 x %struct.u_printf_info] }> <{ [89 x %struct.u_printf_info] [%struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 1, ptr @_ZL31u_printf_simple_percent_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 9, ptr @_ZL22u_printf_uchar_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 8, ptr @_ZL27u_printf_scientific_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 8, ptr @_ZL23u_printf_scidbl_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 8, ptr @_ZL24u_printf_percent_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 10, ptr @_ZL24u_printf_ustring_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 8, ptr @_ZL25u_printf_spellout_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 3, ptr @_ZL20u_printf_hex_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 4, ptr @_ZL21u_printf_char_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 3, ptr @_ZL24u_printf_integer_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 8, ptr @_ZL27u_printf_scientific_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 8, ptr @_ZL23u_printf_double_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 8, ptr @_ZL23u_printf_scidbl_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 3, ptr @_ZL24u_printf_integer_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 2, ptr @_ZL22u_printf_count_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 3, ptr @_ZL22u_printf_octal_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info { i32 6, ptr @_ZL24u_printf_pointer_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 5, ptr @_ZL23u_printf_string_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 3, ptr @_ZL25u_printf_uinteger_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }, %struct.u_printf_info zeroinitializer, %struct.u_printf_info zeroinitializer, %struct.u_printf_info { i32 3, ptr @_ZL20u_printf_hex_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_args }], [19 x %struct.u_printf_info] zeroinitializer }>, align 16
@_ZZL31u_printf_simple_percent_handlerPK23u_printf_stream_handlerPvP13ULocaleBundlePK18u_printf_spec_infoPK9ufmt_argsE7PERCENT = internal constant [1 x i16] [i16 37], align 2
@_ZL9gSpaceStr = internal constant [2 x i16] [i16 32, i16 0], align 2
@_ZL8gNullStr = internal constant [7 x i16] [i16 40, i16 110, i16 117, i16 108, i16 108, i16 41, i16 0], align 2

; Function Attrs: mustprogress uwtable
define i32 @u_printf_parse_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %union.ufmt_args, align 8           ; 14 uses
  %8 = alloca %struct.u_printf_spec, align 4      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %.preheader528, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.preheader528, label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread

.preheader528:                                    ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader528, %bb.h
  %.0169.i = phi ptr [ %.2171.lcssa.i, %bb.h ], [ %1, %.preheader528 ]
  %.0166.i = phi i32 [ %spec.select.i, %bb.h ], [ 0, %.preheader528 ] ; 3 uses
  %.0.i = phi i32 [ %.1.lcssa.i, %bb.h ], [ 0, %.preheader528 ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.1170.i = phi ptr [ %.0169.i, %bb.c ], [ %i.e, %bb.e ] ; 4 uses
  %i.d = load i16, ptr %.1170.i, align 2, !tbaa !14
  switch i16 %i.d, label %bb.e [
    i16 0, label %bb.i
    i16 37, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.1170.i, i64 2
  br label %bb.d, !llvm.loop !16

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.1170.i, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !14   ; 2 uses
  %.off.i = add i16 %i.g, -48
  %switch.i = icmp ult i16 %.off.i, 10
  br i1 %switch.i, label %bb.g, label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.1170.i, i64 4 ; 3 uses
  %i.i = zext nneg i16 %i.g to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = load i16, ptr %i.h, align 2, !tbaa !14   ; 3 uses
  %.off203215.i = add i16 %i.k, -48
  %switch204216.i = icmp ult i16 %.off203215.i, 10
  br i1 %switch204216.i, label %.critedge2.i, label %._crit_edge.i

.critedge2.i:                                     ; preds = %bb.g, %.critedge2.i
  %i.l = phi i16 [ %i.r, %.critedge2.i ], [ %i.k, %bb.g ]
  %.1218.i = phi i32 [ %i.q, %.critedge2.i ], [ %i.j, %bb.g ]
  %.2171217.i = phi ptr [ %i.n, %.critedge2.i ], [ %i.h, %bb.g ]
  %i.m = mul nsw i32 %.1218.i, 10
  %i.n = getelementptr inbounds nuw i8, ptr %.2171217.i, i64 2 ; 3 uses
  %i.o = zext nneg i16 %i.l to i32
  %i.p = add nsw i32 %i.o, -48
  %i.q = add i32 %i.p, %i.m                       ; 2 uses
  %i.r = load i16, ptr %i.n, align 2, !tbaa !14   ; 3 uses
  %.off203.i = add i16 %i.r, -48
  %switch204.i = icmp ult i16 %.off203.i, 10
  br i1 %switch204.i, label %.critedge2.i, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.critedge2.i, %bb.g
  %i.s = phi i16 [ %i.k, %bb.g ], [ %i.r, %.critedge2.i ]
  %.2171.lcssa.i = phi ptr [ %i.h, %bb.g ], [ %i.n, %.critedge2.i ]
  %.1.lcssa.i = phi i32 [ %i.j, %bb.g ], [ %i.q, %.critedge2.i ] ; 2 uses
  %.not197.i = icmp eq i16 %i.s, 36
  br i1 %.not197.i, label %bb.h, label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread

bb.h:                                             ; preds = %._crit_edge.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.1.lcssa.i, i32 %.0166.i)
  br label %bb.c, !llvm.loop !19

bb.i:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %.0166.i to i64            ; 4 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.u) #9 ; 5 uses
  %i.w = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.t) #9 ; 5 uses
  %i.x = shl nuw nsw i64 %i.t, 3
  %i.y = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.x) #9 ; 9 uses
  %i.z = icmp ne ptr %i.v, null                   ; 2 uses
  %i.aa = icmp ne ptr %i.w, null                  ; 2 uses
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp ne ptr %i.y, null                  ; 2 uses
  %or.cond5.i = select i1 %or.cond.i, i1 %i.ab, i1 false
  br i1 %or.cond5.i, label %.preheader209.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @uprv_free_78(ptr noundef nonnull %i.v)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @uprv_free_78(ptr noundef nonnull %i.w)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.ab, label %bb.o, label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit

bb.o:                                             ; preds = %bb.n
  tail call void @uprv_free_78(ptr noundef nonnull %i.y)
  br label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit

.preheader209.i:                                  ; preds = %bb.i, %bb.z
  %.4173.i = phi ptr [ %.8.i, %bb.z ], [ %1, %bb.i ]
  %.3.i = phi i32 [ %i.aw, %bb.z ], [ %.0.i, %bb.i ]
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader209.i
  %.5174.i = phi ptr [ %.4173.i, %.preheader209.i ], [ %i.ah, %bb.q ] ; 4 uses
  %i.ac = load i16, ptr %.5174.i, align 2, !tbaa !14
  switch i16 %i.ac, label %bb.q [
    i16 0, label %.preheader.i
    i16 37, label %bb.r
  ]

.preheader.i:                                     ; preds = %bb.p
  %i.ad = icmp sgt i32 %.0166.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge227.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %.5174.i, i64 2
  br label %bb.p, !llvm.loop !20

bb.r:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.5174.i, i64 2 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !14 ; 3 uses
  %.off205.i = add i16 %i.aj, -48
  %switch206.i = icmp ult i16 %.off205.i, 10
  br i1 %switch206.i, label %bb.s, label %.loopexit.i

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %.5174.i, i64 4 ; 3 uses
  %i.al = zext nneg i16 %i.aj to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = load i16, ptr %i.ak, align 2, !tbaa !14 ; 3 uses
  %.off207220.i = add i16 %i.an, -48
  %switch208221.i = icmp ult i16 %.off207220.i, 10
  br i1 %switch208221.i, label %.critedge9.i, label %.loopexit.i

.critedge9.i:                                     ; preds = %bb.s, %.critedge9.i
  %i.ao = phi i16 [ %i.au, %.critedge9.i ], [ %i.an, %bb.s ]
  %.4223.i = phi i32 [ %i.at, %.critedge9.i ], [ %i.am, %bb.s ]
  %.6175222.i = phi ptr [ %i.aq, %.critedge9.i ], [ %i.ak, %bb.s ]
  %i.ap = mul nsw i32 %.4223.i, 10
  %i.aq = getelementptr inbounds nuw i8, ptr %.6175222.i, i64 2 ; 3 uses
  %i.ar = zext nneg i16 %i.ao to i32
  %i.as = add nsw i32 %i.ar, -48
  %i.at = add i32 %i.as, %i.ap                    ; 2 uses
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !14 ; 3 uses
  %.off207.i = add i16 %i.au, -48
  %switch208.i = icmp ult i16 %.off207.i, 10
  br i1 %switch208.i, label %.critedge9.i, label %.loopexit.i, !llvm.loop !21

.loopexit.i:                                      ; preds = %.critedge9.i, %bb.s, %bb.r
  %i.av = phi i16 [ %i.aj, %bb.r ], [ %i.an, %bb.s ], [ %i.au, %.critedge9.i ]
  %.7.i = phi ptr [ %i.ai, %bb.r ], [ %i.ak, %bb.s ], [ %i.aq, %.critedge9.i ]
  %.5.i = phi i32 [ %.3.i, %bb.r ], [ %i.am, %bb.s ], [ %i.at, %.critedge9.i ]
  %i.aw = add nsw i32 %.5.i, -1                   ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.w, i64 %i.ax ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.loopexit.i
  %i.az = phi i16 [ %i.av, %.loopexit.i ], [ %.pre.i, %bb.w ] ; 2 uses
  %.8.i = phi ptr [ %.7.i, %.loopexit.i ], [ %i.be, %bb.w ] ; 4 uses
  switch i16 %i.az, label %bb.x [
    i16 104, label %.critedge11.i
    i16 108, label %.critedge11.i
    i16 76, label %.critedge11.i
    i16 45, label %.critedge11.i
    i16 43, label %.critedge11.i
    i16 32, label %.critedge11.i
    i16 35, label %.critedge11.i
    i16 48, label %.critedge11.i
    i16 40, label %.critedge11.i
    i16 49, label %.critedge11.i
    i16 50, label %.critedge11.i
    i16 51, label %.critedge11.i
    i16 52, label %.critedge11.i
    i16 53, label %.critedge11.i
    i16 54, label %.critedge11.i
    i16 55, label %.critedge11.i
    i16 56, label %.critedge11.i
    i16 57, label %.critedge11.i
    i16 42, label %.critedge11.i
    i16 46, label %.critedge11.i
    i16 36, label %.critedge11.i
  ]
end_hunk_0
begin_hunk_1_@u_printf_parse_78:bb.a
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !14
  %i.bd = icmp eq i16 %i.bc, 108
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.ay, align 1, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.critedge11.i
  %.9.i = phi ptr [ %i.bb, %bb.v ], [ %i.bb, %bb.u ], [ %.8.i, %.critedge11.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.9.i, i64 2 ; 2 uses
  %.pre.i = load i16, ptr %i.be, align 2, !tbaa !14
  br label %bb.t, !llvm.loop !23

bb.x:                                             ; preds = %bb.t
  %i.bf = add i16 %i.az, -32                      ; 2 uses
  %i.bg = icmp ult i16 %i.bf, 108
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bh = zext nneg i16 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @_ZL16g_u_printf_infos, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ %i.bj, %bb.y ], [ 0, %bb.x ]
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ax
  store i32 %.sink.i, ptr %i.bk, align 4, !tbaa !27
  br label %.preheader209.i, !llvm.loop !28

bb.aa:                                            ; preds = %bb.ax, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ax ] ; 9 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !27
  switch i32 %i.bm, label %bb.aw [
    i32 5, label %bb.ab
    i32 10, label %bb.ab
    i32 6, label %bb.ab
    i32 4, label %bb.af
    i32 9, label %bb.af
    i32 3, label %bb.af
    i32 7, label %bb.ao
    i32 8, label %bb.as
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.bn = load i32, ptr %6, align 8               ; 3 uses
  %i.bo = icmp ult i32 %i.bn, 41
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bp = load ptr, ptr %i.ag, align 8
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bq
  %i.bs = add nuw nsw i32 %i.bn, 8
  store i32 %i.bs, ptr %6, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bt = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.af, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bv = phi ptr [ %i.br, %bb.ac ], [ %i.bt, %bb.ad ]
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !22
  br label %bb.ax

bb.af:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
  %.not200.i = icmp eq i8 %i.bz, 0
  %i.ca = load i32, ptr %6, align 8               ; 5 uses
  %i.cb = icmp ult i32 %i.ca, 41                  ; 2 uses
  br i1 %.not200.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %i.ag, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %6, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cg = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.af, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ci = phi ptr [ %i.ce, %bb.ah ], [ %i.cg, %bb.ai ]
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !22
  br label %bb.ax

bb.ak:                                            ; preds = %bb.af
  br i1 %i.cb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cl = load ptr, ptr %i.ag, align 8
  %i.cm = zext nneg i32 %i.ca to i64
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  %i.co = add nuw nsw i32 %i.ca, 8
  store i32 %i.co, ptr %6, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cp = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.af, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = phi ptr [ %i.cn, %bb.al ], [ %i.cp, %bb.am ]
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !22
  br label %bb.ax

bb.ao:                                            ; preds = %bb.aa
  %i.cv = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.cw = icmp ult i32 %i.cv, 161
  br i1 %i.cw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cx = load ptr, ptr %i.ag, align 8
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.cy
  %i.da = add nuw nsw i32 %i.cv, 16
  store i32 %i.da, ptr %i.ae, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.af, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dd = phi ptr [ %i.cz, %bb.ap ], [ %i.db, %bb.aq ]
  %i.de = load double, ptr %i.dd, align 8, !tbaa !33
  %i.df = fptrunc double %i.de to float
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store float %i.df, ptr %i.dg, align 8, !tbaa !22
  br label %bb.ax

bb.as:                                            ; preds = %bb.aa
  %i.dh = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.di = icmp ult i32 %i.dh, 161
  br i1 %i.di, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dj = load ptr, ptr %i.ag, align 8
  %i.dk = zext nneg i32 %i.dh to i64
  %i.dl = getelementptr i8, ptr %i.dj, i64 %i.dk
  %i.dm = add nuw nsw i32 %i.dh, 16
  store i32 %i.dm, ptr %i.ae, align 4
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dn = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store ptr %i.do, ptr %i.af, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dp = phi ptr [ %i.dl, %bb.at ], [ %i.dn, %bb.au ]
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store double %i.dq, ptr %i.dr, align 8, !tbaa !22
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store ptr null, ptr %i.ds, align 8, !tbaa !22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.t
  br i1 %exitcond.not.i, label %._crit_edge227.i, label %bb.aa, !llvm.loop !35

._crit_edge227.i:                                 ; preds = %bb.ax, %.preheader.i
  tail call void @uprv_free_78(ptr noundef nonnull %i.v)
  tail call void @uprv_free_78(ptr noundef nonnull %i.w)
  br label %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread

_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread: ; preds = %._crit_edge.i, %bb.f, %._crit_edge227.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.y, %._crit_edge227.i ], [ null, %bb.f ], [ null, %._crit_edge.i ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 18
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 17 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 15
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 19
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 21
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 22 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ef, %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread
  %.0279 = phi ptr [ %1, %_ZL14parseArgumentsPKDsP13__va_list_tagP10UErrorCode.exit.thread ], [ %i.is, %bb.ef ] ; 7 uses
  br i1 %.not, label %.critedge.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = load i32, ptr %i.dt, align 8, !tbaa !8
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %.critedge.preheader, label %bb.eg

.critedge.preheader:                              ; preds = %bb.ay, %bb.az
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.ba
  %.1 = phi ptr [ %i.er, %bb.ba ], [ %.0279, %.critedge.preheader ] ; 8 uses
  %i.eq = load i16, ptr %.1, align 2, !tbaa !14   ; 2 uses
  switch i16 %i.eq, label %bb.ba [
    i16 37, label %.critedge2
    i16 0, label %.critedge2
  ]

bb.ba:                                            ; preds = %.critedge
  %i.er = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.critedge, !llvm.loop !36

.critedge2:                                       ; preds = %.critedge, %.critedge
  %i.es = icmp ugt ptr %.1, %.0279
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge2
  %i.et = load ptr, ptr %0, align 8, !tbaa !37
  %i.eu = ptrtoint ptr %.1 to i64
  %i.ev = ptrtoint ptr %.0279 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 1
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call noundef i32 %i.et(ptr noundef %2, ptr noundef %.0279, i32 noundef %i.ey)
  %i.fa = load i32, ptr %5, align 4, !tbaa !32
  %i.fb = add nsw i32 %i.fa, %i.ez
  store i32 %i.fb, ptr %5, align 4, !tbaa !32
  %.pre = load i16, ptr %.1, align 2, !tbaa !14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge2
  %i.fc = phi i16 [ %.pre, %bb.bb ], [ %i.eq, %.critedge2 ]
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.eg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 -1, ptr %i.du, align 4, !tbaa !39
  store i32 -1, ptr %i.dv, align 4, !tbaa !42
  store i32 -1, ptr %i.dw, align 4, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  store i32 -1, ptr %8, align 4, !tbaa !44
  store i32 -1, ptr %i.dx, align 4, !tbaa !45
  store i16 32, ptr %i.dy, align 4, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !14 ; 2 uses
  %.off = add i16 %i.ff, -48
  %switch = icmp ult i16 %.off, 10
  br i1 %switch, label %bb.be, label %.preheader

bb.be:                                            ; preds = %bb.bd
  %i.fg = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 3 uses
  %i.fh = zext nneg i16 %i.ff to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  store i32 %i.fi, ptr %i.dw, align 4, !tbaa !43
  %i.fj = load i16, ptr %i.fg, align 2, !tbaa !14 ; 3 uses
  %.off321362 = add i16 %i.fj, -48
  %switch322363 = icmp ult i16 %.off321362, 10
  br i1 %switch322363, label %.critedge4, label %._crit_edge.a

.critedge4:                                       ; preds = %bb.be, %.critedge4
  %i.fk = phi i16 [ %i.fq, %.critedge4 ], [ %i.fj, %bb.be ]
  %.2365 = phi ptr [ %i.fm, %.critedge4 ], [ %i.fg, %bb.be ]
  %storemerge364 = phi i32 [ %i.fp, %.critedge4 ], [ %i.fi, %bb.be ]
  %i.fl = mul nsw i32 %storemerge364, 10
  %i.fm = getelementptr inbounds nuw i8, ptr %.2365, i64 2 ; 3 uses
  %i.fn = zext nneg i16 %i.fk to i32
  %i.fo = add i32 %i.fl, -48
  %i.fp = add i32 %i.fo, %i.fn                    ; 2 uses
  %i.fq = load i16, ptr %i.fm, align 2, !tbaa !14 ; 3 uses
  %.off321 = add i16 %i.fq, -48
  %switch322 = icmp ult i16 %.off321, 10
  br i1 %switch322, label %.critedge4, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.critedge4
  store i32 %i.fp, ptr %i.dw, align 4, !tbaa !43
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %bb.be
  %i.fr = phi i16 [ %i.fq, %._crit_edge ], [ %i.fj, %bb.be ]
  %.2.lcssa = phi ptr [ %i.fm, %._crit_edge ], [ %i.fg, %bb.be ]
  %.not309 = icmp eq i16 %i.fr, 36
  br i1 %.not309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.a
  store i32 -1, ptr %i.dw, align 4, !tbaa !43
  br label %.preheader

bb.bg:                                            ; preds = %._crit_edge.a
  %i.fs = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  br label %.preheader

.preheader:                                       ; preds = %bb.bd, %bb.bf, %bb.bg
  %.5.ph = phi ptr [ %i.fs, %bb.bg ], [ %i.fe, %bb.bf ], [ %i.fe, %bb.bd ]
  br label %bb.bh

bb.bh:                                            ; preds = %.backedge, %.preheader
  %.5 = phi ptr [ %.5.ph, %.preheader ], [ %.5.be, %.backedge ] ; 10 uses
  %i.ft = load i16, ptr %.5, align 2, !tbaa !14   ; 4 uses
  switch i16 %i.ft, label %.loopexit342 [
    i16 45, label %.critedge6
    i16 43, label %.critedge6
    i16 32, label %.critedge6
    i16 35, label %.critedge6
    i16 48, label %.critedge6
    i16 40, label %.critedge6
    i16 42, label %bb.bo
    i16 49, label %bb.bt
    i16 50, label %bb.bt
    i16 51, label %bb.bt
    i16 52, label %bb.bt
    i16 53, label %bb.bt
    i16 54, label %bb.bt
    i16 55, label %bb.bt
    i16 56, label %bb.bt
    i16 57, label %bb.bt
  ]

.critedge6:                                       ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.fu = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 7 uses
  switch i16 %i.ft, label %.backedge [
    i16 45, label %bb.bi
    i16 43, label %bb.bj
    i16 32, label %bb.bk
    i16 35, label %bb.bl
    i16 48, label %bb.bm
    i16 40, label %bb.bn
  ]

bb.bi:                                            ; preds = %.critedge6
  store i8 1, ptr %i.ed, align 4, !tbaa !48
  br label %.backedge

bb.bj:                                            ; preds = %.critedge6
  store i8 1, ptr %i.eb, align 1, !tbaa !49
  br label %.backedge

bb.bk:                                            ; preds = %.critedge6
  store i8 1, ptr %i.eb, align 1, !tbaa !49
  store i8 1, ptr %i.ec, align 1, !tbaa !50
  br label %.backedge

bb.bl:                                            ; preds = %.critedge6
  store i8 1, ptr %i.ea, align 2, !tbaa !51
  br label %.backedge

bb.bm:                                            ; preds = %.critedge6
  store i8 1, ptr %i.dz, align 2, !tbaa !52
  store i16 48, ptr %i.dy, align 4, !tbaa !46
  br label %.backedge

bb.bn:                                            ; preds = %.critedge6
  %i.fv = getelementptr inbounds nuw i8, ptr %.5, i64 4
  %i.fw = load i16, ptr %i.fu, align 2, !tbaa !14
  %i.fx = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.fw) ; 2 uses
  %i.fy = trunc i32 %i.fx to i16
  store i16 %i.fy, ptr %i.dy, align 4, !tbaa !46
  %i.fz = shl i32 %i.fx, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.5, i64 6
  %i.gb = load i16, ptr %i.fv, align 2, !tbaa !14
  %i.gc = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.gb)
  %i.gd = add i32 %i.gc, %i.fz                    ; 2 uses
  %i.ge = trunc i32 %i.gd to i16
  store i16 %i.ge, ptr %i.dy, align 4, !tbaa !46
  %i.gf = shl i32 %i.gd, 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.5, i64 8
  %i.gh = load i16, ptr %i.ga, align 2, !tbaa !14
  %i.gi = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.gh)
  %i.gj = add i32 %i.gi, %i.gf                    ; 2 uses
  %i.gk = trunc i32 %i.gj to i16
  store i16 %i.gk, ptr %i.dy, align 4, !tbaa !46
  %i.gl = shl i32 %i.gj, 4
  %i.gm = load i16, ptr %i.gg, align 2, !tbaa !14
  %i.gn = call noundef i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %i.gm)
  %i.go = add i32 %i.gn, %i.gl
  %i.gp = trunc i32 %i.go to i16
  store i16 %i.gp, ptr %i.dy, align 4, !tbaa !46
  %i.gq = getelementptr inbounds nuw i8, ptr %.5, i64 12
  br label %.backedge

.backedge:                                        ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %.critedge6
  %.5.be = phi ptr [ %i.fu, %bb.bl ], [ %i.fu, %bb.bm ], [ %i.gq, %bb.bn ], [ %i.fu, %.critedge6 ], [ %i.fu, %bb.bi ], [ %i.fu, %bb.bj ], [ %i.fu, %bb.bk ]
  br label %bb.bh, !llvm.loop !53

bb.bo:                                            ; preds = %bb.bh
  store i32 -2, ptr %i.dx, align 4, !tbaa !45
  %i.gr = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 3 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !14 ; 3 uses
  %.off323 = add i16 %i.gs, -48
  %switch324 = icmp ult i16 %.off323, 10
  br i1 %switch324, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gt = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 3 uses
  %i.gu = zext nneg i16 %i.gs to i32
  %i.gv = add nsw i32 %i.gu, -48                  ; 2 uses
  store i32 %i.gv, ptr %i.du, align 4, !tbaa !39
  %i.gw = load i16, ptr %i.gt, align 2, !tbaa !14 ; 3 uses
  %.off325375 = add i16 %i.gw, -48
  %switch326376 = icmp ult i16 %.off325375, 10
  br i1 %switch326376, label %.critedge8, label %bb.bq

.critedge8:                                       ; preds = %bb.bp, %.critedge8
  %i.gx = phi i16 [ %i.hd, %.critedge8 ], [ %i.gw, %bb.bp ]
  %.7378 = phi ptr [ %i.gz, %.critedge8 ], [ %i.gt, %bb.bp ]
  %storemerge311377 = phi i32 [ %i.hc, %.critedge8 ], [ %i.gv, %bb.bp ]
  %i.gy = mul nsw i32 %storemerge311377, 10
  %i.gz = getelementptr inbounds nuw i8, ptr %.7378, i64 2 ; 3 uses
  %i.ha = zext nneg i16 %i.gx to i32
  %i.hb = add i32 %i.gy, -48
  %i.hc = add i32 %i.hb, %i.ha                    ; 2 uses
  %i.hd = load i16, ptr %i.gz, align 2, !tbaa !14 ; 3 uses
  %.off325 = add i16 %i.hd, -48
  %switch326 = icmp ult i16 %.off325, 10
  br i1 %switch326, label %.critedge8, label %.loopexit340.a, !llvm.loop !54

.loopexit340.a:                                   ; preds = %.critedge8
  store i32 %i.hc, ptr %i.du, align 4, !tbaa !39
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit340.a, %bb.bo
  %9 = phi i16 [ %i.gs, %bb.bo ], [ %i.hd, %.loopexit340.a ], [ %i.gw, %bb.bp ]
  %.8 = phi ptr [ %i.gr, %bb.bo ], [ %i.gz, %.loopexit340.a ], [ %i.gt, %bb.bp ]
  %.not312 = icmp eq i16 %9, 36
  br i1 %.not312, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 -1, ptr %i.du, align 4, !tbaa !39
  br label %thread-pre-split

bb.bs:                                            ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %.8, i64 2
  br label %thread-pre-split

bb.bt:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.hf = zext nneg i16 %i.ft to i32
  %i.hg = add nsw i32 %i.hf, -48                  ; 2 uses
  %.9367 = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 3 uses
  store i32 %i.hg, ptr %i.dx, align 4, !tbaa !45
  %i.hh = load i16, ptr %.9367, align 2, !tbaa !14 ; 3 uses
  %.off327368 = add i16 %i.hh, -48
  %switch328369 = icmp ult i16 %.off327368, 10
  br i1 %switch328369, label %.critedge10, label %.loopexit342

.critedge10:                                      ; preds = %bb.bt, %.critedge10
  %i.hi = phi i16 [ %i.hn, %.critedge10 ], [ %i.hh, %bb.bt ]
  %.9371 = phi ptr [ %.9, %.critedge10 ], [ %.9367, %bb.bt ]
  %storemerge310370 = phi i32 [ %i.hm, %.critedge10 ], [ %i.hg, %bb.bt ]
  %i.hj = mul nsw i32 %storemerge310370, 10
  %i.hk = zext nneg i16 %i.hi to i32
  %i.hl = add i32 %i.hj, -48
  %i.hm = add i32 %i.hl, %i.hk                    ; 2 uses
  %.9 = getelementptr inbounds nuw i8, ptr %.9371, i64 2 ; 3 uses
  %i.hn = load i16, ptr %.9, align 2, !tbaa !14   ; 3 uses
  %.off327 = add i16 %i.hn, -48
  %switch328 = icmp ult i16 %.off327, 10
  br i1 %switch328, label %.critedge10, label %.loopexit341.a, !llvm.loop !55

thread-pre-split:                                 ; preds = %bb.bs, %bb.br
  %.10.ph = phi ptr [ %i.he, %bb.bs ], [ %i.gr, %bb.br ] ; 2 uses
  %.pr = load i16, ptr %.10.ph, align 2, !tbaa !14
  br label %.loopexit342

.loopexit341.a:                                   ; preds = %.critedge10
  store i32 %i.hm, ptr %i.dx, align 4, !tbaa !45
  br label %.loopexit342

.loopexit342:                                     ; preds = %bb.bh, %bb.bt, %.loopexit341.a, %thread-pre-split
  %10 = phi i16 [ %.pr, %thread-pre-split ], [ %i.hh, %bb.bt ], [ %i.hn, %.loopexit341.a ], [ %i.ft, %bb.bh ]
  %.10 = phi ptr [ %.10.ph, %thread-pre-split ], [ %.9367, %bb.bt ], [ %.9, %.loopexit341.a ], [ %.5, %bb.bh ] ; 5 uses
  %i.ho = icmp eq i16 %10, 46
  br i1 %i.ho, label %bb.bu, label %thread-pre-split337

bb.bu:                                            ; preds = %.loopexit342
  %i.hp = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !14 ; 3 uses
  switch i16 %i.hq, label %bb.cb [
    i16 42, label %bb.bv
    i16 48, label %bb.ca
    i16 49, label %bb.ca
    i16 50, label %bb.ca
    i16 51, label %bb.ca
    i16 52, label %bb.ca
    i16 53, label %bb.ca
    i16 54, label %bb.ca
    i16 55, label %bb.ca
    i16 56, label %bb.ca
    i16 57, label %bb.ca
  ]

bb.bv:                                            ; preds = %bb.bu
  store i32 -2, ptr %8, align 4, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %.10, i64 4 ; 3 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !14 ; 3 uses
  %.off329 = add i16 %i.hs, -48
  %switch330 = icmp ult i16 %.off329, 10
  br i1 %switch330, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.ht = getelementptr inbounds nuw i8, ptr %.10, i64 6
  %i.hu = zext nneg i16 %i.hs to i32
  %i.hv = add nsw i32 %i.hu, -48
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge12, %bb.bw
  %storemerge314 = phi i32 [ %i.hv, %bb.bw ], [ %i.ib, %.critedge12 ] ; 2 uses
  %.11 = phi ptr [ %i.ht, %bb.bw ], [ %i.hy, %.critedge12 ] ; 3 uses
  store i32 %storemerge314, ptr %i.dv, align 4, !tbaa !42
  %i.hw = load i16, ptr %.11, align 2, !tbaa !14  ; 2 uses
  switch i16 %i.hw, label %bb.by [
    i16 48, label %.critedge12
    i16 49, label %.critedge12
    i16 50, label %.critedge12
    i16 51, label %.critedge12
    i16 52, label %.critedge12
    i16 53, label %.critedge12
    i16 54, label %.critedge12
    i16 55, label %.critedge12
    i16 56, label %.critedge12
    i16 57, label %.critedge12
    i16 36, label %bb.bz
  ]

.critedge12:                                      ; preds = %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %i.hx = mul nsw i32 %storemerge314, 10          ; 2 uses
  store i32 %i.hx, ptr %i.dv, align 4, !tbaa !42
  %i.hy = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %i.hz = zext nneg i16 %i.hw to i32
  %i.ia = add i32 %i.hx, -48
  %i.ib = add i32 %i.ia, %i.hz
  br label %bb.bx, !llvm.loop !56

bb.by:                                            ; preds = %bb.bx
  store i32 -1, ptr %i.dv, align 4, !tbaa !42
  br label %thread-pre-split337

bb.bz:                                            ; preds = %bb.bx
  %i.ic = getelementptr inbounds nuw i8, ptr %.11, i64 2
  br label %thread-pre-split337

bb.ca:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.id = getelementptr inbounds nuw i8, ptr %.10, i64 4 ; 3 uses
  %i.ie = zext nneg i16 %i.hq to i32
  %i.if = add nsw i32 %i.ie, -48                  ; 2 uses
  store i32 %i.if, ptr %8, align 4, !tbaa !44
  %i.ig = load i16, ptr %i.id, align 2, !tbaa !14 ; 3 uses
  %.off331382 = add i16 %i.ig, -48
  %switch332383 = icmp ult i16 %.off331382, 10
  br i1 %switch332383, label %.critedge14, label %bb.cb

.critedge14:                                      ; preds = %bb.ca, %.critedge14
  %i.ih = phi i16 [ %i.in, %.critedge14 ], [ %i.ig, %bb.ca ]
  %.12385 = phi ptr [ %i.ij, %.critedge14 ], [ %i.id, %bb.ca ]
  %storemerge313384 = phi i32 [ %i.im, %.critedge14 ], [ %i.if, %bb.ca ]
  %i.ii = mul nsw i32 %storemerge313384, 10
  %i.ij = getelementptr inbounds nuw i8, ptr %.12385, i64 2 ; 3 uses
  %i.ik = zext nneg i16 %i.ih to i32
  %i.il = add i32 %i.ii, -48
  %i.im = add i32 %i.il, %i.ik                    ; 2 uses
  %i.in = load i16, ptr %i.ij, align 2, !tbaa !14 ; 3 uses
  %.off331 = add i16 %i.in, -48
  %switch332 = icmp ult i16 %.off331, 10
  br i1 %switch332, label %.critedge14, label %.loopexit.a, !llvm.loop !57

thread-pre-split337:                              ; preds = %.loopexit342, %bb.bz, %bb.by
  %.13.ph = phi ptr [ %.10, %.loopexit342 ], [ %i.ic, %bb.bz ], [ %i.hr, %bb.by ] ; 2 uses
  %.pr338 = load i16, ptr %.13.ph, align 2, !tbaa !14
  br label %bb.cb

.loopexit.a:                                      ; preds = %.critedge14
  store i32 %i.im, ptr %8, align 4, !tbaa !44
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.loopexit.a, %thread-pre-split337, %bb.bv, %bb.bu
  %11 = phi i16 [ %.pr338, %thread-pre-split337 ], [ %i.hq, %bb.bu ], [ %i.hs, %bb.bv ], [ %i.in, %.loopexit.a ], [ %i.ig, %bb.ca ] ; 2 uses
  %.13 = phi ptr [ %.13.ph, %thread-pre-split337 ], [ %i.hp, %bb.bu ], [ %i.hr, %bb.bv ], [ %i.ij, %.loopexit.a ], [ %i.id, %bb.ca ] ; 3 uses
  switch i16 %11, label %bb.ci [
    i16 104, label %bb.cc
    i16 108, label %bb.cc
    i16 76, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb
  %i.io = getelementptr inbounds nuw i8, ptr %.13, i64 2 ; 5 uses
  switch i16 %11, label %bb.ci [
    i16 104, label %bb.cd
    i16 108, label %bb.ce
    i16 76, label %bb.ch
  ]

bb.cd:                                            ; preds = %bb.cc
  store i8 1, ptr %i.eh, align 4, !tbaa !58
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !14
  %i.iq = icmp eq i16 %i.ip, 108
  br i1 %i.iq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i8 1, ptr %i.eg, align 2, !tbaa !59
  %i.ir = getelementptr inbounds nuw i8, ptr %.13, i64 4
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  store i8 1, ptr %i.ef, align 1, !tbaa !60
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc
  store i8 1, ptr %i.ee, align 1, !tbaa !61
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cb, %bb.cc, %bb.cd, %bb.ch, %bb.cg, %bb.cf
  %.14 = phi ptr [ %i.io, %bb.cc ], [ %i.io, %bb.cd ], [ %i.ir, %bb.cf ], [ %i.io, %bb.cg ], [ %i.io, %bb.ch ], [ %.13, %bb.cb ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.14, i64 2 ; 3 uses
  %i.it = load i16, ptr %.14, align 2, !tbaa !14  ; 3 uses
  store i16 %i.it, ptr %i.ei, align 2, !tbaa !62
  store i16 %i.it, ptr %i.ej, align 4, !tbaa !63
  %i.iu = load i32, ptr %i.dx, align 4, !tbaa !45
  %i.iv = icmp eq i32 %i.iu, -2
  br i1 %i.iv, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.iw = load i32, ptr %i.du, align 4, !tbaa !39
  %i.ix = icmp eq i32 %i.iw, -1
  br i1 %i.ix, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %bb.cj
  %i.iy = load i32, ptr %6, align 8               ; 3 uses
  %i.iz = icmp ult i32 %i.iy, 41
  br i1 %i.iz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ja = load ptr, ptr %i.el, align 8
  %i.jb = zext nneg i32 %i.iy to i64
  %i.jc = getelementptr i8, ptr %i.ja, i64 %i.jb
  %i.jd = add nuw nsw i32 %i.iy, 8
  store i32 %i.jd, ptr %6, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.je = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  store ptr %i.jf, ptr %i.ek, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.jg = phi ptr [ %i.jc, %bb.cl ], [ %i.je, %bb.cm ]
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !32 ; 3 uses
  store i32 %i.jh, ptr %i.dx, align 4, !tbaa !45
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %.thread, label %bb.co

.thread:                                          ; preds = %bb.cj, %bb.cn
  %i.jj = phi i32 [ %i.jh, %bb.cn ], [ -2, %bb.cj ]
  %i.jk = sub nsw i32 0, %i.jj
  store i32 %i.jk, ptr %i.dx, align 4, !tbaa !45
  store i8 1, ptr %i.ed, align 4, !tbaa !48
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread, %bb.ci
  %i.jl = load i32, ptr %8, align 4, !tbaa !44
  %i.jm = icmp eq i32 %i.jl, -2
  br i1 %i.jm, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.jn = load i32, ptr %i.dv, align 4, !tbaa !42
  %i.jo = icmp eq i32 %i.jn, -1
  br i1 %i.jo, label %bb.cq, label %.thread339

bb.cq:                                            ; preds = %bb.cp
  %i.jp = load i32, ptr %6, align 8               ; 3 uses
  %i.jq = icmp ult i32 %i.jp, 41
  br i1 %i.jq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jr = load ptr, ptr %i.el, align 8
  %i.js = zext nneg i32 %i.jp to i64
  %i.jt = getelementptr i8, ptr %i.jr, i64 %i.js
  %i.ju = add nuw nsw i32 %i.jp, 8
  store i32 %i.ju, ptr %6, align 8
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.jv = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 8
  store ptr %i.jw, ptr %i.ek, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.jx = phi ptr [ %i.jt, %bb.cr ], [ %i.jv, %bb.cs ]
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !32 ; 2 uses
  store i32 %i.jy, ptr %8, align 4, !tbaa !44
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %.thread339, label %bb.cu

.thread339:                                       ; preds = %bb.cp, %bb.ct
  store i32 0, ptr %8, align 4, !tbaa !44
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.thread339, %bb.co
  %i.ka = add i16 %i.it, -32                      ; 2 uses
  %i.kb = icmp ult i16 %i.ka, 108
  br i1 %i.kb, label %bb.cv, label %bb.ee

bb.cv:                                            ; preds = %bb.cu
  %i.kc = zext nneg i16 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr @_ZL16g_u_printf_infos, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 16, !tbaa !24 ; 2 uses
  %i.kf = load i32, ptr %i.dw, align 4, !tbaa !43 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %bb.cw, label %bb.dd

bb.cw:                                            ; preds = %bb.cv
  %i.kh = add nsw i32 %i.kf, -1                   ; 5 uses
  store i32 %i.kh, ptr %i.dw, align 4, !tbaa !43
  switch i32 %i.ke, label %bb.dc [
    i32 2, label %bb.cx
    i32 5, label %bb.cy
    i32 10, label %bb.cy
    i32 6, label %bb.cy
    i32 4, label %bb.cz
    i32 9, label %bb.cz
    i32 3, label %bb.cz
    i32 7, label %bb.da
    i32 8, label %bb.db
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.ki = load i32, ptr %5, align 4, !tbaa !32
  store i32 %i.ki, ptr %i.dx, align 4, !tbaa !45
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cw, %bb.cw
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !22
  store ptr %i.kl, ptr %7, align 8, !tbaa !22
  br label %bb.eb

bb.cz:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.km = zext nneg i32 %i.kh to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !22
  store i64 %i.ko, ptr %7, align 8, !tbaa !22
  br label %bb.eb

bb.da:                                            ; preds = %bb.cw
  %i.kp = zext nneg i32 %i.kh to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !22
  store float %i.kr, ptr %7, align 8, !tbaa !22
  br label %bb.eb

bb.db:                                            ; preds = %bb.cw
  %i.ks = zext nneg i32 %i.kh to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !22
  store double %i.ku, ptr %7, align 8, !tbaa !22
  br label %bb.eb

bb.dc:                                            ; preds = %bb.cw
  store ptr null, ptr %7, align 8, !tbaa !22
  br label %bb.eb

bb.dd:                                            ; preds = %bb.cv
  switch i32 %i.ke, label %bb.ea [
    i32 2, label %bb.de
    i32 5, label %bb.df
    i32 10, label %bb.df
    i32 6, label %bb.df
    i32 4, label %bb.dj
    i32 9, label %bb.dj
    i32 3, label %bb.dj
    i32 7, label %bb.ds
    i32 8, label %bb.dw
end_hunk_1
