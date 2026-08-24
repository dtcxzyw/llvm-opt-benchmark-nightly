Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z43?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@names_tab = internal global ptr null, align 8
@lang_count = internal unnamed_addr global i32 0, align 4
@lang_tabsize = internal unnamed_addr global i32 0, align 4
@hyph_tab = internal unnamed_addr global ptr null, align 8
@canonical_tab = internal unnamed_addr global ptr null, align 8
@LanguageSentenceEnds = dso_local local_unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"LanguageDefine: names!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"LanguageDefine: names is empty!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"LanguageDefine: type(y) != WORD!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"hyphenation file name expected here\00", align 1
@lang_ends = internal unnamed_addr global [64 x ptr] zeroinitializer, align 16
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"expected word ending pattern here\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"empty word ending pattern\00", align 1
@InitializeAll = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"LanguageWordEndsSentence: wd!\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s ignored (unknown language %s)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"LanguageString: unknown number\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"LanguageHyph: unknown number\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging language table\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"language name %s used twice (first at%s)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @LanguageInit() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(808) ptr @malloc(i64 noundef 808) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ltab_new.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %i.c) #9 ; 0 uses
  br label %ltab_new.exit

ltab_new.exit:                                    ; preds = %bb.a, %bb.b
  store i32 100, ptr %i.a, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(804) %i.e, i8 0, i64 804, i1 false)
  store ptr %i.a, ptr @names_tab, align 8, !tbaa !8
  store i32 0, ptr @lang_count, align 4, !tbaa !4
  store i32 100, ptr @lang_tabsize, align 4, !tbaa !4
  %i.f = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #8
  store ptr %i.f, ptr @hyph_tab, align 8, !tbaa !12
  %i.g = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #8
  store ptr %i.g, ptr @canonical_tab, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @LanguageSentenceEnds, i8 0, i64 1024, i1 false), !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @LanguageDefine(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i8 %i.b, 17
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.e = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull @.str.1) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %.not84 = icmp eq ptr %i.g, %0
  br i1 %.not84, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.i = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.h, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load i32, ptr @lang_count, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.k, ptr @lang_count, align 4, !tbaa !4
  %i.l = load i32, ptr @lang_tabsize, align 4, !tbaa !4 ; 2 uses
  %.not85 = icmp slt i32 %i.k, %i.l
  br i1 %.not85, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = shl nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.m, ptr @lang_tabsize, align 4, !tbaa !4
  %i.n = load ptr, ptr @hyph_tab, align 8, !tbaa !12
  %i.o = sext i32 %i.m to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.p) #10
  store ptr %i.q, ptr @hyph_tab, align 8, !tbaa !12
  %i.r = load ptr, ptr @canonical_tab, align 8, !tbaa !12
  %2 = load i32, ptr @lang_tabsize, align 4, !tbaa !4
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %i.s = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %4) #10
  store ptr %i.s, ptr @canonical_tab, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.063110 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 3 uses
  %.not86111 = icmp eq ptr %.063110, %0
  br i1 %.not86111, label %._crit_edge.preheader, label %.preheader100

.preheader100:                                    ; preds = %bb.h, %.loopexit101
  %.063112 = phi ptr [ %.063, %.loopexit101 ], [ %.063110, %bb.h ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader100, %bb.i
  %.063.pn = phi ptr [ %.062, %bb.i ], [ %.063112, %.preheader100 ]
  %.062.in = getelementptr inbounds nuw i8, ptr %.063.pn, i64 16
  %.062 = load ptr, ptr %.062.in, align 8, !tbaa !15 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.062, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !15
  switch i8 %i.u, label %bb.j [
    i8 0, label %bb.i
    i8 11, label %.loopexit101
    i8 12, label %.loopexit101
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.w = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.v, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %.loopexit101

.loopexit101:                                     ; preds = %bb.i, %bb.i, %bb.j
  %i.x = load i32, ptr @lang_count, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %.062, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = shl i32 %i.x, 23
  %i.ab = and i32 %i.aa, 528482304
  %i.ac = and i32 %i.z, -528482305
  %i.ad = or disjoint i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.y, align 8
  tail call fastcc void @ltab_insert(ptr noundef nonnull %.062, ptr noundef nonnull @names_tab)
  %i.ae = getelementptr inbounds nuw i8, ptr %.063112, i64 8
  %.063 = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %.not86 = icmp eq ptr %.063, %0
  br i1 %.not86, label %._crit_edge.loopexit, label %.preheader100, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.loopexit101
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.loopexit, %bb.h
  %.pn93.ph = phi ptr [ %.063110, %bb.h ], [ %.pre, %._crit_edge.loopexit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.preheader, %._crit_edge
  %.pn93 = phi ptr [ %.1, %._crit_edge ], [ %.pn93.ph, %._crit_edge.preheader ]
  %.1.in = getelementptr inbounds nuw i8, ptr %.pn93, i64 16
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !15  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !15
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %._crit_edge, label %bb.k, !llvm.loop !18

bb.k:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr @canonical_tab, align 8, !tbaa !12
  %i.aj = load i32, ptr @lang_count, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store ptr %.1, ptr %i.al, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i8, ptr %i.am, align 8, !tbaa !15
  %.not87 = icmp eq i8 %i.an, 17
  br i1 %.not87, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 17), align 1, !tbaa !15 ; 2 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  store i32 %i.ap, ptr @zz_size, align 4, !tbaa !4
  %i.aq = zext i8 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.av = tail call ptr @GetMemory(i32 noundef %i.ap, ptr noundef %i.au) #9 ; 2 uses
  store ptr %i.av, ptr @zz_hold, align 8, !tbaa !19
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store ptr %i.as, ptr @zz_hold, align 8, !tbaa !19
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !15
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ax = phi ptr [ %i.av, %bb.m ], [ %i.as, %bb.n ] ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i8 17, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !15
  store ptr %i.ax, ptr %i.ax, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 34
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 1048575                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 36 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, -1048576
  %i.bl = or disjoint i32 %i.bk, %i.bh
  store i32 %i.bl, ptr %i.bi, align 4
  %i.bm = load i32, ptr %i.bf, align 4
  %i.bn = and i32 %i.bm, -1048576
  %i.bo = or disjoint i32 %i.bn, %i.bh
  store i32 %i.bo, ptr %i.bi, align 4
  %i.bp = load i8, ptr @zz_lengths, align 1, !tbaa !15 ; 2 uses
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  store i32 %i.bq, ptr @zz_size, align 4, !tbaa !4
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.bw = tail call ptr @GetMemory(i32 noundef %i.bq, ptr noundef %i.bv) #9
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.bt, ptr @zz_hold, align 8, !tbaa !19
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !15
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.by = phi ptr [ %i.bw, %bb.p ], [ %i.bt, %bb.q ] ; 12 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i8 0, ptr %i.bz, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !15
  store ptr %i.by, ptr %i.by, align 8, !tbaa !15
  store ptr %i.by, ptr @xx_link, align 8, !tbaa !19
  store ptr %i.by, ptr @zz_res, align 8, !tbaa !19
  store ptr %i.ax, ptr @zz_hold, align 8, !tbaa !19
  %i.cd = load ptr, ptr %i.ax, align 8, !tbaa !15
  store ptr %i.cd, ptr @zz_tmp, align 8, !tbaa !19
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !15
  store ptr %i.ce, ptr %i.ax, align 8, !tbaa !15
  %i.cf = load ptr, ptr @zz_hold, align 8, !tbaa !19
  %i.cg = load ptr, ptr @zz_res, align 8, !tbaa !19 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !15
  %i.cj = load ptr, ptr @zz_tmp, align 8, !tbaa !19 ; 2 uses
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !15
  %i.ck = load ptr, ptr @zz_res, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !15
  %i.cm = load ptr, ptr @xx_link, align 8, !tbaa !19 ; 4 uses
  store ptr %i.cm, ptr @zz_res, align 8, !tbaa !19
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !15 ; 3 uses
  store ptr %i.cp, ptr @zz_tmp, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15 ; 2 uses
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %1, ptr %i.cs, align 8, !tbaa !15
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.cm, ptr %i.ct, align 8, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.k
  %.066 = phi ptr [ %1, %bb.k ], [ %i.ax, %bb.s ], [ %i.ax, %bb.r ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.066, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15 ; 12 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.pn = phi ptr [ %i.cv, %bb.t ], [ %.0, %bb.u ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !15  ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !15
end_hunk_0
