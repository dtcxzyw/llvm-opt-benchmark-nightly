Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/log-rs/original/log-cd931481bdd22470.log.20974458bf7665e8-cgu.0?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [3 x i8] c"OFF", align 1
@1 = private unnamed_addr constant [5 x i8] c"ERROR", align 1
@2 = private unnamed_addr constant [4 x i8] c"WARN", align 1
@3 = private unnamed_addr constant [4 x i8] c"INFO", align 1
@4 = private unnamed_addr constant [5 x i8] c"DEBUG", align 1
@5 = private unnamed_addr constant [5 x i8] c"TRACE", align 1
@_RNvCs2NtN8whqY98_3log15LOG_LEVEL_NAMES = local_unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @0, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@6 = private unnamed_addr constant [110 x i8] c"internal error: entered unreachable code: set_logger_racy must not be used with other initialization functions", align 1
@7 = private unnamed_addr constant [11 x i8] c"src/lib.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\0A\00\00\00\00\00\00\00\1C\06\00\00\0D\00\00\00" }>, align 8
@9 = private unnamed_addr constant [74 x i8] c"attempted to set a logger after the logging system was already initialized", align 1
@10 = private unnamed_addr constant [70 x i8] c"attempted to convert a string that doesn't match an existing log level", align 1
@_RNvCs2NtN8whqY98_3log20MAX_LOG_LEVEL_FILTER = local_unnamed_addr global [8 x i8] zeroinitializer, align 8
@_RNvCs2NtN8whqY98_3log5STATE = internal global [8 x i8] zeroinitializer, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log7enabled, ptr @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log3log, ptr @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log5flush }>, align 8
@_RNvCs2NtN8whqY98_3log6LOGGER.0 = internal unnamed_addr global ptr inttoptr (i64 1 to ptr), align 8
@_RNvCs2NtN8whqY98_3log6LOGGER.1 = internal unnamed_addr global ptr @11, align 8
@_RNvNvCs2NtN8whqY98_3log6logger3NOP = internal constant <{}> zeroinitializer, align 1

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCs2NtN8whqY98_3log10set_logger(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr @_RNvCs2NtN8whqY98_3log5STATE, i64 0, i64 1 acquire monotonic, align 8, !noalias !4 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1         ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.preheader.i, label %_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

.preheader.i:                                     ; preds = %bb.b
  %i.e = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE monotonic, align 8, !noalias !4
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.i, label %_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8, !noalias !4
  store ptr %1, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8, !noalias !4
  store atomic i64 2, ptr @_RNvCs2NtN8whqY98_3log5STATE release, align 8, !noalias !4
  br label %_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void @llvm.x86.sse2.pause(), !noalias !4
  %i.g = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE monotonic, align 8, !noalias !4
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit: ; preds = %.lr.ph.i, %bb.b, %.preheader.i, %bb.c
  %.sroa.0.0.i = xor i1 %i.b, true
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCs2NtN8whqY98_3log15set_logger_racy(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE acquire, align 8
  switch i64 %i.a, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8
  store ptr %1, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8
  store atomic i64 2, ptr @_RNvCs2NtN8whqY98_3log5STATE release, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 221 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { ptr, ptr } @_RNvCs2NtN8whqY98_3log6logger() unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE acquire, align 8
  %i.b = icmp eq i64 %i.a, 2                      ; 2 uses
  %i.c = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8, !nonnull !8
  %i.d = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8, !nonnull !8, !align !9
  %.sroa.3.0 = select i1 %i.b, ptr %i.d, ptr @11
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr @_RNvNvCs2NtN8whqY98_3log6logger3NOP
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i64 0, 6) i64 @_RNvXs0_Cs2NtN8whqY98_3logNtB5_5LevelNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 5                       ; 3 uses
  br i1 %.not, label %bb.f, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.m, %bb.i, %bb.e, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3, %bb.s, %bb.t, %bb.u, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2
  %.sroa.0.0 = phi i64 [ %.mux, %bb.m ], [ 0, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2 ], [ 0, %bb.u ], [ 1, %bb.e ], [ 2, %bb.i ], [ 0, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3 ], [ 4, %bb.q ], [ 0, %bb.s ], [ %spec.select, %bb.v ], [ 0, %bb.t ]
  ret i64 %.sroa.0.0

bb.b:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !10, !noalias !13, !noundef !8 ; 2 uses
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 26
  %i.e = select i1 %i.d, i8 32, i8 0
  %.sroa.013.0.i.153 = or i8 %i.e, %i.b
  %i.f = icmp eq i8 %.sroa.013.0.i.153, 114
  br i1 %i.f, label %bb.c, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !10, !noalias !13, !noundef !8 ; 2 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = select i1 %i.j, i8 32, i8 0
  %.sroa.013.0.i.258 = or i8 %i.k, %i.h
  %i.l = icmp eq i8 %.sroa.013.0.i.258, 114
  br i1 %i.l, label %bb.d, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !10, !noalias !13, !noundef !8 ; 2 uses
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26
  %i.q = select i1 %i.p, i8 32, i8 0
  %.sroa.013.0.i.363 = or i8 %i.q, %i.n
  %i.r = icmp eq i8 %.sroa.013.0.i.363, 111
  br i1 %i.r, label %bb.e, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10, !noalias !13, !noundef !8 ; 2 uses
  %i.u = add i8 %i.t, -65
  %i.v = icmp ult i8 %i.u, 26
  %i.w = select i1 %i.v, i8 32, i8 0
  %.sroa.013.0.i.468 = or i8 %i.w, %i.t
  %i.x = icmp eq i8 %.sroa.013.0.i.468, 114
  br i1 %i.x, label %.loopexit, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.f:                                             ; preds = %bb.a
  %i.y = load i8, ptr %0, align 1, !alias.scope !10, !noalias !13, !noundef !8 ; 2 uses
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  %i.ab = select i1 %i.aa, i8 32, i8 0
  %.sroa.013.0.i = or i8 %i.ab, %i.y
  %i.ac = icmp eq i8 %.sroa.013.0.i, 101
  br i1 %i.ac, label %bb.b, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit: ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.not.1 = icmp eq i64 %1, 4
  br i1 %.not.1, label %bb.j, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.g:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !15, !noalias !17, !noundef !8 ; 2 uses
  %i.af = add i8 %i.ae, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.013.0.i.1.1 = or i8 %i.ah, %i.ae
  %i.ai = icmp eq i8 %.sroa.013.0.i.1.1, 97
  br i1 %i.ai, label %bb.h, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !15, !noalias !17, !noundef !8 ; 2 uses
  %i.al = add i8 %i.ak, -65
  %i.am = icmp ult i8 %i.al, 26
  %i.an = select i1 %i.am, i8 32, i8 0
  %.sroa.013.0.i.1.2 = or i8 %i.an, %i.ak
  %i.ao = icmp eq i8 %.sroa.013.0.i.1.2, 114
  br i1 %i.ao, label %bb.i, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !15, !noalias !17, !noundef !8 ; 2 uses
  %i.ar = add i8 %i.aq, -65
  %i.as = icmp ult i8 %i.ar, 26
  %i.at = select i1 %i.as, i8 32, i8 0
  %.sroa.013.0.i.1.3 = or i8 %i.at, %i.aq
  %i.au = icmp eq i8 %.sroa.013.0.i.1.3, 110
  br i1 %i.au, label %.loopexit, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.j:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  %i.av = load i8, ptr %0, align 1, !alias.scope !15, !noalias !17, !noundef !8 ; 2 uses
  %i.aw = add i8 %i.av, -65
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = select i1 %i.ax, i8 32, i8 0
  %.sroa.013.0.i.1 = or i8 %i.ay, %i.av
  %i.az = icmp eq i8 %.sroa.013.0.i.1, 119
  br i1 %i.az, label %bb.g, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.k:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !19, !noalias !21, !noundef !8 ; 2 uses
  %i.bc = add i8 %i.bb, -65
  %i.bd = icmp ult i8 %i.bc, 26
  %i.be = select i1 %i.bd, i8 32, i8 0
  %.sroa.013.0.i.2.1 = or i8 %i.be, %i.bb
  %i.bf = icmp eq i8 %.sroa.013.0.i.2.1, 110
  br i1 %i.bf, label %bb.l, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !19, !noalias !21, !noundef !8 ; 2 uses
  %i.bi = add i8 %i.bh, -65
  %i.bj = icmp ult i8 %i.bi, 26
  %i.bk = select i1 %i.bj, i8 32, i8 0
  %.sroa.013.0.i.2.2 = or i8 %i.bk, %i.bh
  %i.bl = icmp eq i8 %.sroa.013.0.i.2.2, 102
  br i1 %i.bl, label %bb.m, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !19, !noalias !21, !noundef !8 ; 2 uses
  %i.bo = add i8 %i.bn, -65
  %i.bp = icmp ult i8 %i.bo, 26
  %i.bq = select i1 %i.bp, i8 32, i8 0
  %.sroa.013.0.i.2.3 = or i8 %i.bq, %i.bn
  %i.br = icmp eq i8 %.sroa.013.0.i.2.3, 111      ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.br, %.not.not
  %.mux = select i1 %i.br, i64 3, i64 0
  br i1 %brmerge, label %.loopexit, label %bb.r

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1: ; preds = %bb.j, %bb.g, %bb.h, %bb.i
  %i.bs = load i8, ptr %0, align 1, !alias.scope !19, !noalias !21, !noundef !8 ; 2 uses
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = select i1 %i.bu, i8 32, i8 0
  %.sroa.013.0.i.2 = or i8 %i.bv, %i.bs
  %i.bw = icmp eq i8 %.sroa.013.0.i.2, 105
  br i1 %i.bw, label %bb.k, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2: ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1, %bb.k, %bb.l, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  br i1 %.not, label %bb.r, label %.loopexit

bb.n:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !23, !noalias !25, !noundef !8 ; 2 uses
  %i.bz = add i8 %i.by, -65
  %i.ca = icmp ult i8 %i.bz, 26
  %i.cb = select i1 %i.ca, i8 32, i8 0
  %.sroa.013.0.i.3.1 = or i8 %i.cb, %i.by
  %i.cc = icmp eq i8 %.sroa.013.0.i.3.1, 101
  br i1 %i.cc, label %bb.o, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !23, !noalias !25, !noundef !8 ; 2 uses
  %i.cf = add i8 %i.ce, -65
  %i.cg = icmp ult i8 %i.cf, 26
  %i.ch = select i1 %i.cg, i8 32, i8 0
  %.sroa.013.0.i.3.2 = or i8 %i.ch, %i.ce
  %i.ci = icmp eq i8 %.sroa.013.0.i.3.2, 98
  br i1 %i.ci, label %bb.p, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !23, !noalias !25, !noundef !8 ; 2 uses
  %i.cl = add i8 %i.ck, -65
  %i.cm = icmp ult i8 %i.cl, 26
  %i.cn = select i1 %i.cm, i8 32, i8 0
  %.sroa.013.0.i.3.3 = or i8 %i.cn, %i.ck
  %i.co = icmp eq i8 %.sroa.013.0.i.3.3, 117
  br i1 %i.co, label %bb.q, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !23, !noalias !25, !noundef !8 ; 2 uses
  %i.cr = add i8 %i.cq, -65
  %i.cs = icmp ult i8 %i.cr, 26
  %i.ct = select i1 %i.cs, i8 32, i8 0
  %.sroa.013.0.i.3.4 = or i8 %i.ct, %i.cq
  %i.cu = icmp eq i8 %.sroa.013.0.i.3.4, 103
  br i1 %i.cu, label %.loopexit, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.r:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2, %bb.m
  %i.cv = load i8, ptr %0, align 1, !alias.scope !23, !noalias !25, !noundef !8 ; 2 uses
  %i.cw = add i8 %i.cv, -65
  %i.cx = icmp ult i8 %i.cw, 26
  %i.cy = select i1 %i.cx, i8 32, i8 0
  %.sroa.013.0.i.3 = or i8 %i.cy, %i.cv
  %i.cz = icmp eq i8 %.sroa.013.0.i.3, 100
  br i1 %i.cz, label %bb.n, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.s:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !27, !noalias !29, !noundef !8 ; 2 uses
  %i.dc = add i8 %i.db, -65
  %i.dd = icmp ult i8 %i.dc, 26
  %i.de = select i1 %i.dd, i8 32, i8 0
  %.sroa.013.0.i.4.1 = or i8 %i.de, %i.db
  %i.df = icmp eq i8 %.sroa.013.0.i.4.1, 114
  br i1 %i.df, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !27, !noalias !29, !noundef !8 ; 2 uses
  %i.di = add i8 %i.dh, -65
  %i.dj = icmp ult i8 %i.di, 26
  %i.dk = select i1 %i.dj, i8 32, i8 0
  %.sroa.013.0.i.4.2 = or i8 %i.dk, %i.dh
  %i.dl = icmp eq i8 %.sroa.013.0.i.4.2, 97
  br i1 %i.dl, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !27, !noalias !29, !noundef !8 ; 2 uses
  %i.do = add i8 %i.dn, -65
  %i.dp = icmp ult i8 %i.do, 26
  %i.dq = select i1 %i.dp, i8 32, i8 0
  %.sroa.013.0.i.4.3 = or i8 %i.dq, %i.dn
  %i.dr = icmp eq i8 %.sroa.013.0.i.4.3, 99
  br i1 %i.dr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !27, !noalias !29, !noundef !8 ; 2 uses
  %i.du = add i8 %i.dt, -65
  %i.dv = icmp ult i8 %i.du, 26
  %i.dw = select i1 %i.dv, i8 32, i8 0
  %.sroa.013.0.i.4.4 = or i8 %i.dw, %i.dt
  %i.dx = icmp eq i8 %.sroa.013.0.i.4.4, 101
  %spec.select = select i1 %i.dx, i64 5, i64 0
  br label %.loopexit

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3: ; preds = %bb.r, %bb.n, %bb.o, %bb.p, %bb.q
  %i.dy = load i8, ptr %0, align 1, !alias.scope !27, !noalias !29, !noundef !8 ; 2 uses
  %i.dz = add i8 %i.dy, -65
  %i.ea = icmp ult i8 %i.dz, 26
  %i.eb = select i1 %i.ea, i8 32, i8 0
  %.sroa.013.0.i.4 = or i8 %i.eb, %i.dy
  %i.ec = icmp eq i8 %.sroa.013.0.i.4, 116
  br i1 %i.ec, label %bb.s, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs2NtN8whqY98_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE acquire, align 8
  %i.b = icmp eq i64 %i.a, 2                      ; 2 uses
  %i.c = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8, !nonnull !8
  %i.d = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8, !nonnull !8, !align !9
  %.sroa.3.0.i = select i1 %i.b, ptr %i.d, ptr @11
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr @_RNvNvCs2NtN8whqY98_3log6logger3NOP
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.f(ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) #14
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs2NtN8whqY98_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log5flush(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE acquire, align 8
  %i.b = icmp eq i64 %i.a, 2                      ; 2 uses
  %i.c = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8, !nonnull !8
  %i.d = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8, !nonnull !8, !align !9
  %.sroa.3.0.i = select i1 %i.b, ptr %i.d, ptr @11
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr @_RNvNvCs2NtN8whqY98_3log6logger3NOP
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.f(ptr noundef nonnull %.sroa.0.0.i) #14
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs2NtN8whqY98_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log7enabled(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCs2NtN8whqY98_3log5STATE acquire, align 8
  %i.b = icmp eq i64 %i.a, 2                      ; 2 uses
  %i.c = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.0, align 8, !nonnull !8
  %i.d = load ptr, ptr @_RNvCs2NtN8whqY98_3log6LOGGER.1, align 8, !nonnull !8, !align !9
  %.sroa.3.0.i = select i1 %i.b, ptr %i.d, ptr @11
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr @_RNvNvCs2NtN8whqY98_3log6logger3NOP
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !8, !nonnull !8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #14
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_Cs2NtN8whqY98_3logNtB5_5LevelNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !8
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_RNvCs2NtN8whqY98_3log15LOG_LEVEL_NAMES, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  ret i1 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i64 -1, 6) i64 @_RNvXs5_Cs2NtN8whqY98_3logNtB5_11LevelFilterNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.d, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread: ; preds = %bb.y, %bb.t, %bb.p, %bb.l, %bb.h, %bb.c, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4, %bb.v, %bb.w, %bb.x, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3
  %.sroa.0.0 = phi i64 [ 2, %bb.l ], [ -1, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3 ], [ %.mux, %bb.p ], [ -1, %bb.x ], [ 0, %bb.c ], [ 1, %bb.h ], [ -1, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4 ], [ 4, %bb.t ], [ -1, %bb.v ], [ %spec.select, %bb.y ], [ -1, %bb.w ]
  ret i64 %.sroa.0.0

bb.b:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !32, !noalias !35, !noundef !8 ; 2 uses
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 26
  %i.e = select i1 %i.d, i8 32, i8 0
  %.sroa.013.0.i.162 = or i8 %i.e, %i.b
  %i.f = icmp eq i8 %.sroa.013.0.i.162, 102
  br i1 %i.f, label %bb.c, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !32, !noalias !35, !noundef !8 ; 2 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = select i1 %i.j, i8 32, i8 0
  %.sroa.013.0.i.267 = or i8 %i.k, %i.h
  %i.l = icmp eq i8 %.sroa.013.0.i.267, 102
  br i1 %i.l, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.d:                                             ; preds = %bb.a
  %i.m = load i8, ptr %0, align 1, !alias.scope !32, !noalias !35, !noundef !8 ; 2 uses
  %i.n = add i8 %i.m, -65
  %i.o = icmp ult i8 %i.n, 26
  %i.p = select i1 %i.o, i8 32, i8 0
  %.sroa.013.0.i = or i8 %i.p, %i.m
  %i.q = icmp eq i8 %.sroa.013.0.i, 111
  br i1 %i.q, label %bb.b, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.not.1 = icmp eq i64 %1, 5                     ; 3 uses
  br i1 %.not.1, label %bb.i, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.e:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !37, !noalias !39, !noundef !8 ; 2 uses
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %i.v = select i1 %i.u, i8 32, i8 0
  %.sroa.013.0.i.1.1 = or i8 %i.v, %i.s
  %i.w = icmp eq i8 %.sroa.013.0.i.1.1, 114
  br i1 %i.w, label %bb.f, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !37, !noalias !39, !noundef !8 ; 2 uses
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  %i.ab = select i1 %i.aa, i8 32, i8 0
  %.sroa.013.0.i.1.2 = or i8 %i.ab, %i.y
  %i.ac = icmp eq i8 %.sroa.013.0.i.1.2, 114
  br i1 %i.ac, label %bb.g, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !37, !noalias !39, !noundef !8 ; 2 uses
  %i.af = add i8 %i.ae, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.013.0.i.1.3 = or i8 %i.ah, %i.ae
  %i.ai = icmp eq i8 %.sroa.013.0.i.1.3, 111
  br i1 %i.ai, label %bb.h, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !37, !noalias !39, !noundef !8 ; 2 uses
  %i.al = add i8 %i.ak, -65
  %i.am = icmp ult i8 %i.al, 26
  %i.an = select i1 %i.am, i8 32, i8 0
  %.sroa.013.0.i.1.4 = or i8 %i.an, %i.ak
  %i.ao = icmp eq i8 %.sroa.013.0.i.1.4, 114
  br i1 %i.ao, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

bb.i:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  %i.ap = load i8, ptr %0, align 1, !alias.scope !37, !noalias !39, !noundef !8 ; 2 uses
  %i.aq = add i8 %i.ap, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.013.0.i.1 = or i8 %i.as, %i.ap
  %i.at = icmp eq i8 %.sroa.013.0.i.1, 101
  br i1 %i.at, label %bb.e, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1: ; preds = %bb.i, %bb.e, %bb.f, %bb.g, %bb.h, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  %.not.2 = icmp eq i64 %1, 4
  br i1 %.not.2, label %bb.m, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.j:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !41, !noalias !43, !noundef !8 ; 2 uses
  %i.aw = add i8 %i.av, -65
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = select i1 %i.ax, i8 32, i8 0
  %.sroa.013.0.i.2.1 = or i8 %i.ay, %i.av
  %i.az = icmp eq i8 %.sroa.013.0.i.2.1, 97
  br i1 %i.az, label %bb.k, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !41, !noalias !43, !noundef !8 ; 2 uses
  %i.bc = add i8 %i.bb, -65
  %i.bd = icmp ult i8 %i.bc, 26
  %i.be = select i1 %i.bd, i8 32, i8 0
  %.sroa.013.0.i.2.2 = or i8 %i.be, %i.bb
  %i.bf = icmp eq i8 %.sroa.013.0.i.2.2, 114
  br i1 %i.bf, label %bb.l, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !41, !noalias !43, !noundef !8 ; 2 uses
  %i.bi = add i8 %i.bh, -65
  %i.bj = icmp ult i8 %i.bi, 26
  %i.bk = select i1 %i.bj, i8 32, i8 0
  %.sroa.013.0.i.2.3 = or i8 %i.bk, %i.bh
  %i.bl = icmp eq i8 %.sroa.013.0.i.2.3, 110
  br i1 %i.bl, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.m:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1
  %i.bm = load i8, ptr %0, align 1, !alias.scope !41, !noalias !43, !noundef !8 ; 2 uses
  %i.bn = add i8 %i.bm, -65
  %i.bo = icmp ult i8 %i.bn, 26
  %i.bp = select i1 %i.bo, i8 32, i8 0
  %.sroa.013.0.i.2 = or i8 %i.bp, %i.bm
  %i.bq = icmp eq i8 %.sroa.013.0.i.2, 119
  br i1 %i.bq, label %bb.j, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2

bb.n:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !45, !noalias !47, !noundef !8 ; 2 uses
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = select i1 %i.bu, i8 32, i8 0
  %.sroa.013.0.i.3.1 = or i8 %i.bv, %i.bs
  %i.bw = icmp eq i8 %.sroa.013.0.i.3.1, 110
  br i1 %i.bw, label %bb.o, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !45, !noalias !47, !noundef !8 ; 2 uses
  %i.bz = add i8 %i.by, -65
  %i.ca = icmp ult i8 %i.bz, 26
  %i.cb = select i1 %i.ca, i8 32, i8 0
  %.sroa.013.0.i.3.2 = or i8 %i.cb, %i.by
  %i.cc = icmp eq i8 %.sroa.013.0.i.3.2, 102
  br i1 %i.cc, label %bb.p, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !45, !noalias !47, !noundef !8 ; 2 uses
  %i.cf = add i8 %i.ce, -65
  %i.cg = icmp ult i8 %i.cf, 26
  %i.ch = select i1 %i.cg, i8 32, i8 0
  %.sroa.013.0.i.3.3 = or i8 %i.ch, %i.ce
  %i.ci = icmp eq i8 %.sroa.013.0.i.3.3, 111      ; 2 uses
  %.not.1.not = xor i1 %.not.1, true
  %brmerge = or i1 %i.ci, %.not.1.not
  %.mux = select i1 %i.ci, i64 3, i64 -1
  br i1 %brmerge, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %bb.u

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2: ; preds = %bb.m, %bb.j, %bb.k, %bb.l
  %i.cj = load i8, ptr %0, align 1, !alias.scope !45, !noalias !47, !noundef !8 ; 2 uses
  %i.ck = add i8 %i.cj, -65
  %i.cl = icmp ult i8 %i.ck, 26
  %i.cm = select i1 %i.cl, i8 32, i8 0
  %.sroa.013.0.i.3 = or i8 %i.cm, %i.cj
  %i.cn = icmp eq i8 %.sroa.013.0.i.3, 105
  br i1 %i.cn, label %bb.n, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3: ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.2, %bb.n, %bb.o, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.1
  br i1 %.not.1, label %bb.u, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.q:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !49, !noalias !51, !noundef !8 ; 2 uses
  %i.cq = add i8 %i.cp, -65
  %i.cr = icmp ult i8 %i.cq, 26
  %i.cs = select i1 %i.cr, i8 32, i8 0
  %.sroa.013.0.i.4.1 = or i8 %i.cs, %i.cp
  %i.ct = icmp eq i8 %.sroa.013.0.i.4.1, 101
  br i1 %i.ct, label %bb.r, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !49, !noalias !51, !noundef !8 ; 2 uses
  %i.cw = add i8 %i.cv, -65
  %i.cx = icmp ult i8 %i.cw, 26
  %i.cy = select i1 %i.cx, i8 32, i8 0
  %.sroa.013.0.i.4.2 = or i8 %i.cy, %i.cv
  %i.cz = icmp eq i8 %.sroa.013.0.i.4.2, 98
  br i1 %i.cz, label %bb.s, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !49, !noalias !51, !noundef !8 ; 2 uses
  %i.dc = add i8 %i.db, -65
  %i.dd = icmp ult i8 %i.dc, 26
  %i.de = select i1 %i.dd, i8 32, i8 0
  %.sroa.013.0.i.4.3 = or i8 %i.de, %i.db
  %i.df = icmp eq i8 %.sroa.013.0.i.4.3, 117
  br i1 %i.df, label %bb.t, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !49, !noalias !51, !noundef !8 ; 2 uses
  %i.di = add i8 %i.dh, -65
  %i.dj = icmp ult i8 %i.di, 26
  %i.dk = select i1 %i.dj, i8 32, i8 0
  %.sroa.013.0.i.4.4 = or i8 %i.dk, %i.dh
  %i.dl = icmp eq i8 %.sroa.013.0.i.4.4, 103
  br i1 %i.dl, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4

bb.u:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.3, %bb.p
  %i.dm = load i8, ptr %0, align 1, !alias.scope !49, !noalias !51, !noundef !8 ; 2 uses
  %i.dn = add i8 %i.dm, -65
  %i.do = icmp ult i8 %i.dn, 26
  %i.dp = select i1 %i.do, i8 32, i8 0
  %.sroa.013.0.i.4 = or i8 %i.dp, %i.dm
  %i.dq = icmp eq i8 %.sroa.013.0.i.4, 100
  br i1 %i.dq, label %bb.q, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4

bb.v:                                             ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !53, !noalias !55, !noundef !8 ; 2 uses
  %i.dt = add i8 %i.ds, -65
  %i.du = icmp ult i8 %i.dt, 26
  %i.dv = select i1 %i.du, i8 32, i8 0
  %.sroa.013.0.i.5.1 = or i8 %i.dv, %i.ds
  %i.dw = icmp eq i8 %.sroa.013.0.i.5.1, 114
  br i1 %i.dw, label %bb.w, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !53, !noalias !55, !noundef !8 ; 2 uses
  %i.dz = add i8 %i.dy, -65
  %i.ea = icmp ult i8 %i.dz, 26
  %i.eb = select i1 %i.ea, i8 32, i8 0
  %.sroa.013.0.i.5.2 = or i8 %i.eb, %i.dy
  %i.ec = icmp eq i8 %.sroa.013.0.i.5.2, 97
  br i1 %i.ec, label %bb.x, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !53, !noalias !55, !noundef !8 ; 2 uses
  %i.ef = add i8 %i.ee, -65
  %i.eg = icmp ult i8 %i.ef, 26
  %i.eh = select i1 %i.eg, i8 32, i8 0
  %.sroa.013.0.i.5.3 = or i8 %i.eh, %i.ee
  %i.ei = icmp eq i8 %.sroa.013.0.i.5.3, 99
  br i1 %i.ei, label %bb.y, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !53, !noalias !55, !noundef !8 ; 2 uses
  %i.el = add i8 %i.ek, -65
  %i.em = icmp ult i8 %i.el, 26
  %i.en = select i1 %i.em, i8 32, i8 0
  %.sroa.013.0.i.5.4 = or i8 %i.en, %i.ek
  %i.eo = icmp eq i8 %.sroa.013.0.i.5.4, 101
  %spec.select = select i1 %i.eo, i64 5, i64 -1
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.4: ; preds = %bb.u, %bb.q, %bb.r, %bb.s, %bb.t
  %i.ep = load i8, ptr %0, align 1, !alias.scope !53, !noalias !55, !noundef !8 ; 2 uses
  %i.eq = add i8 %i.ep, -65
  %i.er = icmp ult i8 %i.eq, 26
  %i.es = select i1 %i.er, i8 32, i8 0
  %.sroa.013.0.i.5 = or i8 %i.es, %i.ep
  %i.et = icmp eq i8 %.sroa.013.0.i.5, 116
  br i1 %i.et, label %bb.v, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_Cs2NtN8whqY98_3logNtB5_11LevelFilterNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !57, !noundef !8
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_RNvCs2NtN8whqY98_3log15LOG_LEVEL_NAMES, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsc_Cs2NtN8whqY98_3logNtB5_14MaybeStaticStrNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !58, !nonnull !8, !noundef !8
  %.sroa.32.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.32.0.i = load i64, ptr %.sroa.32.0.in.i, align 8, !alias.scope !58, !noundef !8 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.sroa.32.0.i)
  %i.c = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull %.sroa.01.0.i, i64 %spec.store.select.i), !noalias !58 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 0
  %i.f = sub i64 %.val1, %.sroa.32.0.i
  %.sroa.06.0.i = select i1 %i.e, i64 %i.f, i64 %i.d
  %i.g = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.06.0.i, i64 0)
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log3log(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log5flush(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsk_Cs2NtN8whqY98_3logNtB5_9NopLoggerNtB5_3Log7enabled(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsm_Cs2NtN8whqY98_3logNtB5_14SetLoggerErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 74)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsn_Cs2NtN8whqY98_3logNtB5_15ParseLevelErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 70)
  ret i1 %i.a
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nonlazybind "target-cpu"="x86-64" }
attributes #8 = { nounwind }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { noinline noreturn }
attributes #14 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_: argument 0"}
!6 = distinct !{!6, !"_RINvCs2NtN8whqY98_3log16set_logger_innerNCNvB2_10set_logger0EB2_"}
!7 = !{!"branch_weights", i32 2000, i32 2000, i32 1}
!8 = !{}
!9 = !{i64 8}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1"}
!12 = distinct !{!12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It1"}
!17 = !{!18}
!18 = distinct !{!18, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It1"}
!19 = !{!20}
!20 = distinct !{!20, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It2"}
!21 = !{!22}
!22 = distinct !{!22, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It2"}
!23 = !{!24}
!24 = distinct !{!24, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It3"}
!25 = !{!26}
!26 = distinct !{!26, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It3"}
!27 = !{!28}
!28 = distinct !{!28, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It4"}
!29 = !{!30}
!30 = distinct !{!30, !12, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It4"}
!31 = !{i64 1, i64 6}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1"}
!34 = distinct !{!34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0"}
!37 = !{!38}
!38 = distinct !{!38, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It1"}
!39 = !{!40}
!40 = distinct !{!40, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It1"}
!41 = !{!42}
!42 = distinct !{!42, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It2"}
!43 = !{!44}
!44 = distinct !{!44, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It2"}
!45 = !{!46}
!46 = distinct !{!46, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It3"}
!47 = !{!48}
!48 = distinct !{!48, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It3"}
!49 = !{!50}
!50 = distinct !{!50, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It4"}
!51 = !{!52}
!52 = distinct !{!52, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It4"}
!53 = !{!54}
!54 = distinct !{!54, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 1:It5"}
!55 = !{!56}
!56 = distinct !{!56, !34, !"_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0:It5"}
!57 = !{i64 0, i64 6}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvXsb_Cs2NtN8whqY98_3logNtB5_14MaybeStaticStrNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp: argument 0"}
!60 = distinct !{!60, !"_RNvXsb_Cs2NtN8whqY98_3logNtB5_14MaybeStaticStrNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp"}
end_hunk_0
