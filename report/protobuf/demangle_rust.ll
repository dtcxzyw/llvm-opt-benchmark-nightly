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
  %3 = alloca %"class.absl::lts_20250512::debugging_internal::(anonymous namespace)::RustSymbolParser", align 8 ; 54 uses
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

.lr.ph:                                           ; preds = %.critedge51.preheader.i, %.lr.ph307.i.backedge
  %i.g = phi i32 [ %i.bn, %.lr.ph307.i.backedge ], [ %i.adx, %.critedge51.preheader.i ] ; 11 uses
  %.in = phi i32 [ %i.h, %.lr.ph307.i.backedge ], [ %.7.ph.i, %.critedge51.preheader.i ]
  %i.h = add i32 %.in, 1                          ; 30 uses
  %i.i = add nsw i32 %i.g, -1                     ; 20 uses
  store i32 %i.i, ptr %i.o, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  switch i8 %i.l, label %.critedge51.backedge.i [
    i8 0, label %bb.e
    i8 1, label %.loopexit181.loopexit.i
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
    i8 19, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i
    i8 20, label %bb.et
    i8 21, label %.loopexit182.i
    i8 22, label %.loopexit182.i
    i8 23, label %bb.fg
    i8 24, label %bb.fp
    i8 25, label %bb.fu
    i8 26, label %bb.gi
    i8 27, label %bb.go
    i8 28, label %.loopexit183.i
    i8 29, label %.loopexit179.i
    i8 30, label %.loopexit.i
  ], !llvm.loop !15

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre385 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre386 = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre388 = sext i32 %.pre386 to i64
  br label %bb.eg, !llvm.loop !15

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %.not.i63.i = icmp eq i8 %i.n, 82
  br i1 %.not.i63.i, label %bb.d, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 52 uses
  store i32 1, ptr %i.o, align 8, !tbaa !14
  store i8 0, ptr %3, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 396 ; 61 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 324 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 6 uses
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i

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
  br i1 %i.aa, label %bb.f, label %.loopexit181.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !18
  %i.ad = icmp eq i32 %i.i, 256
  br i1 %i.ad, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  store i8 1, ptr %i.u, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i: ; preds = %.lr.ph335.i, %bb.gu, %bb.gh, %bb.ff, %bb.bh, %bb.ba, %bb.at, %bb.ai, %bb.ab, %bb.g
  %.010.be.i = phi i32 [ %i.h, %bb.g ], [ %.414.i, %bb.ff ], [ %.010.i, %bb.gu ], [ %i.h, %bb.ab ], [ %i.h, %bb.at ], [ %.010.i, %bb.ai ], [ %.010.i, %bb.ba ], [ %.010.i, %bb.bh ], [ %.010.i, %bb.gh ], [ %.111.ph.i, %.lr.ph335.i ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre380 = load i32, ptr %i.e, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i

.loopexit181.loopexit.i:                          ; preds = %.lr.ph
  %.pre461.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre462.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre463.i = sext i32 %.pre462.i to i64
  br label %.loopexit181.i

.loopexit181.i:                                   ; preds = %bb.e, %.loopexit181.loopexit.i
  %.pre-phi464.i = phi i64 [ %.pre463.i, %.loopexit181.loopexit.i ], [ %i.v, %bb.e ]
  %i.ae = phi i32 [ %.pre462.i, %.loopexit181.loopexit.i ], [ %.val61.i, %bb.e ]
  %i.af = phi ptr [ %.pre461.i, %.loopexit181.loopexit.i ], [ %.val62.i, %bb.e ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !17
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %.pre-phi464.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 47
  br i1 %i.aj, label %switch.lookup, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i, %bb.d
  %i.ak = phi i32 [ 2, %bb.d ], [ %.pre380, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i ] ; 3 uses
  %i.al = phi ptr [ %0, %bb.d ], [ %.pre, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i ] ; 2 uses
  %.010.i = phi i32 [ 0, %bb.d ], [ %.010.be.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i ] ; 8 uses
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
    i8 73, label %bb.gg
    i8 66, label %bb.gr
  ]

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i
  %i.aq = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  br i1 %i.aq, label %.critedge51.preheader.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i
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
  br label %.critedge176.preheader.i

bb.o:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %i.p, align 4, !tbaa !18
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not.i87 = icmp ult i64 %i.bk, 2
  br i1 %.not.i87, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i16 62, ptr %i.bh, align 1
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89: ; preds = %bb.o, %bb.q
  %exitcond.not.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.i.not, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph307.i.backedge

.lr.ph307.i.backedge:                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit83, %.critedge51.backedge.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit77, %bb.be, %bb.bl, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10, %bb.gq
  %i.bn = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, !llvm.loop !19

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a
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
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

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
  %.not.i72 = icmp ult i64 %i.gl, 3
  br i1 %.not.i72, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gi, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store ptr %i.gm, ptr %i.c, align 8, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %i.gn = load i32, ptr %i.q, align 4, !tbaa !21
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.q, align 4, !tbaa !21
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %i.r, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13
  %i.gs = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext %i.gr)
  %exitcond.not.old.old.old.i = icmp ne i32 %i.h, 131071
  %or.cond628.not.i = select i1 %i.gs, i1 %exitcond.not.old.old.old.i, i1 false
  br i1 %or.cond628.not.i, label %.lr.ph307.i.backedge, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

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
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

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
  %.not.i69 = icmp ult i64 %i.hh, 3
  br i1 %.not.i69, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.he, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  store ptr %i.hi, ptr %i.c, align 8, !tbaa !11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk
  %i.hj = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0)
  %exitcond.not.old.old.old.old.i = icmp ne i32 %i.h, 131071
  %or.cond630.not.i = select i1 %i.hj, i1 %exitcond.not.old.old.old.old.i, i1 false
  br i1 %or.cond630.not.i, label %.lr.ph307.i.backedge, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.critedge176._crit_edge.i:                        ; preds = %.critedge176.backedge.i, %.critedge176.preheader.i
  %.lcssa330.i = phi i64 [ %i.acg, %.critedge176.preheader.i ], [ %i.ir, %.critedge176.backedge.i ]
  %.val58.lcssa.i = phi ptr [ %.val58332.i, %.critedge176.preheader.i ], [ %.val58.i, %.critedge176.backedge.i ]
  %.val57.lcssa.i = phi i32 [ %.val57331.i, %.critedge176.preheader.i ], [ %.val57.i, %.critedge176.backedge.i ]
  %i.hk = getelementptr inbounds i8, ptr %.val58.lcssa.i, i64 %.lcssa330.i
  %i.hl = add nsw i32 %.val57.lcssa.i, 1
  store i32 %i.hl, ptr %i.e, align 8, !tbaa !17
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !13
  %switch.tableidx = add i8 %i.hm, -97            ; 3 uses
  %i.hn = icmp ult i8 %switch.tableidx, 26
  br i1 %i.hn, label %switch.hole_check, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.hole_check:                                ; preds = %.critedge176._crit_edge.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 62716863, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup646, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

switch.lookup646:                                 ; preds = %switch.hole_check
  %i.ho = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm, i64 %i.ho
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.hp = load i32, ptr %i.p, align 4, !tbaa !18
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %.critedge51.preheader.i, label %bb.bm

bb.bm:                                            ; preds = %switch.lookup646
  %i.hr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %switch.load) #7 ; 2 uses
  %i.hs = add i64 %i.hr, 1                        ; 2 uses
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %.not.i65 = icmp ult i64 %i.hx, %i.hs
  br i1 %.not.i65, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull readonly align 1 %switch.load, i64 %i.hs, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hr
  store ptr %i.hy, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.preheader.i

.lr.ph335.i:                                      ; preds = %.critedge176.preheader.i, %.critedge176.backedge.i
  %i.hz = phi i8 [ %i.it, %.critedge176.backedge.i ], [ %i.aci, %.critedge176.preheader.i ]
  %i.ia = phi ptr [ %.val58.i, %.critedge176.backedge.i ], [ %.val58332.i, %.critedge176.preheader.i ] ; 5 uses
  %i.ib = phi i32 [ %.val57.i, %.critedge176.backedge.i ], [ %.val57331.i, %.critedge176.preheader.i ] ; 12 uses
  switch i8 %i.hz, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i [
    i8 65, label %bb.bo
    i8 83, label %bb.cb
    i8 84, label %bb.db
    i8 82, label %bb.cj
    i8 81, label %bb.cp
    i8 80, label %bb.cv
    i8 79, label %bb.cy
    i8 70, label %bb.ej
    i8 68, label %bb.eu
    i8 66, label %bb.gv
  ]

bb.bo:                                            ; preds = %.lr.ph335.i
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.e, align 8, !tbaa !17
  %i.id = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %.not.i75.i = icmp ult i64 %i.ij, 2
  br i1 %.not.i75.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i16 91, ptr %i.ig, align 1
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store ptr %i.il, ptr %i.c, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.im = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.in = icmp eq i32 %i.im, 256
  br i1 %i.in, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.io = add nsw i32 %i.im, 1
  store i32 %i.io, ptr %i.o, align 8, !tbaa !14
  %i.ip = sext i32 %i.im to i64
  %i.iq = getelementptr inbounds i8, ptr %3, i64 %i.ip
  store i8 12, ptr %i.iq, align 1, !tbaa !13
  br label %.critedge176.backedge.i

.critedge176.backedge.i:                          ; preds = %bb.da, %bb.cy, %bb.cx, %bb.cv, %bb.gy, %bb.di, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i, %bb.cs, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i, %bb.cm, %bb.cf, %bb.bs
  %.val57.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.ir = sext i32 %.val57.i to i64               ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %.val58.i, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !13  ; 2 uses
  %i.iu = add i8 %i.it, -97
  %i.iv = icmp ult i8 %i.iu, 26
  br i1 %i.iv, label %.critedge176._crit_edge.i, label %.lr.ph335.i

bb.bt:                                            ; preds = %.lr.ph
  %i.iw = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %.not.i62 = icmp ult i64 %i.jc, 3
  br i1 %.not.i62, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.iz, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  store ptr %i.jd, ptr %i.c, align 8, !tbaa !11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bt, %bb.bv
  %i.je = icmp eq i32 %i.i, 256
  br i1 %i.je, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.jf = zext nneg i32 %i.i to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 %i.jf
  store i8 13, ptr %i.jg, align 1, !tbaa !13
  %.pre451.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre452.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %.preheader.i

bb.by:                                            ; preds = %.lr.ph
  %i.jh = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jk = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %.not.i59 = icmp ult i64 %i.jn, 2
  br i1 %.not.i59, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i16 93, ptr %i.jk, align 1
  %i.jo = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61: ; preds = %bb.by, %bb.ca
  %exitcond.not.old.old.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.i.not, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph307.i.backedge

bb.cb:                                            ; preds = %.lr.ph335.i
  %i.jq = add nsw i32 %i.ib, 1
  store i32 %i.jq, ptr %i.e, align 8, !tbaa !17
  %i.jr = load i32, ptr %i.p, align 4, !tbaa !18
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ju = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %.not.i80.i = icmp ult i64 %i.jx, 2
  br i1 %.not.i80.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i16 91, ptr %i.ju, align 1
  %i.jy = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.c, align 8, !tbaa !11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.ka = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.kb = icmp eq i32 %i.ka, 256
  br i1 %i.kb, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kc = add nsw i32 %i.ka, 1
  store i32 %i.kc, ptr %i.o, align 8, !tbaa !14
  %i.kd = sext i32 %i.ka to i64
  %i.ke = getelementptr inbounds i8, ptr %3, i64 %i.kd
  store i8 14, ptr %i.ke, align 1, !tbaa !13
  br label %.critedge176.backedge.i

bb.cg:                                            ; preds = %.lr.ph
  %i.kf = load i32, ptr %i.p, align 4, !tbaa !18
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kh = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ki = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %.not.i56 = icmp ult i64 %i.kl, 2
  br i1 %.not.i56, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i16 93, ptr %i.ki, align 1
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  store ptr %i.kn, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58: ; preds = %bb.cg, %bb.ci
  %exitcond.not.old.old.old.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.old.i.not, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph307.i.backedge

bb.cj:                                            ; preds = %.lr.ph335.i
  %i.ko = add nsw i32 %i.ib, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.e, align 8, !tbaa !17
  %i.kp = load i32, ptr %i.p, align 4, !tbaa !18
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kr = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ks = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %.not.i87.i = icmp ult i64 %i.kv, 2
  br i1 %.not.i87.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i16 38, ptr %i.ks, align 1
  %i.kw = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  store ptr %i.kx, ptr %i.c, align 8, !tbaa !11
  %.pre457.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre458.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.ky = phi i32 [ %i.ko, %bb.cj ], [ %.pre458.i, %bb.cl ] ; 3 uses
  %i.kz = phi ptr [ %i.ia, %bb.cj ], [ %.pre457.i, %bb.cl ] ; 3 uses
  %i.la = sext i32 %i.ky to i64
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !13
  %.not.i.i90.i = icmp eq i8 %i.lc, 76
  br i1 %.not.i.i90.i, label %bb.cn, label %.critedge176.backedge.i

bb.cn:                                            ; preds = %bb.cm
  %i.ld = add nsw i32 %i.ky, 1                    ; 2 uses
  store i32 %i.ld, ptr %i.e, align 8, !tbaa !17
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.kz, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i91.i = icmp eq i8 %i.lg, 95
  br i1 %.not.i.i.i91.i, label %bb.co, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i: ; preds = %bb.cn
  %i.lh = and i8 %i.lg, -33
  %i.li = add i8 %i.lh, -65
  %i.lj = icmp ult i8 %i.li, 26
  %i.lk = add i8 %i.lg, -48
  %i.ll = icmp ult i8 %i.lk, 10
  %or.cond28.i.i93.i = or i1 %i.ll, %i.lj
  br i1 %or.cond28.i.i93.i, label %.critedge.i.i94.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.co:                                            ; preds = %bb.cn
  %i.lm = add nsw i32 %i.ky, 2
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i

.critedge.i.i94.i:                                ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i, %.critedge.i.i94.i
  %indvars.iv.i.i95.i = phi i64 [ %indvars.iv.next.i.i96.i, %.critedge.i.i94.i ], [ %i.le, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i ]
  %indvars.iv.next.i.i96.i = add nsw i64 %indvars.iv.i.i95.i, 1 ; 3 uses
  %i.ln = trunc nsw i64 %indvars.iv.next.i.i96.i to i32 ; 2 uses
  store i32 %i.ln, ptr %i.e, align 8, !tbaa !17
  %i.lo = getelementptr inbounds i8, ptr %i.kz, i64 %indvars.iv.next.i.i96.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !13  ; 3 uses
  %i.lq = and i8 %i.lp, -33
  %i.lr = add i8 %i.lq, -65
  %i.ls = icmp ult i8 %i.lr, 26
  %i.lt = add i8 %i.lp, -48
  %i.lu = icmp ult i8 %i.lt, 10
  %or.cond.i.i97.i = or i1 %i.lu, %i.ls
  br i1 %or.cond.i.i97.i, label %.critedge.i.i94.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i98.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i98.i: ; preds = %.critedge.i.i94.i
  %i.lv = icmp eq i8 %i.lp, 95
  br i1 %i.lv, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i99.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i99.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i98.i
  %i.lw = add nsw i32 %i.ln, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i99.i, %bb.co
  %.sink.i100.i = phi i32 [ %i.lw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i99.i ], [ %i.lm, %bb.co ]
  store i32 %.sink.i100.i, ptr %i.e, align 8, !tbaa !17
  br label %.critedge176.backedge.i

bb.cp:                                            ; preds = %.lr.ph335.i
  %i.lx = add nsw i32 %i.ib, 1                    ; 2 uses
  store i32 %i.lx, ptr %i.e, align 8, !tbaa !17
  %i.ly = load i32, ptr %i.p, align 4, !tbaa !18
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ma = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mb = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %.not.i53 = icmp ult i64 %i.me, 6
  br i1 %.not.i53, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mb, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 5
  store ptr %i.mf, ptr %i.c, align 8, !tbaa !11
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %i.mg = sext i32 %i.lx to i64
  %i.mh = getelementptr inbounds i8, ptr %i.ia, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !13
  %.not.i.i50 = icmp eq i8 %i.mi, 76
  br i1 %.not.i.i50, label %bb.ct, label %.critedge176.backedge.i

bb.ct:                                            ; preds = %bb.cs
  %i.mj = add nsw i32 %i.ib, 2                    ; 2 uses
  store i32 %i.mj, ptr %i.e, align 8, !tbaa !17
  %i.mk = sext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.ia, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i51 = icmp eq i8 %i.mm, 95
  br i1 %.not.i.i.i51, label %bb.cu, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.ct
  %i.mn = and i8 %i.mm, -33
  %i.mo = add i8 %i.mn, -65
  %i.mp = icmp ult i8 %i.mo, 26
  %i.mq = add i8 %i.mm, -48
  %i.mr = icmp ult i8 %i.mq, 10
  %or.cond28.i.i = or i1 %i.mr, %i.mp
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.cu:                                            ; preds = %bb.ct
  %i.ms = add nsw i32 %i.ib, 3
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %.critedge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %i.mk, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.mt = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.mt, ptr %i.e, align 8, !tbaa !17
  %i.mu = getelementptr inbounds i8, ptr %i.ia, i64 %indvars.iv.next.i.i
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !13  ; 3 uses
  %i.mw = and i8 %i.mv, -33
  %i.mx = add i8 %i.mw, -65
  %i.my = icmp ult i8 %i.mx, 26
  %i.mz = add i8 %i.mv, -48
  %i.na = icmp ult i8 %i.mz, 10
  %or.cond.i.i = or i1 %i.na, %i.my
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %.critedge.i.i
  %i.nb = icmp eq i8 %i.mv, 95
  br i1 %i.nb, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.nc = add nsw i32 %i.mt, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %bb.cu
  %.sink.i52 = phi i32 [ %i.nc, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ %i.ms, %bb.cu ]
  store i32 %.sink.i52, ptr %i.e, align 8, !tbaa !17
  br label %.critedge176.backedge.i

bb.cv:                                            ; preds = %.lr.ph335.i
  %i.nd = add nsw i32 %i.ib, 1
  store i32 %i.nd, ptr %i.e, align 8, !tbaa !17
  %i.ne = load i32, ptr %i.p, align 4, !tbaa !18
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.critedge176.backedge.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ng = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nh = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %.not.i47 = icmp ult i64 %i.nk, 8
  br i1 %.not.i47, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 9135238377595690, ptr %i.nh, align 1
  %i.nl = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 7
  store ptr %i.nm, ptr %i.c, align 8, !tbaa !11
  br label %.critedge176.backedge.i

bb.cy:                                            ; preds = %.lr.ph335.i
  %i.nn = add nsw i32 %i.ib, 1
  store i32 %i.nn, ptr %i.e, align 8, !tbaa !17
  %i.no = load i32, ptr %i.p, align 4, !tbaa !18
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.critedge176.backedge.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nr = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %.not.i44 = icmp ult i64 %i.nu, 6
  br i1 %.not.i44, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.nr, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 5
  store ptr %i.nv, ptr %i.c, align 8, !tbaa !11
  br label %.critedge176.backedge.i

bb.db:                                            ; preds = %.lr.ph335.i
  %i.nw = add nsw i32 %i.ib, 1                    ; 2 uses
  store i32 %i.nw, ptr %i.e, align 8, !tbaa !17
  %i.nx = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ny = icmp sgt i32 %i.nx, 0
  br i1 %i.ny, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nz = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %.not.i113.i = icmp ult i64 %i.od, 2
  br i1 %.not.i113.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i16 40, ptr %i.oa, align 1
  %i.oe = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  store ptr %i.of, ptr %i.c, align 8, !tbaa !11
  %.pre459.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre460.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %i.og = phi i32 [ %i.nw, %bb.db ], [ %.pre460.i, %bb.dd ] ; 2 uses
  %i.oh = phi ptr [ %i.ia, %bb.db ], [ %.pre459.i, %bb.dd ]
  %i.oi = sext i32 %i.og to i64
  %i.oj = getelementptr inbounds i8, ptr %i.oh, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !13
  %.not.i116.i = icmp eq i8 %i.ok, 69
  br i1 %.not.i116.i, label %bb.df, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit117.i

bb.df:                                            ; preds = %bb.de
  %i.ol = add nsw i32 %i.og, 1
  store i32 %i.ol, ptr %i.e, align 8, !tbaa !17
  %i.om = load i32, ptr %i.p, align 4, !tbaa !18
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.critedge51.preheader.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.oo = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.op = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = sub i64 %i.oq, %i.or
  %.not.i41 = icmp ult i64 %i.os, 2
  br i1 %.not.i41, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i16 41, ptr %i.op, align 1
  %i.ot = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store ptr %i.ou, ptr %i.c, align 8, !tbaa !11
  br label %.critedge51.preheader.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit117.i: ; preds = %bb.de
  %i.ov = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.ow = icmp eq i32 %i.ov, 256
  br i1 %i.ow, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.di

bb.di:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit117.i
  %i.ox = add nsw i32 %i.ov, 1
  store i32 %i.ox, ptr %i.o, align 8, !tbaa !14
  %i.oy = sext i32 %i.ov to i64
  %i.oz = getelementptr inbounds i8, ptr %3, i64 %i.oy
  store i8 15, ptr %i.oz, align 1, !tbaa !13
  br label %.critedge176.backedge.i

bb.dj:                                            ; preds = %.lr.ph
  %i.pa = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.pb = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds i8, ptr %i.pa, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !13
  %.not.i118.i = icmp eq i8 %i.pe, 69
  br i1 %.not.i118.i, label %bb.dk, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit119.i

bb.dk:                                            ; preds = %bb.dj
  %i.pf = add nsw i32 %i.pb, 1
  store i32 %i.pf, ptr %i.e, align 8, !tbaa !17
  %i.pg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pi = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %.not.i38 = icmp ult i64 %i.pm, 3
  br i1 %.not.i38, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pj, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  store ptr %i.pn, ptr %i.c, align 8, !tbaa !11
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a
bb.ei:                                            ; preds = %bb.eg
  %i.se = add nsw i32 %i.rx, 1
  store i32 %i.se, ptr %i.e, align 8, !tbaa !17
  %i.sf = load i32, ptr %i.p, align 4, !tbaa !18
  %i.sg = add nsw i32 %i.sf, -1
  store i32 %i.sg, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

bb.ej:                                            ; preds = %.lr.ph335.i
  %i.sh = add nsw i32 %i.ib, 1
  store i32 %i.sh, ptr %i.e, align 8, !tbaa !17
  %i.si = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.sj = icmp sgt i32 %i.si, 0
  br i1 %i.sj, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.sk = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sl = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %.not.i20 = icmp ult i64 %i.so, 6
  br i1 %.not.i20, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.sl, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 5
  store ptr %i.sp, ptr %i.c, align 8, !tbaa !11
  br label %bb.em

bb.em:                                            ; preds = %bb.ej, %bb.el
  %i.sq = add nsw i32 %i.si, 1
  store i32 %i.sq, ptr %i.p, align 4, !tbaa !18
  %i.sr = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.sr, label %bb.en, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.en:                                            ; preds = %bb.em
  %i.ss = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.st = load i32, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds i8, ptr %i.ss, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !13  ; 2 uses
  %.not.i126.i = icmp eq i8 %i.sw, 85
  br i1 %.not.i126.i, label %bb.eo, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i

bb.eo:                                            ; preds = %bb.en
  %i.sx = add nsw i32 %i.st, 1                    ; 3 uses
  store i32 %i.sx, ptr %i.e, align 8, !tbaa !17
  %.pre454.i = sext i32 %i.sx to i64
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.ss, i64 %.pre454.i
  %.pre456.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i: ; preds = %bb.eo, %bb.en
  %i.sy = phi i8 [ %i.sw, %bb.en ], [ %.pre456.i, %bb.eo ]
  %i.sz = phi i32 [ %i.st, %bb.en ], [ %i.sx, %bb.eo ] ; 2 uses
  %.not.i128.i = icmp eq i8 %i.sy, 75
  br i1 %.not.i128.i, label %bb.ep, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i

bb.ep:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i
  %i.ta = add nsw i32 %i.sz, 1                    ; 2 uses
  store i32 %i.ta, ptr %i.e, align 8, !tbaa !17
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.ss, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !13
  %.not.i130.i = icmp eq i8 %i.td, 67
  br i1 %.not.i130.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.thread.i: ; preds = %bb.ep
  %i.te = add nsw i32 %i.sz, 2
  store i32 %i.te, ptr %i.e, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i: ; preds = %bb.ep
  %i.tf = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.tf, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i: ; preds = %.lr.ph, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.thread.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i
  %.212.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.thread.i ], [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i ], [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit127.i ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.tg = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.th = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds i8, ptr %i.tg, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !13
  %.not.i132.i = icmp eq i8 %i.tk, 69
  br i1 %.not.i132.i, label %bb.er, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i
  %i.tl = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.tm = icmp eq i32 %i.tl, 256
  br i1 %i.tm, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.eq

bb.eq:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i
  %i.tn = add nsw i32 %i.tl, 1
  store i32 %i.tn, ptr %i.o, align 8, !tbaa !14
  %i.to = sext i32 %i.tl to i64
  %i.tp = getelementptr inbounds i8, ptr %3, i64 %i.to
  store i8 19, ptr %i.tp, align 1, !tbaa !13
  br label %.critedge176.preheader.i

bb.er:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit129.i
  %i.tq = add nsw i32 %i.th, 1
  store i32 %i.tq, ptr %i.e, align 8, !tbaa !17
  %i.tr = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.ts = icmp eq i32 %i.tr, 256
  br i1 %i.ts, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.tt = add nsw i32 %i.tr, 1
  store i32 %i.tt, ptr %i.o, align 8, !tbaa !14
  %i.tu = sext i32 %i.tr to i64
  %i.tv = getelementptr inbounds i8, ptr %3, i64 %i.tu
  store i8 20, ptr %i.tv, align 1, !tbaa !13
  br label %.critedge176.preheader.i

bb.et:                                            ; preds = %.lr.ph
  %i.tw = load i32, ptr %i.p, align 4, !tbaa !18
  %i.tx = add nsw i32 %i.tw, -1
  store i32 %i.tx, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

bb.eu:                                            ; preds = %.lr.ph335.i
  %i.ty = add nsw i32 %i.ib, 1
  store i32 %i.ty, ptr %i.e, align 8, !tbaa !17
  %i.tz = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ub = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uc = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %.not.i17 = icmp ult i64 %i.uf, 5
  br i1 %.not.i17, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.uc, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store ptr %i.ug, ptr %i.c, align 8, !tbaa !11
  br label %bb.ex

bb.ex:                                            ; preds = %bb.eu, %bb.ew
  %i.uh = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.uh, label %bb.ey, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.ey:                                            ; preds = %bb.ex
  %i.ui = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.uj = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds i8, ptr %i.ui, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !13
  %.not.i134.i = icmp eq i8 %i.um, 69
  br i1 %.not.i134.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i: ; preds = %bb.ey
  %i.un = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %i.uo = icmp eq i32 %i.un, 256
  br i1 %i.uo, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fe

.loopexit182.i:                                   ; preds = %.lr.ph, %.lr.ph
  %i.up = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.uq = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.up, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !13
  %.not.i136.i = icmp eq i8 %i.ut, 69
  br i1 %.not.i136.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit137.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit137.i: ; preds = %.loopexit182.i
  %i.uu = load i32, ptr %i.p, align 4, !tbaa !18
  %i.uv = icmp sgt i32 %i.uu, 0
  br i1 %i.uv, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit137.i
  %i.uw = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ux = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = sub i64 %i.uy, %i.uz
  %.not.i14 = icmp ult i64 %i.va, 4
  br i1 %.not.i14, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i32 2108192, ptr %i.ux, align 1
  %i.vb = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 3
  store ptr %i.vc, ptr %i.c, align 8, !tbaa !11
  %.pre384 = load i32, ptr %i.o, align 8, !tbaa !14
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit137.i, %bb.fa
  %i.vd = phi i32 [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit137.i ], [ %.pre384, %bb.fa ] ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 256
  br i1 %i.ve, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fe

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i: ; preds = %.loopexit182.i, %bb.ey
  %.val2.i.i = phi ptr [ %i.ui, %bb.ey ], [ %i.up, %.loopexit182.i ] ; 3 uses
  %storemerge.in.i = phi i32 [ %i.uj, %bb.ey ], [ %i.uq, %.loopexit182.i ] ; 3 uses
  %.313.i = phi i32 [ %.111.ph.i, %bb.ey ], [ %i.h, %.loopexit182.i ]
  %storemerge.i = add nsw i32 %storemerge.in.i, 1 ; 2 uses
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !17
  %i.vf = sext i32 %storemerge.i to i64
  %i.vg = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !13
  %.not.i138.i = icmp eq i8 %i.vh, 76
  br i1 %.not.i138.i, label %bb.fc, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fc:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i
  %i.vi = add nsw i32 %storemerge.in.i, 2         ; 2 uses
  store i32 %i.vi, ptr %i.e, align 8, !tbaa !17
  %i.vj = sext i32 %i.vi to i64                   ; 2 uses
  %i.vk = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.vl, 95
  br i1 %.not.i.i.i.i.i, label %bb.fd, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i: ; preds = %bb.fc
  %i.vm = and i8 %i.vl, -33
  %i.vn = add i8 %i.vm, -65
  %i.vo = icmp ult i8 %i.vn, 26
  %i.vp = add i8 %i.vl, -48
  %i.vq = icmp ult i8 %i.vp, 10
  %or.cond28.i.i.i.i = or i1 %i.vq, %i.vo
  br i1 %or.cond28.i.i.i.i, label %.critedge.i.i.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fd:                                            ; preds = %bb.fc
  %i.vr = add nsw i32 %storemerge.in.i, 3
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i

.critedge.i.i.i.i:                                ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.vj, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 3 uses
  %i.vs = trunc nsw i64 %indvars.iv.next.i.i.i.i to i32 ; 2 uses
  store i32 %i.vs, ptr %i.e, align 8, !tbaa !17
  %i.vt = getelementptr inbounds i8, ptr %.val2.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !13  ; 3 uses
  %i.vv = and i8 %i.vu, -33
  %i.vw = add i8 %i.vv, -65
  %i.vx = icmp ult i8 %i.vw, 26
  %i.vy = add i8 %i.vu, -48
  %i.vz = icmp ult i8 %i.vy, 10
  %or.cond.i.i.i.i = or i1 %i.vz, %i.vx
  br i1 %or.cond.i.i.i.i, label %.critedge.i.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i: ; preds = %.critedge.i.i.i.i
  %i.wa = icmp eq i8 %i.vu, 95
  br i1 %i.wa, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i
  %i.wb = add nsw i32 %i.vs, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i.i, %bb.fd
  %.sink.i.i.i = phi i32 [ %i.wb, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i.i.i ], [ %i.vr, %bb.fd ]
  store i32 %.sink.i.i.i, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.preheader.i

bb.fe:                                            ; preds = %bb.fb, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i
  %.sink650.i = phi i32 [ %i.un, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i ], [ %i.vd, %bb.fb ] ; 2 uses
  %.sink645.i = phi i8 [ 21, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i ], [ 22, %bb.fb ]
  %.414.i = phi i32 [ %.111.ph.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i ], [ %i.h, %bb.fb ]
  %i.wc = add nsw i32 %.sink650.i, 1
  store i32 %i.wc, ptr %i.o, align 8, !tbaa !14
  %i.wd = sext i32 %.sink650.i to i64
  %i.we = getelementptr inbounds i8, ptr %3, i64 %i.wd
  store i8 %.sink645.i, ptr %i.we, align 1, !tbaa !13
  %i.wf = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.wg = icmp eq i32 %i.wf, 256
  br i1 %i.wg, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.wh = add nsw i32 %i.wf, 1
  store i32 %i.wh, ptr %i.o, align 8, !tbaa !14
  %i.wi = sext i32 %i.wf to i64
  %i.wj = getelementptr inbounds i8, ptr %3, i64 %i.wi
  store i8 23, ptr %i.wj, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

bb.fg:                                            ; preds = %.lr.ph
  %.val55.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.wk = sext i32 %.val55.i to i64               ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.val56.i, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !13
  %i.wn = icmp eq i8 %i.wm, 112
  br i1 %i.wn, label %bb.fh, label %.critedge51.backedge.i

bb.fh:                                            ; preds = %bb.fg
  %i.wo = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.wq = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wr = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.ws = ptrtoint ptr %i.wq to i64
  %i.wt = ptrtoint ptr %i.wr to i64
  %i.wu = sub i64 %i.ws, %i.wt
  %.not.i11 = icmp ult i64 %i.wu, 3
  br i1 %.not.i11, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wr, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 2
  store ptr %i.wv, ptr %i.c, align 8, !tbaa !11
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fh, %bb.fj
  %i.ww = add nsw i32 %i.wo, 1
  store i32 %i.ww, ptr %i.p, align 4, !tbaa !18
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fp, %bb.fk
  %.pre-phi = phi i64 [ %.pre387, %bb.fp ], [ %i.wk, %bb.fk ]
  %i.wx = phi i32 [ %.pre383, %bb.fp ], [ %.val55.i, %bb.fk ]
  %i.wy = phi ptr [ %.pre382, %bb.fp ], [ %.val56.i, %bb.fk ]
  %i.wz = getelementptr inbounds i8, ptr %i.wy, i64 %.pre-phi
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !13
  %.not.i140.i = icmp eq i8 %i.xa, 112
  br i1 %.not.i140.i, label %bb.fm, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit141.i

bb.fm:                                            ; preds = %bb.fl
  %i.xb = add nsw i32 %i.wx, 1
  store i32 %i.xb, ptr %i.e, align 8, !tbaa !17
  %i.xc = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 noundef signext 0, i32 noundef 0)
  br i1 %i.xc, label %bb.fn, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.fn:                                            ; preds = %bb.fm
  %i.xd = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.xe = icmp eq i32 %i.xd, 256
  br i1 %i.xe, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.xf = add nsw i32 %i.xd, 1
  store i32 %i.xf, ptr %i.o, align 8, !tbaa !14
  %i.xg = sext i32 %i.xd to i64
  %i.xh = getelementptr inbounds i8, ptr %3, i64 %i.xg
  store i8 24, ptr %i.xh, align 1, !tbaa !13
  br label %.critedge176.preheader.i

bb.fp:                                            ; preds = %.lr.ph
  %.pre382 = load ptr, ptr %i.b, align 8, !tbaa !7
  %.pre383 = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.pre387 = sext i32 %.pre383 to i64
  br label %bb.fl, !llvm.loop !22

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit141.i: ; preds = %bb.fl
  %i.xi = load i32, ptr %i.p, align 4, !tbaa !18
  %i.xj = add nsw i32 %i.xi, -1
  store i32 %i.xj, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit143.i: ; preds = %bb.hb, %.preheader.i
  %i.xk = phi i8 [ %i.acu, %.preheader.i ], [ %i.aen, %bb.hb ]
  %i.xl = phi i32 [ %i.acq, %.preheader.i ], [ %i.aek, %bb.hb ]
  %.not.i144.i = icmp eq i8 %i.xk, 112
  br i1 %.not.i144.i, label %bb.fq, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit145.i

bb.fq:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit143.i
  %i.xm = add nsw i32 %i.xl, 1
  store i32 %i.xm, ptr %i.e, align 8, !tbaa !17
  %i.xn = load i32, ptr %i.p, align 4, !tbaa !18
  %i.xo = icmp sgt i32 %i.xn, 0
  br i1 %i.xo, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xp = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xq = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %.not.i8 = icmp ult i64 %i.xt, 2
  br i1 %.not.i8, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  store i16 95, ptr %i.xq, align 1
  %i.xu = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  store ptr %i.xv, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10: ; preds = %bb.fq, %bb.fs
  %exitcond.not.old.old.old.old.old.old.old.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.old.old.old.old.old.i.not, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph307.i.backedge

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit145.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit143.i
  %i.xw = load i32, ptr %i.p, align 4, !tbaa !18
  %i.xx = add nsw i32 %i.xw, 1
  store i32 %i.xx, ptr %i.p, align 4, !tbaa !18
  %i.xy = load i32, ptr %i.o, align 8, !tbaa !14  ; 3 uses
  %i.xz = icmp eq i32 %i.xy, 256
  br i1 %i.xz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit145.i
  %i.ya = add nsw i32 %i.xy, 1
  store i32 %i.ya, ptr %i.o, align 8, !tbaa !14
  %i.yb = sext i32 %i.xy to i64
  %i.yc = getelementptr inbounds i8, ptr %3, i64 %i.yb
  store i8 25, ptr %i.yc, align 1, !tbaa !13
  br label %.critedge176.preheader.i

bb.fu:                                            ; preds = %.lr.ph
  %i.yd = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.ye = add nsw i32 %i.yd, -1                   ; 3 uses
  store i32 %i.ye, ptr %i.p, align 4, !tbaa !18
  %i.yf = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.yg = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds i8, ptr %i.yf, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !13
  %.not.i146.i = icmp eq i8 %i.yj, 110
  br i1 %.not.i146.i, label %bb.fv, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i

bb.fv:                                            ; preds = %bb.fu
  %i.yk = add nsw i32 %i.yg, 1
  store i32 %i.yk, ptr %i.e, align 8, !tbaa !17
  %i.yl = icmp sgt i32 %i.yd, 1
  br i1 %i.yl, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ym = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yn = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yn to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = icmp slt i64 %i.yq, 2
  br i1 %i.yr, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 1
  store ptr %i.ys, ptr %i.c, align 8, !tbaa !11
  store i8 45, ptr %i.yn, align 1, !tbaa !13
  %i.yt = load ptr, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.yt, align 1, !tbaa !13
  %.pre381 = load i32, ptr %i.p, align 4, !tbaa !18
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i: ; preds = %bb.fx, %bb.fu
  %i.yu = phi i32 [ %.pre381, %bb.fx ], [ %i.ye, %bb.fu ] ; 3 uses
  %i.yv = icmp sgt i32 %i.yu, 0
  br i1 %i.yv, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i.thread, label %bb.fy

bb.fy:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yx = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz
  %.not.i5 = icmp ult i64 %i.za, 3
  br i1 %.not.i5, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yx, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  store ptr %i.zb, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit147.i.thread
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a
  %i.aak = add nsw i32 %i.aaf, 1
  store i32 %i.aak, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i
  %.pr.i = load i32, ptr %i.p, align 4, !tbaa !18
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.aal = phi i32 [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.zd, %.lr.ph.i ]
  %.val54448.i = phi ptr [ %.val54.i, %.lr.ph.splitthread-pre-split.i ], [ %i.ze, %.lr.ph.i ]
  %i.aam = phi ptr [ %i.aaz, %.lr.ph.splitthread-pre-split.i ], [ %i.zh, %.lr.ph.i ]
  %.val53299.i = phi i32 [ %.val53.i, %.lr.ph.splitthread-pre-split.i ], [ %i.zf, %.lr.ph.i ]
  %i.aan = add nsw i32 %.val53299.i, 1            ; 2 uses
  store i32 %i.aan, ptr %i.e, align 8, !tbaa !17
  %i.aao = load i8, ptr %i.aam, align 1, !tbaa !13
  %i.aap = icmp sgt i32 %i.aal, 0
  br i1 %i.aap, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.split.i
  %i.aaq = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aar = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  %i.aas = ptrtoint ptr %i.aaq to i64
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = sub i64 %i.aas, %i.aat
  %i.aav = icmp slt i64 %i.aau, 2
  br i1 %i.aav, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 1
  store ptr %i.aaw, ptr %i.c, align 8, !tbaa !11
  store i8 %i.aao, ptr %i.aar, align 1, !tbaa !13
  %i.aax = load ptr, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.aax, align 1, !tbaa !13
  %.val53.pre.i = load i32, ptr %i.e, align 8, !tbaa !17
  %.val54.pre.i = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i: ; preds = %bb.gf, %.lr.ph.split.i
  %.val54.i = phi ptr [ %.val54448.i, %.lr.ph.split.i ], [ %.val54.pre.i, %bb.gf ] ; 2 uses
  %.val53.i = phi i32 [ %i.aan, %.lr.ph.split.i ], [ %.val53.pre.i, %bb.gf ] ; 3 uses
  %i.aay = sext i32 %.val53.i to i64
  %i.aaz = getelementptr inbounds i8, ptr %.val54.i, i64 %i.aay ; 2 uses
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !13 ; 3 uses
  %i.abb = add i8 %i.aba, -48
  %i.abc = icmp ult i8 %i.abb, 10
  %i.abd = add i8 %i.aba, -97
  %i.abe = icmp ult i8 %i.abd, 6
  %i.abf = or i1 %i.abc, %i.abe
  br i1 %i.abf, label %.lr.ph.splitthread-pre-split.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150._crit_edge.i, !llvm.loop !24

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150._crit_edge.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.us.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150.preheader.i
  %.val53.lcssa.i = phi i32 [ %i.zf, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150.preheader.i ], [ %i.zo, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.us.i ], [ %.val53.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i ]
  %.lcssa188.i = phi i8 [ %i.zi, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150.preheader.i ], [ %i.zq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.us.i ], [ %i.aba, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit156.i ]
  %.not.i157.i = icmp eq i8 %.lcssa188.i, 95
  br i1 %.not.i157.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit158.i, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit158.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150._crit_edge.i
  %i.abg = add nsw i32 %.val53.lcssa.i, 1
  store i32 %i.abg, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

bb.gg:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i
  %i.abh = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.abi = icmp eq i32 %i.abh, 256
  br i1 %i.abi, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.abj = add nsw i32 %i.abh, 1
  store i32 %i.abj, ptr %i.o, align 8, !tbaa !14
  %i.abk = sext i32 %i.abh to i64
  %i.abl = getelementptr inbounds i8, ptr %3, i64 %i.abk
  store i8 26, ptr %i.abl, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

bb.gi:                                            ; preds = %.lr.ph
  %i.abm = load i32, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.abn = icmp sgt i32 %i.abm, 0
  br i1 %i.abn, label %bb.gl, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abo = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abp = load ptr, ptr %i.c, align 8, !tbaa !11 ; 3 uses
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = ptrtoint ptr %i.abp to i64
  %i.abs = sub i64 %i.abq, %i.abr
  %.not.i4 = icmp ult i64 %i.abs, 5
  br i1 %.not.i4, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.abp, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  store ptr %i.abt, ptr %i.c, align 8, !tbaa !11
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gi, %bb.gk
  %i.abu = add nsw i32 %i.abm, 1
  store i32 %i.abu, ptr %i.p, align 4, !tbaa !18
  br label %bb.gm

bb.gm:                                            ; preds = %bb.go, %bb.gl
  %i.abv = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.abw = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds i8, ptr %i.abv, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !13
  %.not.i159.i = icmp eq i8 %i.abz, 69
  br i1 %.not.i159.i, label %bb.gp, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit160.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit160.i: ; preds = %bb.gm
  %i.aca = icmp eq i32 %i.i, 256
  br i1 %i.aca, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gn

bb.gn:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit160.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !14
  %i.acb = zext nneg i32 %i.i to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 %i.acb
  store i8 27, ptr %i.acc, align 1, !tbaa !13
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.val52.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.acd = sext i32 %.val.i to i64
  %i.ace = getelementptr inbounds i8, ptr %.val52.i, i64 %i.acd
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !13
  switch i8 %i.acf, label %.critedge176.preheader.i [
    i8 76, label %bb.gq
    i8 75, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i
  ]

.critedge176.preheader.i:                         ; preds = %bb.gn, %bb.ft, %bb.fo, %bb.es, %bb.eq, %bb.eh, %bb.dy, %bb.dq, %bb.ao, %bb.w, %bb.n
  %.111.ph.i = phi i32 [ %.010.i, %bb.ao ], [ %i.h, %bb.n ], [ %i.h, %bb.fo ], [ %i.h, %bb.eh ], [ %i.h, %bb.dy ], [ %i.h, %bb.dq ], [ %i.h, %bb.ft ], [ %i.h, %bb.w ], [ %.212.i, %bb.es ], [ %.212.i, %bb.eq ], [ %i.h, %bb.gn ] ; 11 uses
  %.val57331.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %.val58332.i = load ptr, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.acg = sext i32 %.val57331.i to i64           ; 2 uses
  %i.ach = getelementptr inbounds i8, ptr %.val58332.i, i64 %i.acg
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !13 ; 2 uses
  %i.acj = add i8 %i.aci, -97
  %i.ack = icmp ult i8 %i.acj, 26
  br i1 %i.ack, label %.critedge176._crit_edge.i, label %.lr.ph335.i

bb.go:                                            ; preds = %.lr.ph
  br label %bb.gm, !llvm.loop !26

bb.gp:                                            ; preds = %bb.gm
  %i.acl = add nsw i32 %i.abw, 1
  store i32 %i.acl, ptr %i.e, align 8, !tbaa !17
  %i.acm = load i32, ptr %i.p, align 4, !tbaa !18
  %i.acn = add nsw i32 %i.acm, -1
  store i32 %i.acn, ptr %i.p, align 4, !tbaa !18
  br label %.critedge51.backedge.i

bb.gq:                                            ; preds = %bb.gn
  %i.aco = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  %exitcond.not.old.old.old.old.old.old.old.old.old.old.old.i = icmp ne i32 %i.h, 131071
  %or.cond644.not.i = select i1 %i.aco, i1 %exitcond.not.old.old.old.old.old.old.old.old.old.old.old.i, i1 false
  br i1 %or.cond644.not.i, label %.lr.ph307.i.backedge, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i: ; preds = %bb.gn
  %i.acp = add nsw i32 %.val.i, 1                 ; 2 uses
  store i32 %i.acp, ptr %i.e, align 8, !tbaa !17
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i, %bb.bx
  %i.acq = phi i32 [ %.pre452.i, %bb.bx ], [ %i.acp, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i ] ; 3 uses
  %i.acr = phi ptr [ %.pre451.i, %bb.bx ], [ %.val52.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i ]
  %i.acs = sext i32 %i.acq to i64
  %i.act = getelementptr inbounds i8, ptr %i.acr, i64 %i.acs
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !13 ; 2 uses
  %.not.i142302.i = icmp eq i8 %i.acu, 66
  br i1 %.not.i142302.i, label %.lr.ph303.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit143.i

bb.gr:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i
  %i.acv = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.acv, label %bb.gs, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gs:                                            ; preds = %bb.gr
  %i.acw = load i32, ptr %i.p, align 4, !tbaa !18
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.gt, label %.loopexit183.i

bb.gt:                                            ; preds = %bb.gs
  %i.acy = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.acz = icmp eq i32 %i.acy, 256
  br i1 %i.acz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ada = add nsw i32 %i.acy, 1
  store i32 %i.ada, ptr %i.o, align 8, !tbaa !14
  %i.adb = sext i32 %i.acy to i64
  %i.adc = getelementptr inbounds i8, ptr %3, i64 %i.adb
  store i8 28, ptr %i.adc, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.backedge.i

.loopexit183.i:                                   ; preds = %.lr.ph, %bb.gs
  %.515.i = phi i32 [ %.010.i, %bb.gs ], [ %i.h, %.lr.ph ]
  %i.add = load i32, ptr %i.t, align 8, !tbaa !27
  %i.ade = add nsw i32 %i.add, -1                 ; 2 uses
  store i32 %i.ade, ptr %i.t, align 8, !tbaa !27
  %i.adf = sext i32 %i.ade to i64
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !3
  store i32 %i.adh, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.preheader.i

bb.gv:                                            ; preds = %.lr.ph335.i
  %i.adi = add nsw i32 %i.ib, 1
  store i32 %i.adi, ptr %i.e, align 8, !tbaa !17
  %i.adj = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.adj, label %bb.gw, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gw:                                            ; preds = %bb.gv
  %i.adk = load i32, ptr %i.p, align 4, !tbaa !18
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.gx, label %.loopexit179.i

bb.gx:                                            ; preds = %bb.gw
  %i.adm = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.adn = icmp eq i32 %i.adm, 256
  br i1 %i.adn, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ado = add nsw i32 %i.adm, 1
  store i32 %i.ado, ptr %i.o, align 8, !tbaa !14
  %i.adp = sext i32 %i.adm to i64
  %i.adq = getelementptr inbounds i8, ptr %3, i64 %i.adp
  store i8 29, ptr %i.adq, align 1, !tbaa !13
  br label %.critedge176.backedge.i

.loopexit179.i:                                   ; preds = %.lr.ph, %bb.gw
  %.616.i = phi i32 [ %.111.ph.i, %bb.gw ], [ %i.h, %.lr.ph ]
  %i.adr = load i32, ptr %i.t, align 8, !tbaa !27
  %i.ads = add nsw i32 %i.adr, -1                 ; 2 uses
  store i32 %i.ads, ptr %i.t, align 8, !tbaa !27
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !3
  store i32 %i.adv, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.preheader.i

.critedge51.preheader.i:                          ; preds = %bb.dh, %bb.df, %switch.lookup646, %bb.bn, %.loopexit179.i, %.loopexit183.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i, %bb.h
  %.7.ph.i = phi i32 [ %.010.i, %bb.h ], [ %.616.i, %.loopexit179.i ], [ %.313.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i ], [ %.111.ph.i, %switch.lookup646 ], [ %.515.i, %.loopexit183.i ], [ %.111.ph.i, %bb.bn ], [ %.111.ph.i, %bb.df ], [ %.111.ph.i, %bb.dh ] ; 2 uses
  %i.adw = icmp slt i32 %.7.ph.i, 131071
  %i.adx = load i32, ptr %i.o, align 8            ; 2 uses
  %i.ady = icmp sgt i32 %i.adx, 0
  %or.cond = select i1 %i.adw, i1 %i.ady, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph303.i:                                      ; preds = %.preheader.i, %bb.hb
  %i.adz = phi i32 [ %i.aek, %bb.hb ], [ %i.acq, %.preheader.i ]
  %i.aea = add nsw i32 %i.adz, 1
  store i32 %i.aea, ptr %i.e, align 8, !tbaa !17
  %i.aeb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.aeb, label %bb.gz, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gz:                                            ; preds = %.lr.ph303.i
  %i.aec = load i32, ptr %i.p, align 4, !tbaa !18
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.ha, label %.loopexit.i

bb.ha:                                            ; preds = %bb.gz
  %i.aee = load i32, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.aef = icmp eq i32 %i.aee, 256
  br i1 %i.aef, label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aeg = add nsw i32 %i.aee, 1
  store i32 %i.aeg, ptr %i.o, align 8, !tbaa !14
  %i.aeh = sext i32 %i.aee to i64
  %i.aei = getelementptr inbounds i8, ptr %3, i64 %i.aeh
  store i8 30, ptr %i.aei, align 1, !tbaa !13
  %i.aej = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aek = load i32, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds i8, ptr %i.aej, i64 %i.ael
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !13 ; 2 uses
  %.not.i142.i = icmp eq i8 %i.aen, 66
  br i1 %.not.i142.i, label %.lr.ph303.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit143.i

.loopexit.i:                                      ; preds = %bb.gz, %.lr.ph
  %i.aeo = load i32, ptr %i.t, align 8, !tbaa !27
  %i.aep = add nsw i32 %i.aeo, -1                 ; 2 uses
  store i32 %i.aep, ptr %i.t, align 8, !tbaa !27
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !3
  store i32 %i.aes, ptr %i.e, align 8, !tbaa !17
  br label %.critedge51.backedge.i

switch.lookup:                                    ; preds = %.loopexit181.i
  %switch.cast = zext nneg i8 %i.ai to i47
  %switch.downshift = lshr i47 -70300024700927, %switch.cast
  %switch.masked = trunc i47 %switch.downshift to i1
  br label %_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZNO4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit: ; preds = %bb.dg, %bb.ez, %bb.ev, %bb.ek, %bb.dv, %bb.dn, %bb.aq, %bb.y, %bb.f, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.s, %bb.u, %bb.v, %bb.aa, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i, %bb.ah, %bb.al, %bb.an, %bb.as, %bb.ay, %bb.az, %bb.bf, %bb.bg, %bb.bm, %bb.dp, %bb.dx, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i, %bb.em, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i, %bb.er, %bb.ex, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i, %bb.fb, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i, %bb.fe, %bb.fm, %bb.fn, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit145.i, %bb.gg, %bb.gr, %bb.gt, %.critedge51.preheader.i, %.critedge176._crit_edge.i, %switch.hole_check, %bb.gq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit160.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150._crit_edge.i, %bb.gd, %bb.gb, %bb.fw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61, %bb.bw, %bb.bl, %bb.be, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit77, %.critedge51.backedge.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit83, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89, %.lr.ph307.i.backedge, %bb.bc, %bb.bj, %bb.bu, %bb.ed, %bb.fi, %bb.fy, %bb.gj, %bb.p, %bb.ad, %bb.av, %bb.bz, %bb.ch, %bb.dl, %bb.dt, %bb.eb, %bb.fr, %bb.cz, %bb.cw, %bb.bp, %bb.br, %bb.cc, %bb.ce, %bb.ck, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i98.i, %bb.cq, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %bb.dc, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit117.i, %bb.gv, %bb.gx, %bb.ge, %.lr.ph303.i, %bb.ha, %.loopexit181.i, %switch.lookup, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit, %bb.c
  %.10.i = phi i1 [ false, %bb.c ], [ %switch.masked, %switch.lookup ], [ false, %.lr.ph303.i ], [ false, %bb.gq ], [ false, %.loopexit181.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParserC2EPKcPcS6_.exit ], [ false, %bb.ge ], [ false, %bb.cz ], [ false, %bb.ha ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit117.i ], [ false, %bb.dc ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %bb.cq ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i98.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i92.i ], [ false, %bb.ck ], [ false, %bb.ce ], [ false, %bb.cc ], [ false, %bb.br ], [ false, %bb.bp ], [ false, %bb.cw ], [ false, %bb.fr ], [ false, %bb.eb ], [ false, %bb.dt ], [ false, %bb.dl ], [ false, %bb.ch ], [ false, %bb.bz ], [ false, %bb.av ], [ false, %bb.ad ], [ false, %bb.p ], [ false, %bb.gj ], [ false, %bb.fy ], [ false, %bb.fi ], [ false, %bb.ed ], [ false, %bb.bu ], [ false, %bb.bj ], [ false, %bb.bc ], [ false, %.lr.ph307.i.backedge ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit89 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit83 ], [ false, %.critedge51.backedge.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit77 ], [ false, %bb.be ], [ false, %bb.bl ], [ false, %bb.bw ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit61 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit58 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit34 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit28 ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10 ], [ false, %bb.fw ], [ false, %bb.gb ], [ false, %bb.gd ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit150._crit_edge.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit160.i ], [ false, %switch.hole_check ], [ false, %.critedge176._crit_edge.i ], [ false, %.critedge51.preheader.i ], [ false, %bb.gt ], [ false, %bb.gr ], [ false, %bb.gg ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit145.i ], [ false, %bb.fn ], [ false, %bb.fm ], [ false, %bb.fe ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.thread.i ], [ false, %bb.fb ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit135.i ], [ false, %bb.ex ], [ false, %bb.er ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit131.i ], [ false, %bb.em ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit125.i ], [ false, %bb.dx ], [ false, %bb.dp ], [ false, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.as ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i.i ], [ false, %bb.aa ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit112.i ], [ false, %bb.f ], [ false, %bb.y ], [ false, %bb.aq ], [ false, %bb.dn ], [ false, %bb.dv ], [ false, %bb.ek ], [ false, %bb.ev ], [ false, %bb.ez ], [ false, %bb.dg ]
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
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !20

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
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.g, 76
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
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !20

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
end_hunk_3
