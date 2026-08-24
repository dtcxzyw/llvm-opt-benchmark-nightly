Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/pkgitems?download=true
inline.NumInlined: 31
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

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_787Package16enumDependenciesEPNS_4ItemEPvPFvS3_PKcS5_E(ptr noundef nonnull align 8 dereferenceable(201237) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [200 x i8], align 16              ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %4 = alloca %struct.ResourceData, align 8       ; 12 uses
  %i.i = alloca [200 x i8], align 16              ; 11 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14
  %i.q = call ptr @getDataInfo(ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull %i.l) ; 5 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !8
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
  br i1 %i.ab, label %bb.bg, label %bb.d

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
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !14
  %i.ai = call ptr @getDataInfo(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @exit(i32 noundef %i.aj) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.o, align 8, !tbaa !14
  %i.am = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !16  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19  ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  %or.cond.i31 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond.i31, label %bb.h, label %._crit_edge.i32

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.av = sext i32 %i.am to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit

._crit_edge.i32:                                  ; preds = %bb.g
  %i.ax = call ptr @udata_openSwapper_78(i8 noundef signext %i.ap, i8 noundef zeroext %i.as, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.c) ; 4 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i32
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bb = load ptr, ptr %1, align 8, !tbaa !22
  %i.bc = call ptr @u_errorName_78(i32 noundef %i.ay)
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str, ptr noundef %i.bb, ptr noundef %i.bc) #11 ; 0 uses
  %i.be = load i32, ptr %i.c, align 4, !tbaa !8
  call void @exit(i32 noundef %i.be) #10
  unreachable

bb.j:                                             ; preds = %._crit_edge.i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr @_ZL10printErrorPvPKcP13__va_list_tag, ptr %i.bf, align 8, !tbaa !23
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !25
  %i.bi = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #12 ; 4 uses
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.bm = call noundef i32 @ures_swap_78(ptr noundef %i.ax, ptr noundef %i.bl, i32 noundef %i.bi, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.c), !inline_history !26 ; 0 uses
  %i.bn = load i32, ptr %i.o, align 8, !tbaa !14
  %i.bo = call ptr @getDataInfo(ptr noundef nonnull %i.bk, i32 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c)
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !15
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 %i.bq
  call void @udata_closeSwapper_78(ptr noundef %i.ax)
  br label %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit

_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit: ; preds = %bb.h, %bb.j
  %.sroa.14.0 = phi ptr [ null, %bb.h ], [ %i.bk, %bb.j ] ; 4 uses
  %.sroa.11.0 = phi ptr [ %i.aw, %bb.h ], [ %i.br, %bb.j ]
  %.sroa.8.0 = phi ptr [ %i.ai, %bb.h ], [ %i.bo, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bs = load ptr, ptr %1, align 8, !tbaa !22    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  invoke void @res_read_78(ptr noundef nonnull %4, ptr noundef %.sroa.8.0, ptr noundef %.sroa.11.0, i32 noundef %i.an, ptr noundef nonnull %i.l)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %_ZN6icu_7810NativeItem7setItemEPKNS_4ItemEPFiPK12UDataSwapperPKviPvP10UErrorCodeE.exit
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !8
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 12
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !27
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 13
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.cb = zext i8 %i.ca to i32
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.2, i32 noundef %i.by, i32 noundef %i.cb) #11 ; 0 uses
  call void @exit(i32 noundef 16) #13
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !28
  %.not52.i = icmp eq i8 %i.ce, 0
  br i1 %.not52.i, label %bb.ai, label %bb.m

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
  br i1 %i.cl, label %bb.o, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i: ; preds = %bb.m
  %i.cm = add nuw nsw i64 %i.cj, 8
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.co = and i64 %i.cm, 4294967295
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bs, i64 noundef %i.co) #11 ; 0 uses
  store i32 15, ptr %i.l, align 4, !tbaa !8
  br label %.critedge.i

bb.n:                                             ; preds = %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %bb.m
  %sext.i.i = shl i64 %i.cj, 32
  %i.cr = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.i, ptr nonnull align 1 %i.bs, i64 %i.cr, i1 false)
  %i.cs = getelementptr inbounds i8, ptr %i.i, i64 %i.cr ; 2 uses
  store i32 1819242352, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ct, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  invoke void %3(ptr noundef %2, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.i)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.cu = invoke noundef i32 @_ZNK6icu_787Package8findItemEPKci(ptr noundef nonnull align 8 dereferenceable(201237) %0, ptr noundef nonnull %i.i, i32 noundef -1)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.critedge.i, label %bb.s

bb.r:                                             ; preds = %.noexc63.i, %.noexc62.i, %.noexc61.i, %bb.y, %bb.x, %._crit_edge.i.i, %bb.t, %bb.s, %bb.p
  %.sroa.15.0.i = phi ptr [ %i.ec, %.noexc63.i ], [ %i.ec, %.noexc62.i ], [ %i.ec, %.noexc61.i ], [ null, %bb.y ], [ null, %bb.x ], [ null, %._crit_edge.i.i ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.p ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %bb.q
  %i.cx = invoke noundef ptr @_ZNK6icu_787Package7getItemEi(ptr noundef nonnull align 8 dereferenceable(201237) %0, i32 noundef %i.cu)
          to label %bb.t unwind label %bb.r       ; 3 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !14
  %i.dc = invoke ptr @getDataInfo(ptr noundef %i.cz, i32 noundef %i.db, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull %i.h)
          to label %.noexc.i unwind label %bb.r   ; 3 uses

.noexc.i:                                         ; preds = %bb.t
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.de = icmp slt i32 %i.dd, 1
  br i1 %i.de, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc.i
  call void @exit(i32 noundef %i.dd) #10
  unreachable

bb.v:                                             ; preds = %.noexc.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !16  ; 2 uses
  %i.dh = icmp eq i8 %i.dg, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19  ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 0
  %or.cond.i.i = select i1 %i.dh, i1 %i.dk, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %._crit_edge.i.i

bb.w:                                             ; preds = %bb.v
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !15
  %i.dm = load ptr, ptr %i.cy, align 8, !tbaa !10
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  br label %bb.z

._crit_edge.i.i:                                  ; preds = %bb.v
  %i.dp = invoke ptr @udata_openSwapper_78(i8 noundef signext %i.dg, i8 noundef zeroext %i.dj, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.h)
          to label %.noexc59.i unwind label %bb.r ; 4 uses

.noexc59.i:                                       ; preds = %._crit_edge.i.i
  %i.dq = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc59.i
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.dt = load ptr, ptr %i.cx, align 8, !tbaa !22
  %i.du = invoke ptr @u_errorName_78(i32 noundef %i.dq)
          to label %.noexc60.i unwind label %bb.r

.noexc60.i:                                       ; preds = %bb.x
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ds, ptr noundef nonnull @.str, ptr noundef %i.dt, ptr noundef %i.du) #11 ; 0 uses
  %i.dw = load i32, ptr %i.h, align 4, !tbaa !8
  call void @exit(i32 noundef %i.dw) #10
  unreachable

bb.y:                                             ; preds = %.noexc59.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  store ptr @_ZL10printErrorPvPKcP13__va_list_tag, ptr %i.dx, align 8, !tbaa !23
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !25
  %i.ea = load i32, ptr %i.da, align 8, !tbaa !14 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eb) #12
          to label %.noexc61.i unwind label %bb.r ; 7 uses

.noexc61.i:                                       ; preds = %bb.y
  %i.ed = load ptr, ptr %i.cy, align 8, !tbaa !10
  %i.ee = invoke noundef i32 @ures_swap_78(ptr noundef nonnull %i.dp, ptr noundef %i.ed, i32 noundef %i.ea, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.h)
          to label %.noexc62.i unwind label %bb.r, !inline_history !26 ; 0 uses

.noexc62.i:                                       ; preds = %.noexc61.i
  %i.ef = load i32, ptr %i.da, align 8, !tbaa !14
  %i.eg = invoke ptr @getDataInfo(ptr noundef nonnull %i.ec, i32 noundef %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull %i.h)
          to label %.noexc63.i unwind label %bb.r

.noexc63.i:                                       ; preds = %.noexc62.i
  %i.eh = load i32, ptr %i.g, align 4, !tbaa !15
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ec, i64 %i.ei
  invoke void @udata_closeSwapper_78(ptr noundef nonnull %i.dp)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %.noexc63.i, %bb.w
  %.sroa.9.0.i = phi ptr [ %i.dc, %bb.w ], [ %i.eg, %.noexc63.i ]
  %.sroa.12.0.i = phi ptr [ %i.do, %bb.w ], [ %i.ej, %.noexc63.i ] ; 5 uses
  %.sroa.15.6.i = phi ptr [ null, %bb.w ], [ %i.ec, %.noexc63.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 12
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !27
  %i.em = icmp ult i8 %i.el, 2
  br i1 %i.em, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.i) #11 ; 0 uses
  br label %.critedge.i

bb.ab:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !15
  %i.er = and i32 %i.eq, 255                      ; 2 uses
  %i.es = icmp samesign ugt i32 %i.er, 7
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15
  %i.ev = and i32 %i.eu, 2
  %.not55.i = icmp eq i32 %i.ev, 0
  br i1 %.not55.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ew, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.i) #11 ; 0 uses
  br label %.critedge.i

bb.ae:                                            ; preds = %bb.ac
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 32
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !15
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ff = zext nneg i32 %i.er to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !34
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.sroa.12.0.i, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.i, ptr noundef nonnull %i.bs) #11 ; 0 uses
  br label %.critedge.i

bb.ah:                                            ; preds = %bb.r, %bb.n
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0.i, %bb.r ], [ null, %bb.n ]
  %.pn.i = phi { ptr, i32 } [ %i.cw, %bb.r ], [ %i.cq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.ba

bb.ai:                                            ; preds = %bb.af, %bb.l
  %.sroa.15.2.i = phi ptr [ null, %bb.l ], [ %.sroa.15.6.i, %bb.af ] ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !36
  %i.fr = invoke fastcc noundef signext i8 @_ZN6icu_78L21ures_enumDependenciesEPKcPK12ResourceDatajS1_S1_iPFvPvS1_S1_ES5_PNS_7PackageEP10UErrorCode(ptr noundef %i.bs, ptr noundef %4, i32 noundef %i.fq, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.l)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.not56.i = icmp eq i8 %i.fr, 0
  br i1 %.not56.i, label %_ZN6icu_78L11checkParentEPKcPFvPvS1_S1_ES2_P10UErrorCode.exit.i, label %bb.al

bb.ak:                                            ; preds = %bb.ay, %bb.ai
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.al:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 12
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !27  ; 2 uses
  %i.fv = icmp ugt i8 %i.fu, 1
  br i1 %i.fv, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fw = icmp eq i8 %i.fu, 1
  br i1 %i.fw, label %bb.an, label %_ZN6icu_78L11checkParentEPKcPFvPvS1_S1_ES2_P10UErrorCode.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 13
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !27
  %i.fz = icmp eq i8 %i.fy, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gb = load i8, ptr %i.ga, align 8
  %i.gc = icmp ne i8 %i.gb, 0
  %or.cond.i = select i1 %i.fz, i1 true, i1 %i.gc
  br i1 %or.cond.i, label %_ZN6icu_78L11checkParentEPKcPFvPvS1_S1_ES2_P10UErrorCode.exit.i, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %.old.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.old1.i = load i8, ptr %.old.i, align 8, !tbaa !37
  %.old2.not.i = icmp eq i8 %.old1.i, 0
  br i1 %.old2.not.i, label %bb.ap, label %_ZN6icu_78L11checkParentEPKcPFvPvS1_S1_ES2_P10UErrorCode.exit.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gd = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bs, i32 noundef 47) #14 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.gd, null
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %.031.i.i = select i1 %.not.i65.i, ptr %i.bs, ptr %i.ge ; 11 uses
  %i.gf = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.031.i.i, i32 noundef 46) #14 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %.031.i.i)
  %strchr34.i.i = getelementptr inbounds i8, ptr %.031.i.i, i64 %strlen.i.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.028.i.i = phi ptr [ %strchr34.i.i, %bb.aq ], [ %i.gf, %bb.ap ] ; 6 uses
  %i.gh = icmp ugt ptr %.028.i.i, %.031.i.i
  br i1 %i.gh, label %.lr.ph, label %.critedge.i.i

bb.as:                                            ; preds = %.lr.ph
  %i.gi = icmp ugt ptr %i.gj, %.031.i.i
  br i1 %i.gi, label %.lr.ph, label %.critedge.i.i, !llvm.loop !38

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %.029.i.i60 = phi ptr [ %i.gj, %bb.as ], [ %.028.i.i, %bb.ar ]
  %i.gj = getelementptr inbounds i8, ptr %.029.i.i60, i64 -1 ; 5 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !27
  %.not35.i.i = icmp eq i8 %i.gk, 95
  br i1 %.not35.i.i, label %..critedge.i.i_crit_edge, label %bb.as, !llvm.loop !38

..critedge.i.i_crit_edge:                         ; preds = %.lr.ph
  br label %.critedge.i.i, !llvm.loop !38

.critedge.i.i:                                    ; preds = %bb.as, %..critedge.i.i_crit_edge, %bb.ar
  %.1.i.i = phi ptr [ %i.gj, %..critedge.i.i_crit_edge ], [ %.028.i.i, %bb.ar ], [ %i.gj, %bb.as ] ; 2 uses
  %.not36.i.i = icmp eq ptr %.1.i.i, %.031.i.i
  %i.gl = ptrtoint ptr %.031.i.i to i64           ; 3 uses
  br i1 %.not36.i.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.critedge.i.i
  %i.gm = ptrtoint ptr %.028.i.i to i64
  %i.gn = sub i64 %i.gm, %i.gl
  %i.go = icmp eq i64 %i.gn, 4
  br i1 %i.go, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.gp = load i32, ptr %.031.i.i, align 1
  %i.gq = icmp ne i32 %i.gp, 1953460082
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %_ZN6icu_78L11checkParentEPKcPFvPvS1_S1_ES2_P10UErrorCode.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  br label %bb.ax

bb.av:                                            ; preds = %.critedge.i.i
  %i.gt = ptrtoint ptr %.1.i.i to i64
  %i.gu = sub i64 %i.gt, %i.gl
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gx = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.031.i.i) #14
  %i.gy = trunc i64 %i.gx to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.thread.i.i
  %.03039.i.i = phi ptr [ %.031.i.i, %bb.aw ], [ %.031.i.i, %bb.av ], [ @.str.17, %.thread.i.i ]
  %.028.i.i.i.i = phi i32 [ %i.gy, %bb.aw ], [ %i.gv, %bb.av ], [ 4, %.thread.i.i ] ; 2 uses
  %.pn.i.i = ptrtoint ptr %i.bs to i64
end_hunk_0
