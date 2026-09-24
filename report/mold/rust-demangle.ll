Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rust-demangle?download=true
inline.NumInlined: 217
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rust_mangled_ident = type { ptr, i64, ptr, i64 }
%struct.rust_demangler = type { ptr, i64, ptr, ptr, i64, i8, i8, i8, i32, i64 }
%struct.str_buf = type { ptr, i64, i64, i8 }

@.str.4 = private unnamed_addr constant [5 x i8] c"__ZN\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".llvm.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\\u{\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"::{\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"closure\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"shim\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c" as \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mut \00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"unsafe \00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"extern \22\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"fn(\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"dyn \00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"i16\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"i128\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"isize\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"u128\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"usize\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c" { \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"for<\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@switch.table.demangle_const_uint = private unnamed_addr constant [26 x ptr] [ptr @.str.55, ptr @.str.51, ptr @.str.52, ptr @.str.68, ptr @.str.53, ptr @.str.67, ptr poison, ptr @.str.61, ptr @.str.60, ptr @.str.66, ptr poison, ptr @.str.57, ptr @.str.63, ptr @.str.59, ptr @.str.65, ptr @.str.70, ptr poison, ptr poison, ptr @.str.56, ptr @.str.62, ptr @.str.54, ptr @.str.71, ptr poison, ptr @.str.58, ptr @.str.64, ptr @.str.69], align 8

; Function Attrs: nounwind
define dso_local zeroext i1 @rust_demangle_with_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
sub_0:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 6 uses
  %4 = alloca %struct.rust_mangled_ident, align 8 ; 8 uses
  %5 = alloca %struct.rust_demangler, align 8     ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 19 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  store i64 0, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 24 uses
  store i8 0, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 41 ; 21 uses
  store i8 0, ptr %i.h, align 1, !tbaa !25
  %i.i = trunc i32 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 42 ; 2 uses
  %i.k = and i8 %i.i, 1
  store i8 %i.k, ptr %i.j, align 2, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.m, align 8, !tbaa !27
  %i.n = load i8, ptr %0, align 1
  switch i8 %i.n, label %.tail83.thread [
    i8 95, label %.tail
    i8 82, label %bb.a
    i8 90, label %.tail83
  ]

.tail:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 82
  br i1 %i.q, label %bb.a, label %sub_176

sub_176:                                          ; preds = %.tail
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %.not116 = icmp eq i8 %i.s, 95
  br i1 %.not116, label %.tail74, label %sub_180

.tail74:                                          ; preds = %sub_176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 82
  br i1 %i.v, label %bb.a, label %sub_180

sub_180:                                          ; preds = %.tail74, %sub_176
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %.not118 = icmp eq i8 %i.x, 90
  br i1 %.not118, label %.tail78, label %.tail83.thread

.tail78:                                          ; preds = %sub_180
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 78
  br i1 %i.aa, label %.thread, label %.tail83.thread

.tail83:                                          ; preds = %sub_0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 78
  br i1 %i.ad, label %.thread, label %.tail83.thread

.tail83.thread:                                   ; preds = %sub_0, %.tail78, %sub_180, %.tail83
  %i.ae = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.4, i64 noundef 4) #13
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread, label %.loopexit

bb.a:                                             ; preds = %.tail74, %sub_0, %.tail
  %.sink199 = phi i64 [ 2, %.tail ], [ 1, %sub_0 ], [ 3, %.tail74 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.sink199 ; 3 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !28
  store i32 0, ptr %i.l, align 4, !tbaa !29
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30  ; 2 uses
  %i.ai = add i8 %i.ah, -65
  %or.cond = icmp ult i8 %i.ai, 26
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.thread:                                          ; preds = %.tail83.thread, %.tail83, %.tail78
  %.sink200 = phi i64 [ 3, %.tail78 ], [ 2, %.tail83 ], [ 4, %.tail83.thread ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink200 ; 3 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !28
  store i32 -1, ptr %i.l, align 4, !tbaa !29
  %.pr = load i8, ptr %i.aj, align 1, !tbaa !30   ; 2 uses
  %.not31108 = icmp eq i8 %.pr, 0
  br i1 %.not31108, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %.thread
  %.not43171 = phi i1 [ true, %.thread ], [ false, %bb.a ]
  %i.ak = phi ptr [ %i.aj, %.thread ], [ %i.ag, %bb.a ]
  %i.al = phi i8 [ %.pr, %.thread ], [ %i.ah, %bb.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.am = phi i8 [ %i.at, %bb.d ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %.021109 = phi ptr [ %i.as, %bb.d ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %i.an = phi i64 [ %i.ar, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.not32 = icmp sgt i8 %i.am, -1
  br i1 %.not32, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.ao = icmp eq i8 %i.am, 46
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.021109, ptr noundef nonnull dereferenceable(7) @.str.5, i64 noundef 6) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.021109, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30  ; 2 uses
  %.not31 = icmp eq i8 %i.at, 0
  br i1 %.not31, label %.critedge, label %.lr.ph, !llvm.loop !45

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.au = phi i64 [ %i.ar, %bb.d ], [ %i.an, %bb.c ]
  br i1 %.not43171, label %.critedge.thread, label %bb.ay

.critedge.thread:                                 ; preds = %.thread, %.critedge
  %i.av = phi i64 [ %i.au, %.critedge ], [ 0, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %eat.exit13.i, %.critedge.thread
  %i.ax = phi i64 [ %i.av, %.critedge.thread ], [ %.pre138, %eat.exit13.i ]
  %i.ay = phi i64 [ 0, %.critedge.thread ], [ %.pre, %eat.exit13.i ] ; 3 uses
  %.010.i = phi i1 [ true, %.critedge.thread ], [ false, %eat.exit13.i ]
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %peek.exit.i.i, label %bb.f

peek.exit.i.i:                                    ; preds = %bb.e
  %i.ba = load ptr, ptr %5, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !30
  %i.bd = icmp eq i8 %i.bc, 69
  br i1 %i.bd, label %eat.exit.i, label %bb.f

eat.exit.i:                                       ; preds = %peek.exit.i.i
  %i.be = add nuw i64 %i.ay, 1
  store i64 %i.be, ptr %i.f, align 8, !tbaa !23
  br label %demangle_legacy_path.exit

bb.f:                                             ; preds = %peek.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %5)
  %i.bf = load i8, ptr %i.j, align 2, !tbaa !26, !range !32, !noundef !33
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %is_rust_hash.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !23  ; 3 uses
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !20
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %peek.exit.i, label %is_rust_hash.exit.i

peek.exit.i:                                      ; preds = %bb.g
  %i.bk = load ptr, ptr %5, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = icmp eq i8 %i.bm, 69
  br i1 %i.bn, label %bb.h, label %is_rust_hash.exit.i

bb.h:                                             ; preds = %peek.exit.i
  %.val.i = load ptr, ptr %4, align 8, !tbaa !35  ; 2 uses
  %.val11.i = load i64, ptr %i.aw, align 8        ; 2 uses
  %i.bo = load i8, ptr %.val.i, align 1, !tbaa !30
  %.not.i.i = icmp eq i8 %i.bo, 104
  br i1 %.not.i.i, label %.preheader.i.i, label %is_rust_hash.exit.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.bp = icmp ult i64 %.val11.i, 2
  br i1 %i.bp, label %peek.exit.i12.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bq = add nuw i64 %.072.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, %.val11.i
  br i1 %exitcond.not.i.i, label %peek.exit.i12.i, label %.lr.ph.i.i, !llvm.loop !46

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.i
  %.072.i.i = phi i64 [ %i.bq, %bb.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.072.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30  ; 2 uses
  %i.bt = add i8 %i.bs, -48
  %or.cond.i.i = icmp ult i8 %i.bt, 10
  %i.bu = add i8 %i.bs, -97
  %or.cond11.i.i = icmp ult i8 %i.bu, 6
  %or.cond1.i.i = or i1 %or.cond.i.i, %or.cond11.i.i
  br i1 %or.cond1.i.i, label %bb.i, label %is_rust_hash.exit.i

peek.exit.i12.i:                                  ; preds = %.preheader.i.i, %bb.i
  %i.bv = add nuw i64 %i.bh, 1
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !23
  br label %eat.exit13.thread.i

is_rust_hash.exit.i:                              ; preds = %.lr.ph.i.i, %bb.h, %peek.exit.i, %bb.g, %bb.f
  %.pre67.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32 ; 2 uses
  br i1 %.010.i, label %print_str.exit.i, label %bb.j

bb.j:                                             ; preds = %is_rust_hash.exit.i
  %6 = trunc nuw i8 %.pre67.i to i1
  br i1 %6, label %print_legacy_ident.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %eat.exit13.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.by(ptr noundef nonnull @.str.7, i64 noundef 2, ptr noundef %i.bz) #12, !inline_history !47
  %.pre.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  br label %print_str.exit.i

print_str.exit.i:                                 ; preds = %bb.l, %is_rust_hash.exit.i
  %7 = phi i8 [ %.pre.i, %bb.l ], [ %.pre67.i, %is_rust_hash.exit.i ]
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %print_legacy_ident.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %print_str.exit.i
  %.sroa.6.0.copyload.i = load i64, ptr %i.aw, align 8 ; 2 uses
  %.pre139 = load i8, ptr %i.h, align 1, !tbaa !25, !range !32
  %i.ca = trunc nuw i8 %.pre139 to i1
  %.sroa.0.0.copyload88.i = load ptr, ptr %4, align 8 ; 4 uses
  br i1 %i.ca, label %eat.exit13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.not.i14.i = icmp eq ptr %.sroa.10.0.copyload.i, null
  br i1 %.not.i14.i, label %bb.o, label %print_legacy_ident.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cb = load i8, ptr %.sroa.0.0.copyload88.i, align 1, !tbaa !30
  %i.cc = icmp eq i8 %i.cb, 95
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload88.i, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %i.cf = icmp eq i8 %i.ce, 36                    ; 2 uses
  %i.cg = sext i1 %i.cf to i64
  %spec.select.i = add i64 %.sroa.6.0.copyload.i, %i.cg
  %spec.select24.i = select i1 %i.cf, ptr %i.cd, ptr %.sroa.0.0.copyload88.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %.promoted151.i.i = phi ptr [ %.sroa.0.0.copyload88.i, %bb.o ], [ %spec.select24.i, %bb.p ] ; 2 uses
  %i.ch = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %i.ch, label %.critedge92.i.i, label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %bb.q, %bb.aw
  %i.ci = phi i64 [ %i.id, %bb.aw ], [ %.sroa.6.0.i, %bb.q ] ; 17 uses
  %i.cj = phi ptr [ %i.ic, %bb.aw ], [ %.promoted151.i.i, %bb.q ] ; 25 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !30
  switch i8 %i.ck, label %.preheader.i18.i [
    i8 46, label %bb.r
    i8 36, label %bb.x
  ]

bb.r:                                             ; preds = %.lr.ph155.i.i
  %.not87.i.i = icmp eq i64 %i.ci, 1
  br i1 %.not87.i.i, label %._crit_edge.i.i, label %bb.s

._crit_edge.i.i:                                  ; preds = %bb.r
  %.pre191.i.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %.pre142 = load i8, ptr %i.h, align 1, !range !32
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !30
  %i.cn = icmp eq i8 %i.cm, 46
  %.pre192.i.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32 ; 2 uses
  %.pre143 = load i8, ptr %i.h, align 1, !range !32 ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.co = trunc nuw i8 %.pre192.i.i to i1
  %i.cp = trunc nuw i8 %.pre143 to i1
  %or.cond45 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond45, label %print_str.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.cq(ptr noundef nonnull @.str.7, i64 noundef 2, ptr noundef %i.cr) #12, !inline_history !48
  br label %print_str.exit.i.i

print_str.exit.i.i:                               ; preds = %bb.u, %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.ct = add i64 %i.ci, -2
  br label %bb.aw

bb.v:                                             ; preds = %bb.s, %._crit_edge.i.i
  %i.cu = phi i8 [ %.pre142, %._crit_edge.i.i ], [ %.pre143, %bb.s ]
  %i.cv = phi i8 [ %.pre191.i.i, %._crit_edge.i.i ], [ %.pre192.i.i, %bb.s ]
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = trunc nuw i8 %i.cu to i1
  %or.cond47 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond47, label %print_str.exit93.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.cy(ptr noundef nonnull @.str.8, i64 noundef 1, ptr noundef %i.cz) #12, !inline_history !48
  br label %print_str.exit93.i.i

print_str.exit93.i.i:                             ; preds = %bb.w, %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.db = add i64 %i.ci, -1
  br label %bb.aw

bb.x:                                             ; preds = %.lr.ph155.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  %i.dd = add i64 %i.ci, -1
  %i.de = call ptr @memchr(ptr noundef nonnull %i.dc, i32 noundef 36, i64 noundef %i.dd) #13 ; 2 uses
  %.not85.i.i = icmp eq ptr %i.de, null
  br i1 %.not85.i.i, label %.critedge92.i.i, label %sub_0.i.i

sub_0.i.i:                                        ; preds = %bb.x
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = load i8, ptr %i.dc, align 1
  switch i8 %i.di, label %.critedge92.i.i [
    i8 83, label %.tail.i.i
    i8 66, label %.tail113.i.i
    i8 82, label %.tail117.i.i
    i8 76, label %.tail121.i.i
    i8 71, label %.tail125.i.i
    i8 67, label %bb.am
    i8 117, label %bb.ao
  ]

.tail.i.i:                                        ; preds = %sub_0.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 80
  br i1 %i.dl, label %bb.y, label %.critedge92.i.i

bb.y:                                             ; preds = %.tail.i.i
  %i.dm = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i8, ptr %i.h, align 1, !range !32
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond49 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond49, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.dq(ptr noundef nonnull @.str.10, i64 noundef 1, ptr noundef %i.dr) #12, !inline_history !48
  br label %.thread.i.i

.tail113.i.i:                                     ; preds = %sub_0.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 80
  br i1 %i.du, label %bb.aa, label %.critedge92.i.i

bb.aa:                                            ; preds = %.tail113.i.i
  %i.dv = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load i8, ptr %i.h, align 1, !range !32
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond51 = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond51, label %.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.dz(ptr noundef nonnull @.str.12, i64 noundef 1, ptr noundef %i.ea) #12, !inline_history !48
  br label %.thread.i.i

.tail117.i.i:                                     ; preds = %sub_0.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  switch i8 %i.ec, label %.critedge92.i.i [
    i8 70, label %bb.ac
    i8 80, label %bb.ak
  ]

bb.ac:                                            ; preds = %.tail117.i.i
  %i.ed = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = load i8, ptr %i.h, align 1, !range !32
  %i.eg = trunc nuw i8 %i.ef to i1
  %or.cond53 = select i1 %i.ee, i1 true, i1 %i.eg
  br i1 %or.cond53, label %.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.eh(ptr noundef nonnull @.str.14, i64 noundef 1, ptr noundef %i.ei) #12, !inline_history !48
  br label %.thread.i.i

.tail121.i.i:                                     ; preds = %sub_0.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.ek = load i8, ptr %i.ej, align 1
  switch i8 %i.ek, label %.critedge92.i.i [
    i8 84, label %bb.ae
    i8 80, label %bb.ai
  ]

bb.ae:                                            ; preds = %.tail121.i.i
  %i.el = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load i8, ptr %i.h, align 1, !range !32
  %i.eo = trunc nuw i8 %i.en to i1
  %or.cond55 = select i1 %i.em, i1 true, i1 %i.eo
  br i1 %or.cond55, label %.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.ep(ptr noundef nonnull @.str.16, i64 noundef 1, ptr noundef %i.eq) #12, !inline_history !48
  br label %.thread.i.i

.tail125.i.i:                                     ; preds = %sub_0.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.es, 84
  br i1 %i.et, label %bb.ag, label %.critedge92.i.i

bb.ag:                                            ; preds = %.tail125.i.i
  %i.eu = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = load i8, ptr %i.h, align 1, !range !32
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond57 = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond57, label %.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ey = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.ey(ptr noundef nonnull @.str.18, i64 noundef 1, ptr noundef %i.ez) #12, !inline_history !48
  br label %.thread.i.i

bb.ai:                                            ; preds = %.tail121.i.i
  %i.fa = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i8, ptr %i.h, align 1, !range !32
  %i.fd = trunc nuw i8 %i.fc to i1
  %or.cond59 = select i1 %i.fb, i1 true, i1 %i.fd
  br i1 %or.cond59, label %.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.fe(ptr noundef nonnull @.str.20, i64 noundef 1, ptr noundef %i.ff) #12, !inline_history !48
  br label %.thread.i.i

bb.ak:                                            ; preds = %.tail117.i.i
  %i.fg = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = load i8, ptr %i.h, align 1, !range !32
  %i.fj = trunc nuw i8 %i.fi to i1
  %or.cond61 = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %or.cond61, label %.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.fk(ptr noundef nonnull @.str.22, i64 noundef 1, ptr noundef %i.fl) #12, !inline_history !48
  br label %.thread.i.i

bb.am:                                            ; preds = %sub_0.i.i
  %i.fm = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = load i8, ptr %i.h, align 1, !range !32
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond63 = select i1 %i.fn, i1 true, i1 %i.fp
  br i1 %or.cond63, label %.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.fq(ptr noundef nonnull @.str.24, i64 noundef 1, ptr noundef %i.fr) #12, !inline_history !48
  br label %.thread.i.i

bb.ao:                                            ; preds = %sub_0.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 4 uses
  %i.ft = add i64 %i.dh, -1                       ; 6 uses
  %i.fu = icmp ugt i64 %i.ft, 1
  br i1 %i.fu, label %.lr.ph.i16.i, label %.critedge.preheader.i.i

bb.ap:                                            ; preds = %.lr.ph.i16.i
  %i.fv = add nuw i64 %.076144.i.i, 1             ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.fv, %i.ft
  br i1 %exitcond.not.i17.i, label %.critedge.i.i.preheader, label %.lr.ph.i16.i, !llvm.loop !49

.critedge.preheader.i.i:                          ; preds = %bb.ao
  %.not178.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not178.i.i, label %.critedge.preheader.i..thread239.i_crit_edge.i, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.ap, %.critedge.preheader.i.i
  %i.fw = add i64 %i.df, -2
  %xtraiter = and i64 %i.ft, 1
  %i.fx = icmp eq i64 %i.fw, %i.dg
  br i1 %i.fx, label %.critedge.i.i.epil.preheader, label %.critedge.i.i.preheader.new

.critedge.i.i.preheader.new:                      ; preds = %.critedge.i.i.preheader
  %unroll_iter = and i64 %i.ft, -2
  br label %.critedge.i.i

.critedge.preheader.i..thread239.i_crit_edge.i:   ; preds = %.critedge.preheader.i.i
  %.pre68.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %.pre140 = load i8, ptr %i.h, align 1, !range !32
  br label %.thread239.i.i

.lr.ph.i16.i:                                     ; preds = %bb.ao, %bb.ap
  %.076144.i.i = phi i64 [ %i.fv, %bb.ap ], [ 1, %bb.ao ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.076144.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !30  ; 2 uses
  %i.ga = add i8 %i.fz, -48
  %or.cond88.i.i = icmp ult i8 %i.ga, 10
  %i.gb = add i8 %i.fz, -97
  %or.cond89.i.i = icmp ult i8 %i.gb, 6
  %or.cond137.i.i = or i1 %or.cond88.i.i, %or.cond89.i.i
  br i1 %or.cond137.i.i, label %bb.ap, label %.critedge92.i.i

.critedge._crit_edge.i.i.unr-lcssa:               ; preds = %.critedge.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge._crit_edge.i.i, label %.critedge.i.i.epil.preheader

.critedge.i.i.epil.preheader:                     ; preds = %.critedge._crit_edge.i.i.unr-lcssa, %.critedge.i.i.preheader
  %.074146.i.i.epil.init = phi i64 [ 0, %.critedge.i.i.preheader ], [ %i.ha, %.critedge._crit_edge.i.i.unr-lcssa ]
  %.075145.i.i.epil.init = phi i32 [ 0, %.critedge.i.i.preheader ], [ %i.gz, %.critedge._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod240 = trunc i64 %i.ft to i1
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.gc = shl i32 %.075145.i.i.epil.init, 4       ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.074146.i.i.epil.init
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30  ; 2 uses
  %i.gf = icmp sgt i8 %i.ge, 96
  %.v.i.i.i.epil = select i1 %i.gf, i8 -87, i8 -48
  %i.gg = add i8 %.v.i.i.i.epil, %i.ge
  %i.gh = zext i8 %i.gg to i32
  %i.gi = or i32 %i.gc, %i.gh
  br label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge._crit_edge.i.i.unr-lcssa, %.critedge.i.i.epil.preheader
  %.lcssa223 = phi i32 [ %i.gs, %.critedge._crit_edge.i.i.unr-lcssa ], [ %i.gc, %.critedge.i.i.epil.preheader ]
  %.lcssa = phi i32 [ %i.gz, %.critedge._crit_edge.i.i.unr-lcssa ], [ %i.gi, %.critedge.i.i.epil.preheader ] ; 4 uses
  %i.gj = icmp ult i32 %.lcssa223, 55296
  %i.gk = add i32 %.lcssa, -57344
  %or.cond.i15.i = icmp ult i32 %i.gk, 1056767
  %or.cond90.i.i = or i1 %i.gj, %or.cond.i15.i
  br i1 %or.cond90.i.i, label %bb.aq, label %.critedge92.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i, %.critedge.i.i.preheader.new
  %.074146.i.i = phi i64 [ 0, %.critedge.i.i.preheader.new ], [ %i.ha, %.critedge.i.i ] ; 3 uses
  %.075145.i.i = phi i32 [ 0, %.critedge.i.i.preheader.new ], [ %i.gz, %.critedge.i.i ]
  %niter = phi i64 [ 0, %.critedge.i.i.preheader.new ], [ %niter.next.1, %.critedge.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.074146.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !30  ; 2 uses
  %i.gn = icmp sgt i8 %i.gm, 96
  %.v.i.i.i = select i1 %i.gn, i8 -87, i8 -48
  %i.go = add i8 %.v.i.i.i, %i.gm
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl i32 %.075145.i.i, 8
  %i.gr = shl nuw nsw i32 %i.gp, 4
  %i.gs = or i32 %i.gq, %i.gr                     ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.074146.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !30  ; 2 uses
  %i.gw = icmp sgt i8 %i.gv, 96
  %.v.i.i.i.1 = select i1 %i.gw, i8 -87, i8 -48
  %i.gx = add i8 %.v.i.i.i.1, %i.gv
  %i.gy = zext i8 %i.gx to i32
  %i.gz = or i32 %i.gs, %i.gy                     ; 3 uses
  %i.ha = add nuw i64 %.074146.i.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge._crit_edge.i.i.unr-lcssa, label %.critedge.i.i, !llvm.loop !50

bb.aq:                                            ; preds = %.critedge._crit_edge.i.i
  %i.hb = add nsw i32 %.lcssa, -32
  %or.cond3.i.i = icmp ult i32 %i.hb, 95
  %.pre69.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32 ; 2 uses
  %.pre141 = load i8, ptr %i.h, align 1, !range !32 ; 2 uses
  br i1 %or.cond3.i.i, label %bb.ar, label %.thread239.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.hc = trunc nuw nsw i32 %.lcssa to i8
  store i8 %i.hc, ptr %i.a, align 1, !tbaa !30
  %i.hd = trunc nuw i8 %.pre69.i to i1
  %i.he = trunc nuw i8 %.pre141 to i1
  %or.cond65 = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond65, label %print_str.exit102.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.hf(ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.hg) #12, !inline_history !48
  br label %print_str.exit102.i.i

print_str.exit102.i.i:                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread.i.i

.thread239.i.i:                                   ; preds = %bb.aq, %.critedge.preheader.i..thread239.i_crit_edge.i
  %i.hh = phi i8 [ %.pre141, %bb.aq ], [ %.pre140, %.critedge.preheader.i..thread239.i_crit_edge.i ]
  %i.hi = phi i8 [ %.pre69.i, %bb.aq ], [ %.pre68.i, %.critedge.preheader.i..thread239.i_crit_edge.i ]
  %.075.lcssa238242.i.i = phi i32 [ %.lcssa, %bb.aq ], [ 0, %.critedge.preheader.i..thread239.i_crit_edge.i ]
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = trunc nuw i8 %i.hh to i1
  %or.cond67 = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %or.cond67, label %print_str.exit103.i.i, label %9

9:                                                ; preds = %.thread239.i.i
  %10 = load ptr, ptr %i.e, align 8, !tbaa !22
  %11 = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %10(ptr noundef nonnull @.str.25, i64 noundef 3, ptr noundef %11) #12, !inline_history !48
  br label %print_str.exit103.i.i

print_str.exit103.i.i:                            ; preds = %9, %.thread239.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.hl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.075.lcssa238242.i.i) #12 ; 0 uses
  %12 = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %13 = trunc nuw i8 %12 to i1
  %14 = load i8, ptr %i.h, align 1, !range !32
  %15 = trunc nuw i8 %14 to i1
  %or.cond69 = select i1 %13, i1 true, i1 %15
  br i1 %or.cond69, label %print_str.exit105.i.i, label %print_str.exit104.i.i

print_str.exit104.i.i:                            ; preds = %print_str.exit103.i.i
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.hn = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.hm(ptr noundef nonnull %i.b, i64 noundef %16, ptr noundef %i.hn) #12, !inline_history !48
  %.pre.i.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %17 = trunc nuw i8 %.pre.i.i to i1
  %.pre70.i = load i8, ptr %i.h, align 1, !range !32
  %18 = trunc nuw i8 %.pre70.i to i1
  %or.cond70 = select i1 %17, i1 true, i1 %18
  br i1 %or.cond70, label %print_str.exit105.i.i, label %19

19:                                               ; preds = %print_str.exit104.i.i
  %20 = load ptr, ptr %i.e, align 8, !tbaa !22
  %21 = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %20(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %21) #12, !inline_history !48
  br label %print_str.exit105.i.i

print_str.exit105.i.i:                            ; preds = %19, %print_str.exit104.i.i, %print_str.exit103.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %print_str.exit105.i.i, %print_str.exit102.i.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.ho = add i64 %i.dh, 2                        ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ho
  %i.hq = sub i64 %i.ci, %i.ho
  br label %bb.aw

.preheader.i18.i:                                 ; preds = %.lr.ph155.i.i, %bb.av
  %.0148.i.i = phi i64 [ %i.ib, %bb.av ], [ 0, %.lr.ph155.i.i ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0148.i.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  switch i8 %i.hs, label %bb.av [
    i8 36, label %bb.at
    i8 46, label %bb.at
  ]

bb.at:                                            ; preds = %.preheader.i18.i, %.preheader.i18.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0148.i.i
  %i.hu = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = load i8, ptr %i.h, align 1, !range !32
  %i.hx = trunc nuw i8 %i.hw to i1
  %or.cond72 = select i1 %i.hv, i1 true, i1 %i.hx
  br i1 %or.cond72, label %print_str.exit106.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hy = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.hz = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.hy(ptr noundef nonnull %i.cj, i64 noundef %.0148.i.i, ptr noundef %i.hz) #12, !inline_history !48
  br label %print_str.exit106.i.i

print_str.exit106.i.i:                            ; preds = %bb.au, %bb.at
  %i.ia = sub nuw i64 %i.ci, %.0148.i.i
  br label %bb.aw

bb.av:                                            ; preds = %.preheader.i18.i
  %i.ib = add nuw i64 %.0148.i.i, 1               ; 2 uses
  %exitcond189.not.i.i = icmp eq i64 %i.ib, %i.ci
  br i1 %exitcond189.not.i.i, label %.critedge92.i.i, label %.preheader.i18.i, !llvm.loop !51

bb.aw:                                            ; preds = %print_str.exit106.i.i, %.thread.i.i, %print_str.exit93.i.i, %print_str.exit.i.i
  %i.ic = phi ptr [ %i.ht, %print_str.exit106.i.i ], [ %i.hp, %.thread.i.i ], [ %i.da, %print_str.exit93.i.i ], [ %i.cs, %print_str.exit.i.i ] ; 2 uses
  %i.id = phi i64 [ %i.ia, %print_str.exit106.i.i ], [ %i.hq, %.thread.i.i ], [ %i.db, %print_str.exit93.i.i ], [ %i.ct, %print_str.exit.i.i ] ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %.critedge92.i.i, label %.lr.ph155.i.i

.critedge92.i.i:                                  ; preds = %bb.aw, %.critedge._crit_edge.i.i, %.tail125.i.i, %.tail121.i.i, %.tail117.i.i, %.tail113.i.i, %.tail.i.i, %sub_0.i.i, %bb.x, %.lr.ph.i16.i, %bb.av, %bb.q
  %.lcssa.sink.i.i = phi i64 [ %i.ci, %.lr.ph.i16.i ], [ %i.ci, %bb.av ], [ 0, %bb.q ], [ 0, %bb.aw ], [ %i.ci, %bb.x ], [ %i.ci, %.critedge._crit_edge.i.i ], [ %i.ci, %.tail.i.i ], [ %i.ci, %sub_0.i.i ], [ %i.ci, %.tail113.i.i ], [ %i.ci, %.tail117.i.i ], [ %i.ci, %.tail121.i.i ], [ %i.ci, %.tail125.i.i ]
  %.lcssa152.sink.i.i = phi ptr [ %i.cj, %.lr.ph.i16.i ], [ %i.cj, %bb.av ], [ %.promoted151.i.i, %bb.q ], [ %i.ic, %bb.aw ], [ %i.cj, %bb.x ], [ %i.cj, %.critedge._crit_edge.i.i ], [ %i.cj, %.tail.i.i ], [ %i.cj, %sub_0.i.i ], [ %i.cj, %.tail113.i.i ], [ %i.cj, %.tail117.i.i ], [ %i.cj, %.tail121.i.i ], [ %i.cj, %.tail125.i.i ]
  %i.if = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %print_legacy_ident.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %.critedge92.i.i
  %i.ih = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %eat.exit13.i, label %print_legacy_ident.exit.i

print_legacy_ident.exit.i:                        ; preds = %bb.ax
  %i.ij = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ik = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.ij(ptr noundef %.lcssa152.sink.i.i, i64 noundef %.lcssa.sink.i.i, ptr noundef %i.ik) #12, !inline_history !48
  %.pre71.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %i.il = trunc nuw i8 %.pre71.i to i1
  br i1 %i.il, label %print_legacy_ident.exit.thread.i, label %eat.exit13.i

print_legacy_ident.exit.thread.i:                 ; preds = %print_legacy_ident.exit.i, %.critedge92.i.i, %bb.n, %print_str.exit.i, %bb.j
  store i8 1, ptr %i.g, align 8, !tbaa !24
  br label %eat.exit13.thread.i

eat.exit13.thread.i:                              ; preds = %print_legacy_ident.exit.thread.i, %peek.exit.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %demangle_legacy_path.exit

eat.exit13.i:                                     ; preds = %bb.k, %print_legacy_ident.exit.i, %bb.ax, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pre = load i64, ptr %i.f, align 8, !tbaa !23
  %.pre138 = load i64, ptr %i.c, align 8, !tbaa !20
  br label %bb.e

bb.ay:                                            ; preds = %.critedge
  call fastcc void @demangle_path(ptr noundef %5, i1 noundef zeroext true)
  %i.im = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %demangle_legacy_path.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.io = load i64, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.ip = load i64, ptr %i.c, align 8, !tbaa !20
  %i.iq = icmp ult i64 %i.io, %i.ip
  br i1 %i.iq, label %peek.exit, label %demangle_legacy_path.exit

peek.exit:                                        ; preds = %bb.az
  %i.ir = load ptr, ptr %5, align 8, !tbaa !28
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.io
  %i.it = load i8, ptr %i.is, align 1, !tbaa !30
  %i.iu = add i8 %i.it, -65
  %or.cond201 = icmp ult i8 %i.iu, 26
  br i1 %or.cond201, label %bb.ba, label %demangle_legacy_path.exit

bb.ba:                                            ; preds = %peek.exit
  store i8 1, ptr %i.h, align 1, !tbaa !25
  call fastcc void @demangle_path(ptr noundef %5, i1 noundef zeroext false)
  br label %demangle_legacy_path.exit

demangle_legacy_path.exit:                        ; preds = %eat.exit13.thread.i, %eat.exit.i, %bb.ay, %bb.az, %peek.exit, %bb.ba
  %i.iv = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %demangle_legacy_path.exit
  %i.ix = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.iy = load i64, ptr %i.f, align 8, !tbaa !23  ; 3 uses
  %.not33 = icmp eq i64 %i.ix, %i.iy
  br i1 %.not33, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iz = load ptr, ptr %5, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !30  ; 2 uses
  %.not34112 = icmp eq i8 %i.jb, 0
  br i1 %.not34112, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.bc, %bb.be
  %i.jc = phi i8 [ %i.ji, %bb.be ], [ %i.jb, %bb.bc ] ; 3 uses
  %.0113 = phi ptr [ %i.jh, %bb.be ], [ %i.ja, %bb.bc ]
  %i.jd = and i8 %i.jc, -33
  %i.je = add i8 %i.jd, -65
  %or.cond87 = icmp ult i8 %i.je, 26
  br i1 %or.cond87, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph114
  %i.jf = add i8 %i.jc, -48
  %or.cond37 = icmp ult i8 %i.jf, 10
  %i.jg = icmp eq i8 %i.jc, 46
  %or.cond73 = or i1 %i.jg, %or.cond37
  br i1 %or.cond73, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd, %.lr.ph114
  %i.jh = getelementptr inbounds nuw i8, ptr %.0113, i64 1 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !30  ; 2 uses
  %.not34 = icmp eq i8 %i.ji, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph114, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.be, %bb.bc
  %i.jj = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge
  %i.jl = sub i64 %i.ix, %i.iy
  %i.jm = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.jn = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.jm(ptr noundef nonnull %i.ja, i64 noundef %i.jl, ptr noundef %i.jn) #12, !inline_history !0
  %.pre144 = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %i.jo = trunc nuw i8 %.pre144 to i1
  %i.jp = xor i1 %i.jo, true
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.bd, %demangle_legacy_path.exit, %bb.bb, %._crit_edge, %bb.bf, %bb.a, %.tail83.thread
  %.2 = phi i1 [ false, %bb.bd ], [ false, %demangle_legacy_path.exit ], [ false, %bb.a ], [ false, %.tail83.thread ], [ %i.jp, %bb.bf ], [ true, %._crit_edge ], [ true, %bb.bb ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define internal fastcc void @demangle_path(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 7 uses
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.rust_mangled_ident, align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %common.ret304

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 29 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 13 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %peek.exit.i, label %next.exit.thread

peek.exit.i:                                      ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !28     ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 3 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i
  %i.n = add nuw i64 %i.g, 1                      ; 11 uses
  store i64 %i.n, ptr %i.f, align 8, !tbaa !23
  switch i8 %i.m, label %next.exit.thread [
    i8 67, label %bb.d
    i8 78, label %bb.q
    i8 77, label %bb.aw
    i8 88, label %bb.aw
    i8 89, label %.thread
    i8 73, label %bb.bi
    i8 66, label %bb.ca
  ]

bb.d:                                             ; preds = %next.exit
  %i.o = icmp ult i64 %i.n, %i.i
  br i1 %i.o, label %peek.exit.i.i.i, label %parse_disambiguator.exit

peek.exit.i.i.i:                                  ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30
  %i.r = icmp eq i8 %i.q, 115
  br i1 %i.r, label %bb.e, label %parse_disambiguator.exit

bb.e:                                             ; preds = %peek.exit.i.i.i
  %i.s = add nuw i64 %i.g, 2                      ; 4 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !23
  %i.t = icmp ult i64 %i.s, %i.i
  br i1 %i.t, label %peek.exit.i.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.i.i.i.preheader:                         ; preds = %peek.exit.i.i.i.i, %bb.e
  br label %eat.exit.i.i.i

peek.exit.i.i.i.i:                                ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %eat.exit.thread.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.thread.i.i.i:                            ; preds = %peek.exit.i.i.i.i
  %i.x = add nuw i64 %i.g, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !23
  br label %parse_disambiguator.exit

eat.exit.i.i.i:                                   ; preds = %eat.exit.i.i.i.preheader, %bb.i
  %i.y = phi i64 [ %i.af, %bb.i ], [ %i.s, %eat.exit.i.i.i.preheader ] ; 6 uses
  %.027.i.i.i = phi i64 [ %.1.i.i.i, %bb.i ], [ 0, %eat.exit.i.i.i.preheader ] ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %peek.exit.i33.i.i.i, label %bb.f

peek.exit.i33.i.i.i:                              ; preds = %eat.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = icmp eq i8 %i.ab, 95
  br i1 %i.ac, label %bb.j, label %bb.f

bb.f:                                             ; preds = %peek.exit.i33.i.i.i, %eat.exit.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %peek.exit.i35.i.i.i

peek.exit.i35.i.i.i:                              ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30  ; 5 uses
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %next.exit.i.i.i

next.exit.i.i.i:                                  ; preds = %peek.exit.i35.i.i.i
  %i.af = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !tbaa !23
  %i.ag = mul i64 %.027.i.i.i, 62
  %i.ah = zext nneg i8 %i.ae to i64
  %i.ai = add i8 %i.ae, -48
  %or.cond.i.i.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %next.exit.i.i.i
  %i.aj = add i8 %i.ae, -97
  %or.cond5.i.i.i = icmp ult i8 %i.aj, 26
  br i1 %or.cond5.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add i8 %i.ae, -65
  %or.cond8.i.i.i = icmp ult i8 %i.ak, 26
  br i1 %or.cond8.i.i.i, label %bb.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.h, %peek.exit.i35.i.i.i, %bb.f
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_disambiguator.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %next.exit.i.i.i
  %.sink.i.i.i = phi i64 [ -48, %next.exit.i.i.i ], [ -87, %bb.g ], [ -29, %bb.h ]
  %.pn.i.i.i = add i64 %i.ag, %i.ah
  %.1.i.i.i = add i64 %.pn.i.i.i, %.sink.i.i.i
  br label %eat.exit.i.i.i, !llvm.loop !1

bb.j:                                             ; preds = %peek.exit.i33.i.i.i
  %i.al = add nuw i64 %i.y, 1
  store i64 %i.al, ptr %i.f, align 8, !tbaa !23
  %i.am = add i64 %.027.i.i.i, 2
  br label %parse_disambiguator.exit

parse_disambiguator.exit:                         ; preds = %bb.d, %peek.exit.i.i.i, %eat.exit.thread.i.i.i, %.critedge.i.i.i, %bb.j
  %.0.i.i = phi i64 [ 0, %bb.d ], [ 0, %peek.exit.i.i.i ], [ 1, %eat.exit.thread.i.i.i ], [ 1, %.critedge.i.i.i ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %2)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !26, !range !32, !noundef !33
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %print_str.exit84

bb.k:                                             ; preds = %parse_disambiguator.exit
  %i.aq = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %print_str.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25, !range !32, !noundef !33
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %print_str.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  tail call void %i.aw(ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef %i.ay) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %.0.i.i) #12 ; 0 uses
  %i.ba = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %print_uint64_hex.exit.thread, label %bb.n

print_uint64_hex.exit.thread:                     ; preds = %print_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit84

bb.n:                                             ; preds = %print_str.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %print_uint64_hex.exit.thread238, label %print_uint64_hex.exit

print_uint64_hex.exit.thread238:                  ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

print_uint64_hex.exit:                            ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
end_hunk_0
