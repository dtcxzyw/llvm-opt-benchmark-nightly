Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.FT_Hashkey_ = type { ptr }
%struct.TT_CMapInfo_ = type { i64, i64 }
%struct.FT_Open_Args_ = type { i32, ptr, i64, ptr, ptr, ptr, i32, ptr }
%struct.FT_Size_RequestRec_ = type { i32, i64, i64, i32, i32 }
%struct.FT_LayerIterator_ = type { i32, i32, ptr }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Raster_Params_ = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.FT_BBox_ }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ot-svg\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Type 1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"kerning\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"glyph-dict\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"postscript-font-name\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sfnt-table\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tt-cmaps\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"type42\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truetype\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"truetype-engine\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"darkening-parameters\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"hinting-engine\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"adobe\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"no-stem-darkening\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"random-seed\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"t1cid\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"type1\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"cff\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@ft_raccess_guess_table = internal unnamed_addr constant [9 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @raccess_guess_apple_double, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_apple_single, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_darwin_ufs_export, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_darwin_newvfs, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_darwin_hfsplus, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_vfat, i32 5, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_linux_cap, i32 6, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_linux_double, i32 7, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @raccess_guess_linux_netatalk, i32 8, [4 x i8] zeroinitializer }], align 16
@.str.24 = private unnamed_addr constant [3 x i8] c"._\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"/..namedfork/rsrc\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"/rsrc\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"resource.frk/\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c".resource/\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c".AppleDouble/\00", align 1
@ft_trig_arctan_table = internal unnamed_addr constant [22 x i64] [i64 1740967, i64 919879, i64 466945, i64 234379, i64 117304, i64 58666, i64 29335, i64 14668, i64 7334, i64 3667, i64 1833, i64 917, i64 458, i64 229, i64 115, i64 57, i64 29, i64 14, i64 7, i64 4, i64 2, i64 1], align 16

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Advance(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ft_load_advances.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %ft_load_advances.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = trunc i64 %i.b to i32
  %.not32 = icmp ult i32 %1, %i.c
  br i1 %.not32, label %bb.d, label %ft_load_advances.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %2, 3
  %.not34 = icmp ne i32 %i.j, 0
  %i.k = and i32 %2, 983040
  %i.l = icmp eq i32 %i.k, 65536
  %or.cond = or i1 %.not34, %i.l
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 %i.i(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, ptr noundef nonnull %3) #30 ; 3 uses
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.g, label %ft_face_scale_advances_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = and i32 %2, 1
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.h, label %ft_load_advances.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %ft_load_advances.exit, label %ft_load_advances.exit.loopexit47

ft_load_advances.exit.loopexit47:                 ; preds = %bb.h
  %i.q = and i32 %2, 16
  %.not17.i = icmp eq i32 %i.q, 0
  %.013.in.v.i = select i1 %.not17.i, i64 32, i64 40
  %.013.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.013.in.v.i
  %.013.i = load i64, ptr %.013.in.i, align 8, !tbaa !40
  %i.r = load i64, ptr %3, align 8, !tbaa !40
  %i.s = shl nsw i64 %i.r, 10
  %i.t = mul i64 %i.s, %.013.i                    ; 2 uses
  %i.u = ashr i64 %i.t, 63
  %i.v = add i64 %i.t, 32768
  %i.w = add i64 %i.v, %i.u
  %i.x = ashr i64 %i.w, 16
  br label %ft_load_advances.exit.sink.split

ft_face_scale_advances_.exit:                     ; preds = %bb.f
  %i.y = and i32 %i.m, 255
  %.not36 = icmp eq i32 %i.y, 7
  br i1 %.not36, label %bb.i, label %ft_load_advances.exit

bb.i:                                             ; preds = %bb.e, %ft_face_scale_advances_.exit, %bb.d
  %i.z = and i32 %2, 536870912
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.j, label %ft_load_advances.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = or i32 %2, 256
  %i.ad = tail call i32 @FT_Load_Glyph(ptr noundef nonnull readonly %0, i32 noundef %1, i32 noundef %i.ac) ; 2 uses
  %.not21.i = icmp eq i32 %i.ad, 0
  br i1 %.not21.i, label %bb.k, label %ft_load_advances.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %2, 1
  %.not.i40 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not.i40, i64 10, i64 0
  %i.ag = and i32 %2, 16
  %.not20.i = icmp eq i32 %i.ag, 0
  %..i = select i1 %.not20.i, i64 128, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !40
  %i.aj = shl i64 %i.ai, %i.af
  br label %ft_load_advances.exit.sink.split, !llvm.loop !42

ft_load_advances.exit.sink.split:                 ; preds = %bb.k, %ft_load_advances.exit.loopexit47
  %.sink = phi i64 [ %i.x, %ft_load_advances.exit.loopexit47 ], [ %i.aj, %bb.k ]
  store i64 %.sink, ptr %3, align 8, !tbaa !40
  br label %ft_load_advances.exit

ft_load_advances.exit:                            ; preds = %ft_load_advances.exit.sink.split, %bb.j, %bb.h, %bb.g, %bb.i, %bb.c, %bb.b, %bb.a, %ft_face_scale_advances_.exit
  %.1 = phi i32 [ 6, %bb.b ], [ 16, %bb.c ], [ 36, %bb.h ], [ %i.m, %ft_face_scale_advances_.exit ], [ 35, %bb.a ], [ 7, %bb.i ], [ 0, %bb.g ], [ %i.ad, %bb.j ], [ 0, %ft_load_advances.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 37) i32 @ft_face_scale_advances_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %3, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %3, 16
  %.not17 = icmp eq i32 %i.d, 0
  %.013.in.v = select i1 %.not17, i64 32, i64 40
  %.013.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013.in.v
  %.013 = load i64, ptr %.013.in, align 8, !tbaa !40 ; 2 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %2, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.013, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !40
  %i.f = shl nsw <2 x i64> %wide.load, splat (i64 10)
  %i.g = mul <2 x i64> %i.f, %broadcast.splat     ; 2 uses
  %i.h = ashr <2 x i64> %i.g, splat (i64 63)
  %i.i = add <2 x i64> %i.g, splat (i64 32768)
  %i.j = add <2 x i64> %i.i, %i.h
  %i.k = ashr <2 x i64> %i.j, splat (i64 16)
  store <2 x i64> %i.k, ptr %i.e, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40
  %i.o = shl nsw i64 %i.n, 10
  %i.p = mul i64 %i.o, %.013                      ; 2 uses
  %i.q = ashr i64 %i.p, 63
  %i.r = add i64 %i.p, 32768
  %i.s = add i64 %i.r, %i.q
  %i.t = ashr i64 %i.s, 16
  store i64 %i.t, ptr %i.m, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !47

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 36, %bb.b ], [ 0, %middle.block ], [ 0, %scalar.ph ]
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Advances(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ft_load_advances.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %4, null
  br i1 %.not45, label %ft_load_advances.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = add i32 %2, %1                           ; 2 uses
  %.not46 = icmp uge i32 %1, %i.c
  %i.e = icmp ult i32 %i.d, %1
  %or.cond = or i1 %i.e, %.not46
  %i.f = icmp ugt i32 %i.d, %i.c
  %or.cond52 = or i1 %i.f, %or.cond
  br i1 %or.cond52, label %ft_load_advances.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %ft_load_advances.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not47 = icmp eq ptr %i.m, null
  br i1 %.not47, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %3, 3
  %.not48 = icmp ne i32 %i.n, 0
  %i.o = and i32 %3, 983040
  %i.p = icmp eq i32 %i.o, 65536
  %or.cond54 = or i1 %.not48, %i.p
  br i1 %or.cond54, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 %i.m(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4) #30 ; 3 uses
  %.not49 = icmp eq i32 %i.q, 0
  br i1 %.not49, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.r = tail call fastcc i32 @ft_face_scale_advances_(ptr noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef %3)
  br label %ft_load_advances.exit

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.q, 255
  %.not50 = icmp eq i32 %i.s, 7
  br i1 %.not50, label %bb.i, label %ft_load_advances.exit

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.t = and i32 %3, 536870912
  %.not51 = icmp eq i32 %i.t, 0
  br i1 %.not51, label %bb.j, label %ft_load_advances.exit

bb.j:                                             ; preds = %bb.i
  %i.u = and i32 %3, 1
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = and i32 %3, 16
  %.not20.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %..i = select i1 %.not20.i, i64 128, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %..i
  %i.z = or i32 %3, 256
  %i.aa = select i1 %.not.i, i64 10, i64 0
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ab = trunc nuw i64 %indvars.iv.i to i32
  %i.ac = add i32 %1, %i.ab
  %i.ad = tail call i32 @FT_Load_Glyph(ptr noundef nonnull readonly %0, i32 noundef %i.ac, i32 noundef %i.z) ; 2 uses
  %.not21.i = icmp eq i32 %i.ad, 0
  br i1 %.not21.i, label %bb.l, label %ft_load_advances.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !40
  %i.af = shl i64 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ft_load_advances.exit, label %bb.k, !llvm.loop !42

ft_load_advances.exit:                            ; preds = %bb.l, %bb.k, %.thread, %bb.i, %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.1 = phi i32 [ 6, %bb.b ], [ 16, %bb.c ], [ 0, %bb.d ], [ %i.r, %.thread ], [ %i.q, %bb.h ], [ 35, %bb.a ], [ 7, %bb.i ], [ 0, %bb.l ], [ %i.ad, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 36) i32 @FT_Palette_Data_Get(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = and i64 %i.b, 8
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !tbaa.struct !49
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ 35, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @FT_Palette_Select(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = and i64 %i.b, 8
  %.not24 = icmp eq i64 %i.c, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %.critedge, label %.critedge.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !53
  %.not26 = icmp eq i16 %1, %i.e
  br i1 %.not26, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = zext i16 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef %i.f) #30 ; 2 uses
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store i16 %1, ptr %i.d, align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.c, %bb.h
  %.sink = phi ptr [ %i.m, %bb.h ], [ null, %bb.c ]
  store ptr %.sink, ptr %2, align 8, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.e, %bb.g, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.g ], [ %i.k, %bb.e ], [ 35, %bb.a ], [ 0, %bb.c ], [ 0, %.critedge.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 36) i32 @FT_Palette_Set_Foreground_Color(ptr nofree noundef captures(address_is_null) %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = and i64 %i.b, 8
  %.not6 = icmp eq i64 %i.c, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1105
  store i32 %1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i8 1, ptr %i.e, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 35, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @FT_Error_String(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define ptr @FT_Get_Font_Format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.b, ptr noundef nonnull @.str) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.07
}

; Function Attrs: nounwind uwtable
define ptr @FT_Get_X11_Font_Format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.b, ptr noundef nonnull @.str) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.07
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @FT_GlyphLoader_New(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 176) #30, !inline_history !89 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.d, i8 0, i64 168, i1 false)
  store ptr %0, ptr %i.c, align 8, !tbaa !90
  store ptr %i.c, ptr %1, align 8, !tbaa !96
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %bb.a, %bb.b
  %.08.i16.i10 = phi i32 [ 0, %bb.b ], [ 64, %bb.a ]
  ret i32 %.08.i16.i10
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_mem_alloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
end_hunk_0
begin_hunk_1_@raccess_guess_apple_generic:bb.a
  br i1 %.not10.i.i83, label %FT_Stream_Skip.exit86, label %.loopexit

bb.z:                                             ; preds = %.thread37, %bb.y
  %i.cf = phi i64 [ %i.bl, %.thread37 ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !193
  %.not17.i.i85 = icmp ugt i64 %i.cf, %i.cg
  br i1 %.not17.i.i85, label %.loopexit, label %FT_Stream_Skip.exit86

FT_Stream_Skip.exit86:                            ; preds = %.split.i.i82, %bb.z
  %i.ch = phi i64 [ %i.cd, %.split.i.i82 ], [ %i.cf, %bb.z ]
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !200
  store i32 0, ptr %i.f, align 4, !tbaa !98
  br label %bb.aa

bb.aa:                                            ; preds = %FT_Stream_Skip.exit86, %FT_Stream_ReadULong.exit80.thread, %bb.w
  %i.ci = add nuw nsw i32 %.025, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ba
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !655

.loopexit:                                        ; preds = %bb.aa, %.split.i.i82, %bb.z, %.split.i.i, %bb.i, %FT_Stream_ReadULong.exit68.thread, %.thread13, %FT_Stream_ReadUShort.exit.thread, %FT_Stream_ReadULong.exit48.thread, %.thread, %FT_Stream_ReadULong.exit.thread, %bb.n, %bb.e, %bb.x
  %.021 = phi i32 [ 85, %.split.i.i ], [ 85, %FT_Stream_ReadULong.exit.thread ], [ 2, %bb.e ], [ 85, %FT_Stream_ReadULong.exit48.thread ], [ 85, %bb.i ], [ 85, %FT_Stream_ReadUShort.exit.thread ], [ 2, %bb.n ], [ 0, %bb.x ], [ 85, %FT_Stream_ReadULong.exit68.thread ], [ 2, %.thread13 ], [ 2, %.thread ], [ 85, %.split.i.i82 ], [ 85, %bb.z ], [ 2, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @raccess_make_file_name(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %i.d) #30, !inline_history !97 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ft_mem_qalloc.exit, label %select.unfold24

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp eq i64 %i.d, 0
  br i1 %.not14.i, label %select.unfold24, label %ft_mem_qalloc.exit

select.unfold24:                                  ; preds = %bb.c, %bb.b
  %.0.i.ph = phi ptr [ %i.h, %bb.b ], [ null, %bb.c ] ; 6 uses
  %i.i = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #31 ; 3 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = tail call ptr @strncpy(ptr noundef %.0.i.ph, ptr noundef nonnull %1, i64 noundef %i.m) #30 ; 0 uses
  %i.o = getelementptr inbounds i8, ptr %.0.i.ph, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.f

bb.e:                                             ; preds = %select.unfold24
  store i8 0, ptr %.0.i.ph, align 1, !tbaa !151
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.e ]
  %i.q = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %2) #30 ; 0 uses
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %.0) #30 ; 0 uses
  br label %ft_mem_qalloc.exit

ft_mem_qalloc.exit:                               ; preds = %bb.b, %bb.c, %bb.f
  %.021 = phi ptr [ %.0.i.ph, %bb.f ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 32}
!9 = !{!"FT_FaceRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !13, i64 64, !5, i64 72, !14, i64 80, !16, i64 88, !17, i64 104, !18, i64 136, !18, i64 138, !18, i64 140, !18, i64 142, !18, i64 144, !18, i64 146, !18, i64 148, !18, i64 150, !19, i64 152, !20, i64 160, !21, i64 168, !22, i64 176, !23, i64 184, !24, i64 192, !25, i64 200, !16, i64 216, !12, i64 232, !27, i64 240}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!14 = !{!"p2 _ZTS14FT_CharMapRec_", !15, i64 0}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!17 = !{!"FT_BBox_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"short", !6, i64 0}
!19 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!20 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!21 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!22 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!23 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!24 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!25 = !{!"FT_ListRec_", !26, i64 0, !26, i64 8}
!26 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!27 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!28 = !{!9, !22, i64 176}
!29 = !{!30, !34, i64 24}
!30 = !{!"FT_DriverRec_", !31, i64 0, !34, i64 24, !25, i64 32, !35, i64 48}
!31 = !{!"FT_ModuleRec_", !32, i64 0, !33, i64 8, !23, i64 16}
!32 = !{!"p1 _ZTS16FT_Module_Class_", !12, i64 0}
!33 = !{!"p1 _ZTS14FT_LibraryRec_", !12, i64 0}
!34 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !12, i64 0}
!35 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !12, i64 0}
!36 = !{!37, !12, i64 168}
!37 = !{!"FT_Driver_ClassRec_", !38, i64 0, !10, i64 72, !10, i64 80, !10, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184}
!38 = !{!"FT_Module_Class_", !10, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!39 = !{!9, !20, i64 160}
!40 = !{!10, !10, i64 0}
!41 = !{!9, !19, i64 152}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !43, !46, !45}
!48 = !{!9, !10, i64 16}
!49 = !{i64 0, i64 2, !50, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 2, !50, i64 32, i64 8, !51}
!50 = !{!18, !18, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 short", !12, i64 0}
!53 = !{!54, !18, i64 1088}
!54 = !{!"TT_FaceRec_", !9, i64 0, !55, i64 248, !10, i64 280, !18, i64 288, !57, i64 296, !58, i64 304, !59, i64 400, !60, i64 456, !6, i64 496, !61, i64 504, !18, i64 560, !62, i64 568, !65, i64 616, !66, i64 752, !11, i64 816, !10, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !67, i64 928, !69, i64 944, !10, i64 1008, !70, i64 1016, !71, i64 1024, !73, i64 1048, !18, i64 1088, !74, i64 1096, !6, i64 1104, !75, i64 1105, !10, i64 1112, !11, i64 1120, !10, i64 1128, !11, i64 1136, !10, i64 1144, !76, i64 1152, !16, i64 1160, !11, i64 1176, !10, i64 1184, !10, i64 1192, !6, i64 1200, !6, i64 1201, !77, i64 1208, !5, i64 1216, !11, i64 1224, !5, i64 1232, !5, i64 1236, !11, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !11, i64 1272, !11, i64 1280, !10, i64 1288, !5, i64 1296, !10, i64 1304, !72, i64 1312, !11, i64 1320, !10, i64 1328, !5, i64 1336, !5, i64 1340, !76, i64 1344, !11, i64 1352, !10, i64 1360, !5, i64 1368, !5, i64 1372, !5, i64 1376, !78, i64 1384, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !12, i64 1456, !12, i64 1464, !12, i64 1472}
!55 = !{!"TTC_HeaderRec_", !10, i64 0, !10, i64 8, !10, i64 16, !56, i64 24}
!56 = !{!"p1 long", !12, i64 0}
!57 = !{!"p1 _ZTS12TT_TableRec_", !12, i64 0}
!58 = !{!"TT_Header_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !18, i64 32, !18, i64 34, !6, i64 40, !6, i64 56, !18, i64 72, !18, i64 74, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !18, i64 84, !18, i64 86, !18, i64 88}
!59 = !{!"TT_HoriHeader_", !10, i64 0, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !6, i64 28, !18, i64 36, !18, i64 38, !12, i64 40, !12, i64 48}
!60 = !{!"TT_MaxProfile_", !10, i64 0, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !18, i64 28, !18, i64 30, !18, i64 32, !18, i64 34}
!61 = !{!"TT_VertHeader_", !10, i64 0, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !6, i64 28, !18, i64 36, !18, i64 38, !12, i64 40, !12, i64 48}
!62 = !{!"TT_NameTableRec_", !18, i64 0, !5, i64 4, !5, i64 8, !63, i64 16, !5, i64 24, !64, i64 32, !24, i64 40}
!63 = !{!"p1 _ZTS11TT_NameRec_", !12, i64 0}
!64 = !{!"p1 _ZTS14TT_LangTagRec_", !12, i64 0}
!65 = !{!"TT_OS2_", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !18, i64 28, !18, i64 30, !6, i64 32, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !18, i64 84, !18, i64 86, !18, i64 88, !18, i64 90, !18, i64 92, !18, i64 94, !18, i64 96, !18, i64 98, !10, i64 104, !10, i64 112, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !18, i64 128, !18, i64 130, !18, i64 132}
!66 = !{!"TT_Postscript_", !10, i64 0, !10, i64 8, !18, i64 16, !18, i64 18, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!67 = !{!"TT_Gasp_", !18, i64 0, !18, i64 2, !68, i64 8}
!68 = !{!"p1 _ZTS16TT_GaspRangeRec_", !12, i64 0}
!69 = !{!"TT_PCLT_", !10, i64 0, !10, i64 8, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !6, i64 28, !6, i64 44, !6, i64 52, !6, i64 58, !6, i64 59, !6, i64 60, !6, i64 61}
!70 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !12, i64 0}
!71 = !{!"TT_Post_NamesRec_", !6, i64 0, !18, i64 2, !18, i64 4, !52, i64 8, !72, i64 16}
!72 = !{!"p2 omnipotent char", !15, i64 0}
!73 = !{!"FT_Palette_Data_", !18, i64 0, !52, i64 8, !52, i64 16, !18, i64 24, !52, i64 32}
!74 = !{!"p1 _ZTS9FT_Color_", !12, i64 0}
!75 = !{!"FT_Color_", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!76 = !{!"p1 int", !12, i64 0}
!77 = !{!"p1 _ZTS12GX_BlendRec_", !12, i64 0}
!78 = !{!"TT_BDFRec_", !11, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !5, i64 32, !6, i64 36}
!79 = !{!54, !12, i64 880}
!80 = !{!81, !12, i64 272}
!81 = !{!"SFNT_Interface_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376}
!82 = !{!54, !74, i64 1096}
!83 = !{!74, !74, i64 0}
!84 = !{!54, !6, i64 1104}
!85 = !{!31, !32, i64 0}
!86 = !{!38, !12, i64 64}
!87 = !{!88, !12, i64 8}
!88 = !{!"FT_MemoryRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!89 = !{ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!90 = !{!91, !23, i64 0}
!91 = !{!"FT_GlyphLoaderRec_", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !92, i64 24, !92, i64 96, !12, i64 168}
!92 = !{!"FT_GlyphLoadRec_", !93, i64 0, !94, i64 40, !94, i64 48, !5, i64 56, !95, i64 64}
!93 = !{!"FT_Outline_", !18, i64 0, !18, i64 2, !94, i64 8, !11, i64 16, !52, i64 24, !5, i64 32}
!94 = !{!"p1 _ZTS10FT_Vector_", !12, i64 0}
!95 = !{!"p1 _ZTS15FT_SubGlyphRec_", !12, i64 0}
!96 = !{!35, !35, i64 0}
!97 = !{ptr @ft_mem_qalloc}
!98 = !{!5, !5, i64 0}
!99 = !{!92, !18, i64 2}
!100 = !{!92, !18, i64 0}
!101 = !{!92, !5, i64 32}
!102 = !{!92, !5, i64 56}
!103 = !{i64 0, i64 2, !50, i64 2, i64 2, !50, i64 8, i64 8, !104, i64 16, i64 8, !105, i64 24, i64 8, !51, i64 32, i64 4, !98, i64 40, i64 8, !104, i64 48, i64 8, !104, i64 56, i64 4, !98, i64 64, i64 8, !106}
!104 = !{!94, !94, i64 0}
!105 = !{!11, !11, i64 0}
!106 = !{!95, !95, i64 0}
!107 = !{!91, !94, i64 32}
!108 = !{!88, !12, i64 16}
!109 = !{ptr @ft_mem_free}
!110 = !{!91, !11, i64 40}
!111 = !{!91, !52, i64 48}
!112 = !{!91, !94, i64 64}
!113 = !{!91, !95, i64 88}
!114 = !{!91, !94, i64 72}
!115 = !{!91, !5, i64 8}
!116 = !{!91, !5, i64 12}
!117 = !{!91, !5, i64 16}
!118 = !{ptr @FT_GlyphLoader_Reset, ptr @ft_mem_free}
!119 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!120 = !{!91, !6, i64 20}
!121 = !{!93, !94, i64 8}
!122 = !{!93, !18, i64 2}
!123 = !{!93, !11, i64 16}
!124 = !{!93, !52, i64 24}
!125 = !{!93, !18, i64 0}
!126 = !{!91, !94, i64 136}
!127 = !{!91, !94, i64 144}
!128 = !{ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!129 = !{ptr @ft_mem_qrealloc}
!130 = !{!88, !12, i64 24}
!131 = !{ptr @FT_GlyphLoader_CreateExtra, ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!132 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!133 = !{!92, !95, i64 64}
!134 = distinct !{!134, !43}
!135 = !{!91, !5, i64 152}
!136 = !{!91, !5, i64 80}
!137 = !{!138, !5, i64 4}
!138 = !{!"FT_HashRec_", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !139, i64 32}
!139 = !{!"p2 _ZTS15FT_HashnodeRec_", !15, i64 0}
!140 = !{!138, !5, i64 0}
!141 = !{!138, !5, i64 8}
!142 = !{!138, !12, i64 16}
!143 = !{!138, !12, i64 24}
!144 = distinct !{null, ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!145 = !{!138, !139, i64 32}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTS15FT_HashnodeRec_", !12, i64 0}
!148 = distinct !{!148, !43}
!149 = distinct !{null}
!150 = distinct !{!150, !43}
!151 = !{!6, !6, i64 0}
!152 = !{!153, !10, i64 8}
!153 = !{!"FT_HashnodeRec_", !6, i64 0, !10, i64 8}
!154 = distinct !{null, ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!155 = distinct !{null, null}
!156 = distinct !{!156, !43}
!157 = distinct !{null, ptr @ft_mem_free}
!158 = distinct !{null, null}
!159 = !{!160, !33, i64 0}
!160 = !{!"FT_GlyphSlotRec_", !33, i64 0, !161, i64 8, !19, i64 16, !5, i64 24, !16, i64 32, !162, i64 48, !10, i64 112, !10, i64 120, !163, i64 128, !5, i64 144, !164, i64 152, !5, i64 192, !5, i64 196, !93, i64 200, !5, i64 240, !95, i64 248, !12, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !12, i64 288, !165, i64 296}
!161 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!162 = !{!"FT_Glyph_Metrics_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!163 = !{!"FT_Vector_", !10, i64 0, !10, i64 8}
!164 = !{!"FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !18, i64 24, !6, i64 26, !6, i64 27, !12, i64 32}
!165 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !12, i64 0}
!166 = !{!163, !10, i64 0}
!167 = !{!17, !10, i64 0}
!168 = !{!17, !10, i64 16}
!169 = !{!163, !10, i64 8}
!170 = !{!17, !10, i64 8}
!171 = !{!17, !10, i64 24}
!172 = !{!173, !11, i64 0}
!173 = !{!"FT_ServiceDescRec_", !11, i64 0, !12, i64 8}
!174 = !{!173, !12, i64 8}
!175 = distinct !{!175, !43}
!176 = !{!177, !11, i64 200}
!177 = !{!"FT_ValidatorRec_", !6, i64 0, !11, i64 200, !11, i64 208, !5, i64 216, !5, i64 220}
!178 = !{!177, !11, i64 208}
!179 = !{!177, !5, i64 216}
!180 = !{!177, !5, i64 220}
!181 = !{!24, !24, i64 0}
!182 = !{!183, !23, i64 0}
!183 = !{!"FT_LibraryRec_", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !25, i64 280, !184, i64 296, !185, i64 304, !6, i64 312, !6, i64 344, !5, i64 392}
!184 = !{!"p1 _ZTS15FT_RendererRec_", !12, i64 0}
!185 = !{!"p1 _ZTS13FT_ModuleRec_", !12, i64 0}
!186 = !{!187, !5, i64 0}
!187 = !{!"FT_Open_Args_", !5, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !24, i64 32, !185, i64 40, !5, i64 48, !188, i64 56}
!188 = !{!"p1 _ZTS13FT_Parameter_", !12, i64 0}
!189 = !{!187, !11, i64 8}
!190 = !{!187, !10, i64 16}
!191 = !{!192, !11, i64 0}
!192 = !{!"FT_StreamRec_", !11, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 48, !23, i64 56, !11, i64 64, !11, i64 72}
!193 = !{!192, !10, i64 8}
!194 = !{!192, !11, i64 64}
!195 = !{!192, !23, i64 56}
!196 = !{!187, !11, i64 24}
!197 = !{!187, !24, i64 32}
!198 = !{!192, !12, i64 48}
!199 = !{ptr @FT_Stream_Close}
!200 = !{!192, !10, i64 16}
!201 = !{!160, !165, i64 296}
!202 = !{!203, !5, i64 8}
!203 = !{!"FT_Slot_InternalRec_", !35, i64 0, !5, i64 8, !6, i64 12, !204, i64 16, !163, i64 48, !12, i64 64, !5, i64 72}
!204 = !{!"FT_Matrix_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!205 = !{!160, !11, i64 168}
!206 = !{!160, !161, i64 8}
!207 = !{!9, !23, i64 184}
!208 = !{!160, !5, i64 144}
!209 = !{}
!210 = !{!183, !5, i64 20}
!211 = !{!185, !185, i64 0}
!212 = !{!38, !11, i64 16}
!213 = !{!38, !12, i64 40}
!214 = !{!215, !12, i64 0}
!215 = !{!"SVG_Interface_", !12, i64 0}
!216 = distinct !{!216, !43}
!217 = !{!218, !18, i64 24}
!218 = !{!"FT_SizeRec_", !161, i64 0, !16, i64 8, !219, i64 24, !220, i64 80}
!219 = !{!"FT_Size_Metrics_", !18, i64 0, !18, i64 2, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!220 = !{!"p1 _ZTS20FT_Size_InternalRec_", !12, i64 0}
!221 = !{!218, !18, i64 26}
!222 = !{!160, !5, i64 192}
!223 = !{!160, !5, i64 196}
!224 = !{!164, !6, i64 26}
!225 = !{!164, !18, i64 24}
!226 = !{!164, !5, i64 4}
!227 = !{!164, !5, i64 0}
!228 = !{!164, !5, i64 8}
!229 = distinct !{!229, !43}
!230 = !{ptr @ft_glyphslot_free_bitmap, ptr @ft_mem_free}
!231 = !{!160, !5, i64 160}
!232 = !{!160, !5, i64 152}
!233 = !{!30, !23, i64 16}
!234 = !{!37, !10, i64 88}
!235 = !{!30, !33, i64 8}
!236 = distinct !{null, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!237 = !{!38, !10, i64 0}
!238 = distinct !{null, ptr @FT_GlyphLoader_New, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!239 = !{!37, !12, i64 128}
!240 = distinct !{null}
!241 = !{!160, !12, i64 288}
!242 = !{!160, !19, i64 16}
!243 = !{!19, !19, i64 0}
!244 = !{!245, !11, i64 0}
!245 = !{!"FT_SVG_DocumentRec_", !11, i64 0, !10, i64 8, !219, i64 16, !18, i64 72, !18, i64 74, !18, i64 76, !204, i64 80, !163, i64 112}
!246 = !{!37, !12, i64 136}
!247 = !{!203, !35, i64 0}
!248 = !{ptr @FT_GlyphLoader_Done, ptr @FT_GlyphLoader_Reset, ptr @ft_mem_free}
!249 = !{ptr @FT_GlyphLoader_Done, ptr @ft_mem_free}
!250 = distinct !{!250, !43}
!251 = !{!160, !12, i64 40}
!252 = !{!9, !27, i64 240}
!253 = !{!254, !5, i64 48}
!254 = !{!"FT_Face_InternalRec_", !204, i64 0, !163, i64 32, !5, i64 48, !255, i64 56, !256, i64 104, !6, i64 112, !5, i64 116, !5, i64 120}
!255 = !{!"FT_ServiceCacheRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!256 = !{!"p1 _ZTS28FT_Incremental_InterfaceRec_", !12, i64 0}
!257 = !{!254, !10, i64 0}
!258 = !{!254, !10, i64 24}
!259 = !{i64 0, i64 8, !40, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !40}
!260 = !{!204, !10, i64 8}
!261 = !{!204, !10, i64 16}
!262 = !{!204, !10, i64 0}
!263 = !{!204, !10, i64 24}
!264 = !{i64 0, i64 8, !40, i64 8, i64 8, !40}
!265 = distinct !{null, ptr @ft_glyphslot_free_bitmap, ptr @ft_mem_free}
!266 = !{!160, !5, i64 24}
!267 = !{!160, !5, i64 156}
!268 = !{!160, !6, i64 178}
!269 = distinct !{null, ptr @ft_mem_free}
!270 = !{!183, !185, i64 304}
!271 = !{!254, !10, i64 16}
!272 = !{ptr @FT_Get_Font_Format}
!273 = !{!274, !5, i64 56}
!274 = !{!"PS_DriverRec_", !30, i64 0, !5, i64 56, !6, i64 60, !6, i64 64, !5, i64 96}
!275 = !{!54, !10, i64 1264}
!276 = !{!54, !10, i64 1112}
!277 = !{!54, !10, i64 1128}
!278 = !{!37, !12, i64 144}
!279 = !{!280, !12, i64 24}
!280 = !{!"FT_AutoHinter_InterfaceRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!281 = distinct !{!281, !43}
!282 = !{!160, !10, i64 104}
!283 = !{!160, !10, i64 80}
!284 = !{!160, !10, i64 128}
!285 = !{!160, !10, i64 136}
!286 = !{!160, !10, i64 112}
!287 = !{!219, !10, i64 8}
!288 = !{!160, !10, i64 120}
!289 = !{!219, !10, i64 16}
!290 = !{!183, !184, i64 296}
!291 = !{!292, !5, i64 32}
!292 = !{!"FT_RendererRec_", !31, i64 0, !293, i64 24, !5, i64 32, !294, i64 40, !295, i64 104, !12, i64 112, !12, i64 120}
!293 = !{!"p1 _ZTS18FT_Renderer_Class_", !12, i64 0}
!294 = !{!"FT_Glyph_Class_", !10, i64 0, !5, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!295 = !{!"p1 _ZTS13FT_RasterRec_", !12, i64 0}
!296 = !{!183, !26, i64 280}
!297 = !{!298, !12, i64 16}
!298 = !{!"FT_ListNodeRec_", !26, i64 0, !26, i64 8, !12, i64 16}
!299 = !{!298, !26, i64 8}
!300 = !{!292, !293, i64 24}
!301 = !{!302, !12, i64 88}
!302 = !{!"FT_Renderer_Class_", !38, i64 0, !5, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !303, i64 112}
!303 = !{!"p1 _ZTS16FT_Raster_Funcs_", !12, i64 0}
!304 = distinct !{!304, !43, !45, !46}
!305 = distinct !{!305, !43, !46, !45}
!306 = !{!203, !5, i64 72}
!307 = !{ptr @FT_Render_Glyph}
!308 = !{!162, !10, i64 16}
!309 = !{!162, !10, i64 0}
!310 = !{!162, !10, i64 24}
!311 = !{!162, !10, i64 8}
!312 = !{!162, !10, i64 32}
!313 = !{!162, !10, i64 56}
!314 = distinct !{!314, !43}
!315 = distinct !{!315, !43, !45, !46}
!316 = distinct !{!316, !43, !46, !45}
!317 = !{!9, !21, i64 168}
!318 = !{!319, !321, i64 16}
!319 = !{!"FT_CMapRec_", !320, i64 0, !321, i64 16}
!320 = !{!"FT_CharMapRec_", !161, i64 0, !5, i64 8, !18, i64 12, !18, i64 14}
!321 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !12, i64 0}
!322 = !{!323, !12, i64 24}
!323 = !{!"FT_CMap_ClassRec_", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!324 = !{ptr @FT_Get_Char_Index}
!325 = !{!9, !14, i64 80}
!326 = !{!9, !5, i64 72}
!327 = !{!21, !21, i64 0}
!328 = !{!320, !5, i64 8}
!329 = !{!320, !18, i64 12}
!330 = !{!320, !18, i64 14}
!331 = !{!320, !161, i64 0}
!332 = !{ptr @FT_Get_CMap_Format}
!333 = !{!334, !12, i64 0}
!334 = !{!"FT_Service_TTCMapsRec_", !12, i64 0}
!335 = !{!336, !10, i64 8}
!336 = !{!"TT_CMapInfo_", !10, i64 0, !10, i64 8}
!337 = distinct !{!337, !43}
!338 = distinct !{!338, !43}
!339 = !{!161, !161, i64 0}
!340 = !{!187, !185, i64 40}
!341 = !{!187, !5, i64 48}
!342 = !{!187, !188, i64 56}
!343 = !{ptr @FT_Stream_Free, ptr @FT_Stream_Close}
!344 = !{ptr @FT_Stream_Free, ptr @ft_mem_free}
!345 = !{!192, !12, i64 40}
!346 = !{ptr @FT_Stream_Seek}
!347 = distinct !{!347, !43}
!348 = distinct !{null, null, ptr @FT_Stream_Seek}
!349 = distinct !{null, null, ptr @FT_Stream_Read, ptr @FT_Stream_ReadAt}
!350 = distinct !{null, null}
!351 = distinct !{null}
!352 = distinct !{null, null}
!353 = !{!354, !5, i64 8}
!354 = !{!"ft_raccess_guess_rec_", !12, i64 0, !5, i64 8}
!355 = distinct !{null, null, ptr @FT_Stream_New, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!356 = distinct !{null, null, ptr @FT_Stream_New, ptr @ft_mem_free}
!357 = distinct !{null, null, ptr @FT_Stream_Free, ptr @FT_Stream_Close}
!358 = distinct !{null, null, ptr @FT_Stream_Free, ptr @ft_mem_free}
!359 = distinct !{!359, !43}
!360 = distinct !{null, null, ptr @ft_mem_free}
!361 = !{!25, !26, i64 8}
!362 = !{!298, !26, i64 0}
!363 = !{!25, !26, i64 0}
!364 = !{!20, !20, i64 0}
!365 = !{!9, !18, i64 142}
!366 = !{!9, !18, i64 146}
!367 = !{!9, !5, i64 56}
!368 = !{!9, !13, i64 64}
!369 = !{!370, !18, i64 0}
!370 = !{!"FT_Bitmap_Size_", !18, i64 0, !18, i64 2, !10, i64 8, !10, i64 16, !10, i64 24}
!371 = !{!370, !10, i64 16}
!372 = !{!370, !10, i64 24}
!373 = !{!370, !18, i64 2}
!374 = distinct !{!374, !43}
!375 = !{!254, !5, i64 120}
!376 = !{!254, !6, i64 112}
!377 = !{!26, !26, i64 0}
!378 = distinct !{!378, !43}
!379 = !{ptr @FT_Done_Face, ptr @ft_mem_free}
!380 = !{ptr @FT_Stream_New, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!381 = !{!37, !12, i64 160}
!382 = !{ptr @FT_Attach_Stream}
!383 = !{ptr @FT_Attach_Stream, ptr @FT_Stream_Free, ptr @FT_Stream_Close}
!384 = !{!9, !12, i64 224}
!385 = !{!9, !12, i64 216}
!386 = !{ptr @FT_Done_GlyphSlot}
!387 = !{ptr @FT_Done_GlyphSlot, ptr @ft_mem_free}
!388 = distinct !{!388, !43}
!389 = !{!37, !12, i64 120}
!390 = distinct !{null, ptr @FT_List_Finalize}
!391 = !{!218, !12, i64 16}
!392 = !{!218, !220, i64 80}
!393 = distinct !{null, ptr @FT_List_Finalize, ptr @ft_mem_free}
!394 = !{ptr @FT_List_Finalize, ptr @ft_mem_free}
!395 = distinct !{!395, !43}
!396 = !{!319, !161, i64 0}
!397 = !{!323, !12, i64 16}
!398 = distinct !{null, null}
!399 = distinct !{null, null, ptr @ft_mem_free}
!400 = distinct !{!400, !43}
!401 = distinct !{null, ptr @ft_mem_free}
!402 = !{!37, !12, i64 104}
!403 = !{!9, !24, i64 192}
!404 = !{!9, !12, i64 96}
!405 = !{!37, !10, i64 80}
!406 = !{!218, !161, i64 0}
!407 = !{!37, !12, i64 112}
!408 = !{!9, !26, i64 200}
!409 = distinct !{null}
!410 = distinct !{null, ptr @ft_mem_free}
!411 = !{!412, !5, i64 0}
!412 = !{!"FT_Size_RequestRec_", !5, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 28}
!413 = !{!412, !5, i64 24}
!414 = !{!412, !10, i64 8}
!415 = !{!412, !5, i64 28}
!416 = !{!412, !10, i64 16}
!417 = distinct !{!417, !43}
!418 = !{!162, !10, i64 40}
!419 = !{!162, !10, i64 48}
!420 = !{!219, !18, i64 0}
!421 = !{!219, !18, i64 2}
!422 = !{!9, !18, i64 136}
!423 = !{!9, !18, i64 138}
!424 = !{!219, !10, i64 24}
!425 = !{!9, !18, i64 140}
!426 = !{!219, !10, i64 32}
!427 = !{!219, !10, i64 40}
!428 = !{!9, !18, i64 144}
!429 = !{!219, !10, i64 48}
!430 = !{!9, !10, i64 120}
!431 = !{!9, !10, i64 104}
!432 = !{!9, !10, i64 128}
!433 = !{!9, !10, i64 112}
!434 = !{!37, !12, i64 184}
!435 = !{!436, !10, i64 24}
!436 = !{!"FT_Size_InternalRec_", !12, i64 0, !5, i64 8, !219, i64 16}
!437 = !{!37, !12, i64 176}
!438 = !{!37, !12, i64 152}
!439 = !{!218, !10, i64 32}
!440 = !{!218, !10, i64 40}
!441 = !{!442, !12, i64 0}
!442 = !{!"FT_Service_KerningRec_", !12, i64 0}
!443 = distinct !{!443, !43}
!444 = distinct !{!444, !43}
!445 = distinct !{!445, !43}
!446 = distinct !{!446, !43}
!447 = distinct !{null}
!448 = distinct !{null, ptr @ft_mem_free}
!449 = distinct !{!449, !43}
!450 = !{!323, !10, i64 0}
!451 = !{i64 0, i64 8, !339, i64 8, i64 4, !98, i64 12, i64 2, !50, i64 14, i64 2, !50}
!452 = !{!323, !12, i64 8}
!453 = !{!454, !454, i64 0}
!454 = !{!"p1 _ZTS11FT_CMapRec_", !12, i64 0}
!455 = !{!323, !12, i64 32}
!456 = !{ptr @FT_Get_Next_Char}
!457 = distinct !{!457, !43}
!458 = !{!459, !10, i64 0}
!459 = !{!"FT_Parameter_", !10, i64 0, !12, i64 8}
!460 = !{!459, !12, i64 8}
!461 = !{!254, !5, i64 116}
!462 = distinct !{!462, !43}
!463 = distinct !{null, ptr @FT_Get_CMap_Format}
!464 = distinct !{!464, !43}
!465 = !{!323, !12, i64 40}
!466 = !{!323, !12, i64 48}
!467 = !{!323, !12, i64 56}
!468 = !{!323, !12, i64 64}
!469 = !{!323, !12, i64 72}
!470 = !{!254, !12, i64 80}
!471 = !{!472, !12, i64 8}
!472 = !{!"FT_Service_GlyphDictRec_", !12, i64 0, !12, i64 8}
!473 = !{!472, !12, i64 0}
!474 = !{!254, !12, i64 56}
!475 = !{!476, !12, i64 0}
!476 = !{!"FT_Service_PsFontNameRec_", !12, i64 0}
!477 = !{!478, !12, i64 8}
!478 = !{!"FT_Service_SFNT_TableRec_", !12, i64 0, !12, i64 8, !12, i64 16}
!479 = !{!478, !12, i64 0}
!480 = !{!478, !12, i64 16}
!481 = !{!302, !12, i64 104}
!482 = distinct !{!482, !43}
!483 = !{!484, !11, i64 8}
!484 = !{!"FT_LayerIterator_", !5, i64 0, !5, i64 4, !11, i64 8}
!485 = !{!81, !12, i64 280}
!486 = !{ptr @FT_Get_Color_Glyph_Layer}
!487 = !{!81, !12, i64 328}
!488 = distinct !{!488, !43}
!489 = !{!292, !12, i64 120}
!490 = distinct !{!490, !43}
!491 = !{!38, !10, i64 32}
!492 = distinct !{!492, !43}
!493 = !{!38, !10, i64 24}
!494 = !{!38, !10, i64 8}
!495 = !{!31, !33, i64 8}
!496 = !{!31, !23, i64 16}
!497 = !{!38, !12, i64 48}
!498 = !{!302, !5, i64 72}
!499 = !{!292, !295, i64 104}
!500 = !{!302, !303, i64 112}
!501 = !{!502, !12, i64 40}
!502 = !{!"FT_Raster_Funcs_", !5, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!503 = distinct !{null, null}
!504 = distinct !{null, null, ptr @ft_mem_free}
!505 = !{ptr @FT_List_Finalize}
!506 = distinct !{null, null, ptr @FT_List_Finalize, ptr @ft_mem_free}
!507 = !{!38, !12, i64 56}
!508 = distinct !{null}
!509 = distinct !{!509, !43}
!510 = distinct !{null, ptr @ft_mem_free}
!511 = !{!502, !12, i64 8}
!512 = !{!502, !12, i64 32}
!513 = !{!292, !12, i64 112}
!514 = !{!302, !12, i64 80}
!515 = distinct !{!515, !43}
!516 = distinct !{!516, !43}
end_hunk_1
