inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Driver_ClassRec_ = type { %struct.FT_Module_Class_, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_WinFntRec_ = type { ptr }
%struct.FT_CMap_ClassRec_ = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.WinMZ_HeaderRec_ = type { i16, i16 }
%struct.WinNE_HeaderRec_ = type { i16, i16, i16 }
%struct.WinPE32_HeaderRec_ = type { i64, i16, i16, i16, i16, i64, i64 }
%struct.WinPE32_SectionRec_ = type { [8 x i8], i64, i64, i64 }
%struct.WinPE_RsrcDirRec_ = type { i64, i64, i16, i16, i16, i16 }
%struct.WinPE_RsrcDirEntryRec_ = type { i64, i64 }
%struct.WinPE_RsrcDataEntryRec_ = type { i64, i64, i64, i64 }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }

@.str = private unnamed_addr constant [9 x i8] c"winfonts\00", align 1
@winfnt_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 513, i64 56, ptr @.str, i64 65536, i64 131072, ptr null, ptr null, ptr null, ptr @winfnt_get_service }, i64 256, i64 88, i64 304, ptr @FNT_Face_Init, ptr @FNT_Face_Done, ptr null, ptr null, ptr null, ptr null, ptr @FNT_Load_Glyph, ptr null, ptr null, ptr null, ptr @FNT_Size_Request, ptr @FNT_Size_Select }, align 8
@winfnt_services = internal constant [3 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.1, ptr @.str.2 }, %struct.FT_ServiceDescRec_ { ptr @.str, ptr @winfnt_service_rec }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Windows FNT\00", align 1
@winfnt_service_rec = internal constant %struct.FT_Service_WinFntRec_ { ptr @winfnt_get_header }, align 8
@fnt_cmap_class_rec = internal constant %struct.FT_CMap_ClassRec_ { i64 32, ptr @fnt_cmap_init, ptr null, ptr @fnt_cmap_char_index, ptr @fnt_cmap_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Bold Italic\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@winmz_header_fields = internal constant [5 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 64 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 25, i8 58, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 2, i16 2 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winne_header_fields = internal constant [6 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 40 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 25, i8 34, i16 0 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 4 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winpe32_header_fields = internal constant [13 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 248 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 25, i8 12, i16 0 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 25, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 14 }, %struct.FT_Frame_Field_ { i8 25, i8 110, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 24 }, %struct.FT_Frame_Field_ { i8 25, i8 104, i16 0 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winpe32_section_fields = internal constant [8 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 40 }, %struct.FT_Frame_Field_ { i8 24, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 25, i8 4, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 24 }, %struct.FT_Frame_Field_ { i8 25, i8 16, i16 0 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winpe_rsrc_dir_fields = internal constant [8 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 20 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 22 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winpe_rsrc_dir_entry_fields = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 8 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winpe_rsrc_data_entry_fields = internal constant [6 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 24 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@winfnt_header_fields = internal constant [38 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 148 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 24, i8 60, i16 16 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 76 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 78 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 80 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 82 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 84 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 86 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 88 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 90 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 91 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 92 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 94 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 96 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 98 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 100 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 102 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 104 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 106 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 108 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 109 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 110 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 111 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 112 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 120 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 128 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 136 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 144 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 152 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 160 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 168 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 170 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 172 }, %struct.FT_Frame_Field_ { i8 18, i8 2, i16 174 }, %struct.FT_Frame_Field_ { i8 24, i8 16, i16 176 }, %struct.FT_Frame_Field_ zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal ptr @winfnt_get_service(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @winfnt_services, ptr noundef %1) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @FNT_Face_Init(ptr noundef %0, ptr noundef initializes((248, 256)) %1, i32 noundef %2, i32 %3, ptr readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 40 uses
  %5 = alloca %struct.WinMZ_HeaderRec_, align 2   ; 5 uses
  %6 = alloca %struct.WinNE_HeaderRec_, align 2   ; 11 uses
  %7 = alloca %struct.WinPE32_HeaderRec_, align 8 ; 11 uses
  %8 = alloca %struct.WinPE32_SectionRec_, align 8 ; 7 uses
  %9 = alloca %struct.WinPE_RsrcDirRec_, align 8  ; 7 uses
  %10 = alloca %struct.WinPE_RsrcDirRec_, align 8 ; 7 uses
  %11 = alloca %struct.WinPE_RsrcDirRec_, align 8 ; 7 uses
  %12 = alloca %struct.WinPE_RsrcDirEntryRec_, align 8 ; 7 uses
  %13 = alloca %struct.WinPE_RsrcDirEntryRec_, align 8 ; 6 uses
  %14 = alloca %struct.WinPE_RsrcDirEntryRec_, align 8 ; 6 uses
  %15 = alloca %struct.WinPE_RsrcDataEntryRec_, align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %16 = alloca %struct.FT_CharMapRec_, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 6 uses
  %i.e = icmp slt i32 %2, 0                       ; 3 uses
  %i.f = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.g = and i32 %i.f, 65535                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 12 uses
  store ptr null, ptr %i.j, align 8, !tbaa !28
  %i.k = zext nneg i32 %i.g to i64                ; 5 uses
  %i.l = tail call i32 @FT_Stream_Seek(ptr noundef %i.i, i64 noundef 0) #10 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @FT_Stream_ReadFields(ptr noundef %i.i, ptr noundef nonnull @winmz_header_fields, ptr noundef nonnull %5) #10
  %.not132.i = icmp eq i32 %i.m, 0
  br i1 %.not132.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 2, ptr %i.a, align 4, !tbaa !3
  br label %fnt_face_get_dll_font.exit

bb.d:                                             ; preds = %bb.b
  store i32 2, ptr %i.a, align 4, !tbaa !3
  %i.n = load i16, ptr %5, align 2, !tbaa !31
  %i.o = icmp eq i16 %i.n, 23117
  br i1 %i.o, label %bb.e, label %.thread186.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !33
  %i.r = zext i16 %i.q to i64
  %i.s = call i32 @FT_Stream_Seek(ptr noundef %i.i, i64 noundef %i.r) #10 ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !3
  %.not133.i = icmp eq i32 %i.s, 0
  br i1 %.not133.i, label %bb.f, label %.thread182.i

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @FT_Stream_ReadFields(ptr noundef %i.i, ptr noundef nonnull @winne_header_fields, ptr noundef nonnull %6) #10 ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !3
  %.not134.i = icmp eq i32 %i.t, 0
  br i1 %.not134.i, label %bb.g, label %.thread182.i

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.a, align 4, !tbaa !3
  %i.u = load i16, ptr %6, align 2, !tbaa !34
  switch i16 %i.u, label %bb.az [
    i16 17742, label %bb.h
    i16 17744, label %bb.u
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i16, ptr %i.p, align 2, !tbaa !33
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !36
  %i.z = zext i16 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, %i.w
  %i.ab = call i32 @FT_Stream_Seek(ptr noundef %i.i, i64 noundef %i.aa) #10 ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  %.not157.i = icmp eq i32 %i.ab, 0
  br i1 %.not157.i, label %bb.i, label %.thread174.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !37
  %i.ae = zext i16 %i.ad to i64
  %i.af = load i16, ptr %i.x, align 2, !tbaa !36
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub nsw i64 %i.ae, %i.ag
  %i.ai = call i32 @FT_Stream_EnterFrame(ptr noundef %i.i, i64 noundef %i.ah) #10 ; 2 uses
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !3
  %.not158.i = icmp eq i32 %i.ai, 0
  br i1 %.not158.i, label %bb.j, label %.thread174.thread.i

bb.j:                                             ; preds = %bb.i
  %i.aj = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef %i.i) #10 ; 2 uses
  %i.ak = icmp ugt i16 %i.aj, 16
  br i1 %i.ak, label %bb.bf, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.al = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef %i.i) #10 ; 2 uses
  %.not159215.i = icmp eq i16 %i.al, 0
  br i1 %.not159215.i, label %.loopexit.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph216.i
  %i.an = phi i16 [ %i.al, %.lr.ph216.i ], [ %i.be, %bb.m ]
  %i.ao = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef %i.i) #10 ; 2 uses
  %i.ap = icmp eq i16 %i.an, -32760
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = call i64 @FT_Stream_Pos(ptr noundef %i.i) #10
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = add i64 %i.aq, 4
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = sub i64 %i.ax, %i.av
  br label %.loopexit.i

bb.m:                                             ; preds = %bb.k
  %i.az = zext i16 %i.ao to i64
  %i.ba = mul nuw nsw i64 %i.az, 12
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !38
  %i.be = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef %i.i) #10 ; 2 uses
  %.not159.i = icmp eq i16 %i.be, 0
  br i1 %.not159.i, label %.loopexit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.m, %bb.l, %.preheader.i
  %.1122.ph.i = phi i64 [ %i.ay, %bb.l ], [ 0, %.preheader.i ], [ 0, %bb.m ] ; 2 uses
  %.1120.ph.i = phi i16 [ %i.ao, %bb.l ], [ 0, %.preheader.i ], [ 0, %bb.m ] ; 2 uses
  call void @FT_Stream_ExitFrame(ptr noundef %i.i) #10
  %i.bf = icmp ne i16 %.1120.ph.i, 0
  %i.bg = icmp ne i64 %.1122.ph.i, 0
  %or.cond.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i, label %bb.n, label %.thread174.thread.sink.split.i

bb.n:                                             ; preds = %.loopexit.i
  %i.bh = zext i16 %.1120.ph.i to i64             ; 3 uses
  %i.bi = mul nuw nsw i64 %i.bh, 118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41
  %i.bl = icmp ugt i64 %i.bi, %i.bk
  br i1 %i.bl, label %.thread174.thread.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.bh, ptr %1, align 8, !tbaa !42
  br i1 %i.e, label %.thread174.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not160.i = icmp samesign ult i64 %i.k, %i.bh
  br i1 %.not160.i, label %bb.q, label %.thread174.thread.sink.split.i

bb.q:                                             ; preds = %bb.p
  %i.bm = call ptr @ft_mem_alloc(ptr noundef %i.d, i64 noundef 240, ptr noundef nonnull %i.a) #10
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !28
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !3
  %.not161.i = icmp eq i32 %i.bn, 0
  br i1 %.not161.i, label %bb.r, label %.thread174.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bo = mul nuw nsw i64 %i.k, 12
  %i.bp = add i64 %.1122.ph.i, %i.bo
  %i.bq = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.i, i64 noundef %i.bp) #10 ; 2 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !3
  %.not162.i = icmp eq i32 %i.bq, 0
  br i1 %.not162.i, label %bb.s, label %.thread186.sink.split.i

bb.s:                                             ; preds = %bb.r
  %i.br = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.i, i64 noundef 12) #10 ; 2 uses
  store i32 %i.br, ptr %i.a, align 4, !tbaa !3
  %.not163.i = icmp eq i32 %i.br, 0
  br i1 %.not163.i, label %bb.t, label %.thread186.sink.split.i

bb.t:                                             ; preds = %bb.s
  %i.bs = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef nonnull %i.i) #10
  %i.bt = zext i16 %i.bs to i64
  %i.bu = zext nneg i16 %i.aj to i64              ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !28
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !43
  %i.bx = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef nonnull %i.i) #10
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, %i.bu
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 224
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !38
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.i) #10
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.cg = call fastcc i32 @fnt_font_load(ptr noundef %i.cf, ptr noundef nonnull %i.i) ; 2 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !3
  %i.ch = icmp eq i32 %i.cg, 0
  br label %bb.az

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.ci = load i16, ptr %i.p, align 2, !tbaa !33
  %i.cj = zext i16 %i.ci to i64
  %i.ck = call i32 @FT_Stream_Seek(ptr noundef %i.i, i64 noundef %i.cj) #10 ; 2 uses
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !3
  %.not135.i = icmp eq i32 %i.ck, 0
  br i1 %.not135.i, label %bb.v, label %.thread174.thread195.i

bb.v:                                             ; preds = %bb.u
  %i.cl = call i32 @FT_Stream_ReadFields(ptr noundef %i.i, ptr noundef nonnull @winpe32_header_fields, ptr noundef nonnull %7) #10 ; 2 uses
  store i32 %i.cl, ptr %i.a, align 4, !tbaa !3
  %.not136.i = icmp eq i32 %i.cl, 0
end_hunk_0
