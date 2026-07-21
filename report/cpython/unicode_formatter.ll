inline.NumInlined: 99
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.InternalFormatSpec = type { i32, i32, i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.NumberFieldWidths = type { i64, i64, i64, i64, i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.LocaleInfo = type { ptr, ptr, ptr, ptr, ptr }

@PyUnicode_Type = external global %struct._typeobject, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"Format specifier missing precision\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid format specifier '%U' for object of type '%.200s'\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Too many decimal digits in format string\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot specify both ',' and '_'.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Cannot specify '%c' with '%c'.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Cannot specify '%c' with '\\x%x'.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Space not allowed in string format specifier\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Sign not allowed in string format specifier\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Negative zero coercion (z) not allowed in string format specifier\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Alternate form (#) not allowed in string format specifier\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"'=' alignment not allowed in string format specifier\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Unknown format code '%c' for object of type '%.200s'\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Unknown format code '\\x%x' for object of type '%.200s'\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Precision not allowed in integer format specifier\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"Negative zero coercion (z) not allowed in integer format specifier\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Sign not allowed with integer format specifier 'c'\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Alternate form (#) not allowed with integer format specifier 'c'\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [30 x i8] c"%c arg not in range(0x110000)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@no_grouping = internal constant [1 x i8] c"\7F", align 1
@_Py_ctype_toupper = external local_unnamed_addr constant [256 x i8], align 16
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"non-ascii grouped digit\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"precision too big\00", align 1
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.22 = private unnamed_addr constant [56 x i8] c"Zero padding is not allowed in complex format specifier\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"'=' alignment flag is not allowed in complex format specifier\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @_PyUnicode_FormatAdvancedWriter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.InternalFormatSpec, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = icmp eq i64 %3, %4
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.b, align 8, !tbaa !11
  %.not22 = icmp eq ptr %.val18, @PyUnicode_Type
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %format_obj.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @PyObject_Str(ptr noundef nonnull %1) #10 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %format_obj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.d) #10 ; 3 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i, label %bb.f, label %format_obj.exit

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !15
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %format_obj.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %format_obj.exit

bb.h:                                             ; preds = %bb.a
  %i.j = call fastcc i32 @parse_internal_render_format_spec(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 noundef signext 115, i8 noundef signext 60)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %format_obj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16   ; 3 uses
  %cond = icmp eq i32 %i.l, 115
  br i1 %cond, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !19 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  switch i32 %i.o, label %bb.l [
    i32 0, label %bb.m
    i32 32, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.6) #10
  br label %format_obj.exit

bb.l:                                             ; preds = %bb.j
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.7) #10
  br label %format_obj.exit

bb.m:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %.not66.i = icmp eq i32 %i.s, 0
  br i1 %.not66.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.8) #10
  br label %format_obj.exit

bb.o:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %.not67.i = icmp eq i32 %i.v, 0
  br i1 %.not67.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.9) #10
  br label %format_obj.exit

bb.q:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 2 uses
  %i.z = icmp eq i32 %i.y, 61
  br i1 %i.z, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.10) #10
  br label %format_obj.exit

bb.s:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28 ; 4 uses
  %i.ad = icmp ne i64 %i.ac, -1
  %.not68.i = icmp sgt i64 %i.ac, %.val.i
  %or.cond73.i = select i1 %i.ad, i1 %.not68.i, i1 false
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 4 uses
  br i1 %or.cond73.i, label %._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = icmp ne i64 %.pre.i, -1
  %.not69.i = icmp slt i64 %.pre.i, %.val.i
  %or.cond74.i = select i1 %i.ae, i1 %.not69.i, i1 false
  br i1 %or.cond74.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %format_obj.exit

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %i.ag = icmp slt i64 %.pre.i, 0
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i, i64 %.pre.i)
  %.057.i = select i1 %i.ag, i64 %.val.i, i64 %i.ah ; 10 uses
  %..i.i = tail call i64 @llvm.smax.i64(i64 %.057.i, i64 %i.ac)
  %i.ai = icmp slt i64 %i.ac, 0
  %.sink.i.i = select i1 %i.ai, i64 %.057.i, i64 %..i.i ; 8 uses
  switch i32 %i.y, label %bb.x [
    i32 62, label %bb.v
    i32 94, label %bb.w
    i32 60, label %calc_padding.exit.i
  ]

bb.v:                                             ; preds = %._crit_edge.i
  %i.aj = sub i64 %.sink.i.i, %.057.i
  br label %calc_padding.exit.i

bb.w:                                             ; preds = %._crit_edge.i
  %i.ak = sub i64 %.sink.i.i, %.057.i
  %i.al = sdiv i64 %i.ak, 2
  br label %calc_padding.exit.i

bb.x:                                             ; preds = %._crit_edge.i
  unreachable

calc_padding.exit.i:                              ; preds = %._crit_edge.i, %bb.w, %bb.v
  %.sink29.i.i = phi i64 [ %i.al, %bb.w ], [ %i.aj, %bb.v ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.am = add i64 %.sink29.i.i, %.057.i           ; 2 uses
  %i.an = sub i64 %.sink.i.i, %i.am               ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30 ; 3 uses
  %i.aq = icmp ne i64 %.sink29.i.i, 0
  %i.ar = icmp ne i64 %.sink.i.i, %i.am
  %or.cond.i = select i1 %i.aq, i1 true, i1 %i.ar
  %i.as = load i32, ptr %5, align 8               ; 2 uses
  %..i = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.as)
  %.055.i = select i1 %or.cond.i, i32 %..i, i32 %i.ap ; 3 uses
  %i.at = getelementptr i8, ptr %1, i64 32
  %.val76.i = load i32, ptr %i.at, align 8        ; 2 uses
  %i.au = and i32 %.val76.i, 64
  %.not.i.i20 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i20, label %bb.y, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.y:                                             ; preds = %calc_padding.exit.i
  %i.av = lshr i32 %.val76.i, 2
  %i.aw = and i32 %i.av, 7                        ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.aw, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.aw, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.y, %calc_padding.exit.i
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.y ], [ 127, %calc_padding.exit.i ]
  %i.ax = icmp ugt i32 %.0.i.i, %.055.i
  br i1 %i.ax, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.ay = tail call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.057.i) #10
  %i.az = tail call i32 @llvm.umax.i32(i32 %.055.i, i32 %i.ay)
  %.pre85.i = load i32, ptr %i.ao, align 4, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.ba = phi i32 [ %.pre85.i, %bb.z ], [ %i.ap, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  %.1.i = phi i32 [ %i.az, %bb.z ], [ %.055.i, %PyUnicode_MAX_CHAR_VALUE.exit.i ] ; 2 uses
  %.not71.i = icmp ugt i32 %.1.i, %i.ba
  br i1 %.not71.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = getelementptr i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.bd = getelementptr i8, ptr %0, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !33
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp sle i64 %.sink.i.i, %i.bf
  %i.bh = icmp eq i64 %.sink.i.i, 0
  %or.cond3.i = or i1 %i.bh, %i.bg
  br i1 %or.cond3.i, label %.critedge.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %.old2.i = icmp eq i64 %.sink.i.i, 0
  br i1 %.old2.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bi = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.sink.i.i, i32 noundef %.1.i) #10
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %format_obj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ad, %bb.ac, %bb.ab
  tail call fastcc void @fill_padding(ptr noundef nonnull %0, i64 noundef %.057.i, i32 noundef %i.as, i64 noundef %.sink29.i.i, i64 noundef %i.an)
  %.not72.i = icmp eq i64 %.057.i, 0
  br i1 %.not72.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !34
  %i.bl = getelementptr i8, ptr %0, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !33
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.bk, i64 noundef %i.bm, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.057.i) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge.i
  %i.bn = add i64 %i.an, %.057.i
  %i.bo = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33
  %i.bq = add i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !33
  br label %format_obj.exit

bb.ag:                                            ; preds = %bb.i
  %i.br = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bs = getelementptr i8, ptr %.val, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.bu = add i32 %i.l, -33
  %or.cond.i21 = icmp ult i32 %i.bu, 95
  %i.bv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  %.str.11..str.12.i = select i1 %or.cond.i21, ptr @.str.11, ptr @.str.12
  %i.bw = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bv, ptr noundef nonnull %.str.11..str.12.i, i32 noundef %i.l, ptr noundef %i.bt) #10 ; 0 uses
  br label %format_obj.exit

format_obj.exit:                                  ; preds = %bb.af, %bb.ad, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.h, %bb.ag, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ -1, %bb.h ], [ %i.f, %bb.g ], [ -1, %bb.ag ], [ -1, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ %i.af, %bb.u ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.ad ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @_PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_internal_render_format_spec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) initializes((0, 20), (24, 36), (40, 56)) %4, i8 noundef signext range(i8 0, 116) %5, i8 noundef signext range(i8 60, 63) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %2, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7                          ; 19 uses
  %i.f = and i32 %i.c, 32
  %.not.i149 = icmp eq i32 %i.f, 0
  br i1 %.not.i149, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 55 uses
  store i32 32, ptr %4, align 8, !tbaa !44
  %i.i = zext nneg i8 %6 to i32
  %i.j = getelementptr i8, ptr %4, i64 4          ; 6 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr i8, ptr %4, i64 8          ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %4, i64 12         ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !25
  %i.m = getelementptr i8, ptr %4, i64 16         ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %4, i64 24         ; 3 uses
  store i64 -1, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr i8, ptr %4, i64 32         ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !45
  %i.p = getelementptr i8, ptr %4, i64 48         ; 6 uses
  store i32 0, ptr %i.p, align 8, !tbaa !46
  %i.q = getelementptr i8, ptr %4, i64 40         ; 4 uses
  store i64 -1, ptr %i.q, align 8, !tbaa !29
  %i.r = zext nneg i8 %5 to i32
  %i.s = getelementptr i8, ptr %4, i64 52         ; 3 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !16
  %i.t = sub i64 %3, %2                           ; 3 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.v = add i64 %2, 1                            ; 6 uses
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %.0.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i32
  br label %PyUnicode_READ.exit

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr [2 x i8], ptr %.0.i, i64 %i.v
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !47
  %i.ab = zext i16 %i.aa to i32
  br label %PyUnicode_READ.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %i.v
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %.0.i150 = phi i32 [ %i.y, %bb.e ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  switch i32 %.0.i150, label %.thread [
    i32 60, label %is_alignment_token.exit
    i32 62, label %is_alignment_token.exit
    i32 61, label %is_alignment_token.exit
    i32 94, label %is_alignment_token.exit
  ]

is_alignment_token.exit:                          ; preds = %PyUnicode_READ.exit, %PyUnicode_READ.exit, %PyUnicode_READ.exit, %PyUnicode_READ.exit
  switch i32 %i.e, label %PyUnicode_READ.exit153 [
    i32 1, label %PyUnicode_READ.exit153.thread
    i32 2, label %PyUnicode_READ.exit153.thread192
  ]

PyUnicode_READ.exit153.thread:                    ; preds = %is_alignment_token.exit
  %i.ae = getelementptr i8, ptr %.0.i, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
end_hunk_0
begin_hunk_1_@_PyComplex_FormatAdvancedWriter:bb.a
    i32 102, label %bb.h
    i32 70, label %bb.h
    i32 103, label %bb.h
    i32 71, label %bb.h
    i32 110, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull readonly align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i32 127, ptr %i.g, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 2147483647
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.21) #10
  br label %bb.ay

bb.j:                                             ; preds = %bb.h
  %i.x = trunc i64 %i.u to i32                    ; 2 uses
  %i.y = load i32, ptr %9, align 8, !tbaa !44     ; 3 uses
  %i.z = icmp eq i32 %i.y, 48
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.22) #10
  br label %bb.ay

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 61
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !23
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.23) #10
  br label %bb.ay

bb.n:                                             ; preds = %bb.l
  %i.af = tail call double @PyComplex_RealAsDouble(ptr noundef %1) #10 ; 4 uses
  %i.ag = fcmp oeq double %i.af, -1.000000e+00
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = tail call ptr @PyErr_Occurred() #10
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.p, label %bb.ay

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = tail call double @PyComplex_ImagAsDouble(ptr noundef %1) #10 ; 2 uses
  %i.aj = fcmp oeq double %i.ai, -1.000000e+00
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call ptr @PyErr_Occurred() #10
  %.not159.i = icmp eq ptr %i.ak, null
  br i1 %.not159.i, label %bb.r, label %bb.ay

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !26
  %.not160.i = icmp eq i32 %i.am, 0
  %spec.select.i = select i1 %.not160.i, i32 0, i32 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %.not161.i = icmp eq i32 %i.ao, 0
  %i.ap = or disjoint i32 %spec.select.i, 8
  %.1.i = select i1 %.not161.i, i32 %spec.select.i, i32 %i.ap ; 2 uses
  switch i32 %i.s, label %bb.s [
    i32 0, label %.thread194.i
    i32 110, label %.thread208.i
  ]

.thread194.i:                                     ; preds = %bb.r
  %i.aq = fcmp oeq double %i.af, 0.000000e+00
  %i.ar = tail call double @llvm.copysign.f64(double 1.000000e+00, double %i.af)
  %i.as = fcmp oeq double %i.ar, 1.000000e+00
  %or.cond167.i = and i1 %i.aq, %i.as             ; 3 uses
  %.not162.ph.i = xor i1 %or.cond167.i, true
  %i.at = select i1 %or.cond167.i, i64 1, i64 3
  br label %.thread208.i

bb.s:                                             ; preds = %bb.r
  br label %.thread208.i

.thread208.i:                                     ; preds = %bb.s, %.thread194.i, %bb.r
  %i.au = phi i32 [ 114, %.thread194.i ], [ %i.s, %bb.s ], [ 103, %bb.r ]
  %.0134189206.i = phi i32 [ 0, %.thread194.i ], [ 6, %bb.s ], [ 6, %bb.r ]
  %.not164190204.i = phi i1 [ %or.cond167.i, %.thread194.i ], [ true, %bb.s ], [ true, %bb.r ] ; 2 uses
  %.0123191202.i = phi i64 [ %i.at, %.thread194.i ], [ 1, %bb.s ], [ 1, %bb.r ]
  %.not162192200.i = phi i1 [ %.not162.ph.i, %.thread194.i ], [ true, %bb.s ], [ true, %bb.r ] ; 3 uses
  %i.av = phi i32 [ 103, %.thread194.i ], [ %i.s, %bb.s ], [ 103, %bb.r ]
  %i.aw = icmp slt i32 %i.x, 0                    ; 2 uses
  %.0135.i = select i1 %i.aw, i32 %.0134189206.i, i32 %i.x ; 2 uses
  %.1133.i = select i1 %i.aw, i32 %i.au, i32 %i.av
  %i.ax = trunc nuw nsw i32 %.1133.i to i8        ; 2 uses
  %i.ay = call ptr @PyOS_double_to_string(double noundef %i.af, i8 noundef signext %i.ax, i32 noundef %.0135.i, i32 noundef %.1.i, ptr noundef nonnull %i.h) #10 ; 13 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.ay, label %bb.t

bb.t:                                             ; preds = %.thread208.i
  %i.ba = call ptr @PyOS_double_to_string(double noundef %i.ai, i8 noundef signext %i.ax, i32 noundef %.0135.i, i32 noundef %.1.i, ptr noundef nonnull %i.i) #10 ; 12 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.ay, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #11 ; 2 uses
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #11 ; 2 uses
  %i.be = call ptr @_PyUnicode_FromASCII(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #10 ; 12 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ay, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = call ptr @_PyUnicode_FromASCII(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #10 ; 11 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ay, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = call fastcc i32 @PyUnicode_READ_CHAR(ptr noundef %i.be)
  %i.bj = icmp eq i32 %i.bi, 45                   ; 3 uses
  %i.bk = sext i1 %i.bj to i64
  %.0136.i = add i64 %i.bc, %i.bk
  %.0131.i = zext i1 %i.bj to i64                 ; 4 uses
  %i.bl = call fastcc i32 @PyUnicode_READ_CHAR(ptr noundef %i.bg)
  %i.bm = icmp eq i32 %i.bl, 45                   ; 3 uses
  %i.bn = sext i1 %i.bm to i64
  %.0138.i = add i64 %i.bd, %i.bn
  %.0130.i = zext i1 %i.bm to i64                 ; 4 uses
  %.0124.i = select i1 %i.bm, i32 45, i32 0
  %i.bo = add i64 %.0136.i, %.0131.i              ; 2 uses
  call fastcc void @parse_number(ptr noundef %i.be, i64 noundef %.0131.i, i64 noundef %i.bo, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e)
  %i.bp = add i64 %.0138.i, %.0130.i              ; 2 uses
  call fastcc void @parse_number(ptr noundef %i.bg, i64 noundef %.0130.i, i64 noundef %i.bp, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %i.bq = icmp eq i32 %i.s, 110
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = select i1 %i.bq, i32 97, i32 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !46
  %i.bw = call fastcc i32 @get_locale_info(i32 noundef %i.bt, i32 noundef %i.bv, ptr noundef %8)
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.ay, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0125.i = select i1 %i.bj, i32 45, i32 0
  store i32 0, ptr %5, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 60, ptr %i.by, align 4, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 -1, ptr %i.bz, align 8, !tbaa !28
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !43
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !43
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !7
  %i.cd = call fastcc i64 @calc_number_widths(ptr noundef %6, i64 noundef 0, i32 noundef %.0125.i, i64 noundef %.0131.i, i64 noundef %i.bo, i64 noundef %i.ca, i64 noundef %i.cb, i32 noundef %i.cc, ptr noundef %8, ptr noundef %5, ptr noundef %i.g) ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.ay, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not162192200.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 43, ptr %i.cf, align 8, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !43
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !43
  %i.ci = load i32, ptr %i.f, align 4, !tbaa !7
  %i.cj = call fastcc i64 @calc_number_widths(ptr noundef %7, i64 noundef 0, i32 noundef %.0124.i, i64 noundef %.0130.i, i64 noundef %i.bp, i64 noundef %i.cg, i64 noundef %i.ch, i32 noundef %i.ci, ptr noundef %8, ptr noundef %5, ptr noundef %i.g) ; 2 uses
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %bb.ay, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %spec.select168.i = select i1 %.not162192200.i, i64 %i.cd, i64 0
  %i.cl = add i64 %spec.select168.i, %.0123191202.i
  %i.cm = add i64 %i.cl, %i.cj                    ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %..i.i = call i64 @llvm.smax.i64(i64 %i.cm, i64 %i.co)
  %i.cp = icmp slt i64 %i.co, 0
  %.sink.i.i = select i1 %i.cp, i64 %i.cm, i64 %..i.i ; 8 uses
  switch i32 %i.ac, label %.unreachabledefault [
    i32 62, label %bb.ac
    i32 94, label %bb.ad
    i32 60, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub i64 %.sink.i.i, %i.cm
  br label %calc_padding.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.cr = sub i64 %.sink.i.i, %i.cm
  %i.cs = sdiv i64 %i.cr, 2
  br label %calc_padding.exit.i

.unreachabledefault:                              ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ct = icmp eq i32 %i.ac, 60
  call void @llvm.assume(i1 %i.ct)
  br label %calc_padding.exit.i

calc_padding.exit.i:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink29.i.i = phi i64 [ %i.cs, %bb.ad ], [ 0, %bb.ae ], [ %i.cq, %bb.ac ] ; 3 uses
  %i.cu = add i64 %.sink29.i.i, %i.cm             ; 2 uses
  %i.cv = sub i64 %.sink.i.i, %i.cu               ; 2 uses
  %i.cw = icmp ne i64 %.sink29.i.i, 0
  %i.cx = icmp ne i64 %.sink.i.i, %i.cu
  %or.cond.i = select i1 %i.cw, i1 true, i1 %i.cx
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !7 ; 2 uses
  %..i = call i32 @llvm.umax.i32(i32 %.pre.i, i32 %i.y)
  %i.cy = select i1 %or.cond.i, i32 %..i, i32 %.pre.i ; 2 uses
  %i.cz = getelementptr i8, ptr %0, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30
  %.not163.i = icmp ugt i32 %i.cy, %i.da
  br i1 %.not163.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %calc_padding.exit.i
  %i.db = getelementptr i8, ptr %0, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = getelementptr i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !33
  %i.df = sub i64 %i.dc, %i.de
  %i.dg = icmp sle i64 %.sink.i.i, %i.df
  %i.dh = icmp eq i64 %.sink.i.i, 0
  %or.cond4.i = or i1 %i.dh, %i.dg
  br i1 %or.cond4.i, label %.critedge.i, label %bb.ah

bb.ag:                                            ; preds = %calc_padding.exit.i
  %.old3.i = icmp eq i64 %.sink.i.i, 0
  br i1 %.old3.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.di = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.sink.i.i, i32 noundef %i.cy) #10
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %bb.ay, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dk = getelementptr i8, ptr %0, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !54 ; 3 uses
  %i.dm = getelementptr i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !55 ; 9 uses
  call fastcc void @fill_padding(ptr noundef nonnull %0, i64 noundef %i.cm, i32 noundef %i.y, i64 noundef %.sink29.i.i, i64 noundef %i.cv)
  br i1 %.not164190204.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.do = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33 ; 5 uses
  switch i32 %i.dl, label %bb.al [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr i8, ptr %i.dn, i64 %i.dp
  store i8 40, ptr %i.dq, align 1, !tbaa !15
  %.pre216.i = load i64, ptr %i.do, align 8, !tbaa !33
  br label %PyUnicode_WRITE.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.dr = getelementptr [2 x i8], ptr %i.dn, i64 %i.dp
  store i16 40, ptr %i.dr, align 2, !tbaa !47
  br label %PyUnicode_WRITE.exit.i

bb.al:                                            ; preds = %bb.ai
  %i.ds = getelementptr [4 x i8], ptr %i.dn, i64 %i.dp
  store i32 40, ptr %i.ds, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dt = phi i64 [ %.pre216.i, %bb.aj ], [ %i.dp, %bb.ak ], [ %i.dp, %bb.al ]
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.do, align 8, !tbaa !33
  br label %bb.am

bb.am:                                            ; preds = %PyUnicode_WRITE.exit.i, %.critedge.i
  br i1 %.not162192200.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dv = call fastcc i32 @fill_number(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %i.be, i64 noundef %.0131.i, ptr noundef null, i64 noundef 0, i32 noundef 0, ptr noundef %8, i32 noundef 0)
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dx = call fastcc i32 @fill_number(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %i.bg, i64 noundef %.0130.i, ptr noundef null, i64 noundef 0, i32 noundef 0, ptr noundef %8, i32 noundef 0)
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !33 ; 5 uses
  switch i32 %i.dl, label %bb.as [
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.eb = getelementptr i8, ptr %i.dn, i64 %i.ea
  store i8 106, ptr %i.eb, align 1, !tbaa !15
  %.pre217.i = load i64, ptr %i.dz, align 8, !tbaa !33
  br label %PyUnicode_WRITE.exit169.i

bb.ar:                                            ; preds = %bb.ap
  %i.ec = getelementptr [2 x i8], ptr %i.dn, i64 %i.ea
  store i16 106, ptr %i.ec, align 2, !tbaa !47
  br label %PyUnicode_WRITE.exit169.i

bb.as:                                            ; preds = %bb.ap
  %i.ed = getelementptr [4 x i8], ptr %i.dn, i64 %i.ea
  store i32 106, ptr %i.ed, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit169.i

PyUnicode_WRITE.exit169.i:                        ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ee = phi i64 [ %.pre217.i, %bb.aq ], [ %i.ea, %bb.ar ], [ %i.ea, %bb.as ]
  %i.ef = add i64 %i.ee, 1                        ; 7 uses
  store i64 %i.ef, ptr %i.dz, align 8, !tbaa !33
  br i1 %.not164190204.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %PyUnicode_WRITE.exit169.i
  switch i32 %i.dl, label %bb.aw [
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.eg = getelementptr i8, ptr %i.dn, i64 %i.ef
  store i8 41, ptr %i.eg, align 1, !tbaa !15
  %.pre218.i = load i64, ptr %i.dz, align 8, !tbaa !33
  br label %PyUnicode_WRITE.exit170.i

bb.av:                                            ; preds = %bb.at
  %i.eh = getelementptr [2 x i8], ptr %i.dn, i64 %i.ef
  store i16 41, ptr %i.eh, align 2, !tbaa !47
  br label %PyUnicode_WRITE.exit170.i

bb.aw:                                            ; preds = %bb.at
  %i.ei = getelementptr [4 x i8], ptr %i.dn, i64 %i.ef
  store i32 41, ptr %i.ei, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit170.i

PyUnicode_WRITE.exit170.i:                        ; preds = %bb.aw, %bb.av, %bb.au
  %i.ej = phi i64 [ %.pre218.i, %bb.au ], [ %i.ef, %bb.av ], [ %i.ef, %bb.aw ]
  %i.ek = add i64 %i.ej, 1
  br label %bb.ax

bb.ax:                                            ; preds = %PyUnicode_WRITE.exit170.i, %PyUnicode_WRITE.exit169.i
  %i.el = phi i64 [ %i.ek, %PyUnicode_WRITE.exit170.i ], [ %i.ef, %PyUnicode_WRITE.exit169.i ]
  %i.em = add i64 %i.el, %i.cv
  store i64 %i.em, ptr %i.dz, align 8, !tbaa !33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ao, %bb.an, %bb.ah, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.thread208.i, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  %.0128.i = phi i32 [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %.thread208.i ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.aa ], [ -1, %bb.ah ], [ -1, %bb.an ], [ -1, %bb.ao ], [ 0, %bb.ax ]
  %.0127.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %i.ba, %bb.w ], [ %i.ba, %bb.x ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ah ], [ %i.ba, %bb.an ], [ %i.ba, %bb.ao ], [ %i.ba, %bb.ax ]
  %.0126.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.ay, %bb.v ], [ %i.ay, %bb.w ], [ %i.ay, %bb.x ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.ah ], [ %i.ay, %bb.an ], [ %i.ay, %bb.ao ], [ %i.ay, %bb.ax ]
  %.0121.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ null, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ], [ %i.be, %bb.x ], [ %i.be, %bb.aa ], [ %i.be, %bb.ah ], [ %i.be, %bb.an ], [ %i.be, %bb.ao ], [ %i.be, %bb.ax ] ; 4 uses
  %.0.i13 = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ null, %.thread208.i ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ], [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.ah ], [ %i.bg, %bb.an ], [ %i.bg, %bb.ao ], [ %i.bg, %bb.ax ] ; 4 uses
  call void @PyMem_Free(ptr noundef %.0126.i) #10
  call void @PyMem_Free(ptr noundef %.0127.i) #10
  %.not.i.i14 = icmp eq ptr %.0121.i, null
  br i1 %.not.i.i14, label %Py_XDECREF.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.en = load i32, ptr %.0121.i, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i.i, label %bb.ba, label %Py_XDECREF.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %.0121.i, align 8, !tbaa !15
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bb, label %Py_XDECREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.0121.i) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.not.i171.i = icmp eq ptr %.0.i13, null
  br i1 %.not.i171.i, label %Py_XDECREF.exit173.i, label %bb.bc

bb.bc:                                            ; preds = %Py_XDECREF.exit.i
  %i.eq = load i32, ptr %.0.i13, align 8, !tbaa !15 ; 2 uses
  %.not.i.i172.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i172.i, label %bb.bd, label %Py_XDECREF.exit173.i

bb.bd:                                            ; preds = %bb.bc
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %.0.i13, align 8, !tbaa !15
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.be, label %Py_XDECREF.exit173.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i13) #10
  br label %Py_XDECREF.exit173.i

Py_XDECREF.exit173.i:                             ; preds = %bb.be, %bb.bd, %bb.bc, %Py_XDECREF.exit.i
end_hunk_1
