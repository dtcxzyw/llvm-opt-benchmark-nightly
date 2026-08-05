inline.NumInlined: 153
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20260526::debugging_internal::(anonymous namespace)::RustSymbolParser" = type { [256 x i8], i32, [64 x i8], i32, [16 x i32], i32, i32, i32, ptr, ptr, ptr }
%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }

@.str.2 = private unnamed_addr constant [5 x i8] c" as \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"&mut \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"*mut \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c",)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c", ...)\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"fn...\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dyn \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"::<>\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"isize\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"usize\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"i128\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"u128\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"i16\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"{closure\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"{shim\00", align 1
@switch.table._ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm = private unnamed_addr constant [26 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr poison, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr poison, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.20, ptr poison, ptr poison, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr poison, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::debugging_internal::(anonymous namespace)::RustSymbolParser", align 8 ; 55 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 0, i64 400, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 98 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 39 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 73 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.f, 95
  br i1 %.not.i.i, label %bb.c, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph:                                           ; preds = %.critedge51.preheader.i, %.lr.ph370.i.backedge
  %i.g = phi i32 [ %4, %.lr.ph370.i.backedge ], [ %i.acw, %.critedge51.preheader.i ] ; 11 uses
  %.in = phi i32 [ %i.h, %.lr.ph370.i.backedge ], [ %.717.ph.i, %.critedge51.preheader.i ]
  %i.h = add i32 %.in, 1                          ; 25 uses
  %i.i = add nsw i32 %i.g, -1                     ; 20 uses
  store i32 %i.i, ptr %i.o, align 8, !tbaa !16
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  switch i8 %i.l, label %.critedge51.backedge.i [
    i8 0, label %bb.e
    i8 1, label %.loopexit244.loopexit.i
    i8 4, label %bb.m
    i8 5, label %bb.o
    i8 6, label %bb.v
    i8 7, label %bb.x
    i8 8, label %bb.ac
    i8 9, label %bb.aj
    i8 10, label %bb.ap
    i8 11, label %bb.au
    i8 2, label %bb.bb
    i8 3, label %bb.bi
    i8 12, label %bb.bt
    i8 13, label %bb.by
    i8 14, label %bb.cg
    i8 15, label %bb.dj
    i8 16, label %bb.dr
    i8 17, label %bb.dz
    i8 18, label %.lr.ph._crit_edge
    i8 19, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i
    i8 20, label %bb.et
    i8 21, label %.loopexit245.i
    i8 22, label %.loopexit245.i
    i8 23, label %bb.fe
    i8 24, label %bb.fn
    i8 25, label %bb.fs
    i8 26, label %bb.gg
    i8 27, label %bb.gm
    i8 28, label %.loopexit246.i
    i8 29, label %.loopexit242.i
    i8 30, label %.loopexit.i
  ], !llvm.loop !17

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre315 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre316 = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.pre318 = sext i32 %.pre316 to i64
  br label %bb.eg, !llvm.loop !17

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %.not.i63.i = icmp eq i8 %i.n, 82
  br i1 %.not.i63.i, label %bb.d, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 52 uses
  store i32 1, ptr %i.o, align 8, !tbaa !16
  store i8 0, ptr %3, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 396 ; 61 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 324 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 6 uses
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %.val61.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.val62.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.v = sext i32 %.val61.i to i64                ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.val62.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = and i8 %i.x, -33
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  br i1 %i.aa, label %bb.f, label %.loopexit244.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !20
  %i.ad = icmp eq i32 %i.i, 256
  br i1 %i.ad, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  store i8 1, ptr %i.u, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i: ; preds = %.lr.ph399.i, %bb.gs, %bb.gf, %bb.fd, %bb.bh, %bb.ba, %bb.at, %bb.ai, %bb.ab, %bb.g
  %.010.be.i = phi i32 [ %i.h, %bb.g ], [ %.414.i, %bb.fd ], [ %.010.i, %bb.gs ], [ %i.h, %bb.ab ], [ %i.h, %bb.at ], [ %.010.i, %bb.ai ], [ %.010.i, %bb.ba ], [ %.010.i, %bb.bh ], [ %.010.i, %bb.gf ], [ %.111.ph.i, %.lr.ph399.i ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre311 = load i32, ptr %i.e, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i

.loopexit244.loopexit.i:                          ; preds = %.lr.ph
  %.pre529.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre530.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.pre531.i = sext i32 %.pre530.i to i64
  br label %.loopexit244.i

.loopexit244.i:                                   ; preds = %bb.e, %.loopexit244.loopexit.i
  %.pre-phi532.i = phi i64 [ %.pre531.i, %.loopexit244.loopexit.i ], [ %i.v, %bb.e ]
  %i.ae = phi i32 [ %.pre530.i, %.loopexit244.loopexit.i ], [ %.val61.i, %bb.e ]
  %i.af = phi ptr [ %.pre529.i, %.loopexit244.loopexit.i ], [ %.val62.i, %bb.e ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !19
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %.pre-phi532.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15  ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 47
  br i1 %i.aj, label %switch.lookup, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i, %bb.d
  %i.ak = phi i32 [ 2, %bb.d ], [ %.pre311, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i ] ; 3 uses
  %i.al = phi ptr [ %0, %bb.d ], [ %.pre, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i ] ; 2 uses
  %.010.i = phi i32 [ 0, %bb.d ], [ %.010.be.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i ] ; 8 uses
  %i.am = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.am, ptr %i.e, align 8, !tbaa !19
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  switch i8 %i.ap, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit [
    i8 67, label %bb.h
    i8 77, label %bb.i
    i8 88, label %bb.r
    i8 89, label %bb.ak
    i8 78, label %bb.ax
    i8 73, label %bb.ge
    i8 66, label %bb.gp
  ]

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.aq = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  br i1 %i.aq, label %.critedge51.preheader.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.ar = load i32, ptr %i.p, align 4, !tbaa !20
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i65.i = icmp ult i64 %i.ax, 2
  br i1 %.not.i65.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 60, ptr %i.au, align 1
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.c, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 256
  br i1 %i.bb, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.af

bb.m:                                             ; preds = %.lr.ph
  %i.bc = icmp eq i32 %i.i, 256
  br i1 %i.bc, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  store i8 5, ptr %i.bd, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.o:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %i.p, align 4, !tbaa !20
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.critedge51.backedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not.i66.i.a = icmp ult i64 %i.bk, 2
  br i1 %.not.i66.i.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i16 62, ptr %i.bh, align 1
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.backedge.i

bb.r:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.bn = load i32, ptr %i.p, align 4, !tbaa !20
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.not.i69.i = icmp ult i64 %i.bt, 2
  br i1 %.not.i69.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 60, ptr %i.bq, align 1
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 256
  br i1 %i.bx, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.af

bb.v:                                             ; preds = %.lr.ph
  %i.by = icmp eq i32 %i.i, 256
  br i1 %i.by, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  store i8 7, ptr %i.bz, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.x:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.p, align 4, !tbaa !20
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %.not.i47.a = icmp ult i64 %i.cg, 5
  br i1 %.not.i47.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cd, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.ci = icmp eq i32 %i.i, 256
  br i1 %i.ci, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.cj = zext nneg i32 %i.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %i.cj
  store i8 8, ptr %i.ck, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.ac:                                            ; preds = %.lr.ph
  %i.cl = load i32, ptr %i.p, align 4, !tbaa !20
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.critedge51.backedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %.not.i72.i = icmp ult i64 %i.cr, 2
  br i1 %.not.i72.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 62, ptr %i.co, align 1
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.backedge.i

bb.af:                                            ; preds = %bb.u, %bb.l
  %.sink689.i = phi i32 [ %i.ba, %bb.l ], [ %i.bw, %bb.u ] ; 2 uses
  %.sink.i = phi i8 [ 4, %bb.l ], [ 6, %bb.u ]
  %i.cu = add nsw i32 %.sink689.i, 1
  store i32 %i.cu, ptr %i.o, align 8, !tbaa !16
  %i.cv = sext i32 %.sink689.i to i64
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %i.cv
  store i8 %.sink.i, ptr %i.cw, align 1, !tbaa !15
  %i.cx = load i32, ptr %i.p, align 4, !tbaa !20
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.p, align 4, !tbaa !20
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.da = load i32, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.dd, 115
  br i1 %.not.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.da, 1                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !19
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cz, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15  ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.dh, 95
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i: ; preds = %bb.ag
  %i.di = and i8 %i.dh, -33
  %i.dj = add i8 %i.di, -65
  %i.dk = icmp ult i8 %i.dj, 26
  %i.dl = add i8 %i.dh, -48
  %i.dm = icmp ult i8 %i.dl, 10
  %or.cond28.i.i.i = or i1 %i.dm, %i.dk
  br i1 %or.cond28.i.i.i, label %.critedge.i.i.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.thread.i.i:                                      ; preds = %bb.ag
  %i.dn = add nsw i32 %i.da, 2
  br label %.sink.split.i

.critedge.i.i.i:                                  ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %.critedge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.df, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.do = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %i.do, ptr %i.e, align 8, !tbaa !19
  %i.dp = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 3 uses
  %i.dr = and i8 %i.dq, -33
  %i.ds = add i8 %i.dr, -65
  %i.dt = icmp ult i8 %i.ds, 26
  %i.du = add i8 %i.dq, -48
  %i.dv = icmp ult i8 %i.du, 10
  %or.cond.i.i.i = or i1 %i.dv, %i.dt
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i: ; preds = %.critedge.i.i.i
  %i.dw = icmp eq i8 %i.dq, 95
  br i1 %i.dw, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i
  %i.dx = add nsw i32 %i.do, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i, %.thread.i.i
  %.sink690.i = phi i32 [ %i.dx, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i ], [ %i.dn, %.thread.i.i ]
  store i32 %.sink690.i, ptr %i.e, align 8, !tbaa !19
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.af
  %i.dy = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.dz = icmp eq i32 %i.dy, 256
  br i1 %i.dz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %i.dy, 1
  store i32 %i.ea, ptr %i.o, align 8, !tbaa !16
  %i.eb = sext i32 %i.dy to i64
  %i.ec = getelementptr inbounds i8, ptr %3, i64 %i.eb
  store i8 9, ptr %i.ec, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.aj:                                            ; preds = %.lr.ph
  %i.ed = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ee = add nsw i32 %i.ed, -1
  store i32 %i.ee, ptr %i.p, align 4, !tbaa !20
  br label %.critedge51.backedge.i

.critedge51.backedge.i:                           ; preds = %.loopexit.i, %bb.gn, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit204.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit200.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i, %bb.fe, %bb.et, %bb.ei, %bb.ci, %bb.cg, %bb.ca, %bb.by, %bb.aw, %bb.au, %bb.aj, %bb.ae, %bb.ac, %bb.q, %bb.o, %.lr.ph
  %exitcond.not.old.old.old.old.old.old.old.i = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.old.old.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph370.i.backedge

.lr.ph370.i.backedge:                             ; preds = %.critedge51.backedge.i, %bb.be, %bb.bl, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit, %bb.go
  %4 = load i32, ptr %i.o, align 8, !tbaa !16     ; 2 uses
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, !llvm.loop !22

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.ef = load i32, ptr %i.p, align 4, !tbaa !20
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %.not.i76.i = icmp ult i64 %i.el, 2
  br i1 %.not.i76.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i16 60, ptr %i.ei, align 1
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.c, align 8, !tbaa !13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.eo = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 256
  br i1 %i.ep, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i32 %i.eo, 1
  store i32 %i.eq, ptr %i.o, align 8, !tbaa !16
  %i.er = sext i32 %i.eo to i64
  %i.es = getelementptr inbounds i8, ptr %3, i64 %i.er
  store i8 10, ptr %i.es, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.ap:                                            ; preds = %.lr.ph
  %i.et = load i32, ptr %i.p, align 4, !tbaa !20
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %.not.i44.a = icmp ult i64 %i.ez, 5
  br i1 %.not.i44.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ew, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.fa, ptr %i.c, align 8, !tbaa !13
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.fb = icmp eq i32 %i.i, 256
  br i1 %i.fb, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.fc = zext nneg i32 %i.i to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %i.fc
  store i8 11, ptr %i.fd, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.au:                                            ; preds = %.lr.ph
  %i.fe = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.critedge51.backedge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %.not.i79.i = icmp ult i64 %i.fk, 2
  br i1 %.not.i79.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i16 62, ptr %i.fh, align 1
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.fm, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.backedge.i

bb.ax:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.fn = sext i32 %i.am to i64
  %i.fo = getelementptr inbounds i8, ptr %i.al, i64 %i.fn ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = add i8 %i.fp, -65
  %i.fr = icmp ult i8 %i.fq, 26
  %i.fs = add nsw i32 %i.ak, 2
  store i32 %i.fs, ptr %i.e, align 8, !tbaa !19
  br i1 %i.fr, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.ft = load i32, ptr %i.q, align 4, !tbaa !23  ; 3 uses
  %.not.i3 = icmp eq i32 %i.ft, 64
  br i1 %.not.i3, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fv = add nsw i32 %i.ft, 1
  store i32 %i.fv, ptr %i.q, align 4, !tbaa !23
  %i.fw = sext i32 %i.ft to i64
  %i.fx = getelementptr inbounds i8, ptr %i.r, i64 %i.fw
  store i8 %i.fu, ptr %i.fx, align 1, !tbaa !15
  %i.fy = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.fz = icmp eq i32 %i.fy, 256
  br i1 %i.fz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = add nsw i32 %i.fy, 1
  store i32 %i.ga, ptr %i.o, align 8, !tbaa !16
  %i.gb = sext i32 %i.fy to i64
  %i.gc = getelementptr inbounds i8, ptr %3, i64 %i.gb
  store i8 2, ptr %i.gc, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.bb:                                            ; preds = %.lr.ph
  %i.gd = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %.not.i82.i = icmp ult i64 %i.gj, 3
  br i1 %.not.i82.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gg, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  store ptr %i.gk, ptr %i.c, align 8, !tbaa !13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.gl = load i32, ptr %i.q, align 4, !tbaa !23
  %i.gm = add nsw i32 %i.gl, -1                   ; 2 uses
  store i32 %i.gm, ptr %i.q, align 4, !tbaa !23
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %i.r, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15
  %i.gq = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext %i.gp)
  %exitcond.not.i = icmp ne i32 %i.h, 131071
  %or.cond.not.i = select i1 %i.gq, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph370.i.backedge, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.bf:                                            ; preds = %bb.ax
  %i.gr = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.gs = add i8 %i.gr, -97
  %i.gt = icmp ult i8 %i.gs, 26
  br i1 %i.gt, label %bb.bg, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gu = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.gv = icmp eq i32 %i.gu, 256
  br i1 %i.gv, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = add nsw i32 %i.gu, 1
  store i32 %i.gw, ptr %i.o, align 8, !tbaa !16
  %i.gx = sext i32 %i.gu to i64
  %i.gy = getelementptr inbounds i8, ptr %3, i64 %i.gx
  store i8 3, ptr %i.gy, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.bi:                                            ; preds = %.lr.ph
  %i.gz = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %.not.i85.i = icmp ult i64 %i.hf, 3
  br i1 %.not.i85.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hc, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  store ptr %i.hg, ptr %i.c, align 8, !tbaa !13
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.hh = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  %exitcond.not.old.i = icmp ne i32 %i.h, 131071
  %or.cond693.not.i = select i1 %i.hh, i1 %exitcond.not.old.i, i1 false
  br i1 %or.cond693.not.i, label %.lr.ph370.i.backedge, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.critedge239._crit_edge.i:                        ; preds = %.critedge239.backedge.i, %.critedge239.preheader.i
  %.lcssa394.i = phi i64 [ %i.abf, %.critedge239.preheader.i ], [ %i.io, %.critedge239.backedge.i ]
  %.val58.lcssa.i = phi ptr [ %.val58396.i, %.critedge239.preheader.i ], [ %.val58.i, %.critedge239.backedge.i ]
  %.val57.lcssa.i = phi i32 [ %.val57395.i, %.critedge239.preheader.i ], [ %.val57.i, %.critedge239.backedge.i ]
  %i.hi = getelementptr inbounds i8, ptr %.val58.lcssa.i, i64 %.lcssa394.i
  %i.hj = add nsw i32 %.val57.lcssa.i, 1
  store i32 %i.hj, ptr %i.e, align 8, !tbaa !19
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.hk, -97            ; 3 uses
  %i.hl = icmp ult i8 %switch.tableidx, 26
  br i1 %i.hl, label %switch.hole_check, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.hole_check:                                ; preds = %.critedge239._crit_edge.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 62716863, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup573, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.lookup573:                                 ; preds = %switch.hole_check
  %i.hm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm, i64 %i.hm
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.hn = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.critedge51.preheader.i, label %bb.bm

bb.bm:                                            ; preds = %switch.lookup573
  %i.hp = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %switch.load) #7 ; 2 uses
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  %i.hr = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %.not.i88.i = icmp ult i64 %i.hv, %i.hq
  br i1 %.not.i88.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hs, ptr nonnull readonly align 1 %switch.load, i64 %i.hq, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hp
  store ptr %i.hw, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.preheader.i

.lr.ph399.i:                                      ; preds = %.critedge239.preheader.i, %.critedge239.backedge.i
  %i.hx = phi i8 [ %i.iq, %.critedge239.backedge.i ], [ %i.abh, %.critedge239.preheader.i ]
  %.pre523.i = phi ptr [ %.val58.i, %.critedge239.backedge.i ], [ %.val58396.i, %.critedge239.preheader.i ] ; 5 uses
  %i.hy = phi i32 [ %.val57.i, %.critedge239.backedge.i ], [ %.val57395.i, %.critedge239.preheader.i ] ; 12 uses
  switch i8 %i.hx, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i [
    i8 65, label %bb.bo
    i8 83, label %bb.cb
    i8 84, label %bb.db
    i8 82, label %bb.cj
    i8 81, label %bb.cp
    i8 80, label %bb.cv
    i8 79, label %bb.cy
    i8 70, label %bb.ej
    i8 68, label %bb.eu
    i8 66, label %bb.gt
  ]

bb.bo:                                            ; preds = %.lr.ph399.i
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.e, align 8, !tbaa !19
  %i.ia = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %.not.i93.i = icmp ult i64 %i.ig, 2
  br i1 %.not.i93.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i16 91, ptr %i.id, align 1
  %i.ih = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.c, align 8, !tbaa !13
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.ij = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.ik = icmp eq i32 %i.ij, 256
  br i1 %i.ik, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.il = add nsw i32 %i.ij, 1
  store i32 %i.il, ptr %i.o, align 8, !tbaa !16
  %i.im = sext i32 %i.ij to i64
  %i.in = getelementptr inbounds i8, ptr %3, i64 %i.im
  store i8 12, ptr %i.in, align 1, !tbaa !15
  br label %.critedge239.backedge.i

.critedge239.backedge.i:                          ; preds = %bb.da, %bb.cy, %bb.cx, %bb.cv, %bb.gw, %bb.di, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i145.i, %bb.cs, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i, %bb.cm, %bb.cf, %bb.bs
  %.val57.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 3 uses
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.io = sext i32 %.val57.i to i64               ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %.val58.i, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !15  ; 2 uses
  %i.ir = add i8 %i.iq, -97
  %i.is = icmp ult i8 %i.ir, 26
  br i1 %i.is, label %.critedge239._crit_edge.i, label %.lr.ph399.i

bb.bt:                                            ; preds = %.lr.ph
  %i.it = load i32, ptr %i.p, align 4, !tbaa !20
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.iv = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %.not.i96.i = icmp ult i64 %i.iz, 3
  br i1 %.not.i96.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.iw, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store ptr %i.ja, ptr %i.c, align 8, !tbaa !13
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %i.jb = icmp eq i32 %i.i, 256
  br i1 %i.jb, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.jc = zext nneg i32 %i.i to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 %i.jc
  store i8 13, ptr %i.jd, align 1, !tbaa !15
  %.pre518.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre519.i = load i32, ptr %i.e, align 8, !tbaa !19
  br label %.preheader.i

bb.by:                                            ; preds = %.lr.ph
  %i.je = load i32, ptr %i.p, align 4, !tbaa !20
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.critedge51.backedge.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jg = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.jh = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %.not.i99.i = icmp ult i64 %i.jk, 2
  br i1 %.not.i99.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i16 93, ptr %i.jh, align 1
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store ptr %i.jm, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.backedge.i

bb.cb:                                            ; preds = %.lr.ph399.i
  %i.jn = add nsw i32 %i.hy, 1
  store i32 %i.jn, ptr %i.e, align 8, !tbaa !19
  %i.jo = load i32, ptr %i.p, align 4, !tbaa !20
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jq = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.jr = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %.not.i104.i = icmp ult i64 %i.ju, 2
  br i1 %.not.i104.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i16 91, ptr %i.jr, align 1
  %i.jv = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store ptr %i.jw, ptr %i.c, align 8, !tbaa !13
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.jx = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.jy = icmp eq i32 %i.jx, 256
  br i1 %i.jy, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jz = add nsw i32 %i.jx, 1
  store i32 %i.jz, ptr %i.o, align 8, !tbaa !16
  %i.ka = sext i32 %i.jx to i64
  %i.kb = getelementptr inbounds i8, ptr %3, i64 %i.ka
  store i8 14, ptr %i.kb, align 1, !tbaa !15
  br label %.critedge239.backedge.i

bb.cg:                                            ; preds = %.lr.ph
  %i.kc = load i32, ptr %i.p, align 4, !tbaa !20
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.critedge51.backedge.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ke = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %.not.i107.i = icmp ult i64 %i.ki, 2
  br i1 %.not.i107.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i16 93, ptr %i.kf, align 1
  %i.kj = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store ptr %i.kk, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.backedge.i

bb.cj:                                            ; preds = %.lr.ph399.i
  %i.kl = add nsw i32 %i.hy, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.e, align 8, !tbaa !19
  %i.km = load i32, ptr %i.p, align 4, !tbaa !20
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ko = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.kp = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %.not.i114.i = icmp ult i64 %i.ks, 2
  br i1 %.not.i114.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i16 38, ptr %i.kp, align 1
  %i.kt = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.ku, ptr %i.c, align 8, !tbaa !13
  %.pre525.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre526.i = load i32, ptr %i.e, align 8, !tbaa !19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.kv = phi i32 [ %i.kl, %bb.cj ], [ %.pre526.i, %bb.cl ] ; 3 uses
  %i.kw = phi ptr [ %.pre523.i, %bb.cj ], [ %.pre525.i, %bb.cl ] ; 3 uses
  %i.kx = sext i32 %i.kv to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !15
  %.not.i.i117.i = icmp eq i8 %i.kz, 76
  br i1 %.not.i.i117.i, label %bb.cn, label %.critedge239.backedge.i

bb.cn:                                            ; preds = %bb.cm
  %i.la = add nsw i32 %i.kv, 1                    ; 2 uses
  store i32 %i.la, ptr %i.e, align 8, !tbaa !19
  %i.lb = sext i32 %i.la to i64                   ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %i.kw, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !15  ; 3 uses
  %.not.i.i.i119.i = icmp eq i8 %i.ld, 95
  br i1 %.not.i.i.i119.i, label %bb.co, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i: ; preds = %bb.cn
  %i.le = and i8 %i.ld, -33
  %i.lf = add i8 %i.le, -65
  %i.lg = icmp ult i8 %i.lf, 26
  %i.lh = add i8 %i.ld, -48
  %i.li = icmp ult i8 %i.lh, 10
  %or.cond28.i.i121.i = or i1 %i.li, %i.lg
  br i1 %or.cond28.i.i121.i, label %.critedge.i.i122.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.co:                                            ; preds = %bb.cn
  %i.lj = add nsw i32 %i.kv, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i

.critedge.i.i122.i:                               ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i, %.critedge.i.i122.i
  %indvars.iv.i.i123.i = phi i64 [ %indvars.iv.next.i.i124.i, %.critedge.i.i122.i ], [ %i.lb, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i ]
  %indvars.iv.next.i.i124.i = add nsw i64 %indvars.iv.i.i123.i, 1 ; 3 uses
  %i.lk = trunc nsw i64 %indvars.iv.next.i.i124.i to i32 ; 2 uses
  store i32 %i.lk, ptr %i.e, align 8, !tbaa !19
  %i.ll = getelementptr inbounds i8, ptr %i.kw, i64 %indvars.iv.next.i.i124.i
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !15  ; 3 uses
  %i.ln = and i8 %i.lm, -33
  %i.lo = add i8 %i.ln, -65
  %i.lp = icmp ult i8 %i.lo, 26
  %i.lq = add i8 %i.lm, -48
  %i.lr = icmp ult i8 %i.lq, 10
  %or.cond.i.i125.i = or i1 %i.lr, %i.lp
  br i1 %or.cond.i.i125.i, label %.critedge.i.i122.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i126.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i126.i: ; preds = %.critedge.i.i122.i
  %i.ls = icmp eq i8 %i.lm, 95
  br i1 %i.ls, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i127.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i127.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i126.i
  %i.lt = add nsw i32 %i.lk, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i127.i, %bb.co
  %.sink.i128.i = phi i32 [ %i.lt, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i127.i ], [ %i.lj, %bb.co ]
  store i32 %.sink.i128.i, ptr %i.e, align 8, !tbaa !19
  br label %.critedge239.backedge.i

bb.cp:                                            ; preds = %.lr.ph399.i
  %i.lu = add nsw i32 %i.hy, 1                    ; 2 uses
  store i32 %i.lu, ptr %i.e, align 8, !tbaa !19
  %i.lv = load i32, ptr %i.p, align 4, !tbaa !20
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lx = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ly = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %.not.i131.i = icmp ult i64 %i.mb, 6
  br i1 %.not.i131.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ly, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 5
  store ptr %i.mc, ptr %i.c, align 8, !tbaa !13
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %i.md = sext i32 %i.lu to i64
  %i.me = getelementptr inbounds i8, ptr %.pre523.i, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !15
  %.not.i.i134.i = icmp eq i8 %i.mf, 76
  br i1 %.not.i.i134.i, label %bb.ct, label %.critedge239.backedge.i

bb.ct:                                            ; preds = %bb.cs
  %i.mg = add nsw i32 %i.hy, 2                    ; 2 uses
  store i32 %i.mg, ptr %i.e, align 8, !tbaa !19
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %.pre523.i, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !15  ; 3 uses
  %.not.i.i.i136.i = icmp eq i8 %i.mj, 95
  br i1 %.not.i.i.i136.i, label %bb.cu, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i: ; preds = %bb.ct
  %i.mk = and i8 %i.mj, -33
  %i.ml = add i8 %i.mk, -65
  %i.mm = icmp ult i8 %i.ml, 26
  %i.mn = add i8 %i.mj, -48
  %i.mo = icmp ult i8 %i.mn, 10
  %or.cond28.i.i138.i = or i1 %i.mo, %i.mm
  br i1 %or.cond28.i.i138.i, label %.critedge.i.i139.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.cu:                                            ; preds = %bb.ct
  %i.mp = add nsw i32 %i.hy, 3
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i145.i

.critedge.i.i139.i:                               ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i, %.critedge.i.i139.i
  %indvars.iv.i.i140.i = phi i64 [ %indvars.iv.next.i.i141.i, %.critedge.i.i139.i ], [ %i.mh, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i ]
  %indvars.iv.next.i.i141.i = add nsw i64 %indvars.iv.i.i140.i, 1 ; 3 uses
  %i.mq = trunc nsw i64 %indvars.iv.next.i.i141.i to i32 ; 2 uses
  store i32 %i.mq, ptr %i.e, align 8, !tbaa !19
  %i.mr = getelementptr inbounds i8, ptr %.pre523.i, i64 %indvars.iv.next.i.i141.i
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !15  ; 3 uses
  %i.mt = and i8 %i.ms, -33
  %i.mu = add i8 %i.mt, -65
  %i.mv = icmp ult i8 %i.mu, 26
  %i.mw = add i8 %i.ms, -48
  %i.mx = icmp ult i8 %i.mw, 10
  %or.cond.i.i142.i = or i1 %i.mx, %i.mv
  br i1 %or.cond.i.i142.i, label %.critedge.i.i139.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i143.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i143.i: ; preds = %.critedge.i.i139.i
  %i.my = icmp eq i8 %i.ms, 95
  br i1 %i.my, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i144.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i144.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i143.i
  %i.mz = add nsw i32 %i.mq, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i145.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i145.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i144.i, %bb.cu
  %.sink.i146.i = phi i32 [ %i.mz, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i144.i ], [ %i.mp, %bb.cu ]
  store i32 %.sink.i146.i, ptr %i.e, align 8, !tbaa !19
  br label %.critedge239.backedge.i

bb.cv:                                            ; preds = %.lr.ph399.i
  %i.na = add nsw i32 %i.hy, 1
  store i32 %i.na, ptr %i.e, align 8, !tbaa !19
  %i.nb = load i32, ptr %i.p, align 4, !tbaa !20
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.critedge239.backedge.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nd = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %.not.i41.a = icmp ult i64 %i.nh, 8
  br i1 %.not.i41.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 9135238377595690, ptr %i.ne, align 1
  %i.ni = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 7
  store ptr %i.nj, ptr %i.c, align 8, !tbaa !13
  br label %.critedge239.backedge.i

bb.cy:                                            ; preds = %.lr.ph399.i
  %i.nk = add nsw i32 %i.hy, 1
  store i32 %i.nk, ptr %i.e, align 8, !tbaa !19
  %i.nl = load i32, ptr %i.p, align 4, !tbaa !20
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.critedge239.backedge.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.no = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = sub i64 %i.np, %i.nq
  %.not.i38.a = icmp ult i64 %i.nr, 6
  br i1 %.not.i38.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.no, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 5
  store ptr %i.ns, ptr %i.c, align 8, !tbaa !13
  br label %.critedge239.backedge.i

bb.db:                                            ; preds = %.lr.ph399.i
  %i.nt = add nsw i32 %i.hy, 1                    ; 2 uses
  store i32 %i.nt, ptr %i.e, align 8, !tbaa !19
  %i.nu = load i32, ptr %i.p, align 4, !tbaa !20
  %i.nv = icmp sgt i32 %i.nu, 0
  br i1 %i.nv, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nw = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.nx = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %.not.i158.i = icmp ult i64 %i.oa, 2
  br i1 %.not.i158.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i16 40, ptr %i.nx, align 1
  %i.ob = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store ptr %i.oc, ptr %i.c, align 8, !tbaa !13
  %.pre527.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre528.i = load i32, ptr %i.e, align 8, !tbaa !19
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %i.od = phi i32 [ %i.nt, %bb.db ], [ %.pre528.i, %bb.dd ] ; 2 uses
  %i.oe = phi ptr [ %.pre523.i, %bb.db ], [ %.pre527.i, %bb.dd ]
  %i.of = sext i32 %i.od to i64
  %i.og = getelementptr inbounds i8, ptr %i.oe, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !15
  %.not.i161.i = icmp eq i8 %i.oh, 69
  br i1 %.not.i161.i, label %bb.df, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i.a

bb.df:                                            ; preds = %bb.de
  %i.oi = add nsw i32 %i.od, 1
  store i32 %i.oi, ptr %i.e, align 8, !tbaa !19
  %i.oj = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.critedge51.preheader.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.om = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %.not.i35.a = icmp ult i64 %i.op, 2
  br i1 %.not.i35.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i16 41, ptr %i.om, align 1
  %i.oq = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 1
  store ptr %i.or, ptr %i.c, align 8, !tbaa !13
  br label %.critedge51.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i.a: ; preds = %bb.de
  %i.os = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.ot = icmp eq i32 %i.os, 256
  br i1 %i.ot, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.di

bb.di:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i.a
  %i.ou = add nsw i32 %i.os, 1
  store i32 %i.ou, ptr %i.o, align 8, !tbaa !16
  %i.ov = sext i32 %i.os to i64
  %i.ow = getelementptr inbounds i8, ptr %3, i64 %i.ov
  store i8 15, ptr %i.ow, align 1, !tbaa !15
  br label %.critedge239.backedge.i

bb.dj:                                            ; preds = %.lr.ph
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.oy = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ox, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !15
  %.not.i163.i = icmp eq i8 %i.pb, 69
  br i1 %.not.i163.i, label %bb.dk, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i

bb.dk:                                            ; preds = %bb.dj
  %i.pc = add nsw i32 %i.oy, 1
  store i32 %i.pc, ptr %i.e, align 8, !tbaa !19
  %i.pd = load i32, ptr %i.p, align 4, !tbaa !20
  %i.pe = icmp sgt i32 %i.pd, 0
  br i1 %i.pe, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pf = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.pg = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %.not.i32.a = icmp ult i64 %i.pj, 3
  br i1 %.not.i32.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pg, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  store ptr %i.pk, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a: ; preds = %bb.dk, %bb.dm
  %exitcond.not.old.old.i.not.a = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.i.not.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph370.i.backedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i: ; preds = %bb.dj
  %i.pl = load i32, ptr %i.p, align 4, !tbaa !20
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i
  %i.pn = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.po = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %.not.i29.a = icmp ult i64 %i.pr, 3
  br i1 %.not.i29.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.po, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  store ptr %i.ps, ptr %i.c, align 8, !tbaa !13
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i, %bb.do
  %i.pt = icmp eq i32 %i.i, 256
  br i1 %i.pt, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.pu = zext nneg i32 %i.i to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 %i.pu
  store i8 16, ptr %i.pv, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.dr:                                            ; preds = %.lr.ph
  %i.pw = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.px = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds i8, ptr %i.pw, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !15
  %.not.i165.i = icmp eq i8 %i.qa, 69
  br i1 %.not.i165.i, label %bb.ds, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i

bb.ds:                                            ; preds = %bb.dr
  %i.qb = add nsw i32 %i.px, 1
  store i32 %i.qb, ptr %i.e, align 8, !tbaa !19
  %i.qc = load i32, ptr %i.p, align 4, !tbaa !20
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qe = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.qf = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %.not.i26.a = icmp ult i64 %i.qi, 2
  br i1 %.not.i26.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i16 41, ptr %i.qf, align 1
  %i.qj = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1
  store ptr %i.qk, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a: ; preds = %bb.ds, %bb.du
  %exitcond.not.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.i.not, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph370.i.backedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i: ; preds = %bb.dr
  %i.ql = load i32, ptr %i.p, align 4, !tbaa !20
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i
  %i.qn = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.qo = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %.not.i23.a = icmp ult i64 %i.qr, 3
  br i1 %.not.i23.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qo, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  store ptr %i.qs, ptr %i.c, align 8, !tbaa !13
  br label %bb.dx

bb.dx:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i, %bb.dw
  %i.qt = icmp eq i32 %i.i, 256
  br i1 %i.qt, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.qu = zext nneg i32 %i.i to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %3, i64 %i.qu
  store i8 17, ptr %i.qv, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.dz:                                            ; preds = %.lr.ph
  %i.qw = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.qx = load i32, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr inbounds i8, ptr %i.qw, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !15
  %.not.i167.i = icmp eq i8 %i.ra, 69
  br i1 %.not.i167.i, label %bb.ea, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i

bb.ea:                                            ; preds = %bb.dz
  %i.rb = add nsw i32 %i.qx, 1
  store i32 %i.rb, ptr %i.e, align 8, !tbaa !19
  %i.rc = load i32, ptr %i.p, align 4, !tbaa !20
  %i.rd = icmp sgt i32 %i.rc, 0
  br i1 %i.rd, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.re = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.rf = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %.not.i20.a = icmp ult i64 %i.ri, 2
  br i1 %.not.i20.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i16 41, ptr %i.rf, align 1
  %i.rj = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  store ptr %i.rk, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22: ; preds = %bb.ea, %bb.ec
  %exitcond.not.old.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.i.not, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph370.i.backedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i: ; preds = %bb.dz
  %i.rl = load i32, ptr %i.p, align 4, !tbaa !20  ; 2 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i
  %i.rn = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ro = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq
  %.not.i17.a = icmp ult i64 %i.rr, 7
  br i1 %.not.i17.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ro, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 6
  store ptr %i.rs, ptr %i.c, align 8, !tbaa !13
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i, %bb.ee
  %i.rt = add nsw i32 %i.rl, 1
  store i32 %i.rt, ptr %i.p, align 4, !tbaa !20
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph._crit_edge, %bb.ef
  %.pre-phi319 = phi i64 [ %.pre318, %.lr.ph._crit_edge ], [ %i.qy, %bb.ef ]
  %i.ru = phi i32 [ %.pre316, %.lr.ph._crit_edge ], [ %i.qx, %bb.ef ]
  %i.rv = phi ptr [ %.pre315, %.lr.ph._crit_edge ], [ %i.qw, %bb.ef ]
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 %.pre-phi319
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !15
  %.not.i169.i = icmp eq i8 %i.rx, 69
  br i1 %.not.i169.i, label %bb.ei, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i: ; preds = %bb.eg
  %i.ry = icmp eq i32 %i.i, 256
  br i1 %i.ry, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.rz = zext nneg i32 %i.i to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 %i.rz
  store i8 18, ptr %i.sa, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.ei:                                            ; preds = %bb.eg
  %i.sb = add nsw i32 %i.ru, 1
  store i32 %i.sb, ptr %i.e, align 8, !tbaa !19
  %i.sc = load i32, ptr %i.p, align 4, !tbaa !20
  %i.sd = add nsw i32 %i.sc, -1
  store i32 %i.sd, ptr %i.p, align 4, !tbaa !20
  br label %.critedge51.backedge.i

bb.ej:                                            ; preds = %.lr.ph399.i
  %i.se = add nsw i32 %i.hy, 1
  store i32 %i.se, ptr %i.e, align 8, !tbaa !19
  %i.sf = load i32, ptr %i.p, align 4, !tbaa !20  ; 2 uses
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.sh = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.si = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %.not.i14.a = icmp ult i64 %i.sl, 6
  br i1 %.not.i14.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.si, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 5
  store ptr %i.sm, ptr %i.c, align 8, !tbaa !13
  br label %bb.em

bb.em:                                            ; preds = %bb.ej, %bb.el
  %i.sn = add nsw i32 %i.sf, 1
  store i32 %i.sn, ptr %i.p, align 4, !tbaa !20
  %i.so = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.so, label %bb.en, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.en:                                            ; preds = %bb.em
  %i.sp = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.sq = load i32, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr %i.sp, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !15  ; 2 uses
  %.not.i171.i = icmp eq i8 %i.st, 85
  br i1 %.not.i171.i, label %bb.eo, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i

bb.eo:                                            ; preds = %bb.en
  %i.su = add nsw i32 %i.sq, 1                    ; 3 uses
  store i32 %i.su, ptr %i.e, align 8, !tbaa !19
  %.pre520.i = sext i32 %i.su to i64
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.sp, i64 %.pre520.i
  %.pre522.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i: ; preds = %bb.eo, %bb.en
  %i.sv = phi i8 [ %i.st, %bb.en ], [ %.pre522.i, %bb.eo ]
  %i.sw = phi i32 [ %i.sq, %bb.en ], [ %i.su, %bb.eo ] ; 2 uses
  %.not.i173.i = icmp eq i8 %i.sv, 75
  br i1 %.not.i173.i, label %bb.ep, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i

bb.ep:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i
  %i.sx = add nsw i32 %i.sw, 1                    ; 2 uses
  store i32 %i.sx, ptr %i.e, align 8, !tbaa !19
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds i8, ptr %i.sp, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !15
  %.not.i175.i = icmp eq i8 %i.ta, 67
  br i1 %.not.i175.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.thread.i: ; preds = %bb.ep
  %i.tb = add nsw i32 %i.sw, 2
  store i32 %i.tb, ptr %i.e, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i: ; preds = %bb.ep
  %i.tc = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.tc, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i: ; preds = %.lr.ph, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.thread.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i
  %.212.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.thread.i ], [ %.111.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i ], [ %.111.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit172.i ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.td = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.te = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.td, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !15
  %.not.i177.i = icmp eq i8 %i.th, 69
  br i1 %.not.i177.i, label %bb.er, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit178.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit178.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i
  %i.ti = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.tj = icmp eq i32 %i.ti, 256
  br i1 %i.tj, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.eq

bb.eq:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit178.i
  %i.tk = add nsw i32 %i.ti, 1
  store i32 %i.tk, ptr %i.o, align 8, !tbaa !16
  %i.tl = sext i32 %i.ti to i64
  %i.tm = getelementptr inbounds i8, ptr %3, i64 %i.tl
  store i8 19, ptr %i.tm, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.er:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit174.i
  %i.tn = add nsw i32 %i.te, 1
  store i32 %i.tn, ptr %i.e, align 8, !tbaa !19
  %i.to = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.tp = icmp eq i32 %i.to, 256
  br i1 %i.tp, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.tq = add nsw i32 %i.to, 1
  store i32 %i.tq, ptr %i.o, align 8, !tbaa !16
  %i.tr = sext i32 %i.to to i64
  %i.ts = getelementptr inbounds i8, ptr %3, i64 %i.tr
  store i8 20, ptr %i.ts, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.et:                                            ; preds = %.lr.ph
  %i.tt = load i32, ptr %i.p, align 4, !tbaa !20
  %i.tu = add nsw i32 %i.tt, -1
  store i32 %i.tu, ptr %i.p, align 4, !tbaa !20
  br label %.critedge51.backedge.i

bb.eu:                                            ; preds = %.lr.ph399.i
  %i.tv = add nsw i32 %i.hy, 1
  store i32 %i.tv, ptr %i.e, align 8, !tbaa !19
  %i.tw = load i32, ptr %i.p, align 4, !tbaa !20
  %i.tx = icmp sgt i32 %i.tw, 0
  br i1 %i.tx, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ty = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.tz = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %.not.i11.a = icmp ult i64 %i.uc, 5
  br i1 %.not.i11.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.tz, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store ptr %i.ud, ptr %i.c, align 8, !tbaa !13
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eu, %bb.ew
  %i.ue = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.ue, label %bb.ey, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.ey:                                            ; preds = %bb.ex
  %i.uf = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ug = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds i8, ptr %i.uf, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !15
  %.not.i179.i = icmp eq i8 %i.uj, 69
  br i1 %.not.i179.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i: ; preds = %bb.ey
  %i.uk = load i32, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.ul = icmp eq i32 %i.uk, 256
  br i1 %i.ul, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fc

.loopexit245.i:                                   ; preds = %.lr.ph, %.lr.ph
  %i.um = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.un = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds i8, ptr %i.um, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !15
  %.not.i181.i = icmp eq i8 %i.uq, 69
  br i1 %.not.i181.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit182.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit182.i: ; preds = %.loopexit245.i
  %i.ur = load i32, ptr %i.p, align 4, !tbaa !20
  %i.us = icmp sgt i32 %i.ur, 0
  br i1 %i.us, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit182.i
  %i.ut = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.uu = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %.not.i8.a = icmp ult i64 %i.ux, 4
  br i1 %.not.i8.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i32 2108192, ptr %i.uu, align 1
  %i.uy = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 3
  store ptr %i.uz, ptr %i.c, align 8, !tbaa !13
  %.pre314 = load i32, ptr %i.o, align 8, !tbaa !16
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit182.i, %bb.fa
  %i.va = phi i32 [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit182.i ], [ %.pre314, %bb.fa ] ; 2 uses
  %i.vb = icmp eq i32 %i.va, 256
  br i1 %i.vb, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fc

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i: ; preds = %.loopexit245.i, %bb.ey
  %storemerge.in.i = phi i32 [ %i.ug, %bb.ey ], [ %i.un, %.loopexit245.i ]
  %.313.i = phi i32 [ %.111.ph.i, %bb.ey ], [ %i.h, %.loopexit245.i ]
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !19
  %6 = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %6, label %.critedge51.preheader.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fc:                                            ; preds = %bb.fb, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i
  %.sink709.i = phi i32 [ %i.uk, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i ], [ %i.va, %bb.fb ] ; 2 uses
  %.sink704.i = phi i8 [ 21, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i ], [ 22, %bb.fb ]
  %.414.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i ], [ %i.h, %bb.fb ]
  %i.vc = add nsw i32 %.sink709.i, 1
  store i32 %i.vc, ptr %i.o, align 8, !tbaa !16
  %i.vd = sext i32 %.sink709.i to i64
  %i.ve = getelementptr inbounds i8, ptr %3, i64 %i.vd
  store i8 %.sink704.i, ptr %i.ve, align 1, !tbaa !15
  %i.vf = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.vg = icmp eq i32 %i.vf, 256
  br i1 %i.vg, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vh = add nsw i32 %i.vf, 1
  store i32 %i.vh, ptr %i.o, align 8, !tbaa !16
  %i.vi = sext i32 %i.vf to i64
  %i.vj = getelementptr inbounds i8, ptr %3, i64 %i.vi
  store i8 23, ptr %i.vj, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.fe:                                            ; preds = %.lr.ph
  %.val55.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.vk = sext i32 %.val55.i to i64               ; 2 uses
  %i.vl = getelementptr inbounds i8, ptr %.val56.i, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !15
  %i.vn = icmp eq i8 %i.vm, 112
  br i1 %i.vn, label %bb.ff, label %.critedge51.backedge.i

bb.ff:                                            ; preds = %bb.fe
  %i.vo = load i32, ptr %i.p, align 4, !tbaa !20  ; 2 uses
  %i.vp = icmp sgt i32 %i.vo, 0
  br i1 %i.vp, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vq = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.vr = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %.not.i5.a = icmp ult i64 %i.vu, 3
  br i1 %.not.i5.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vr, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  store ptr %i.vv, ptr %i.c, align 8, !tbaa !13
  br label %bb.fi

bb.fi:                                            ; preds = %bb.ff, %bb.fh
  %i.vw = add nsw i32 %i.vo, 1
  store i32 %i.vw, ptr %i.p, align 4, !tbaa !20
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fn, %bb.fi
  %.pre-phi = phi i64 [ %.pre317, %bb.fn ], [ %i.vk, %bb.fi ]
  %i.vx = phi i32 [ %.pre313, %bb.fn ], [ %.val55.i, %bb.fi ]
  %i.vy = phi ptr [ %.pre312, %bb.fn ], [ %.val56.i, %bb.fi ]
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %.pre-phi
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !15
  %.not.i183.i = icmp eq i8 %i.wa, 112
  br i1 %.not.i183.i, label %bb.fk, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i

bb.fk:                                            ; preds = %bb.fj
  %i.wb = add nsw i32 %i.vx, 1
  store i32 %i.wb, ptr %i.e, align 8, !tbaa !19
  %i.wc = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.wc, label %bb.fl, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fl:                                            ; preds = %bb.fk
  %i.wd = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.we = icmp eq i32 %i.wd, 256
  br i1 %i.we, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wf = add nsw i32 %i.wd, 1
  store i32 %i.wf, ptr %i.o, align 8, !tbaa !16
  %i.wg = sext i32 %i.wd to i64
  %i.wh = getelementptr inbounds i8, ptr %3, i64 %i.wg
  store i8 24, ptr %i.wh, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.fn:                                            ; preds = %.lr.ph
  %.pre312 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre313 = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.pre317 = sext i32 %.pre313 to i64
  br label %bb.fj, !llvm.loop !24

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i: ; preds = %bb.fj
  %i.wi = load i32, ptr %i.p, align 4, !tbaa !20
  %i.wj = add nsw i32 %i.wi, -1
  store i32 %i.wj, ptr %i.p, align 4, !tbaa !20
  br label %.critedge51.backedge.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit186.i: ; preds = %bb.gz, %.preheader.i
  %i.wk = phi i8 [ %i.abt, %.preheader.i ], [ %i.adm, %bb.gz ]
  %i.wl = phi i32 [ %i.abp, %.preheader.i ], [ %i.adj, %bb.gz ]
  %.not.i187.i = icmp eq i8 %i.wk, 112
  br i1 %.not.i187.i, label %bb.fo, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit188.i

bb.fo:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit186.i
  %i.wm = add nsw i32 %i.wl, 1
  store i32 %i.wm, ptr %i.e, align 8, !tbaa !19
  %i.wn = load i32, ptr %i.p, align 4, !tbaa !20
  %i.wo = icmp sgt i32 %i.wn, 0
  br i1 %i.wo, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wp = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.wq = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = ptrtoint ptr %i.wq to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %.not.i4.a = icmp ult i64 %i.wt, 2
  br i1 %.not.i4.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  store i16 95, ptr %i.wq, align 1
  %i.wu = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 1
  store ptr %i.wv, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit: ; preds = %bb.fo, %bb.fq
  %exitcond.not.old.old.old.old.old.i.not.a = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.i.not.a, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph370.i.backedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit188.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit186.i
  %i.ww = load i32, ptr %i.p, align 4, !tbaa !20
  %i.wx = add nsw i32 %i.ww, 1
  store i32 %i.wx, ptr %i.p, align 4, !tbaa !20
  %i.wy = load i32, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.wz = icmp eq i32 %i.wy, 256
  br i1 %i.wz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fr

bb.fr:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit188.i
  %i.xa = add nsw i32 %i.wy, 1
  store i32 %i.xa, ptr %i.o, align 8, !tbaa !16
  %i.xb = sext i32 %i.wy to i64
  %i.xc = getelementptr inbounds i8, ptr %3, i64 %i.xb
  store i8 25, ptr %i.xc, align 1, !tbaa !15
  br label %.critedge239.preheader.i

bb.fs:                                            ; preds = %.lr.ph
  %i.xd = load i32, ptr %i.p, align 4, !tbaa !20  ; 2 uses
  %i.xe = add nsw i32 %i.xd, -1                   ; 3 uses
  store i32 %i.xe, ptr %i.p, align 4, !tbaa !20
  %i.xf = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.xg = load i32, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %i.xf, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !15
  %.not.i189.i = icmp eq i8 %i.xj, 110
  br i1 %.not.i189.i, label %bb.ft, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i

bb.ft:                                            ; preds = %bb.fs
  %i.xk = add nsw i32 %i.xg, 1
  store i32 %i.xk, ptr %i.e, align 8, !tbaa !19
  %i.xl = icmp sgt i32 %i.xd, 1
  br i1 %i.xl, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xm = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.xn = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = icmp slt i64 %i.xq, 2
  br i1 %i.xr, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 1
  store ptr %i.xs, ptr %i.c, align 8, !tbaa !13
  store i8 45, ptr %i.xn, align 1, !tbaa !15
  %i.xt = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.xt, align 1, !tbaa !15
  %.pre511.i = load i32, ptr %i.p, align 4, !tbaa !20
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i: ; preds = %bb.fv, %bb.fs
  %i.xu = phi i32 [ %i.xe, %bb.fs ], [ %.pre511.i, %bb.fv ] ; 3 uses
  %i.xv = icmp sgt i32 %i.xu, 0
  br i1 %i.xv, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i, label %bb.fw

bb.fw:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i
  %i.xw = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.xx = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %.not.i192.i = icmp ult i64 %i.ya, 3
  br i1 %.not.i192.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xx, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 2
  store ptr %i.yb, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i: ; preds = %bb.fx, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i, %bb.ft
  %i.yc = phi i32 [ %i.xu, %bb.fx ], [ %i.xu, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.i ], [ %i.xe, %bb.ft ] ; 3 uses
  %i.yd = load ptr, ptr %i.b, align 8, !tbaa !9   ; 4 uses
  %i.ye = load i32, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %i.yf = sext i32 %i.ye to i64                   ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %i.yd, i64 %i.yf ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !15  ; 4 uses
  %.not.i195.i = icmp eq i8 %i.yh, 48
  br i1 %.not.i195.i, label %bb.fy, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i
  %i.yi = add i8 %i.yh, -48
  %i.yj = icmp ult i8 %i.yi, 10
  %i.yk = add i8 %i.yh, -97
  %i.yl = icmp ult i8 %i.yk, 6
  %i.ym = or i1 %i.yj, %i.yl
  br i1 %i.ym, label %.lr.ph.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i
  %7 = icmp sgt i32 %i.yc, 0
  br i1 %7, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i, label %.lr.ph.split.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i: ; preds = %.lr.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i ], [ %i.yf, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.yn = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.yn, ptr %i.e, align 8, !tbaa !19
  %i.yo = getelementptr inbounds i8, ptr %i.yd, i64 %indvars.iv.next.i
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !15  ; 3 uses
  %i.yq = add i8 %i.yp, -48
  %i.yr = icmp ult i8 %i.yq, 10
  %i.ys = add i8 %i.yp, -97
  %i.yt = icmp ult i8 %i.ys, 6
  %i.yu = or i1 %i.yr, %i.yt
  br i1 %i.yu, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i, !llvm.loop !25

bb.fy:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit190.thread.i
  %i.yv = add nsw i32 %i.ye, 1                    ; 2 uses
  store i32 %i.yv, ptr %i.e, align 8, !tbaa !19
  %8 = icmp sgt i32 %i.yc, 0
  br i1 %8, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.yx = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = icmp slt i64 %i.za, 2
  br i1 %i.zb, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  store ptr %i.zc, ptr %i.c, align 8, !tbaa !13
  store i8 48, ptr %i.yx, align 1, !tbaa !15
  %i.zd = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.zd, align 1, !tbaa !15
  %.pre515.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %.pre516.i = load i32, ptr %i.e, align 8, !tbaa !19
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy
  %i.ze = phi i32 [ %.pre516.i, %bb.ga ], [ %i.yv, %bb.fy ] ; 2 uses
  %i.zf = phi ptr [ %.pre515.i, %bb.ga ], [ %i.yd, %bb.fy ]
  %i.zg = sext i32 %i.ze to i64
  %i.zh = getelementptr inbounds i8, ptr %i.zf, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !15
  %.not.i199.i = icmp eq i8 %i.zi, 95
  br i1 %.not.i199.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit200.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit200.i: ; preds = %bb.gb
  %i.zj = add nsw i32 %i.ze, 1
  store i32 %i.zj, ptr %i.e, align 8, !tbaa !19
  br label %.critedge51.backedge.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i
  %.pr.i = load i32, ptr %i.p, align 4, !tbaa !20
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.zk = phi i32 [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.yc, %.lr.ph.i ]
  %.val54513.i = phi ptr [ %.val54.i, %.lr.ph.splitthread-pre-split.i ], [ %i.yd, %.lr.ph.i ]
  %i.zl = phi ptr [ %i.zy, %.lr.ph.splitthread-pre-split.i ], [ %i.yg, %.lr.ph.i ]
  %.val53362.i = phi i32 [ %.val53.i, %.lr.ph.splitthread-pre-split.i ], [ %i.ye, %.lr.ph.i ]
  %i.zm = add nsw i32 %.val53362.i, 1             ; 2 uses
  store i32 %i.zm, ptr %i.e, align 8, !tbaa !19
  %i.zn = load i8, ptr %i.zl, align 1, !tbaa !15
  %i.zo = icmp sgt i32 %i.zk, 0
  br i1 %i.zo, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.split.i
  %i.zp = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.zq = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.zr = ptrtoint ptr %i.zp to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = icmp slt i64 %i.zt, 2
  br i1 %i.zu, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.zv, ptr %i.c, align 8, !tbaa !13
  store i8 %i.zn, ptr %i.zq, align 1, !tbaa !15
  %i.zw = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.zw, align 1, !tbaa !15
  %.val53.pre.i = load i32, ptr %i.e, align 8, !tbaa !19
  %.val54.pre.i = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i: ; preds = %bb.gd, %.lr.ph.split.i
  %.val54.i = phi ptr [ %.val54513.i, %.lr.ph.split.i ], [ %.val54.pre.i, %bb.gd ] ; 2 uses
  %.val53.i = phi i32 [ %i.zm, %.lr.ph.split.i ], [ %.val53.pre.i, %bb.gd ] ; 3 uses
  %i.zx = sext i32 %.val53.i to i64
  %i.zy = getelementptr inbounds i8, ptr %.val54.i, i64 %i.zx ; 2 uses
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !15  ; 3 uses
  %i.aaa = add i8 %i.zz, -48
  %i.aab = icmp ult i8 %i.aaa, 10
  %i.aac = add i8 %i.zz, -97
  %i.aad = icmp ult i8 %i.aac, 6
  %i.aae = or i1 %i.aab, %i.aad
  br i1 %i.aae, label %.lr.ph.splitthread-pre-split.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i, !llvm.loop !26

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i
  %.val53.lcssa.i = phi i32 [ %i.ye, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i ], [ %i.yn, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i ], [ %.val53.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i ]
  %.lcssa251.i = phi i8 [ %i.yh, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196.preheader.i ], [ %i.yp, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.us.i ], [ %i.zz, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit202.i ]
  %.not.i203.i = icmp eq i8 %.lcssa251.i, 95
  br i1 %.not.i203.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit204.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit204.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i
  %i.aaf = add nsw i32 %.val53.lcssa.i, 1
  store i32 %i.aaf, ptr %i.e, align 8, !tbaa !19
  br label %.critedge51.backedge.i

bb.ge:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.aag = load i32, ptr %i.o, align 8, !tbaa !16 ; 3 uses
  %i.aah = icmp eq i32 %i.aag, 256
  br i1 %i.aah, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aai = add nsw i32 %i.aag, 1
  store i32 %i.aai, ptr %i.o, align 8, !tbaa !16
  %i.aaj = sext i32 %i.aag to i64
  %i.aak = getelementptr inbounds i8, ptr %3, i64 %i.aaj
  store i8 26, ptr %i.aak, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

bb.gg:                                            ; preds = %.lr.ph
  %i.aal = load i32, ptr %i.p, align 4, !tbaa !20 ; 2 uses
  %i.aam = icmp sgt i32 %i.aal, 0
  br i1 %i.aam, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aan = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.aao = load ptr, ptr %i.c, align 8, !tbaa !13 ; 3 uses
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %.not.i205.i = icmp ult i64 %i.aar, 5
  br i1 %.not.i205.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aao, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  store ptr %i.aas, ptr %i.c, align 8, !tbaa !13
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gg
  %i.aat = add nsw i32 %i.aal, 1
  store i32 %i.aat, ptr %i.p, align 4, !tbaa !20
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gm, %bb.gj
  %i.aau = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.aav = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr %i.aau, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !15
  %.not.i208.i = icmp eq i8 %i.aay, 69
  br i1 %.not.i208.i, label %bb.gn, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit209.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit209.i: ; preds = %bb.gk
  %i.aaz = icmp eq i32 %i.i, 256
  br i1 %i.aaz, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit209.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.aba = zext nneg i32 %i.i to i64
  %i.abb = getelementptr inbounds nuw i8, ptr %3, i64 %i.aba
  store i8 27, ptr %i.abb, align 1, !tbaa !15
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.val52.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.abc = sext i32 %.val.i to i64
  %i.abd = getelementptr inbounds i8, ptr %.val52.i, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !15
  switch i8 %i.abe, label %.critedge239.preheader.i [
    i8 76, label %bb.go
    i8 75, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit211.i
  ]

.critedge239.preheader.i:                         ; preds = %bb.gl, %bb.fr, %bb.fm, %bb.es, %bb.eq, %bb.eh, %bb.dy, %bb.dq, %bb.ao, %bb.w, %bb.n
  %.111.ph.i = phi i32 [ %.010.i, %bb.ao ], [ %i.h, %bb.n ], [ %i.h, %bb.fm ], [ %i.h, %bb.eh ], [ %i.h, %bb.dy ], [ %i.h, %bb.dq ], [ %i.h, %bb.fr ], [ %i.h, %bb.w ], [ %.212.i, %bb.es ], [ %.212.i, %bb.eq ], [ %i.h, %bb.gl ] ; 11 uses
  %.val57395.i = load i32, ptr %i.e, align 8, !tbaa !19 ; 3 uses
  %.val58396.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.abf = sext i32 %.val57395.i to i64           ; 2 uses
  %i.abg = getelementptr inbounds i8, ptr %.val58396.i, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !15 ; 2 uses
  %i.abi = add i8 %i.abh, -97
  %i.abj = icmp ult i8 %i.abi, 26
  br i1 %i.abj, label %.critedge239._crit_edge.i, label %.lr.ph399.i

bb.gm:                                            ; preds = %.lr.ph
  br label %bb.gk, !llvm.loop !28

bb.gn:                                            ; preds = %bb.gk
  %i.abk = add nsw i32 %i.aav, 1
  store i32 %i.abk, ptr %i.e, align 8, !tbaa !19
  %i.abl = load i32, ptr %i.p, align 4, !tbaa !20
  %i.abm = add nsw i32 %i.abl, -1
  store i32 %i.abm, ptr %i.p, align 4, !tbaa !20
  br label %.critedge51.backedge.i

bb.go:                                            ; preds = %bb.gl
  %i.abn = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  %exitcond.not.old.old.old.old.old.old.i = icmp ne i32 %i.h, 131071
  %or.cond703.not.i = select i1 %i.abn, i1 %exitcond.not.old.old.old.old.old.old.i, i1 false
  br i1 %or.cond703.not.i, label %.lr.ph370.i.backedge, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit211.i: ; preds = %bb.gl
  %i.abo = add nsw i32 %.val.i, 1                 ; 2 uses
  store i32 %i.abo, ptr %i.e, align 8, !tbaa !19
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit211.i, %bb.bx
  %i.abp = phi i32 [ %.pre519.i, %bb.bx ], [ %i.abo, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit211.i ] ; 3 uses
  %i.abq = phi ptr [ %.pre518.i, %bb.bx ], [ %.val52.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit211.i ]
  %i.abr = sext i32 %i.abp to i64
  %i.abs = getelementptr inbounds i8, ptr %i.abq, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !15 ; 2 uses
  %.not.i185365.i = icmp eq i8 %i.abt, 66
  br i1 %.not.i185365.i, label %.lr.ph366.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit186.i

bb.gp:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %i.abu = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.abu, label %bb.gq, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gq:                                            ; preds = %bb.gp
  %i.abv = load i32, ptr %i.p, align 4, !tbaa !20
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.gr, label %.loopexit246.i

bb.gr:                                            ; preds = %bb.gq
  %i.abx = load i32, ptr %i.o, align 8, !tbaa !16 ; 3 uses
  %i.aby = icmp eq i32 %i.abx, 256
  br i1 %i.aby, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.abz = add nsw i32 %i.abx, 1
  store i32 %i.abz, ptr %i.o, align 8, !tbaa !16
  %i.aca = sext i32 %i.abx to i64
  %i.acb = getelementptr inbounds i8, ptr %3, i64 %i.aca
  store i8 28, ptr %i.acb, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.backedge.i

.loopexit246.i:                                   ; preds = %.lr.ph, %bb.gq
  %.515.i = phi i32 [ %.010.i, %bb.gq ], [ %i.h, %.lr.ph ]
  %i.acc = load i32, ptr %i.t, align 8, !tbaa !29
  %i.acd = add nsw i32 %i.acc, -1                 ; 2 uses
  store i32 %i.acd, ptr %i.t, align 8, !tbaa !29
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !30
  store i32 %i.acg, ptr %i.e, align 8, !tbaa !19
  br label %.critedge51.preheader.i

bb.gt:                                            ; preds = %.lr.ph399.i
  %i.ach = add nsw i32 %i.hy, 1
  store i32 %i.ach, ptr %i.e, align 8, !tbaa !19
  %i.aci = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.aci, label %bb.gu, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gu:                                            ; preds = %bb.gt
  %i.acj = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ack = icmp eq i32 %i.acj, 0
  br i1 %i.ack, label %bb.gv, label %.loopexit242.i

bb.gv:                                            ; preds = %bb.gu
  %i.acl = load i32, ptr %i.o, align 8, !tbaa !16 ; 3 uses
  %i.acm = icmp eq i32 %i.acl, 256
  br i1 %i.acm, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.acn = add nsw i32 %i.acl, 1
  store i32 %i.acn, ptr %i.o, align 8, !tbaa !16
  %i.aco = sext i32 %i.acl to i64
  %i.acp = getelementptr inbounds i8, ptr %3, i64 %i.aco
  store i8 29, ptr %i.acp, align 1, !tbaa !15
  br label %.critedge239.backedge.i

.loopexit242.i:                                   ; preds = %.lr.ph, %bb.gu
  %.616.i = phi i32 [ %.111.ph.i, %bb.gu ], [ %i.h, %.lr.ph ]
  %i.acq = load i32, ptr %i.t, align 8, !tbaa !29
  %i.acr = add nsw i32 %i.acq, -1                 ; 2 uses
  store i32 %i.acr, ptr %i.t, align 8, !tbaa !29
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !30
  store i32 %i.acu, ptr %i.e, align 8, !tbaa !19
  br label %.critedge51.preheader.i

.critedge51.preheader.i:                          ; preds = %bb.dh, %bb.df, %switch.lookup573, %bb.bn, %.loopexit242.i, %.loopexit246.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i, %bb.h
  %.717.ph.i = phi i32 [ %.010.i, %bb.h ], [ %.616.i, %.loopexit242.i ], [ %.313.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i ], [ %.111.ph.i, %switch.lookup573 ], [ %.515.i, %.loopexit246.i ], [ %.111.ph.i, %bb.bn ], [ %.111.ph.i, %bb.df ], [ %.111.ph.i, %bb.dh ] ; 2 uses
  %i.acv = icmp slt i32 %.717.ph.i, 131071
  %i.acw = load i32, ptr %i.o, align 8            ; 2 uses
  %i.acx = icmp sgt i32 %i.acw, 0
  %or.cond = select i1 %i.acv, i1 %i.acx, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph366.i:                                      ; preds = %.preheader.i, %bb.gz
  %i.acy = phi i32 [ %i.adj, %bb.gz ], [ %i.abp, %.preheader.i ]
  %i.acz = add nsw i32 %i.acy, 1
  store i32 %i.acz, ptr %i.e, align 8, !tbaa !19
  %i.ada = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.ada, label %bb.gx, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gx:                                            ; preds = %.lr.ph366.i
  %i.adb = load i32, ptr %i.p, align 4, !tbaa !20
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %bb.gy, label %.loopexit.i

bb.gy:                                            ; preds = %bb.gx
  %i.add = load i32, ptr %i.o, align 8, !tbaa !16 ; 3 uses
  %i.ade = icmp eq i32 %i.add, 256
  br i1 %i.ade, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.adf = add nsw i32 %i.add, 1
  store i32 %i.adf, ptr %i.o, align 8, !tbaa !16
  %i.adg = sext i32 %i.add to i64
  %i.adh = getelementptr inbounds i8, ptr %3, i64 %i.adg
  store i8 30, ptr %i.adh, align 1, !tbaa !15
  %i.adi = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.adj = load i32, ptr %i.e, align 8, !tbaa !19 ; 3 uses
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds i8, ptr %i.adi, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !15 ; 2 uses
  %.not.i185.i = icmp eq i8 %i.adm, 66
  br i1 %.not.i185.i, label %.lr.ph366.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit186.i

.loopexit.i:                                      ; preds = %bb.gx, %.lr.ph
  %i.adn = load i32, ptr %i.t, align 8, !tbaa !29
  %i.ado = add nsw i32 %i.adn, -1                 ; 2 uses
  store i32 %i.ado, ptr %i.t, align 8, !tbaa !29
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !30
  store i32 %i.adr, ptr %i.e, align 8, !tbaa !19
  br label %.critedge51.backedge.i

switch.lookup:                                    ; preds = %.loopexit244.i
  %switch.cast = zext nneg i8 %i.ai to i47
  %switch.downshift = lshr i47 -70300024700927, %switch.cast
  %switch.masked = trunc i47 %switch.downshift to i1
  br label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit: ; preds = %bb.dg, %bb.ez, %bb.ev, %bb.ek, %bb.dv, %bb.dn, %bb.aq, %bb.y, %bb.f, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.s, %bb.u, %bb.v, %bb.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, %bb.ah, %bb.al, %bb.an, %bb.as, %bb.ay, %bb.az, %bb.bf, %bb.bg, %bb.bm, %bb.dp, %bb.dx, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i, %bb.em, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit178.i, %bb.er, %bb.ex, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i, %bb.fb, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i, %bb.fc, %bb.fk, %bb.fl, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit188.i, %bb.ge, %bb.gp, %bb.gr, %.critedge51.preheader.i, %.critedge239._crit_edge.i, %switch.hole_check, %bb.go, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit209.i, %bb.gh, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i, %bb.gb, %bb.fz, %bb.fw, %bb.fu, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a, %bb.ch, %bb.bz, %bb.bw, %bb.bu, %bb.bl, %bb.bj, %bb.be, %bb.bc, %bb.av, %.critedge51.backedge.i, %bb.ad, %bb.p, %.lr.ph370.i.backedge, %bb.ed, %bb.fg, %bb.dl, %bb.dt, %bb.eb, %bb.fp, %bb.cz, %bb.cw, %bb.bp, %bb.br, %bb.cc, %bb.ce, %bb.ck, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i126.i, %bb.cq, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i143.i, %bb.dc, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i.a, %bb.gt, %bb.gv, %bb.gc, %.lr.ph366.i, %bb.gy, %.loopexit244.i, %switch.lookup, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, %bb.c
  %.10.i = phi i1 [ false, %.lr.ph366.i ], [ %switch.masked, %switch.lookup ], [ false, %bb.cz ], [ false, %bb.c ], [ false, %bb.go ], [ false, %bb.gc ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit ], [ false, %.loopexit244.i ], [ false, %bb.gy ], [ false, %bb.gv ], [ false, %bb.gt ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i.a ], [ false, %bb.dc ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i143.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i137.i ], [ false, %bb.cq ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i126.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i120.i ], [ false, %bb.ck ], [ false, %bb.ce ], [ false, %bb.cc ], [ false, %bb.br ], [ false, %bb.bp ], [ false, %bb.cw ], [ false, %bb.fp ], [ false, %bb.eb ], [ false, %bb.dt ], [ false, %bb.dl ], [ false, %bb.fg ], [ false, %bb.ed ], [ false, %.lr.ph370.i.backedge ], [ false, %bb.p ], [ false, %bb.ad ], [ false, %.critedge51.backedge.i ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %bb.be ], [ false, %bb.bj ], [ false, %bb.bl ], [ false, %bb.bu ], [ false, %bb.bw ], [ false, %bb.bz ], [ false, %bb.ch ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit22 ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit ], [ false, %bb.fu ], [ false, %bb.fw ], [ false, %bb.fz ], [ false, %bb.gb ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit196._crit_edge.i ], [ false, %bb.gh ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit209.i ], [ false, %switch.hole_check ], [ false, %.critedge239._crit_edge.i ], [ false, %.critedge51.preheader.i ], [ false, %bb.gr ], [ false, %bb.gp ], [ false, %bb.ge ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit188.i ], [ false, %bb.fl ], [ false, %bb.fk ], [ false, %bb.fc ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.thread.i ], [ false, %bb.fb ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i ], [ false, %bb.ex ], [ false, %bb.er ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit178.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.i ], [ false, %bb.em ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i ], [ false, %bb.dx ], [ false, %bb.dp ], [ false, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.as ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i ], [ false, %bb.f ], [ false, %bb.y ], [ false, %bb.aq ], [ false, %bb.dn ], [ false, %bb.dv ], [ false, %bb.ek ], [ false, %bb.ev ], [ false, %bb.ez ], [ false, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %.10.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.g, 115
  br i1 %.not.i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !19
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i.i, label %.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

.thread.i:                                        ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  store i32 %i.q, ptr %i.c, align 8, !tbaa !19
  br label %bb.j

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %i.r = phi ptr [ %i.ah, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.j, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01530.i.i = phi i1 [ %.116.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01729.i.i = phi i32 [ %.118.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !19
  %i.t = load i8, ptr %i.r, align 1, !tbaa !15    ; 5 uses
  %.not.i5.i = icmp slt i32 %.01729.i.i, 34636833
  br i1 %.not.i5.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i8 %i.t to i32
  %i.x = add nsw i32 %i.w, -48
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.y = add i8 %i.t, -97
  %i.z = icmp ult i8 %i.y, 26
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i8 %i.t to i32
  %i.ab = add nsw i32 %i.aa, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sext i8 %i.t to i32
  %i.ad = add nsw i32 %i.ac, -29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.d ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = mul nsw i32 %.01729.i.i, 62
  %i.af = add nsw i32 %.0.i.i, %i.ae
  %i.ag = freeze i32 %i.af
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i: ; preds = %bb.h, %.critedge.i.i
  %.118.i.i = phi i32 [ %i.ag, %bb.h ], [ %.01729.i.i, %.critedge.i.i ] ; 3 uses
  %.116.i.i = phi i1 [ %.01530.i.i, %bb.h ], [ true, %.critedge.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15  ; 3 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = add i8 %i.ai, -48
  %i.an = icmp ult i8 %i.am, 10
  %or.cond.i.i = or i1 %i.an, %i.al
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %i.ao = icmp eq i8 %i.ai, 95
  br i1 %i.ao, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.ap = add nsw i32 %i.s, 1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !19
  br i1 %.116.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i
  %i.aq = add nsw i32 %.118.i.i, 2
  %.inv.inv.i = icmp slt i32 %.118.i.i, -1
  %spec.select.i = select i1 %.inv.inv.i, i32 -1, i32 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %.thread.i, %bb.a
  %.02.ph = phi i32 [ 1, %.thread.i ], [ %spec.select.i, %bb.i ], [ -1, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ 0, %bb.a ]
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %.02.ph)
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.j
  %.0 = phi i1 [ %i.ar, %bb.j ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.g, 76
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !19
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.g, 71
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !19
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 2 uses
  %.not.i = icmp ne i8 %i.h, 117                  ; 3 uses
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.e, 1                      ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !19
  %.pre = sext i32 %i.i to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.c, i64 %.pre
  %.pre85 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.h, %bb.a ], [ %.pre85, %bb.b ]
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.val = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.pre-phi
  %i.n = add nsw i32 %.val, 1                     ; 4 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !19
  %i.o = load i8, ptr %i.m, align 1, !tbaa !15
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %.phi.trans.insert86 = sext i32 %i.n to i64     ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds i8, ptr %i.c, i64 %.phi.trans.insert86 ; 2 uses
  %.pre88 = load i8, ptr %.phi.trans.insert87, align 1, !tbaa !15 ; 3 uses
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.s = add i8 %.pre88, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %.phi.trans.insert86, %.preheader.i ]
  %i.u = phi ptr [ %i.ac, %bb.d ], [ %.phi.trans.insert87, %.preheader.i ]
  %.018.i = phi i32 [ %i.ab, %bb.d ], [ %i.q, %.preheader.i ] ; 2 uses
  %i.v = icmp slt i32 %.018.i, 214748364
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul nsw i32 %.018.i, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.x, ptr %i.d, align 8, !tbaa !19
  %i.y = load i8, ptr %i.u, align 1, !tbaa !15
  %i.z = sext i8 %i.y to i32
  %i.aa = add i32 %i.w, -48
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15  ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader.i
  %i.ag = phi i8 [ %.pre88, %bb.c ], [ %.pre88, %.preheader.i ], [ %i.ad, %bb.d ]
  %i.ah = phi i32 [ %i.n, %bb.c ], [ %i.n, %.preheader.i ], [ %i.x, %bb.d ] ; 2 uses
  %.0.ph = phi i32 [ 0, %bb.c ], [ %i.q, %.preheader.i ], [ %i.ab, %bb.d ] ; 5 uses
  %.not.i29 = icmp eq i8 %i.ag, 95
  br i1 %.not.i29, label %bb.e, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

bb.e:                                             ; preds = %.loopexit
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30: ; preds = %.loopexit, %bb.e
  %i.aj = phi i32 [ %i.ah, %.loopexit ], [ %i.ai, %bb.e ]
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 %i.ak ; 2 uses
  %i.am = sext i32 %.0.ph to i64
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !32
  store <2 x ptr> %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !32
  %i.aq = tail call noundef ptr @_ZN4absl12lts_2026052618debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef nonnull byval(%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions") align 8 %3) ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !13
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !19
  %i.as = add i32 %i.ar, %.0.ph
  store i32 %i.as, ptr %i.d, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %.not22 = icmp eq i8 %1, 0                      ; 2 uses
  br i1 %.not22, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = icmp sgt i32 %i.au, 0                   ; 3 uses
  switch i8 %1, label %bb.p [
    i8 67, label %bb.j
    i8 83, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not.i31 = icmp ult i64 %i.bc, 9
  br i1 %.not.i31, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.az, ptr noundef nonnull align 1 dereferenceable(9) @.str.43, i64 9, i1 false)
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.m:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %.not.i33 = icmp ult i64 %i.bl, 6
  br i1 %.not.i33, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bi, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.p:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 3 uses
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp slt i64 %i.bu, 2
  br i1 %i.bv, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci:bb.a
  %i.di = icmp ne i8 %i.dc, 95
  %spec.select.i.not75 = and i1 %i.di, %i.dh
  %.not72 = and i1 %i.df, %spec.select.i.not75
  %i.dj = icmp sgt i8 %i.dc, -1
  %or.cond = and i1 %i.dj, %.not72
  br i1 %or.cond, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !20
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp slt i64 %i.dq, 2
  br i1 %i.dr, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.ds, ptr %i.cw, align 8, !tbaa !13
  store i8 %i.dc, ptr %i.dn, align 1, !tbaa !15
  %i.dt = load ptr, ptr %i.cw, align 8, !tbaa !13
  store i8 0, ptr %i.dt, align 1, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.du = add nuw nsw i32 %.01879, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %.0.ph
  br i1 %exitcond.not, label %.critedge27, label %bb.x, !llvm.loop !33

.critedge27:                                      ; preds = %bb.ab, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread
  br i1 %.not22, label %.critedge, label %.critedge27.thread

.critedge27.thread:                               ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, %.critedge27
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge27.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !13 ; 3 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = icmp slt i64 %i.ee, 2
  br i1 %i.ef, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !13
  store i8 35, ptr %i.eb, align 1, !tbaa !15
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !13
  store i8 0, ptr %i.eh, align 1, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge27.thread
  %i.ei = icmp slt i32 %2, 0
  br i1 %i.ei, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !13 ; 3 uses
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp slt i64 %i.er, 2
  br i1 %i.es, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.et, ptr %i.en, align 8, !tbaa !13
  store i8 63, ptr %i.eo, align 1, !tbaa !15
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !13
  store i8 0, ptr %i.eu, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

bb.ai:                                            ; preds = %bb.ae
  %i.ev = icmp eq i32 %2, 0
  br i1 %i.ev, label %bb.aj, label %.lr.ph.preheader.i

bb.aj:                                            ; preds = %bb.ai
  %i.ew = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !13 ; 3 uses
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.fe, 2
  br i1 %i.ff, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.fg, ptr %i.fa, align 8, !tbaa !13
  store i8 48, ptr %i.fb, align 1, !tbaa !15
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !13
  store i8 0, ptr %i.fh, align 1, !tbaa !15
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45, %.lr.ph.preheader.i
  %.014.i = phi i64 [ %i.fl, %.lr.ph.i45 ], [ 11, %.lr.ph.preheader.i ]
  %.0813.i = phi i32 [ %i.fn, %.lr.ph.i45 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %i.fi = urem i32 %.0813.i, 10
  %i.fj = trunc nuw nsw i32 %i.fi to i8
  %i.fk = or disjoint i8 %i.fj, 48
  %i.fl = add i64 %.014.i, -1                     ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !15
  %i.fn = udiv i32 %.0813.i, 10
  %.not.i46 = icmp ult i32 %.0813.i, 10
  br i1 %.not.i46, label %._crit_edge.i, label %.lr.ph.i45, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.lr.ph.i45
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl ; 2 uses
  %i.fp = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread67, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.fr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fo) #7 ; 2 uses
  %i.fs = add i64 %i.fr, 1                        ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !14
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !13 ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %.not.i.i = icmp ult i64 %i.fz, %i.fs
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr nonnull readonly align 1 %i.fo, i64 %i.fs, i1 false)
  %i.ga = load ptr, ptr %i.fv, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr
  store ptr %i.gb, ptr %i.fv, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread67

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread67: ; preds = %._crit_edge.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.critedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread: ; preds = %bb.al, %bb.ah, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread67
  %.pr70 = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.gc = icmp sgt i32 %.pr70, 0
  br i1 %i.gc, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !14
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !13 ; 3 uses
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp slt i64 %i.gj, 2
  br i1 %i.gk, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gl, ptr %i.gf, align 8, !tbaa !13
  store i8 125, ptr %i.gg, align 1, !tbaa !15
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !13
  store i8 0, ptr %i.gm, align 1, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %bb.z, %bb.x, %bb.af, %bb.aj, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread, %bb.ap, %bb.ak, %bb.ag, %bb.f, %bb.k, %bb.n, %bb.q, %bb.s, %bb.v, %bb.ac, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit, %bb.ao, %.critedge27, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %.6 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit ], [ false, %bb.ao ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit ], [ true, %bb.aj ], [ false, %bb.s ], [ false, %bb.v ], [ false, %bb.n ], [ false, %bb.k ], [ true, %.critedge27 ], [ false, %bb.z ], [ false, %bb.f ], [ false, %bb.q ], [ true, %bb.af ], [ false, %bb.ac ], [ false, %bb.ak ], [ false, %bb.ag ], [ true, %bb.ap ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread ], [ false, %bb.x ], [ false, %.lr.ph.i ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %.val = load i32, ptr %2, align 8, !tbaa !19    ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val2 = load ptr, ptr %3, align 8, !tbaa !9    ; 3 uses
  %4 = sext i32 %.val to i64
  %5 = getelementptr inbounds i8, ptr %.val2, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %.not = icmp eq i8 %6, 76
  br i1 %.not, label %7, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit

7:                                                ; preds = %1
  %8 = add nsw i32 %.val, 1                       ; 2 uses
  store i32 %8, ptr %2, align 8, !tbaa !19
  %9 = sext i32 %8 to i64                         ; 2 uses
  %10 = getelementptr inbounds i8, ptr %.val2, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15      ; 3 uses
  %.not.i.i.i = icmp eq i8 %11, 95
  br i1 %.not.i.i.i, label %17, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %7
  %12 = and i8 %11, -33
  %13 = add i8 %12, -65
  %14 = icmp ult i8 %13, 26
  %15 = add i8 %11, -48
  %16 = icmp ult i8 %15, 10
  %or.cond28.i.i = or i1 %16, %14
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit

17:                                               ; preds = %7
  %18 = add nsw i32 %.val, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %.critedge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %9, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %19 = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %19, ptr %2, align 8, !tbaa !19
  %20 = getelementptr inbounds i8, ptr %.val2, i64 %indvars.iv.next.i.i
  %21 = load i8, ptr %20, align 1, !tbaa !15      ; 3 uses
  %22 = and i8 %21, -33
  %23 = add i8 %22, -65
  %24 = icmp ult i8 %23, 26
  %25 = add i8 %21, -48
  %26 = icmp ult i8 %25, 10
  %or.cond.i.i = or i1 %26, %24
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %.critedge.i.i
  %27 = icmp eq i8 %21, 95
  br i1 %27, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %28 = add nsw i32 %19, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %17
  %.sink.i = phi i32 [ %28, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ %18, %17 ]
  store i32 %.sink.i, ptr %2, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %1
  %.0 = phi i1 [ false, %1 ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 3 uses
  %.not.i.i = icmp eq i8 %i.g, 95
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.a
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = add i8 %i.g, -48
  %i.l = icmp ult i8 %i.k, 10
  %or.cond28.i = or i1 %i.l, %i.j
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ %i.e, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %i.n = phi ptr [ %i.ac, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ %i.f, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %.01530.i = phi i1 [ %.116.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %.01729.i = phi i32 [ %.118.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.o = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !19
  %i.p = load i8, ptr %i.n, align 1, !tbaa !15    ; 5 uses
  %.not.i = icmp slt i32 %.01729.i, 34636833
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i

bb.c:                                             ; preds = %.critedge.i
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.p to i32
  %i.t = add nsw i32 %i.s, -48
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = add i8 %i.p, -97
  %i.v = icmp ult i8 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = zext nneg i8 %i.p to i32
  %i.x = add nsw i32 %i.w, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = sext i8 %i.p to i32
  %i.z = add nsw i32 %i.y, -29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.x, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = mul nsw i32 %.01729.i, 62
  %i.ab = add nsw i32 %.0.i, %i.aa
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i: ; preds = %bb.h, %.critedge.i
  %.118.i = phi i32 [ %i.ab, %bb.h ], [ %.01729.i, %.critedge.i ] ; 2 uses
  %.116.i = phi i1 [ %.01530.i, %bb.h ], [ true, %.critedge.i ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15  ; 3 uses
  %i.ae = and i8 %i.ad, -33
  %i.af = add i8 %i.ae, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = add i8 %i.ad, -48
  %i.ai = icmp ult i8 %i.ah, 10
  %or.cond.i = or i1 %i.ai, %i.ag
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !21

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i
  %i.aj = icmp eq i8 %i.ad, 95
  br i1 %i.aj, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.ak = add nsw i32 %.118.i, 1
  %i.al = add nsw i32 %i.o, 1                     ; 2 uses
  store i32 %i.al, ptr %i.a, align 8, !tbaa !19
  br i1 %.116.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, %bb.b
  %i.am = phi i32 [ %i.m, %bb.b ], [ %i.al, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ]
  %.06 = phi i32 [ 0, %bb.b ], [ %i.ak, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ] ; 3 uses
  %i.an = icmp sgt i32 %.06, -1
  %i.ao = add nsw i32 %i.b, -3
  %.not = icmp slt i32 %.06, %i.ao
  %or.cond = select i1 %i.an, i1 %.not, i1 false
  br i1 %or.cond, label %bb.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29 ; 3 uses
  %.not12 = icmp eq i32 %i.aq, 16
  br i1 %.not12, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nuw nsw i32 %.06, 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.at = add nsw i32 %i.aq, 1
  store i32 %i.at, ptr %i.ap, align 8, !tbaa !29
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %i.am, ptr %i.av, align 4, !tbaa !30
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %bb.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit, %bb.j
  %.0 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit ], [ true, %bb.j ], [ false, %bb.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN4absl12lts_2026052618debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef byval(%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions") align 8) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 408}
!10 = !{!"_ZTSN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParserE", !7, i64 0, !6, i64 256, !7, i64 260, !6, i64 324, !7, i64 328, !6, i64 392, !6, i64 396, !6, i64 400, !11, i64 408, !11, i64 416, !11, i64 424}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 416}
!14 = !{!10, !11, i64 424}
!15 = !{!7, !7, i64 0}
!16 = !{!10, !6, i64 256}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !6, i64 400}
!20 = !{!10, !6, i64 396}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = !{!10, !6, i64 324}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18, !27}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = distinct !{!28, !18}
!29 = !{!10, !6, i64 392}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !18}
!32 = !{!11, !11, i64 0}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
end_hunk_1
