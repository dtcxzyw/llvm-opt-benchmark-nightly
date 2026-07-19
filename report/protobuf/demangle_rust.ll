inline.NumInlined: 154
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::debugging_internal::(anonymous namespace)::RustSymbolParser" = type { [256 x i8], i32, [64 x i8], i32, [16 x i32], i32, i32, i32, ptr, ptr, ptr }
%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }

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
@switch.table._ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm = private unnamed_addr constant [26 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr poison, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr poison, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.20, ptr poison, ptr poison, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr poison, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::debugging_internal::(anonymous namespace)::RustSymbolParser", align 8 ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 0, i64 400, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 98 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 39 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 76 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.f, 95
  br i1 %.not.i.i, label %bb.c, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph:                                           ; preds = %.critedge51.preheader.i, %.lr.ph361.i.backedge
  %i.g = phi i32 [ %i.ef, %.lr.ph361.i.backedge ], [ %i.acq, %.critedge51.preheader.i ] ; 11 uses
  %.in = phi i32 [ %i.h, %.lr.ph361.i.backedge ], [ %.717.ph.i, %.critedge51.preheader.i ]
  %i.h = add i32 %.in, 1                          ; 21 uses
  %i.i = add nsw i32 %i.g, -1                     ; 20 uses
  store i32 %i.i, ptr %i.o, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  switch i8 %i.l, label %.critedge51.backedge.i [
    i8 0, label %bb.e
    i8 1, label %.loopexit237.loopexit.i
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
    i8 12, label %bb.bs
    i8 13, label %bb.bx
    i8 14, label %bb.ce
    i8 15, label %bb.dg
    i8 16, label %bb.do
    i8 17, label %bb.dw
    i8 18, label %.lr.ph._crit_edge
    i8 19, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i
    i8 20, label %bb.eq
    i8 21, label %.loopexit238.i
    i8 22, label %.loopexit238.i
    i8 23, label %bb.fb
    i8 24, label %bb.fk
    i8 25, label %bb.fp
    i8 26, label %bb.gd
    i8 27, label %bb.gj
    i8 28, label %.loopexit239.i
    i8 29, label %.loopexit235.i
    i8 30, label %.loopexit.i
  ], !llvm.loop !15

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre323 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre324 = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre330 = sext i32 %.pre324 to i64
  br label %bb.ed, !llvm.loop !15

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %.not.i63.i = icmp eq i8 %i.n, 82
  br i1 %.not.i63.i, label %bb.d, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 49 uses
  store i32 1, ptr %i.o, align 8, !tbaa !14
  store i8 0, ptr %3, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 396 ; 61 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 324 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 6 uses
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %.val61.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.val62.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.v = sext i32 %.val61.i to i64                ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.val62.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = and i8 %i.x, -33
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  br i1 %i.aa, label %bb.f, label %.loopexit237.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !18
  %i.ad = icmp eq i32 %i.i, 256
  br i1 %i.ad, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  store i8 1, ptr %i.u, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i: ; preds = %.lr.ph390.i, %bb.go, %bb.gc, %bb.fa, %bb.bh, %bb.ba, %bb.at, %bb.ai, %bb.ab, %bb.g
  %.010.be.i = phi i32 [ %i.h, %bb.g ], [ %.414.i, %bb.fa ], [ %.010.i, %bb.go ], [ %i.h, %bb.ab ], [ %i.h, %bb.at ], [ %.010.i, %bb.ai ], [ %.010.i, %bb.ba ], [ %.010.i, %bb.bh ], [ %.010.i, %bb.gc ], [ %.111.ph.i, %.lr.ph390.i ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre319 = load i32, ptr %i.e, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i

.loopexit237.loopexit.i:                          ; preds = %.lr.ph
  %.pre514.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre515.i.a = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre516.i.a = sext i32 %.pre515.i.a to i64
  br label %.loopexit237.i

.loopexit237.i:                                   ; preds = %bb.e, %.loopexit237.loopexit.i
  %.pre-phi517.i = phi i64 [ %.pre516.i.a, %.loopexit237.loopexit.i ], [ %i.v, %bb.e ]
  %i.ae = phi i32 [ %.pre515.i.a, %.loopexit237.loopexit.i ], [ %.val61.i, %bb.e ]
  %i.af = phi ptr [ %.pre514.i, %.loopexit237.loopexit.i ], [ %.val62.i, %bb.e ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !17
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %.pre-phi517.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 47
  br i1 %i.aj, label %switch.lookup, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i, %bb.d
  %i.ak = phi i32 [ 2, %bb.d ], [ %.pre319, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i ] ; 3 uses
  %i.al = phi ptr [ %0, %bb.d ], [ %.pre, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i ] ; 2 uses
  %.010.i = phi i32 [ 0, %bb.d ], [ %.010.be.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i ] ; 8 uses
  %i.am = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.am, ptr %i.e, align 8, !tbaa !17
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  switch i8 %i.ap, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit [
    i8 67, label %bb.h
    i8 77, label %bb.i
    i8 88, label %bb.r
    i8 89, label %bb.ak
    i8 78, label %bb.ax
    i8 73, label %bb.gb
    i8 66, label %bb.gl
  ]

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.aq = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  br i1 %i.aq, label %.critedge51.preheader.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.ar = load i32, ptr %i.p, align 4, !tbaa !18
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i65.i = icmp ult i64 %i.ax, 2
  br i1 %.not.i65.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 60, ptr %i.au, align 1
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.c, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 256
  br i1 %i.bb, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.af

bb.m:                                             ; preds = %.lr.ph
  %i.bc = icmp eq i32 %i.i, 256
  br i1 %i.bc, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  store i8 5, ptr %i.bd, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.o:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %i.p, align 4, !tbaa !18
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.critedge51.backedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not.i66.i = icmp ult i64 %i.bk, 2
  br i1 %.not.i66.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i16 62, ptr %i.bh, align 1
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.bn = load i32, ptr %i.p, align 4, !tbaa !18
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.not.i69.i = icmp ult i64 %i.bt, 2
  br i1 %.not.i69.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 60, ptr %i.bq, align 1
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 256
  br i1 %i.bx, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.af

bb.v:                                             ; preds = %.lr.ph
  %i.by = icmp eq i32 %i.i, 256
  br i1 %i.by, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  store i8 7, ptr %i.bz, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.x:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.p, align 4, !tbaa !18
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %.not.i58 = icmp ult i64 %i.cg, 5
  br i1 %.not.i58, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cd, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.ci = icmp eq i32 %i.i, 256
  br i1 %i.ci, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.cj = zext nneg i32 %i.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %i.cj
  store i8 8, ptr %i.ck, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.ac:                                            ; preds = %.lr.ph
  %i.cl = load i32, ptr %i.p, align 4, !tbaa !18
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.critedge51.backedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %.not.i72.i = icmp ult i64 %i.cr, 2
  br i1 %.not.i72.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 62, ptr %i.co, align 1
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

bb.af:                                            ; preds = %bb.u, %bb.l
  %.sink673.i = phi i32 [ %i.ba, %bb.l ], [ %i.bw, %bb.u ] ; 2 uses
  %.sink.i = phi i8 [ 4, %bb.l ], [ 6, %bb.u ]
  %i.cu = add nsw i32 %.sink673.i, 1
  store i32 %i.cu, ptr %i.o, align 8, !tbaa !14
  %i.cv = sext i32 %.sink673.i to i64
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %i.cv
  store i8 %.sink.i, ptr %i.cw, align 1, !tbaa !13
  %i.cx = load i32, ptr %i.p, align 4, !tbaa !18
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.p, align 4, !tbaa !18
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.da = load i32, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.dd, 115
  br i1 %.not.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.da, 1                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !17
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cz, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.dh, 95
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i: ; preds = %bb.ag
  %i.di = and i8 %i.dh, -33
  %i.dj = add i8 %i.di, -65
  %i.dk = icmp ult i8 %i.dj, 26
  %i.dl = add i8 %i.dh, -48
  %i.dm = icmp ult i8 %i.dl, 10
  %or.cond28.i.i.i = or i1 %i.dm, %i.dk
  br i1 %or.cond28.i.i.i, label %.critedge.i.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.thread.i.i:                                      ; preds = %bb.ag
  %i.dn = add nsw i32 %i.da, 2
  br label %.sink.split.i

.critedge.i.i.i:                                  ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %.critedge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.df, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.do = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %i.do, ptr %i.e, align 8, !tbaa !17
  %i.dp = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13  ; 3 uses
  %i.dr = and i8 %i.dq, -33
  %i.ds = add i8 %i.dr, -65
  %i.dt = icmp ult i8 %i.ds, 26
  %i.du = add i8 %i.dq, -48
  %i.dv = icmp ult i8 %i.du, 10
  %or.cond.i.i.i = or i1 %i.dv, %i.dt
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i: ; preds = %.critedge.i.i.i
  %i.dw = icmp eq i8 %i.dq, 95
  br i1 %i.dw, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i
  %i.dx = add nsw i32 %i.do, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i, %.thread.i.i
  %.sink674.i = phi i32 [ %i.dx, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i ], [ %i.dn, %.thread.i.i ]
  store i32 %.sink674.i, ptr %i.e, align 8, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.af
  %i.dy = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.dz = icmp eq i32 %i.dy, 256
  br i1 %i.dz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %i.dy, 1
  store i32 %i.ea, ptr %i.o, align 8, !tbaa !14
  %i.eb = sext i32 %i.dy to i64
  %i.ec = getelementptr inbounds i8, ptr %3, i64 %i.eb
  store i8 9, ptr %i.ec, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.aj:                                            ; preds = %.lr.ph
  %i.ed = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ee = add nsw i32 %i.ed, -1
  store i32 %i.ee, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

.critedge51.backedge.i:                           ; preds = %.loopexit.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit.i, %bb.gk, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i, %bb.fb, %bb.eq, %bb.ef, %bb.dz, %bb.dx, %bb.dr, %bb.dp, %bb.dj, %bb.dh, %bb.cg, %bb.ce, %bb.bz, %bb.bx, %bb.aw, %bb.au, %bb.aj, %bb.ae, %bb.ac, %bb.q, %bb.o, %.lr.ph
  %exitcond.not.old.old.old.i = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph361.i.backedge

.lr.ph361.i.backedge:                             ; preds = %.critedge51.backedge.i, %bb.be, %bb.bl, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, !llvm.loop !20

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.eh = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %.not.i76.i = icmp ult i64 %i.en, 2
  br i1 %.not.i76.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i16 60, ptr %i.ek, align 1
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %i.c, align 8, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.eq = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.er = icmp eq i32 %i.eq, 256
  br i1 %i.er, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = add nsw i32 %i.eq, 1
  store i32 %i.es, ptr %i.o, align 8, !tbaa !14
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds i8, ptr %3, i64 %i.et
  store i8 10, ptr %i.eu, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.ap:                                            ; preds = %.lr.ph
  %i.ev = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %.not.i55 = icmp ult i64 %i.fb, 5
  br i1 %.not.i55, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ey, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store ptr %i.fc, ptr %i.c, align 8, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.fd = icmp eq i32 %i.i, 256
  br i1 %i.fd, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.fe = zext nneg i32 %i.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %i.fe
  store i8 11, ptr %i.ff, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.au:                                            ; preds = %.lr.ph
  %i.fg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.critedge51.backedge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %.not.i79.i = icmp ult i64 %i.fm, 2
  br i1 %.not.i79.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i16 62, ptr %i.fj, align 1
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store ptr %i.fo, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

bb.ax:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.fp = sext i32 %i.am to i64
  %i.fq = getelementptr inbounds i8, ptr %i.al, i64 %i.fp ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !13
  %i.fs = add i8 %i.fr, -65
  %i.ft = icmp ult i8 %i.fs, 26
  %i.fu = add nsw i32 %i.ak, 2
  store i32 %i.fu, ptr %i.e, align 8, !tbaa !17
  br i1 %i.ft, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fv = load i32, ptr %i.q, align 4, !tbaa !21  ; 3 uses
  %.not.i3 = icmp eq i32 %i.fv, 64
  br i1 %.not.i3, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = load i8, ptr %i.fq, align 1, !tbaa !13
  %i.fx = add nsw i32 %i.fv, 1
  store i32 %i.fx, ptr %i.q, align 4, !tbaa !21
  %i.fy = sext i32 %i.fv to i64
  %i.fz = getelementptr inbounds i8, ptr %i.r, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !13
  %i.ga = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.gb = icmp eq i32 %i.ga, 256
  br i1 %i.gb, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = add nsw i32 %i.ga, 1
  store i32 %i.gc, ptr %i.o, align 8, !tbaa !14
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds i8, ptr %3, i64 %i.gd
  store i8 2, ptr %i.ge, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.bb:                                            ; preds = %.lr.ph
  %i.gf = load i32, ptr %i.p, align 4, !tbaa !18
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %.not.i82.i = icmp ult i64 %i.gl, 3
  br i1 %.not.i82.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gi, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store ptr %i.gm, ptr %i.c, align 8, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.gn = load i32, ptr %i.q, align 4, !tbaa !21
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.q, align 4, !tbaa !21
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %i.r, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13
  %i.gs = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext %i.gr)
  %exitcond.not.i = icmp ne i32 %i.h, 131071
  %or.cond.not.i = select i1 %i.gs, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph361.i.backedge, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.bf:                                            ; preds = %bb.ax
  %i.gt = load i8, ptr %i.fq, align 1, !tbaa !13
  %i.gu = add i8 %i.gt, -97
  %i.gv = icmp ult i8 %i.gu, 26
  br i1 %i.gv, label %bb.bg, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gw = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.gx = icmp eq i32 %i.gw, 256
  br i1 %i.gx, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gy = add nsw i32 %i.gw, 1
  store i32 %i.gy, ptr %i.o, align 8, !tbaa !14
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds i8, ptr %3, i64 %i.gz
  store i8 3, ptr %i.ha, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.bi:                                            ; preds = %.lr.ph
  %i.hb = load i32, ptr %i.p, align 4, !tbaa !18
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %.not.i85.i = icmp ult i64 %i.hh, 3
  br i1 %.not.i85.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.he, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  store ptr %i.hi, ptr %i.c, align 8, !tbaa !11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.hj = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  %exitcond.not.old.i = icmp ne i32 %i.h, 131071
  %or.cond677.not.i = select i1 %i.hj, i1 %exitcond.not.old.i, i1 false
  br i1 %or.cond677.not.i, label %.lr.ph361.i.backedge, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.critedge232._crit_edge.i:                        ; preds = %.critedge232.backedge.i, %.critedge232.preheader.i
  %.lcssa385.i = phi i64 [ %i.abd, %.critedge232.preheader.i ], [ %i.ip, %.critedge232.backedge.i ]
  %.val58.lcssa.i = phi ptr [ %.val58387.i, %.critedge232.preheader.i ], [ %.val58.i, %.critedge232.backedge.i ]
  %.val57.lcssa.i = phi i32 [ %.val57386.i, %.critedge232.preheader.i ], [ %.val57.i, %.critedge232.backedge.i ]
  %i.hk = getelementptr inbounds i8, ptr %.val58.lcssa.i, i64 %.lcssa385.i
  %i.hl = add nsw i32 %.val57.lcssa.i, 1
  store i32 %i.hl, ptr %i.e, align 8, !tbaa !17
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.hm, -97            ; 3 uses
  %i.hn = icmp ult i8 %switch.tableidx, 26
  br i1 %i.hn, label %switch.hole_check, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.hole_check:                                ; preds = %.critedge232._crit_edge.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 62716863, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup590, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.lookup590:                                 ; preds = %switch.hole_check
  %i.ho = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm, i64 %i.ho
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.hp = load i32, ptr %i.p, align 4, !tbaa !18
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %.critedge51.preheader.i, label %bb.bm

bb.bm:                                            ; preds = %switch.lookup590
  %i.hr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %switch.load) #7 ; 2 uses
  %i.hs = add i64 %i.hr, 1                        ; 2 uses
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %.not.i88.i = icmp ult i64 %i.hx, %i.hs
  br i1 %.not.i88.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull readonly align 1 %switch.load, i64 %i.hs, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hr
  store ptr %i.hy, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.preheader.i

.lr.ph390.i:                                      ; preds = %.critedge232.preheader.i, %.critedge232.backedge.i
  %4 = phi ptr [ %.val58.i, %.critedge232.backedge.i ], [ %.val58387.i, %.critedge232.preheader.i ] ; 5 uses
  %5 = phi i8 [ %i.ir, %.critedge232.backedge.i ], [ %i.abf, %.critedge232.preheader.i ]
  %i.hz = phi i32 [ %.val57.i, %.critedge232.backedge.i ], [ %.val57386.i, %.critedge232.preheader.i ] ; 12 uses
  switch i8 %5, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i [
    i8 65, label %bb.bo
    i8 83, label %bb.ca
    i8 84, label %bb.cz
    i8 82, label %bb.ch
    i8 81, label %bb.cn
    i8 80, label %bb.ct
    i8 79, label %bb.cw
    i8 70, label %bb.eg
    i8 68, label %bb.er
    i8 66, label %bb.gp
  ]

bb.bo:                                            ; preds = %.lr.ph390.i
  %i.ia = add nsw i32 %i.hz, 1
  store i32 %i.ia, ptr %i.e, align 8, !tbaa !17
  %i.ib = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ie = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %.not.i93.i = icmp ult i64 %i.ih, 2
  br i1 %.not.i93.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i16 91, ptr %i.ie, align 1
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  store ptr %i.ij, ptr %i.c, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.ik = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.il = icmp eq i32 %i.ik, 256
  br i1 %i.il, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.critedge232.backedge.sink.split.i

.critedge232.backedge.sink.split.i:               ; preds = %bb.gr, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i, %bb.cd, %bb.br
  %.sink685.i = phi i32 [ %i.aci, %bb.gr ], [ %i.oq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i ], [ %i.jy, %bb.cd ], [ %i.ik, %bb.br ] ; 2 uses
  %.sink680.i = phi i8 [ 29, %bb.gr ], [ 15, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i ], [ 14, %bb.cd ], [ 12, %bb.br ]
  %i.im = add nsw i32 %.sink685.i, 1
  store i32 %i.im, ptr %i.o, align 8, !tbaa !14
  %i.in = sext i32 %.sink685.i to i64
  %i.io = getelementptr inbounds i8, ptr %3, i64 %i.in
  store i8 %.sink680.i, ptr %i.io, align 1, !tbaa !13
  br label %.critedge232.backedge.i

.critedge232.backedge.i:                          ; preds = %bb.cy, %bb.cw, %bb.cv, %bb.ct, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i, %bb.cq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i49, %bb.ck, %.critedge232.backedge.sink.split.i
  %.val57.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.ip = sext i32 %.val57.i to i64               ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.val58.i, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !13  ; 2 uses
  %i.is = add i8 %i.ir, -97
  %i.it = icmp ult i8 %i.is, 26
  br i1 %i.it, label %.critedge232._crit_edge.i, label %.lr.ph390.i

bb.bs:                                            ; preds = %.lr.ph
  %i.iu = load i32, ptr %i.p, align 4, !tbaa !18
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iw = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %.not.i96.i = icmp ult i64 %i.ja, 3
  br i1 %.not.i96.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ix, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  store ptr %i.jb, ptr %i.c, align 8, !tbaa !11
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.jc = icmp eq i32 %i.i, 256
  br i1 %i.jc, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.jd = zext nneg i32 %i.i to i64
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 %i.jd
  store i8 13, ptr %i.je, align 1, !tbaa !13
  %.pre509.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre510.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %.preheader.i

bb.bx:                                            ; preds = %.lr.ph
  %i.jf = load i32, ptr %i.p, align 4, !tbaa !18
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.critedge51.backedge.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jh = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ji = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %.not.i99.i = icmp ult i64 %i.jl, 2
  br i1 %.not.i99.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i16 93, ptr %i.ji, align 1
  %i.jm = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  store ptr %i.jn, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

bb.ca:                                            ; preds = %.lr.ph390.i
  %i.jo = add nsw i32 %i.hz, 1
  store i32 %i.jo, ptr %i.e, align 8, !tbaa !17
  %i.jp = load i32, ptr %i.p, align 4, !tbaa !18
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %.not.i104.i = icmp ult i64 %i.jv, 2
  br i1 %.not.i104.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i16 91, ptr %i.js, align 1
  %i.jw = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store ptr %i.jx, ptr %i.c, align 8, !tbaa !11
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.jy = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.jz = icmp eq i32 %i.jy, 256
  br i1 %i.jz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.critedge232.backedge.sink.split.i

bb.ce:                                            ; preds = %.lr.ph
  %i.ka = load i32, ptr %i.p, align 4, !tbaa !18
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.critedge51.backedge.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kc = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %.not.i107.i = icmp ult i64 %i.kg, 2
  br i1 %.not.i107.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i16 93, ptr %i.kd, align 1
  %i.kh = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store ptr %i.ki, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

bb.ch:                                            ; preds = %.lr.ph390.i
  %i.kj = add nsw i32 %i.hz, 1                    ; 2 uses
  store i32 %i.kj, ptr %i.e, align 8, !tbaa !17
  %i.kk = load i32, ptr %i.p, align 4, !tbaa !18
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.km = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kn = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %.not.i52 = icmp ult i64 %i.kq, 2
  br i1 %.not.i52, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i16 38, ptr %i.kn, align 1
  %i.kr = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store ptr %i.ks, ptr %i.c, align 8, !tbaa !11
  %.pre325 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre326 = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ch, %bb.cj
  %i.kt = phi i32 [ %i.kj, %bb.ch ], [ %.pre326, %bb.cj ] ; 3 uses
  %i.ku = phi ptr [ %4, %bb.ch ], [ %.pre325, %bb.cj ] ; 3 uses
  %i.kv = sext i32 %i.kt to i64
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !13
  %.not.i.i38 = icmp eq i8 %i.kx, 76
  br i1 %.not.i.i38, label %bb.cl, label %.critedge232.backedge.i

bb.cl:                                            ; preds = %bb.ck
  %i.ky = add nsw i32 %i.kt, 1                    ; 2 uses
  store i32 %i.ky, ptr %i.e, align 8, !tbaa !17
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.ku, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i40 = icmp eq i8 %i.lb, 95
  br i1 %.not.i.i.i40, label %bb.cm, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41: ; preds = %bb.cl
  %i.lc = and i8 %i.lb, -33
  %i.ld = add i8 %i.lc, -65
  %i.le = icmp ult i8 %i.ld, 26
  %i.lf = add i8 %i.lb, -48
  %i.lg = icmp ult i8 %i.lf, 10
  %or.cond28.i.i42 = or i1 %i.lg, %i.le
  br i1 %or.cond28.i.i42, label %.critedge.i.i43, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.cm:                                            ; preds = %bb.cl
  %i.lh = add nsw i32 %i.kt, 2
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i49

.critedge.i.i43:                                  ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41, %.critedge.i.i43
  %indvars.iv.i.i44 = phi i64 [ %indvars.iv.next.i.i45, %.critedge.i.i43 ], [ %i.kz, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41 ]
  %indvars.iv.next.i.i45 = add nsw i64 %indvars.iv.i.i44, 1 ; 3 uses
  %i.li = trunc nsw i64 %indvars.iv.next.i.i45 to i32 ; 2 uses
  store i32 %i.li, ptr %i.e, align 8, !tbaa !17
  %i.lj = getelementptr inbounds i8, ptr %i.ku, i64 %indvars.iv.next.i.i45
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !13  ; 3 uses
  %i.ll = and i8 %i.lk, -33
  %i.lm = add i8 %i.ll, -65
  %i.ln = icmp ult i8 %i.lm, 26
  %i.lo = add i8 %i.lk, -48
  %i.lp = icmp ult i8 %i.lo, 10
  %or.cond.i.i46 = or i1 %i.lp, %i.ln
  br i1 %or.cond.i.i46, label %.critedge.i.i43, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i47, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i47: ; preds = %.critedge.i.i43
  %i.lq = icmp eq i8 %i.lk, 95
  br i1 %i.lq, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i48, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i48: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i47
  %i.lr = add nsw i32 %i.li, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i49

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i49: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i48, %bb.cm
  %.sink.i50 = phi i32 [ %i.lr, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i48 ], [ %i.lh, %bb.cm ]
  store i32 %.sink.i50, ptr %i.e, align 8, !tbaa !17
  br label %.critedge232.backedge.i

bb.cn:                                            ; preds = %.lr.ph390.i
  %i.ls = add nsw i32 %i.hz, 1                    ; 2 uses
  store i32 %i.ls, ptr %i.e, align 8, !tbaa !17
  %i.lt = load i32, ptr %i.p, align 4, !tbaa !18
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lv = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lw = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %.not.i35.a = icmp ult i64 %i.lz, 6
  br i1 %.not.i35.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.lw, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 5
  store ptr %i.ma, ptr %i.c, align 8, !tbaa !11
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.cp
  %i.mb = sext i32 %i.ls to i64
  %i.mc = getelementptr inbounds i8, ptr %4, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !13
  %.not.i.i32 = icmp eq i8 %i.md, 76
  br i1 %.not.i.i32, label %bb.cr, label %.critedge232.backedge.i

bb.cr:                                            ; preds = %bb.cq
  %i.me = add nsw i32 %i.hz, 2                    ; 2 uses
  store i32 %i.me, ptr %i.e, align 8, !tbaa !17
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %4, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i33 = icmp eq i8 %i.mh, 95
  br i1 %.not.i.i.i33, label %bb.cs, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.cr
  %i.mi = and i8 %i.mh, -33
  %i.mj = add i8 %i.mi, -65
  %i.mk = icmp ult i8 %i.mj, 26
  %i.ml = add i8 %i.mh, -48
  %i.mm = icmp ult i8 %i.ml, 10
  %or.cond28.i.i = or i1 %i.mm, %i.mk
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.cs:                                            ; preds = %bb.cr
  %i.mn = add nsw i32 %i.hz, 3
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %.critedge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %i.mf, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.mo = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.mo, ptr %i.e, align 8, !tbaa !17
  %i.mp = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next.i.i
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !13  ; 3 uses
  %i.mr = and i8 %i.mq, -33
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %i.mu = add i8 %i.mq, -48
  %i.mv = icmp ult i8 %i.mu, 10
  %or.cond.i.i = or i1 %i.mv, %i.mt
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %.critedge.i.i
  %i.mw = icmp eq i8 %i.mq, 95
  br i1 %i.mw, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.mx = add nsw i32 %i.mo, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %bb.cs
  %.sink.i34 = phi i32 [ %i.mx, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ %i.mn, %bb.cs ]
  store i32 %.sink.i34, ptr %i.e, align 8, !tbaa !17
  br label %.critedge232.backedge.i

bb.ct:                                            ; preds = %.lr.ph390.i
  %i.my = add nsw i32 %i.hz, 1
  store i32 %i.my, ptr %i.e, align 8, !tbaa !17
  %i.mz = load i32, ptr %i.p, align 4, !tbaa !18
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.critedge232.backedge.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nb = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nc = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %.not.i29.a = icmp ult i64 %i.nf, 8
  br i1 %.not.i29.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i64 9135238377595690, ptr %i.nc, align 1
  %i.ng = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 7
  store ptr %i.nh, ptr %i.c, align 8, !tbaa !11
  br label %.critedge232.backedge.i

bb.cw:                                            ; preds = %.lr.ph390.i
  %i.ni = add nsw i32 %i.hz, 1
  store i32 %i.ni, ptr %i.e, align 8, !tbaa !17
  %i.nj = load i32, ptr %i.p, align 4, !tbaa !18
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.critedge232.backedge.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nl = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nm = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %.not.i26.a = icmp ult i64 %i.np, 6
  br i1 %.not.i26.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.nm, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 5
  store ptr %i.nq, ptr %i.c, align 8, !tbaa !11
  br label %.critedge232.backedge.i

bb.cz:                                            ; preds = %.lr.ph390.i
  %i.nr = add nsw i32 %i.hz, 1                    ; 2 uses
  store i32 %i.nr, ptr %i.e, align 8, !tbaa !17
  %i.ns = load i32, ptr %i.p, align 4, !tbaa !18
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nu = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nv = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %.not.i23.a = icmp ult i64 %i.ny, 2
  br i1 %.not.i23.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i16 40, ptr %i.nv, align 1
  %i.nz = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store ptr %i.oa, ptr %i.c, align 8, !tbaa !11
  %.pre327 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre328 = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db
  %i.ob = phi i32 [ %i.nr, %bb.cz ], [ %.pre328, %bb.db ] ; 2 uses
  %i.oc = phi ptr [ %4, %bb.cz ], [ %.pre327, %bb.db ]
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds i8, ptr %i.oc, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !13
  %.not.i126.i = icmp eq i8 %i.of, 69
  br i1 %.not.i126.i, label %bb.dd, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i

bb.dd:                                            ; preds = %bb.dc
  %i.og = add nsw i32 %i.ob, 1
  store i32 %i.og, ptr %i.e, align 8, !tbaa !17
  %i.oh = load i32, ptr %i.p, align 4, !tbaa !18
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.critedge51.preheader.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.oj = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ok = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %.not.i20.a = icmp ult i64 %i.on, 2
  br i1 %.not.i20.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i16 41, ptr %i.ok, align 1
  %i.oo = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 1
  store ptr %i.op, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.preheader.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i: ; preds = %bb.dc
  %i.oq = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.or = icmp eq i32 %i.oq, 256
  br i1 %i.or, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.critedge232.backedge.sink.split.i

bb.dg:                                            ; preds = %.lr.ph
  %i.os = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ot = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds i8, ptr %i.os, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !13
  %.not.i128.i = icmp eq i8 %i.ow, 69
  br i1 %.not.i128.i, label %bb.dh, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i

bb.dh:                                            ; preds = %bb.dg
  %i.ox = add nsw i32 %i.ot, 1
  store i32 %i.ox, ptr %i.e, align 8, !tbaa !17
  %i.oy = load i32, ptr %i.p, align 4, !tbaa !18
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %.critedge51.backedge.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pa = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pb = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %.not.i130.i = icmp ult i64 %i.pe, 3
  br i1 %.not.i130.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pb, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  store ptr %i.pf, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i: ; preds = %bb.dg
  %i.pg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i
  %i.pi = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %.not.i17.a = icmp ult i64 %i.pm, 3
  br i1 %.not.i17.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pj, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  store ptr %i.pn, ptr %i.c, align 8, !tbaa !11
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i, %bb.dl
  %i.po = icmp eq i32 %i.i, 256
  br i1 %i.po, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.pp = zext nneg i32 %i.i to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 %i.pp
  store i8 16, ptr %i.pq, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.do:                                            ; preds = %.lr.ph
  %i.pr = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ps = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds i8, ptr %i.pr, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !13
  %.not.i133.i = icmp eq i8 %i.pv, 69
  br i1 %.not.i133.i, label %bb.dp, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit134.i

bb.dp:                                            ; preds = %bb.do
  %i.pw = add nsw i32 %i.ps, 1
  store i32 %i.pw, ptr %i.e, align 8, !tbaa !17
  %i.px = load i32, ptr %i.p, align 4, !tbaa !18
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %.critedge51.backedge.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pz = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qa = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %.not.i135.i = icmp ult i64 %i.qd, 2
  br i1 %.not.i135.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store i16 41, ptr %i.qa, align 1
  %i.qe = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store ptr %i.qf, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit134.i: ; preds = %bb.do
  %i.qg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit134.i
  %i.qi = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %.not.i14.a = icmp ult i64 %i.qm, 3
  br i1 %.not.i14.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qj, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  store ptr %i.qn, ptr %i.c, align 8, !tbaa !11
  br label %bb.du

bb.du:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit134.i, %bb.dt
  %i.qo = icmp eq i32 %i.i, 256
  br i1 %i.qo, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.qp = zext nneg i32 %i.i to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 %i.qp
  store i8 17, ptr %i.qq, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.dw:                                            ; preds = %.lr.ph
  %i.qr = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.qs = load i32, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.qt = sext i32 %i.qs to i64                   ; 2 uses
  %i.qu = getelementptr inbounds i8, ptr %i.qr, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !13
  %.not.i138.i = icmp eq i8 %i.qv, 69
  br i1 %.not.i138.i, label %bb.dx, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit139.i

bb.dx:                                            ; preds = %bb.dw
  %i.qw = add nsw i32 %i.qs, 1
  store i32 %i.qw, ptr %i.e, align 8, !tbaa !17
  %i.qx = load i32, ptr %i.p, align 4, !tbaa !18
  %i.qy = icmp sgt i32 %i.qx, 0
  br i1 %i.qy, label %.critedge51.backedge.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qz = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ra = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %.not.i140.i = icmp ult i64 %i.rd, 2
  br i1 %.not.i140.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i16 41, ptr %i.ra, align 1
  %i.re = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  store ptr %i.rf, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit139.i: ; preds = %bb.dw
  %i.rg = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit139.i
  %i.ri = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %.not.i143.i = icmp ult i64 %i.rm, 7
  br i1 %.not.i143.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.rj, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 6
  store ptr %i.rn, ptr %i.c, align 8, !tbaa !11
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit139.i
  %i.ro = add nsw i32 %i.rg, 1
  store i32 %i.ro, ptr %i.p, align 4, !tbaa !18
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph._crit_edge, %bb.ec
  %.pre-phi331 = phi i64 [ %.pre330, %.lr.ph._crit_edge ], [ %i.qt, %bb.ec ]
  %i.rp = phi i32 [ %.pre324, %.lr.ph._crit_edge ], [ %i.qs, %bb.ec ]
  %i.rq = phi ptr [ %.pre323, %.lr.ph._crit_edge ], [ %i.qr, %bb.ec ]
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 %.pre-phi331
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !13
  %.not.i146.i = icmp eq i8 %i.rs, 69
  br i1 %.not.i146.i, label %bb.ef, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i: ; preds = %bb.ed
  %i.rt = icmp eq i32 %i.i, 256
  br i1 %i.rt, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ee

bb.ee:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.ru = zext nneg i32 %i.i to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ru
  store i8 18, ptr %i.rv, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.ef:                                            ; preds = %bb.ed
  %i.rw = add nsw i32 %i.rp, 1
  store i32 %i.rw, ptr %i.e, align 8, !tbaa !17
  %i.rx = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ry = add nsw i32 %i.rx, -1
  store i32 %i.ry, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

bb.eg:                                            ; preds = %.lr.ph390.i
  %i.rz = add nsw i32 %i.hz, 1
  store i32 %i.rz, ptr %i.e, align 8, !tbaa !17
  %i.sa = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sc = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sd = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %.not.i11.a = icmp ult i64 %i.sg, 6
  br i1 %.not.i11.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.sd, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 5
  store ptr %i.sh, ptr %i.c, align 8, !tbaa !11
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eg, %bb.ei
  %i.si = add nsw i32 %i.sa, 1
  store i32 %i.si, ptr %i.p, align 4, !tbaa !18
  %i.sj = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.sj, label %bb.ek, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.ek:                                            ; preds = %bb.ej
  %i.sk = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.sl = load i32, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds i8, ptr %i.sk, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !13  ; 2 uses
  %.not.i148.i = icmp eq i8 %i.so, 85
  br i1 %.not.i148.i, label %bb.el, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i

bb.el:                                            ; preds = %bb.ek
  %i.sp = add nsw i32 %i.sl, 1                    ; 3 uses
  store i32 %i.sp, ptr %i.e, align 8, !tbaa !17
  %.pre511.i.a = sext i32 %i.sp to i64
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.sk, i64 %.pre511.i.a
  %.pre513.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i: ; preds = %bb.el, %bb.ek
  %i.sq = phi i8 [ %i.so, %bb.ek ], [ %.pre513.i, %bb.el ]
  %i.sr = phi i32 [ %i.sl, %bb.ek ], [ %i.sp, %bb.el ] ; 2 uses
  %.not.i150.i = icmp eq i8 %i.sq, 75
  br i1 %.not.i150.i, label %bb.em, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i

bb.em:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i
  %i.ss = add nsw i32 %i.sr, 1                    ; 2 uses
  store i32 %i.ss, ptr %i.e, align 8, !tbaa !17
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %i.sk, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !13
  %.not.i152.i = icmp eq i8 %i.sv, 67
  br i1 %.not.i152.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.thread.i: ; preds = %bb.em
  %i.sw = add nsw i32 %i.sr, 2
  store i32 %i.sw, ptr %i.e, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i: ; preds = %bb.em
  %i.sx = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.sx, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i: ; preds = %.lr.ph, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.thread.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i
  %.212.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.thread.i ], [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i ], [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit149.i ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.sy = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.sz = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.sy, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !13
  %.not.i154.i = icmp eq i8 %i.tc, 69
  br i1 %.not.i154.i, label %bb.eo, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit155.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit155.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i
  %i.td = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.te = icmp eq i32 %i.td, 256
  br i1 %i.te, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.en

bb.en:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit155.i
  %i.tf = add nsw i32 %i.td, 1
  store i32 %i.tf, ptr %i.o, align 8, !tbaa !14
  %i.tg = sext i32 %i.td to i64
  %i.th = getelementptr inbounds i8, ptr %3, i64 %i.tg
  store i8 19, ptr %i.th, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.eo:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit151.i
  %i.ti = add nsw i32 %i.sz, 1
  store i32 %i.ti, ptr %i.e, align 8, !tbaa !17
  %i.tj = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.tk = icmp eq i32 %i.tj, 256
  br i1 %i.tk, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tl = add nsw i32 %i.tj, 1
  store i32 %i.tl, ptr %i.o, align 8, !tbaa !14
  %i.tm = sext i32 %i.tj to i64
  %i.tn = getelementptr inbounds i8, ptr %3, i64 %i.tm
  store i8 20, ptr %i.tn, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.eq:                                            ; preds = %.lr.ph
  %i.to = load i32, ptr %i.p, align 4, !tbaa !18
  %i.tp = add nsw i32 %i.to, -1
  store i32 %i.tp, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

bb.er:                                            ; preds = %.lr.ph390.i
  %i.tq = add nsw i32 %i.hz, 1
  store i32 %i.tq, ptr %i.e, align 8, !tbaa !17
  %i.tr = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.tt = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tu = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %.not.i8.a = icmp ult i64 %i.tx, 5
  br i1 %.not.i8.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.tu, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  store ptr %i.ty, ptr %i.c, align 8, !tbaa !11
  br label %bb.eu

bb.eu:                                            ; preds = %bb.er, %bb.et
  %i.tz = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.tz, label %bb.ev, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.ev:                                            ; preds = %bb.eu
  %i.ua = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ub = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds i8, ptr %i.ua, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !13
  %.not.i156.i = icmp eq i8 %i.ue, 69
  br i1 %.not.i156.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i: ; preds = %bb.ev
  %i.uf = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.ug = icmp eq i32 %i.uf, 256
  br i1 %i.ug, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ez

.loopexit238.i:                                   ; preds = %.lr.ph, %.lr.ph
  %i.uh = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ui = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds i8, ptr %i.uh, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !13
  %.not.i158.i = icmp eq i8 %i.ul, 69
  br i1 %.not.i158.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit159.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit159.i: ; preds = %.loopexit238.i
  %i.um = load i32, ptr %i.p, align 4, !tbaa !18
  %i.un = icmp sgt i32 %i.um, 0
  br i1 %i.un, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit159.i
  %i.uo = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.up = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %.not.i5.a = icmp ult i64 %i.us, 4
  br i1 %.not.i5.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 2108192, ptr %i.up, align 1
  %i.ut = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 3
  store ptr %i.uu, ptr %i.c, align 8, !tbaa !11
  %.pre322 = load i32, ptr %i.o, align 8, !tbaa !14
  br label %bb.ey

bb.ey:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit159.i, %bb.ex
  %i.uv = phi i32 [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit159.i ], [ %.pre322, %bb.ex ] ; 2 uses
  %i.uw = icmp eq i32 %i.uv, 256
  br i1 %i.uw, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ez

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i: ; preds = %.loopexit238.i, %bb.ev
  %storemerge.in.i = phi i32 [ %i.ub, %bb.ev ], [ %i.ui, %.loopexit238.i ]
  %.313.i = phi i32 [ %.111.ph.i, %bb.ev ], [ %i.h, %.loopexit238.i ]
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !17
  %i.ux = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.ux, label %.critedge51.preheader.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.ez:                                            ; preds = %bb.ey, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i
  %.sink691.i = phi i32 [ %i.uf, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i ], [ %i.uv, %bb.ey ] ; 2 uses
  %.sink686.i = phi i8 [ 21, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i ], [ 22, %bb.ey ]
  %.414.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i ], [ %i.h, %bb.ey ]
  %i.uy = add nsw i32 %.sink691.i, 1
  store i32 %i.uy, ptr %i.o, align 8, !tbaa !14
  %i.uz = sext i32 %.sink691.i to i64
  %i.va = getelementptr inbounds i8, ptr %3, i64 %i.uz
  store i8 %.sink686.i, ptr %i.va, align 1, !tbaa !13
  %i.vb = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.vc = icmp eq i32 %i.vb, 256
  br i1 %i.vc, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vd = add nsw i32 %i.vb, 1
  store i32 %i.vd, ptr %i.o, align 8, !tbaa !14
  %i.ve = sext i32 %i.vb to i64
  %i.vf = getelementptr inbounds i8, ptr %3, i64 %i.ve
  store i8 23, ptr %i.vf, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.fb:                                            ; preds = %.lr.ph
  %.val55.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.vg = sext i32 %.val55.i to i64               ; 2 uses
  %i.vh = getelementptr inbounds i8, ptr %.val56.i, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !13
  %i.vj = icmp eq i8 %i.vi, 112
  br i1 %i.vj, label %bb.fc, label %.critedge51.backedge.i

bb.fc:                                            ; preds = %bb.fb
  %i.vk = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vm = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vn = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.vo = ptrtoint ptr %i.vm to i64
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = sub i64 %i.vo, %i.vp
  %.not.i160.i = icmp ult i64 %i.vq, 3
  br i1 %.not.i160.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vn, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 2
  store ptr %i.vr, ptr %i.c, align 8, !tbaa !11
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fc
  %i.vs = add nsw i32 %i.vk, 1
  store i32 %i.vs, ptr %i.p, align 4, !tbaa !18
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fk, %bb.ff
  %.pre-phi = phi i64 [ %.pre329, %bb.fk ], [ %i.vg, %bb.ff ]
  %i.vt = phi i32 [ %.pre321, %bb.fk ], [ %.val55.i, %bb.ff ]
  %i.vu = phi ptr [ %.pre320, %bb.fk ], [ %.val56.i, %bb.ff ]
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 %.pre-phi
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !13
  %.not.i163.i = icmp eq i8 %i.vw, 112
  br i1 %.not.i163.i, label %bb.fh, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i

bb.fh:                                            ; preds = %bb.fg
  %i.vx = add nsw i32 %i.vt, 1
  store i32 %i.vx, ptr %i.e, align 8, !tbaa !17
  %i.vy = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.vy, label %bb.fi, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fi:                                            ; preds = %bb.fh
  %i.vz = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.wa = icmp eq i32 %i.vz, 256
  br i1 %i.wa, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wb = add nsw i32 %i.vz, 1
  store i32 %i.wb, ptr %i.o, align 8, !tbaa !14
  %i.wc = sext i32 %i.vz to i64
  %i.wd = getelementptr inbounds i8, ptr %3, i64 %i.wc
  store i8 24, ptr %i.wd, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.fk:                                            ; preds = %.lr.ph
  %.pre320 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre321 = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre329 = sext i32 %.pre321 to i64
  br label %bb.fg, !llvm.loop !22

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i: ; preds = %bb.fg
  %i.we = load i32, ptr %i.p, align 4, !tbaa !18
  %i.wf = add nsw i32 %i.we, -1
  store i32 %i.wf, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i: ; preds = %bb.gu, %.preheader.i
  %i.wg = phi i8 [ %i.abq, %.preheader.i ], [ %i.adg, %bb.gu ]
  %i.wh = phi i32 [ %i.abm, %.preheader.i ], [ %i.add, %bb.gu ]
  %.not.i167.i = icmp eq i8 %i.wg, 112
  br i1 %.not.i167.i, label %bb.fl, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i

bb.fl:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i
  %i.wi = add nsw i32 %i.wh, 1
  store i32 %i.wi, ptr %i.e, align 8, !tbaa !17
  %i.wj = load i32, ptr %i.p, align 4, !tbaa !18
  %i.wk = icmp sgt i32 %i.wj, 0
  br i1 %i.wk, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wl = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wm = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %.not.i4 = icmp ult i64 %i.wp, 2
  br i1 %.not.i4, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store i16 95, ptr %i.wm, align 1
  %i.wq = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 1
  store ptr %i.wr, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit: ; preds = %bb.fl, %bb.fn
  %exitcond.not.old.old.i.not.a = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.i.not.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph361.i.backedge

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i
  %i.ws = load i32, ptr %i.p, align 4, !tbaa !18
  %i.wt = add nsw i32 %i.ws, 1
  store i32 %i.wt, ptr %i.p, align 4, !tbaa !18
  %i.wu = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.wv = icmp eq i32 %i.wu, 256
  br i1 %i.wv, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i
  %i.ww = add nsw i32 %i.wu, 1
  store i32 %i.ww, ptr %i.o, align 8, !tbaa !14
  %i.wx = sext i32 %i.wu to i64
  %i.wy = getelementptr inbounds i8, ptr %3, i64 %i.wx
  store i8 25, ptr %i.wy, align 1, !tbaa !13
  br label %.critedge232.preheader.i

bb.fp:                                            ; preds = %.lr.ph
  %i.wz = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.xa = add nsw i32 %i.wz, -1                   ; 3 uses
  store i32 %i.xa, ptr %i.p, align 4, !tbaa !18
  %i.xb = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.xc = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds i8, ptr %i.xb, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !13
  %.not.i169.i = icmp eq i8 %i.xf, 110
  br i1 %.not.i169.i, label %bb.fq, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i

bb.fq:                                            ; preds = %bb.fp
  %i.xg = add nsw i32 %i.xc, 1
  store i32 %i.xg, ptr %i.e, align 8, !tbaa !17
  %i.xh = icmp sgt i32 %i.wz, 1
  br i1 %i.xh, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xi = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = icmp slt i64 %i.xm, 2
  br i1 %i.xn, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 1
  store ptr %i.xo, ptr %i.c, align 8, !tbaa !11
  store i8 45, ptr %i.xj, align 1, !tbaa !13
  %i.xp = load ptr, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.xp, align 1, !tbaa !13
  %.pre500.i = load i32, ptr %i.p, align 4, !tbaa !18
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i: ; preds = %bb.fs, %bb.fp
  %i.xq = phi i32 [ %i.xa, %bb.fp ], [ %.pre500.i, %bb.fs ] ; 3 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i
  %i.xs = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xt = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %.not.i172.i = icmp ult i64 %i.xw, 3
  br i1 %.not.i172.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xt, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 2
  store ptr %i.xx, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i: ; preds = %bb.fu, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i, %bb.fq
  %i.xy = phi i32 [ %i.xq, %bb.fu ], [ %i.xq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.i ], [ %i.xa, %bb.fq ] ; 3 uses
  %i.xz = load ptr, ptr %i.b, align 8, !tbaa !7   ; 4 uses
  %i.ya = load i32, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.yb = sext i32 %i.ya to i64                   ; 2 uses
  %i.yc = getelementptr inbounds i8, ptr %i.xz, i64 %i.yb ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !13  ; 4 uses
  %.not.i175.i = icmp eq i8 %i.yd, 48
  br i1 %.not.i175.i, label %bb.fv, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i
  %i.ye = add i8 %i.yd, -48
  %i.yf = icmp ult i8 %i.ye, 10
  %i.yg = add i8 %i.yd, -97
  %i.yh = icmp ult i8 %i.yg, 6
  %i.yi = or i1 %i.yf, %i.yh
  br i1 %i.yi, label %.lr.ph.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i
  %i.yj = icmp sgt i32 %i.xy, 0
  br i1 %i.yj, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i, label %.lr.ph.split.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i: ; preds = %.lr.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i ], [ %i.yb, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.yk = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.yk, ptr %i.e, align 8, !tbaa !17
  %i.yl = getelementptr inbounds i8, ptr %i.xz, i64 %indvars.iv.next.i
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !13  ; 3 uses
  %i.yn = add i8 %i.ym, -48
  %i.yo = icmp ult i8 %i.yn, 10
  %i.yp = add i8 %i.ym, -97
  %i.yq = icmp ult i8 %i.yp, 6
  %i.yr = or i1 %i.yo, %i.yq
  br i1 %i.yr, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i, !llvm.loop !23

bb.fv:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit170.thread.i
  %i.ys = add nsw i32 %i.ya, 1                    ; 2 uses
  store i32 %i.ys, ptr %i.e, align 8, !tbaa !17
  %i.yt = icmp sgt i32 %i.xy, 0
  br i1 %i.yt, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yu = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yv = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = icmp slt i64 %i.yy, 2
  br i1 %i.yz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 1
  store ptr %i.za, ptr %i.c, align 8, !tbaa !11
  store i8 48, ptr %i.yv, align 1, !tbaa !13
  %i.zb = load ptr, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.zb, align 1, !tbaa !13
  %.pre504.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre505.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %i.zc = phi i32 [ %.pre505.i, %bb.fx ], [ %i.ys, %bb.fv ] ; 2 uses
  %i.zd = phi ptr [ %.pre504.i, %bb.fx ], [ %i.xz, %bb.fv ]
  %i.ze = sext i32 %i.zc to i64
  %i.zf = getelementptr inbounds i8, ptr %i.zd, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13
  %.not.i179.i = icmp eq i8 %i.zg, 95
  br i1 %.not.i179.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit180.i: ; preds = %bb.fy
  %i.zh = add nsw i32 %i.zc, 1
  store i32 %i.zh, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i
  %.pr.i = load i32, ptr %i.p, align 4, !tbaa !18
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.zi = phi i32 [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.xy, %.lr.ph.i ]
  %.val54502.i = phi ptr [ %.val54.i, %.lr.ph.splitthread-pre-split.i ], [ %i.xz, %.lr.ph.i ]
  %i.zj = phi ptr [ %i.zw, %.lr.ph.splitthread-pre-split.i ], [ %i.yc, %.lr.ph.i ]
  %.val53353.i = phi i32 [ %.val53.i, %.lr.ph.splitthread-pre-split.i ], [ %i.ya, %.lr.ph.i ]
  %i.zk = add nsw i32 %.val53353.i, 1             ; 2 uses
  store i32 %i.zk, ptr %i.e, align 8, !tbaa !17
  %i.zl = load i8, ptr %i.zj, align 1, !tbaa !13
  %i.zm = icmp sgt i32 %i.zi, 0
  br i1 %i.zm, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.split.i
  %i.zn = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zo = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = sub i64 %i.zp, %i.zq
  %i.zs = icmp slt i64 %i.zr, 2
  br i1 %i.zs, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  store ptr %i.zt, ptr %i.c, align 8, !tbaa !11
  store i8 %i.zl, ptr %i.zo, align 1, !tbaa !13
  %i.zu = load ptr, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.zu, align 1, !tbaa !13
  %.val53.pre.i = load i32, ptr %i.e, align 8, !tbaa !17
  %.val54.pre.i = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i: ; preds = %bb.ga, %.lr.ph.split.i
  %.val54.i = phi ptr [ %.val54502.i, %.lr.ph.split.i ], [ %.val54.pre.i, %bb.ga ] ; 2 uses
  %.val53.i = phi i32 [ %i.zk, %.lr.ph.split.i ], [ %.val53.pre.i, %bb.ga ] ; 3 uses
  %i.zv = sext i32 %.val53.i to i64
  %i.zw = getelementptr inbounds i8, ptr %.val54.i, i64 %i.zv ; 2 uses
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !13  ; 3 uses
  %i.zy = add i8 %i.zx, -48
  %i.zz = icmp ult i8 %i.zy, 10
  %i.aaa = add i8 %i.zx, -97
  %i.aab = icmp ult i8 %i.aaa, 6
  %i.aac = or i1 %i.zz, %i.aab
  br i1 %i.aac, label %.lr.ph.splitthread-pre-split.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i, !llvm.loop !24

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i
  %.val53.lcssa.i = phi i32 [ %i.ya, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i ], [ %i.yk, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i ], [ %.val53.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i ]
  %.lcssa246.i = phi i8 [ %i.yd, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176.preheader.i ], [ %i.ym, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.us.i ], [ %i.zx, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit182.i ]
  %.not.i183.i = icmp eq i8 %.lcssa246.i, 95
  br i1 %.not.i183.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit184.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i
  %i.aad = add nsw i32 %.val53.lcssa.i, 1
  store i32 %i.aad, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

bb.gb:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.aae = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.aaf = icmp eq i32 %i.aae, 256
  br i1 %i.aaf, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aag = add nsw i32 %i.aae, 1
  store i32 %i.aag, ptr %i.o, align 8, !tbaa !14
  %i.aah = sext i32 %i.aae to i64
  %i.aai = getelementptr inbounds i8, ptr %3, i64 %i.aah
  store i8 26, ptr %i.aai, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

bb.gd:                                            ; preds = %.lr.ph
  %i.aaj = load i32, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aal = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aam = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao
  %.not.i185.i.a = icmp ult i64 %i.aap, 5
  br i1 %.not.i185.i.a, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aam, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  store ptr %i.aaq, ptr %i.c, align 8, !tbaa !11
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %i.aar = add nsw i32 %i.aaj, 1
  store i32 %i.aar, ptr %i.p, align 4, !tbaa !18
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %bb.gg
  %i.aas = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aat = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds i8, ptr %i.aas, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !13
  %.not.i188.i = icmp eq i8 %i.aaw, 69
  br i1 %.not.i188.i, label %bb.gk, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit189.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit189.i: ; preds = %bb.gh
  %i.aax = icmp eq i32 %i.i, 256
  br i1 %i.aax, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit189.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.aay = zext nneg i32 %i.i to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 %i.aay
  store i8 27, ptr %i.aaz, align 1, !tbaa !13
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 4 uses
  %.val52.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 4 uses
  %i.aba = sext i32 %.val.i to i64
  %i.abb = getelementptr inbounds i8, ptr %.val52.i, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !13
  switch i8 %i.abc, label %.critedge232.preheader.i [
    i8 76, label %6
    i8 75, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit203.i
  ]

.critedge232.preheader.i:                         ; preds = %bb.gi, %bb.fo, %bb.fj, %bb.ep, %bb.en, %bb.ee, %bb.dv, %bb.dn, %bb.ao, %bb.w, %bb.n
  %.111.ph.i = phi i32 [ %.010.i, %bb.ao ], [ %i.h, %bb.n ], [ %i.h, %bb.fj ], [ %i.h, %bb.ee ], [ %i.h, %bb.dv ], [ %i.h, %bb.dn ], [ %i.h, %bb.fo ], [ %i.h, %bb.w ], [ %.212.i, %bb.ep ], [ %.212.i, %bb.en ], [ %i.h, %bb.gi ] ; 11 uses
  %.val57386.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %.val58387.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.abd = sext i32 %.val57386.i to i64           ; 2 uses
  %i.abe = getelementptr inbounds i8, ptr %.val58387.i, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !13 ; 2 uses
  %i.abg = add i8 %i.abf, -97
  %i.abh = icmp ult i8 %i.abg, 26
  br i1 %i.abh, label %.critedge232._crit_edge.i, label %.lr.ph390.i

bb.gj:                                            ; preds = %.lr.ph
  br label %bb.gh, !llvm.loop !26

bb.gk:                                            ; preds = %bb.gh
  %i.abi = add nsw i32 %i.aat, 1
  store i32 %i.abi, ptr %i.e, align 8, !tbaa !17
  %i.abj = load i32, ptr %i.p, align 4, !tbaa !18
  %i.abk = add nsw i32 %i.abj, -1
  store i32 %i.abk, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

6:                                                ; preds = %bb.gi
  %7 = add nsw i32 %.val.i, 1                     ; 2 uses
  store i32 %7, ptr %i.e, align 8, !tbaa !17
  %8 = sext i32 %7 to i64                         ; 2 uses
  %9 = getelementptr inbounds i8, ptr %.val52.i, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !13       ; 3 uses
  %.not.i.i.i192.i = icmp eq i8 %10, 95
  br i1 %.not.i.i.i192.i, label %16, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i: ; preds = %6
  %11 = and i8 %10, -33
  %12 = add i8 %11, -65
  %13 = icmp ult i8 %12, 26
  %14 = add i8 %10, -48
  %15 = icmp ult i8 %14, 10
  %or.cond28.i.i194.i = or i1 %15, %13
  br i1 %or.cond28.i.i194.i, label %.critedge.i.i195.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

16:                                               ; preds = %6
  %17 = add nsw i32 %.val.i, 2
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit.i

.critedge.i.i195.i:                               ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i, %.critedge.i.i195.i
  %indvars.iv.i.i196.i = phi i64 [ %indvars.iv.next.i.i197.i, %.critedge.i.i195.i ], [ %8, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i ]
  %indvars.iv.next.i.i197.i = add nsw i64 %indvars.iv.i.i196.i, 1 ; 3 uses
  %18 = trunc nsw i64 %indvars.iv.next.i.i197.i to i32 ; 2 uses
  store i32 %18, ptr %i.e, align 8, !tbaa !17
  %19 = getelementptr inbounds i8, ptr %.val52.i, i64 %indvars.iv.next.i.i197.i
  %20 = load i8, ptr %19, align 1, !tbaa !13      ; 3 uses
  %21 = and i8 %20, -33
  %22 = add i8 %21, -65
  %23 = icmp ult i8 %22, 26
  %24 = add i8 %20, -48
  %25 = icmp ult i8 %24, 10
  %or.cond.i.i198.i = or i1 %25, %23
  br i1 %or.cond.i.i198.i, label %.critedge.i.i195.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i199.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i199.i: ; preds = %.critedge.i.i195.i
  %26 = icmp eq i8 %20, 95
  br i1 %26, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i200.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i200.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i199.i
  %27 = add nsw i32 %18, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv.exit.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i200.i, %16
  %.sink.i201.i = phi i32 [ %27, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i200.i ], [ %17, %16 ]
  store i32 %.sink.i201.i, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit203.i: ; preds = %bb.gi
  %i.abl = add nsw i32 %.val.i, 1                 ; 2 uses
  store i32 %i.abl, ptr %i.e, align 8, !tbaa !17
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit203.i, %bb.bw
  %i.abm = phi i32 [ %.pre510.i, %bb.bw ], [ %i.abl, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit203.i ] ; 3 uses
  %i.abn = phi ptr [ %.pre509.i, %bb.bw ], [ %.val52.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit203.i ]
  %i.abo = sext i32 %i.abm to i64
  %i.abp = getelementptr inbounds i8, ptr %i.abn, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !13 ; 2 uses
  %.not.i165356.i = icmp eq i8 %i.abq, 66
  br i1 %.not.i165356.i, label %.lr.ph357.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i

bb.gl:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i
  %i.abr = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.abr, label %bb.gm, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gm:                                            ; preds = %bb.gl
  %i.abs = load i32, ptr %i.p, align 4, !tbaa !18
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.gn, label %.loopexit239.i

bb.gn:                                            ; preds = %bb.gm
  %i.abu = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.abv = icmp eq i32 %i.abu, 256
  br i1 %i.abv, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.abw = add nsw i32 %i.abu, 1
  store i32 %i.abw, ptr %i.o, align 8, !tbaa !14
  %i.abx = sext i32 %i.abu to i64
  %i.aby = getelementptr inbounds i8, ptr %3, i64 %i.abx
  store i8 28, ptr %i.aby, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.backedge.i

.loopexit239.i:                                   ; preds = %.lr.ph, %bb.gm
  %.515.i = phi i32 [ %.010.i, %bb.gm ], [ %i.h, %.lr.ph ]
  %i.abz = load i32, ptr %i.t, align 8, !tbaa !27
  %i.aca = add nsw i32 %i.abz, -1                 ; 2 uses
  store i32 %i.aca, ptr %i.t, align 8, !tbaa !27
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.acb
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3
  store i32 %i.acd, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.preheader.i

bb.gp:                                            ; preds = %.lr.ph390.i
  %i.ace = add nsw i32 %i.hz, 1
  store i32 %i.ace, ptr %i.e, align 8, !tbaa !17
  %i.acf = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.acf, label %bb.gq, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gq:                                            ; preds = %bb.gp
  %i.acg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.gr, label %.loopexit235.i

bb.gr:                                            ; preds = %bb.gq
  %i.aci = load i32, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.acj = icmp eq i32 %i.aci, 256
  br i1 %i.acj, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.critedge232.backedge.sink.split.i

.loopexit235.i:                                   ; preds = %.lr.ph, %bb.gq
  %.616.i = phi i32 [ %.111.ph.i, %bb.gq ], [ %i.h, %.lr.ph ]
  %i.ack = load i32, ptr %i.t, align 8, !tbaa !27
  %i.acl = add nsw i32 %i.ack, -1                 ; 2 uses
  store i32 %i.acl, ptr %i.t, align 8, !tbaa !27
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !3
  store i32 %i.aco, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.preheader.i

.critedge51.preheader.i:                          ; preds = %bb.df, %bb.dd, %switch.lookup590, %bb.bn, %.loopexit235.i, %.loopexit239.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i, %bb.h
  %.717.ph.i = phi i32 [ %.010.i, %bb.h ], [ %.616.i, %.loopexit235.i ], [ %.313.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i ], [ %.111.ph.i, %switch.lookup590 ], [ %.515.i, %.loopexit239.i ], [ %.111.ph.i, %bb.bn ], [ %.111.ph.i, %bb.dd ], [ %.111.ph.i, %bb.df ] ; 2 uses
  %i.acp = icmp slt i32 %.717.ph.i, 131071
  %i.acq = load i32, ptr %i.o, align 8            ; 2 uses
  %i.acr = icmp sgt i32 %i.acq, 0
  %or.cond = select i1 %i.acp, i1 %i.acr, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph357.i:                                      ; preds = %.preheader.i, %bb.gu
  %i.acs = phi i32 [ %i.add, %bb.gu ], [ %i.abm, %.preheader.i ]
  %i.act = add nsw i32 %i.acs, 1
  store i32 %i.act, ptr %i.e, align 8, !tbaa !17
  %i.acu = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.acu, label %bb.gs, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gs:                                            ; preds = %.lr.ph357.i
  %i.acv = load i32, ptr %i.p, align 4, !tbaa !18
  %i.acw = icmp eq i32 %i.acv, 0
  br i1 %i.acw, label %bb.gt, label %.loopexit.i

bb.gt:                                            ; preds = %bb.gs
  %i.acx = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.acy = icmp eq i32 %i.acx, 256
  br i1 %i.acy, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acz = add nsw i32 %i.acx, 1
  store i32 %i.acz, ptr %i.o, align 8, !tbaa !14
  %i.ada = sext i32 %i.acx to i64
  %i.adb = getelementptr inbounds i8, ptr %3, i64 %i.ada
  store i8 30, ptr %i.adb, align 1, !tbaa !13
  %i.adc = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.add = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds i8, ptr %i.adc, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !13 ; 2 uses
  %.not.i165.i = icmp eq i8 %i.adg, 66
  br i1 %.not.i165.i, label %.lr.ph357.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i

.loopexit.i:                                      ; preds = %bb.gs, %.lr.ph
  %i.adh = load i32, ptr %i.t, align 8, !tbaa !27
  %i.adi = add nsw i32 %i.adh, -1                 ; 2 uses
  store i32 %i.adi, ptr %i.t, align 8, !tbaa !27
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !3
  store i32 %i.adl, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

switch.lookup:                                    ; preds = %.loopexit237.i
  %switch.cast = zext nneg i8 %i.ai to i47
  %switch.downshift = lshr i47 -70300024700927, %switch.cast
  %switch.masked = trunc i47 %switch.downshift to i1
  br label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit: ; preds = %bb.de, %bb.ew, %bb.es, %bb.eh, %bb.ds, %bb.dk, %bb.aq, %bb.y, %bb.f, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.s, %bb.u, %bb.v, %bb.aa, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, %bb.ah, %bb.al, %bb.an, %bb.as, %bb.ay, %bb.az, %bb.bf, %bb.bg, %bb.bm, %bb.dm, %bb.du, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i, %bb.ej, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit155.i, %bb.eo, %bb.eu, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i, %bb.ey, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i, %bb.ez, %bb.fh, %bb.fi, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i, %bb.gb, %bb.gl, %bb.gn, %.critedge51.preheader.i, %.critedge232._crit_edge.i, %switch.hole_check, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i199.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit189.i, %bb.ge, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i, %bb.fy, %bb.fw, %bb.ft, %bb.fr, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit, %bb.fd, %bb.ea, %bb.dy, %bb.dq, %bb.di, %bb.cf, %bb.by, %bb.bv, %bb.bt, %bb.bl, %bb.bj, %bb.be, %bb.bc, %bb.av, %.critedge51.backedge.i, %bb.ad, %bb.p, %.lr.ph361.i.backedge, %bb.fm, %bb.da, %bb.cx, %bb.cu, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.co, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i47, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41, %bb.ci, %bb.bp, %bb.br, %bb.cb, %bb.cd, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i, %bb.gp, %bb.gr, %bb.fz, %.lr.ph357.i, %bb.gt, %.loopexit237.i, %switch.lookup, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, %bb.c
  %.10.i = phi i1 [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit ], [ %switch.masked, %switch.lookup ], [ false, %.lr.ph357.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i199.i ], [ false, %bb.da ], [ false, %bb.fz ], [ false, %.loopexit237.i ], [ false, %bb.c ], [ false, %bb.gt ], [ false, %bb.gr ], [ false, %bb.gp ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i ], [ false, %bb.cd ], [ false, %bb.cb ], [ false, %bb.br ], [ false, %bb.bp ], [ false, %bb.ci ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i41 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i47 ], [ false, %bb.co ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ], [ false, %bb.cu ], [ false, %bb.cx ], [ false, %bb.fm ], [ false, %.lr.ph361.i.backedge ], [ false, %bb.p ], [ false, %bb.ad ], [ false, %.critedge51.backedge.i ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %bb.be ], [ false, %bb.bj ], [ false, %bb.bl ], [ false, %bb.bt ], [ false, %bb.bv ], [ false, %bb.by ], [ false, %bb.cf ], [ false, %bb.di ], [ false, %bb.dq ], [ false, %bb.dy ], [ false, %bb.ea ], [ false, %bb.fd ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit ], [ false, %bb.fr ], [ false, %bb.ft ], [ false, %bb.fw ], [ false, %bb.fy ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit176._crit_edge.i ], [ false, %bb.ge ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit189.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i193.i ], [ false, %switch.hole_check ], [ false, %.critedge232._crit_edge.i ], [ false, %.critedge51.preheader.i ], [ false, %bb.gn ], [ false, %bb.gl ], [ false, %bb.gb ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i ], [ false, %bb.fi ], [ false, %bb.fh ], [ false, %bb.ez ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.thread.i ], [ false, %bb.ey ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit157.i ], [ false, %bb.eu ], [ false, %bb.eo ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit155.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit153.i ], [ false, %bb.ej ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i ], [ false, %bb.du ], [ false, %bb.dm ], [ false, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.as ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i ], [ false, %bb.f ], [ false, %bb.y ], [ false, %bb.aq ], [ false, %bb.dk ], [ false, %bb.ds ], [ false, %bb.eh ], [ false, %bb.es ], [ false, %bb.ew ], [ false, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %.10.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.g, 115
  br i1 %.not.i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i.i, label %.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

.thread.i:                                        ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  store i32 %i.q, ptr %i.c, align 8, !tbaa !17
  br label %bb.j

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %i.r = phi ptr [ %i.ah, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.j, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01530.i.i = phi i1 [ %.116.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01729.i.i = phi i32 [ %.118.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !17
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13    ; 5 uses
  %.not.i5.i = icmp slt i32 %.01729.i.i, 34636833
  br i1 %.not.i5.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

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
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i: ; preds = %bb.h, %.critedge.i.i
  %.118.i.i = phi i32 [ %i.ag, %bb.h ], [ %.01729.i.i, %.critedge.i.i ] ; 3 uses
  %.116.i.i = phi i1 [ %.01530.i.i, %bb.h ], [ true, %.critedge.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 3 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = add i8 %i.ai, -48
  %i.an = icmp ult i8 %i.am, 10
  %or.cond.i.i = or i1 %i.an, %i.al
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %i.ao = icmp eq i8 %i.ai, 95
  br i1 %i.ao, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.ap = add nsw i32 %i.s, 1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !17
  br i1 %.116.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i
  %i.aq = add nsw i32 %.118.i.i, 2
  %.inv.inv.i = icmp slt i32 %.118.i.i, -1
  %spec.select.i = select i1 %.inv.inv.i, i32 -1, i32 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %.thread.i, %bb.a
  %.02.ph = phi i32 [ 1, %.thread.i ], [ %spec.select.i, %bb.i ], [ -1, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ 0, %bb.a ]
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %.02.ph)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.j
  %.0 = phi i1 [ %i.ar, %bb.j ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.g, 71
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !17
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %3 = alloca %"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %.not.i = icmp ne i8 %i.h, 117                  ; 3 uses
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.e, 1                      ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !17
  %.pre = sext i32 %i.i to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.c, i64 %.pre
  %.pre85 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.h, %bb.a ], [ %.pre85, %bb.b ]
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.val = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.pre-phi
  %i.n = add nsw i32 %.val, 1                     ; 4 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !17
  %i.o = load i8, ptr %i.m, align 1, !tbaa !13
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %.phi.trans.insert86 = sext i32 %i.n to i64     ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds i8, ptr %i.c, i64 %.phi.trans.insert86 ; 2 uses
  %.pre88 = load i8, ptr %.phi.trans.insert87, align 1, !tbaa !13 ; 3 uses
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
  store i32 %i.x, ptr %i.d, align 8, !tbaa !17
  %i.y = load i8, ptr %i.u, align 1, !tbaa !13
  %i.z = sext i8 %i.y to i32
  %i.aa = add i32 %i.w, -48
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13  ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader.i
  %i.ag = phi i8 [ %.pre88, %bb.c ], [ %.pre88, %.preheader.i ], [ %i.ad, %bb.d ]
  %i.ah = phi i32 [ %i.n, %bb.c ], [ %i.n, %.preheader.i ], [ %i.x, %bb.d ] ; 2 uses
  %.0.ph = phi i32 [ 0, %bb.c ], [ %i.q, %.preheader.i ], [ %i.ab, %bb.d ] ; 5 uses
  %.not.i29 = icmp eq i8 %i.ag, 95
  br i1 %.not.i29, label %bb.e, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

bb.e:                                             ; preds = %.loopexit
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30: ; preds = %.loopexit, %bb.e
  %i.aj = phi i32 [ %i.ah, %.loopexit ], [ %i.ai, %bb.e ]
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 %i.ak ; 2 uses
  %i.am = sext i32 %.0.ph to i64
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !29
  store <2 x ptr> %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.aq = tail call noundef ptr @_ZN4absl12lts_2025051218debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef nonnull byval(%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions") align 8 %3) ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !11
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !17
  %i.as = add i32 %i.ar, %.0.ph
  store i32 %i.as, ptr %i.d, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %.not22 = icmp eq i8 %1, 0                      ; 2 uses
  br i1 %.not22, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = icmp sgt i32 %i.au, 0                   ; 3 uses
  switch i8 %1, label %bb.p [
    i8 67, label %bb.j
    i8 83, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
end_hunk_0
