Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pkgitems?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ResourceData = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [45 x i8] c"icupkg: udata_openSwapper(\22%s\22) failed - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"icupkg: .res format version %02x.%02x not supported, or bundle malformed\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".res\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"icupkg: %s is not a pool bundle\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"icupkg: %s has mismatched checksum for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"icupkg/makeTargetName(%s) target item name length %ld too long\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%%ALIAS\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%%Parent\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%%DEPENDENCY\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"icupkg/ures_enumDependencies(%s table res=%08x)[%d].recurse(%s: %08x) failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"icupkg/ures_enumDependencies(%s array res=%08x)[%d].recurse(%08x) failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"icupkg/ures_enumDependencies(%s res=%08x) alias string contains non-invariant characters\0A\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"icupkg/ures_enumDependencies(%s res=%08x) %%ALIAS contains a '/'\0A\00", align 1
@.str.15 = private unnamed_addr constant [79 x i8] c"icupkg/ures_enumDependencies(%s res=%08x) alias locale ID length %ld too long\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.18 = private unnamed_addr constant [77 x i8] c"icupkg/ucnv_enumDependencies(): .cnv format version %02x.%02x not supported\0A\00", align 1
@.str.19 = private unnamed_addr constant [98 x i8] c"icupkg/ucnv_enumDependencies(): too few bytes (%d after header) for an ICU .cnv conversion table\0A\00", align 1
@.str.20 = private unnamed_addr constant [104 x i8] c"icupkg/ucnv_enumDependencies(): too few bytes (%d after headers) for an ICU MBCS .cnv conversion table\0A\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"icupkg/ucnv_enumDependencies(): unsupported _MBCSHeader.version %d.%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [124 x i8] c"icupkg/ucnv_enumDependencies(): too few bytes (%d after headers) for an ICU MBCS .cnv conversion table with extension data\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"icupkg/ucnv_enumDependencies(%s): base name length %ld too long\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".cnv\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_787Package16enumDependenciesEPNS_4ItemEPvPFvS3_PKcS5_E(ptr noundef nonnull align 8 dereferenceable(201237) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [200 x i8], align 16              ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %4 = alloca %struct.ResourceData, align 8       ; 11 uses
  %i.i = alloca [200 x i8], align 16              ; 10 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call ptr @getDataInfo(ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull %i.l) #9 ; 5 uses
  %i.r = load i32, ptr %i.l, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.b, label %_ZN6icu_78L13getDataFormatEPKh.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = icmp ne i32 1114858834, %i.u
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.t, align 1
  %i.z = icmp ne i32 1953918563, %i.y
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.as, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.t, align 1
  %i.ad = icmp ne i32 1816229443, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7810NativeItemD2Ev.exit, label %_ZN6icu_78L13getDataFormatEPKh.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = load i32, ptr %i.o, align 8
  %i.ai = call ptr @getDataInfo(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c) #9 ; 3 uses
  %i.aj = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @exit(i32 noundef %i.aj) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.o, align 8
  %i.am = load i32, ptr %i.b, align 4             ; 2 uses
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ap = load i8, ptr %i.ao, align 2             ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  %or.cond.i28 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond.i28, label %bb.h, label %._crit_edge.i29

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = sext i32 %i.am to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit

._crit_edge.i29:                                  ; preds = %bb.g
  %i.ax = call ptr @udata_openSwapper_78(i8 noundef signext %i.ap, i8 noundef zeroext %i.as, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.c) #9 ; 4 uses
  %i.ay = load i32, ptr %i.c, align 4             ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i29
  %i.ba = load ptr, ptr @stderr, align 8
  %i.bb = load ptr, ptr %1, align 8
  %i.bc = call ptr @u_errorName_78(i32 noundef %i.ay) #9
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str, ptr noundef %i.bb, ptr noundef %i.bc) #11 ; 0 uses
  %i.be = load i32, ptr %i.c, align 4
  call void @exit(i32 noundef %i.be) #10
  unreachable

bb.j:                                             ; preds = %._crit_edge.i29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr @_ZL10printErrorPvPKcP13__va_list_tag, ptr %i.bf, align 8
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = load i32, ptr %i.o, align 8             ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #12 ; 4 uses
  %i.bl = load ptr, ptr %i.m, align 8
  %i.bm = call noundef i32 @ures_swap_78(ptr noundef %i.ax, ptr noundef %i.bl, i32 noundef %i.bi, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.c) #9, !inline_history !5 ; 0 uses
  %i.bn = load i32, ptr %i.o, align 8
  %i.bo = call ptr @getDataInfo(ptr noundef nonnull %i.bk, i32 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c) #9
  %i.bp = load i32, ptr %i.b, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 %i.bq
  call void @udata_closeSwapper_78(ptr noundef %i.ax) #9
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit

_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit: ; preds = %bb.h, %bb.j
  %.sroa.13.0 = phi ptr [ null, %bb.h ], [ %i.bk, %bb.j ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %i.aw, %bb.h ], [ %i.br, %bb.j ]
  %.sroa.7.0 = phi ptr [ %i.ai, %bb.h ], [ %i.bo, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bs = load ptr, ptr %1, align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @res_read_78(ptr noundef nonnull %4, ptr noundef %.sroa.7.0, ptr noundef %.sroa.10.0, i32 noundef %i.an, ptr noundef nonnull %i.l) #9
  %i.bt = load i32, ptr %i.l, align 4
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit
  %i.bv = load ptr, ptr @stderr, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 12
  %i.bx = load i8, ptr %i.bw, align 2
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 13
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.2, i32 noundef %i.by, i32 noundef %i.cb) #11 ; 0 uses
  call void @exit(i32 noundef 16) #13
  unreachable

bb.l:                                             ; preds = %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.ce = load i8, ptr %i.cd, align 2
  %.not46.i = icmp eq i8 %i.ce, 0
  br i1 %.not46.i, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.cf = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bs, i32 noundef 47) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %.0.i.i = select i1 %.not.i.i, ptr %i.bs, ptr %i.cg
  %i.ch = ptrtoint ptr %.0.i.i to i64
  %i.ci = ptrtoint ptr %i.bs to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = icmp slt i32 %i.ck, 192
  br i1 %i.cl, label %bb.n, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i: ; preds = %bb.m
  %i.cm = add nuw nsw i64 %i.cj, 8
  %i.cn = load ptr, ptr @stderr, align 8
  %i.co = and i64 %i.cm, 4294967295
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bs, i64 noundef %i.co) #11 ; 0 uses
  store i32 15, ptr %i.l, align 4
  br label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %sext.i.i = shl i64 %i.cj, 32
  %i.cq = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.i, ptr nonnull align 1 %i.bs, i64 %i.cq, i1 false)
  %i.cr = getelementptr inbounds i8, ptr %i.i, i64 %i.cq ; 2 uses
  store i32 1819242352, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cs, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  call void %3(ptr noundef %2, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.i) #9, !inline_history !6
  %i.ct = call noundef i32 @_ZNK6icu_787Package8findItemEPKci(ptr noundef nonnull align 8 dereferenceable(201237) %0, ptr noundef nonnull %i.i, i32 noundef -1) #9 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = call noundef ptr @_ZNK6icu_787Package7getItemEi(ptr noundef nonnull align 8 dereferenceable(201237) %0, i32 noundef %i.ct) #9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i32 0, ptr %i.h, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = call ptr @getDataInfo(ptr noundef %i.cx, i32 noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull %i.h) #9 ; 3 uses
  %i.db = load i32, ptr %i.h, align 4             ; 2 uses
  %i.dc = icmp slt i32 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @exit(i32 noundef %i.db) #10
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.de = load i8, ptr %i.dd, align 2             ; 2 uses
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = icmp eq i8 %i.dh, 0
  %or.cond.i.i = select i1 %i.df, i1 %i.di, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %._crit_edge.i.i

bb.r:                                             ; preds = %bb.q
  %i.dj = load i32, ptr %i.g, align 4
  %i.dk = load ptr, ptr %i.cw, align 8
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit.i

._crit_edge.i.i:                                  ; preds = %bb.q
  %i.dn = call ptr @udata_openSwapper_78(i8 noundef signext %i.de, i8 noundef zeroext %i.dh, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.h) #9 ; 4 uses
  %i.do = load i32, ptr %i.h, align 4             ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.dq = load ptr, ptr @stderr, align 8
  %i.dr = load ptr, ptr %i.cv, align 8
  %i.ds = call ptr @u_errorName_78(i32 noundef %i.do) #9
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str, ptr noundef %i.dr, ptr noundef %i.ds) #11 ; 0 uses
  %i.du = load i32, ptr %i.h, align 4
  call void @exit(i32 noundef %i.du) #10
  unreachable

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  store ptr @_ZL10printErrorPvPKcP13__va_list_tag, ptr %i.dv, align 8
  %i.dw = load ptr, ptr @stderr, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = load i32, ptr %i.cy, align 8
  %i.dz = sext i32 %i.dy to i64
  %i.ea = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #12 ; 4 uses
  %i.eb = load ptr, ptr %i.cw, align 8
  %i.ec = load i32, ptr %i.cy, align 8
  %i.ed = call noundef i32 @ures_swap_78(ptr noundef %i.dn, ptr noundef %i.eb, i32 noundef %i.ec, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.h) #9, !inline_history !5 ; 0 uses
  %i.ee = load i32, ptr %i.cy, align 8
  %i.ef = call ptr @getDataInfo(ptr noundef nonnull %i.ea, i32 noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull %i.h) #9
  %i.eg = load i32, ptr %i.g, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ea, i64 %i.eh
  call void @udata_closeSwapper_78(ptr noundef %i.dn) #9
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit.i

_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit.i: ; preds = %bb.t, %bb.r
  %.sroa.8.0.i = phi ptr [ %i.da, %bb.r ], [ %i.ef, %bb.t ]
  %.sroa.11.0.i = phi ptr [ %i.dm, %bb.r ], [ %i.ei, %bb.t ] ; 5 uses
  %.sroa.14.3.i = phi ptr [ null, %bb.r ], [ %i.ea, %bb.t ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 12
  %i.ek = load i8, ptr %i.ej, align 2
  %i.el = icmp ult i8 %i.ek, 2
  br i1 %i.el, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit.i
  %i.em = load ptr, ptr @stderr, align 8
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.i) #11 ; 0 uses
  br label %.critedge.i

bb.v:                                             ; preds = %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 255                      ; 2 uses
  %i.er = icmp samesign ugt i32 %i.eq, 7
  br i1 %i.er, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 24
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, 2
  %.not48.i = icmp eq i32 %i.eu, 0
  br i1 %.not48.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = load ptr, ptr @stderr, align 8
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.i) #11 ; 0 uses
  br label %.critedge.i

bb.y:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 32
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fe = zext nneg i32 %i.eq to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 8
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.sroa.11.0.i, i64 %i.fj
end_hunk_0
