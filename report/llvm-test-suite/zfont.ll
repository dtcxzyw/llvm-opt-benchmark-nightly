inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.int_state_s = type { ptr, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.op_def = type { ptr, ptr }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }

@ifont_dir = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@name_FontDirectory = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@name_FontMatrix = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@name_FontType = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@name_FontBBox = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@name_Encoding = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@name_PaintType = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@name_UniqueID = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"BuildChar\00", align 1
@name_BuildChar = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Type1BuildChar\00", align 1
@name_Type1BuildChar = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@name_Private = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@name_CharStrings = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@name_FID = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@name_Subrs = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@name_lenIV = dso_local global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_subrs = internal global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_charstrings = internal global %struct.ref_s zeroinitializer, align 8
@osp_nargs = external local_unnamed_addr global [6 x ptr], align 16
@dstack = external global [0 x %struct.ref_s], align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"definefont(font)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"definefont(data)\00", align 1
@osp = external local_unnamed_addr global ptr, align 8
@igs = external local_unnamed_addr global ptr, align 8
@istate = external local_unnamed_addr global %struct.int_state_s, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@zfont_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { ptr @.str.16, ptr @zcurrentfont }, %struct.op_def { ptr @.str.17, ptr @zdefinefont }, %struct.op_def { ptr @.str.18, ptr @zmakefont }, %struct.op_def { ptr @.str.19, ptr @zscalefont }, %struct.op_def { ptr @.str.20, ptr @zsetfont }, %struct.op_def { ptr @.str.21, ptr @zcachestatus }, %struct.op_def { ptr @.str.22, ptr @zsetcachelimit }, %struct.op_def { ptr @.str.23, ptr @zsetcacheparams }, %struct.op_def { ptr @.str.24, ptr @zcurrentcacheparams }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"0currentfont\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"2definefont\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"2makefont\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"2scalefont\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"1setfont\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"0cachestatus\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"1setcachelimit\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"1setcacheparams\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"0currentcacheparams\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @zfont_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @gs_font_dir_alloc(ptr noundef nonnull @alloc, ptr noundef nonnull @alloc_free) #6
  store ptr %i.a, ptr @ifont_dir, align 8, !tbaa !8
  tail call void @name_enter(ptr noundef nonnull @.str, ptr noundef nonnull @name_FontDirectory) #6
  tail call void @name_enter(ptr noundef nonnull @.str.1, ptr noundef nonnull @name_FontMatrix) #6
  tail call void @name_enter(ptr noundef nonnull @.str.2, ptr noundef nonnull @name_FontType) #6
  tail call void @name_enter(ptr noundef nonnull @.str.3, ptr noundef nonnull @name_FontBBox) #6
  tail call void @name_enter(ptr noundef nonnull @.str.4, ptr noundef nonnull @name_Encoding) #6
  tail call void @name_enter(ptr noundef nonnull @.str.5, ptr noundef nonnull @name_PaintType) #6
  tail call void @name_enter(ptr noundef nonnull @.str.6, ptr noundef nonnull @name_UniqueID) #6
  tail call void @name_enter(ptr noundef nonnull @.str.7, ptr noundef nonnull @name_BuildChar) #6
  tail call void @name_enter(ptr noundef nonnull @.str.8, ptr noundef nonnull @name_Type1BuildChar) #6
  tail call void @name_enter(ptr noundef nonnull @.str.9, ptr noundef nonnull @name_Private) #6
  tail call void @name_enter(ptr noundef nonnull @.str.10, ptr noundef nonnull @name_CharStrings) #6
  tail call void @name_enter(ptr noundef nonnull @.str.11, ptr noundef nonnull @name_FID) #6
  tail call void @name_enter(ptr noundef nonnull @.str.12, ptr noundef nonnull @name_Subrs) #6
  tail call void @name_enter(ptr noundef nonnull @.str.13, ptr noundef nonnull @name_lenIV) #6
  ret void
}

declare ptr @gs_font_dir_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) #1

declare void @alloc_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @name_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zdefinefont(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 4 uses
  %i.m = alloca ptr, align 8                      ; 7 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 8), align 8, !tbaa !11
  %i.p = icmp ult ptr %0, %i.o
  br i1 %i.p, label %.thread101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !13
  %i.s = and i16 %i.r, 252
  %i.t = icmp eq i16 %i.s, 8
  br i1 %i.t, label %bb.c, label %.thread101

bb.c:                                             ; preds = %bb.b
  %i.u = call i32 @dict_lookup(ptr noundef nonnull @dstack, ptr noundef nonnull @dstack, ptr noundef nonnull @name_FontDirectory, ptr noundef nonnull %i.a) #6
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.thread101, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_FontMatrix, ptr noundef nonnull %i.c) #6
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %.thread101, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_FontType, ptr noundef nonnull %i.d) #6
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.thread101, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !13
  %i.ad = and i16 %i.ac, 252
  %.not = icmp eq i16 %i.ad, 20
  br i1 %.not, label %bb.g, label %.thread101

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.af = icmp ugt i64 %i.ae, 255
  br i1 %i.af, label %.thread101, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_FontBBox, ptr noundef nonnull %i.e) #6
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %.thread101, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_Encoding, ptr noundef nonnull %i.f) #6
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %.thread101, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.al = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef %i.ak, ptr noundef nonnull %2) #6
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !13
  %3 = trunc i16 %i.ap to i8
  %trunc = and i8 %3, -4
  switch i8 %trunc, label %.thread101 [
    i8 0, label %bb.l
    i8 40, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !13
  %4 = trunc i16 %i.as to i8
  %trunc86 = and i8 %4, -4
  switch i8 %trunc86, label %.thread101 [
    i8 0, label %bb.m
    i8 40, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.au = load i16, ptr %i.at, align 2, !tbaa !17
  %.not86 = icmp eq i16 %i.au, 4
  br i1 %.not86, label %bb.n, label %.thread101

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = call i32 @num_params(ptr noundef nonnull %i.aw, i32 noundef 4, ptr noundef nonnull %i.l) #6
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread101, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_PaintType, ptr noundef nonnull %i.h) #6
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !13
  %i.be = and i16 %i.bd, 252
  %.not87 = icmp eq i16 %i.be, 20
  br i1 %.not87, label %bb.q, label %.thread101

bb.q:                                             ; preds = %bb.p
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %or.cond = icmp ugt i64 %i.bf, 65535
  br i1 %or.cond, label %.thread101, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.078 = phi i32 [ %i.bg, %bb.r ], [ -1, %bb.o ]
  %i.bh = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_UniqueID, ptr noundef nonnull %i.i) #6
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !13
  %i.bm = and i16 %i.bl, 252
  %.not88 = icmp eq i16 %i.bm, 20
  br i1 %.not88, label %bb.u, label %.thread101

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %or.cond96 = icmp ugt i64 %i.bn, 16777215
  br i1 %or.cond96, label %.thread101, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.074 = phi i64 [ -1, %bb.s ], [ %i.bn, %bb.u ] ; 4 uses
  %i.bo = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_BuildChar, ptr noundef nonnull %i.j) #6 ; 2 uses
  store ptr null, ptr @zdefinefont.no_subrs, align 8, !tbaa !16
  store i16 52, ptr getelementptr inbounds nuw (i8, ptr @zdefinefont.no_subrs, i64 8), align 8, !tbaa !13
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @zdefinefont.no_subrs, i64 10), align 2, !tbaa !17
  store ptr @zdefinefont.no_subrs, ptr %i.k, align 8, !tbaa !11
  store i64 0, ptr @zdefinefont.no_charstrings, align 8, !tbaa !16
  store i16 32, ptr getelementptr inbounds nuw (i8, ptr @zdefinefont.no_charstrings, i64 8), align 8, !tbaa !13
  store ptr @zdefinefont.no_charstrings, ptr %i.g, align 8, !tbaa !11
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.bs = icmp sgt i32 %i.bo, 0
  br i1 %i.bs, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_CharStrings, ptr noundef nonnull %i.g) #6
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !13
  %i.by = and i16 %i.bx, 252
  %.not90 = icmp eq i16 %i.by, 8
  br i1 %.not90, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bz = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_Private, ptr noundef nonnull %i.m) #6
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !11  ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !13
  %i.ce = and i16 %i.cd, 252
  %.not91.a = icmp eq i16 %i.ce, 8
  br i1 %.not91.a, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cf = call i32 @dict_lookup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef nonnull @name_Subrs, ptr noundef nonnull %i.k) #6
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !13
  %5 = trunc i16 %i.cj to i8
  %trunc94 = and i8 %5, -4
  switch i8 %trunc94, label %.thread [
    i8 0, label %bb.ad
    i8 40, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ab
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %i.cl = call i32 @dict_lookup(ptr noundef %i.ck, ptr noundef %i.ck, ptr noundef nonnull @name_lenIV, ptr noundef nonnull %i.n) #6
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !13
  %i.cq = and i16 %i.cp, 252
  %.not92 = icmp eq i16 %i.cq, 20
  br i1 %.not92, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cr = load i64, ptr %i.cn, align 8, !tbaa !16 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 255
  br i1 %i.cs, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = trunc nuw nsw i64 %i.cr to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.071 = phi i32 [ %i.ct, %bb.ag ], [ 4, %bb.ad ]
  %i.cu = icmp sgt i64 %.074, -1
  br i1 %i.cu, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %i.cw = call i32 @dict_lookup(ptr noundef %i.cv, ptr noundef %i.cv, ptr noundef nonnull @name_UniqueID, ptr noundef nonnull %i.i) #6
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i16, ptr %i.cz, align 8, !tbaa !13
  %i.db = and i16 %i.da, 252
  %.not93 = icmp eq i16 %i.db, 20
  br i1 %.not93, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !16
  %.not94 = icmp eq i64 %i.dc, %.074
  br i1 %.not94, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  br label %bb.am

.thread:                                          ; preds = %bb.w, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %.thread101

bb.am:                                            ; preds = %bb.ah, %bb.al, %bb.ak
  %.175 = phi i64 [ -1, %bb.al ], [ %.074, %bb.ak ], [ -1, %bb.ah ]
  store ptr @name_Type1BuildChar, ptr %i.j, align 8, !tbaa !11
  %i.dd = load i16, ptr getelementptr inbounds nuw (i8, ptr @name_Type1BuildChar, i64 8), align 8, !tbaa !13
  %i.de = or i16 %i.dd, 1
  store i16 %i.de, ptr getelementptr inbounds nuw (i8, ptr @name_Type1BuildChar, i64 8), align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %bb.aq

bb.an:                                            ; preds = %bb.v
  %i.df = icmp slt i32 %i.bo, 1
  br i1 %i.df, label %.thread101, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !13 ; 2 uses
  %6 = trunc i16 %i.di to i8
  %trunc90 = and i8 %6, -4
  switch i8 %trunc90, label %.thread101 [
    i8 0, label %bb.ap
    i8 40, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.dj = and i16 %i.di, 3
  %.not89 = icmp eq i16 %i.dj, 3
  br i1 %.not89, label %bb.aq, label %.thread101

bb.aq:                                            ; preds = %bb.am, %bb.ap
  %.377 = phi i64 [ %.175, %bb.am ], [ %.074, %bb.ap ]
  %.273 = phi i32 [ %.071, %bb.am ], [ undef, %bb.ap ]
  %i.dk = call i32 @dict_lookup(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @name_FID, ptr noundef nonnull %i.b) #6 ; 2 uses
  %i.dl = load i16, ptr %i.q, align 8, !tbaa !13  ; 2 uses
  %i.dm = and i16 %i.dl, 256
  %.not95 = icmp eq i16 %i.dm, 0
  br i1 %.not95, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = icmp sgt i32 %i.dk, 0
  br i1 %i.dn, label %.thread101, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = call ptr @alloc(i32 noundef 1, i32 noundef 184, ptr noundef nonnull @.str.14) #6 ; 12 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.thread101, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dq = call ptr @alloc(i32 noundef 1, i32 noundef 112, ptr noundef nonnull @.str.15) #6 ; 12 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.thread101, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store ptr %i.do, ptr %1, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 16, ptr %i.ds, align 8, !tbaa !13
  %i.dt = call i32 @dict_put(ptr noundef nonnull %0, ptr noundef nonnull @name_FID, ptr noundef nonnull %1) #6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.thread101, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ec = load ptr, ptr %i.k, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store ptr @z1_subr_proc, ptr %i.ed, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  store ptr @z1_pop_proc, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store ptr %i.dq, ptr %i.ef, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  store i32 %.273, ptr %i.eg, align 8, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %i.do, ptr %i.eh, align 8, !tbaa !27
  %i.ei = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !33
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store ptr %i.dq, ptr %i.ek, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.el, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false), !tbaa.struct !35
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.en = load i64, ptr %i.em, align 8, !tbaa !16
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 136
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 140
  %i.er = load <4 x float>, ptr %i.l, align 16, !tbaa !36
  store <4 x float> %i.er, ptr %i.eq, align 4, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 168
  store ptr @gs_no_build_char_proc, ptr %i.es, align 8, !tbaa !39
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 156
  store i32 %.078, ptr %i.et, align 4, !tbaa !40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 160
  store i64 %.377, ptr %i.eu, align 8, !tbaa !41
  %.pre = load i16, ptr %i.q, align 8, !tbaa !13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aq
  %i.ev = icmp slt i32 %i.dk, 1
  br i1 %i.ev, label %.thread101, label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ew = phi i16 [ %.pre, %bb.av ], [ %i.dl, %bb.aw ]
  %i.ex = and i16 %i.ew, -257
  store i16 %i.ex, ptr %i.q, align 8, !tbaa !13
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ez = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.fa = call i32 @dict_put(ptr noundef %i.ey, ptr noundef nonnull %i.ez, ptr noundef nonnull %0) #6 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.thread101, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %i.fc = load ptr, ptr @osp, align 8, !tbaa !11
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -16
  store ptr %i.fd, ptr @osp, align 8, !tbaa !11
  br label %.thread101

.thread101:                                       ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %.thread, %bb.ax, %bb.aw, %bb.ap, %bb.ao, %bb.an, %bb.t, %bb.u, %bb.p, %bb.q, %bb.m, %bb.n, %bb.l, %bb.k, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c, %bb.b, %bb.a, %bb.ay
  %.3 = phi i32 [ -17, %bb.a ], [ -20, %bb.b ], [ -10, %bb.c ], [ -10, %bb.d ], [ -10, %bb.k ], [ -10, %bb.l ], [ -10, %bb.aw ], [ 0, %bb.ay ], [ %i.fa, %bb.ax ], [ -7, %bb.ap ], [ -10, %.thread ], [ -10, %bb.t ], [ -10, %bb.an ], [ -20, %bb.ao ], [ -10, %bb.p ], [ -10, %bb.m ], [ -10, %bb.j ], [ -10, %bb.i ], [ -10, %bb.h ], [ -10, %bb.g ], [ -10, %bb.f ], [ -10, %bb.e ], [ -10, %bb.n ], [ -10, %bb.q ], [ -10, %bb.u ], [ %i.dt, %bb.au ], [ -25, %bb.at ], [ -25, %bb.as ], [ -10, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @dict_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @read_matrix(...) local_unnamed_addr #1

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @add_FID(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ref_s, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %1, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 16, ptr %i.a, align 8, !tbaa !13
  %i.b = call i32 @dict_put(ptr noundef %0, ptr noundef nonnull @name_FID, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @z1_subr_proc(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @z1_pop_proc(ptr noundef, ptr noundef) #1

declare i32 @gs_no_build_char_proc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zscalefont(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %1 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %i.a, align 4, !tbaa !36
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = call i32 @gs_make_scaling(double noundef %i.e, double noundef %i.e, ptr noundef nonnull %1) #6 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @make_font(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.b, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @make_font(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ref_s, align 8              ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
end_hunk_0
