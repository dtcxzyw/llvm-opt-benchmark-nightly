inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigSyntaxType = type { i32, i32, i32, i32, %struct.OnigMetaCharTableType }
%struct.OnigMetaCharTableType = type { i32, i32, i32, i32, i32, i32 }
%struct.st_hash_type = type { ptr, ptr }
%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PosixBracketEntryType = type { i16, [6 x i8], i32 }
%struct.st_str_end_key = type { ptr, ptr }
%struct.INamesArg = type { ptr, ptr, ptr, i32, ptr }
%struct.OnigToken = type { i32, i32, i32, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32, i32, ptr, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.IApplyCaseFoldArg = type { ptr, ptr, ptr, ptr, ptr }
%struct.CClassNode = type { %struct.NodeBase, i32, [8 x i32], ptr }
%struct.NodeBase = type { i32 }

@OnigSyntaxRuby = dso_local constant %struct.OnigSyntaxType { i32 2146948438, i32 -1570030630, i32 -2019556389, i32 57344, %struct.OnigMetaCharTableType { i32 92, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 4
@OnigDefaultSyntax = dso_local local_unnamed_addr global ptr @OnigSyntaxRuby, align 8
@onig_warn = internal unnamed_addr global ptr @onig_null_warn, align 8
@ParseDepthLimit = internal unnamed_addr global i32 4096, align 4
@onig_st_init_strend_table_with_size.hashType = internal constant %struct.st_hash_type { ptr @str_end_cmp, ptr @str_end_hash }, align 8
@ReduceTypeTable = internal unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 1, i32 2, i32 2, i32 4, i32 3, i32 0], [6 x i32] [i32 1, i32 1, i32 1, i32 5, i32 5, i32 1], [6 x i32] [i32 2, i32 2, i32 1, i32 0, i32 5, i32 1], [6 x i32] [i32 1, i32 3, i32 3, i32 1, i32 3, i32 3], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 1]], align 16
@.str = private unnamed_addr constant [23 x i8] c"invalid back reference\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid subexp call\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid Unicode Property \\%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unknown escape \\%c is ignored\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"regular expression has '%s' without escape\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"character class has duplicated range\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Grapheme_Cluster_Break=Extend\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Grapheme_Cluster_Break=Control\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Grapheme_Cluster_Break=Prepend\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Grapheme_Cluster_Break=L\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Grapheme_Cluster_Break=V\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Grapheme_Cluster_Break=LV\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Grapheme_Cluster_Break=LVT\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Grapheme_Cluster_Break=T\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Regional_Indicator\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Extended_Pictographic\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"InCB=Consonant\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"InCB=Extend\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"InCB=Linker\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Grapheme_Cluster_Break=SpacingMark\00", align 1
@OnigEncodingASCII = external constant %struct.OnigEncodingTypeST, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"character class has '%s' without escape\00", align 1
@parse_posix_bracket.PBS = internal constant [14 x %struct.PosixBracketEntryType] [%struct.PosixBracketEntryType { i16 5, [6 x i8] c"alnum\00", i32 13 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"alpha\00", i32 1 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"blank\00", i32 2 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"cntrl\00", i32 3 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"digit\00", i32 4 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"graph\00", i32 5 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"lower\00", i32 6 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"print\00", i32 7 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"punct\00", i32 8 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"space\00", i32 9 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"upper\00", i32 10 }, %struct.PosixBracketEntryType { i16 6, [6 x i8] c"xdigit", i32 11 }, %struct.PosixBracketEntryType { i16 5, [6 x i8] c"ascii\00", i32 14 }, %struct.PosixBracketEntryType { i16 4, [6 x i8] c"word\00\00", i32 12 }], align 16
@.str.25 = private unnamed_addr constant [3 x i8] c":]\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"regular expression has redundant nested repeat operator '%s'\00", align 1
@PopularQStr = internal unnamed_addr constant [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16
@.str.27 = private unnamed_addr constant [82 x i8] c"nested repeat operator '%s' and '%s' was replaced with '%s' in regular expression\00", align 1
@ReduceQStr = internal unnamed_addr constant [7 x ptr] [ptr @.str.34, ptr @.str.34, ptr @.str.29, ptr @.str.32, ptr @.str.31, ptr @.str.35, ptr @.str.36], align 16
@.str.28 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"*?\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"+?\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"+ and ??\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"+? and ?\00", align 1
@switch.table.fetch_token = private unnamed_addr constant [22 x i32] [i32 39, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local void @onig_null_warn(ptr readnone captures(none) %0) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @onig_set_warn_func(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  store ptr %0, ptr @onig_warn, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @onig_set_verb_warn_func(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 1, 0) i32 @onig_get_parse_depth_limit() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @ParseDepthLimit, align 4, !tbaa !7
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onig_set_parse_depth_limit(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %. = select i1 %i.a, i32 4096, i32 %0
  store i32 %., ptr @ParseDepthLimit, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @onig_strcpy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i64 noundef %i.c, i1 noundef false) #25
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @onig_st_init_strend_table_with_size(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @rb_st_init_table_with_size(ptr noundef nonnull @onig_st_init_strend_table_with_size.hashType, i64 noundef %0) #25
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -255, 256) i32 @str_end_cmp(i64 noundef %0, i64 noundef %1) #6 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq i64 %i.h, %i.n
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.o = icmp ult ptr %i.e, %i.d
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.01621 = phi ptr [ %i.v, %bb.b ], [ %i.k, %.preheader ] ; 2 uses
  %.01720 = phi ptr [ %i.u, %bb.b ], [ %i.e, %.preheader ] ; 2 uses
  %i.p = load i8, ptr %.01720, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i32
  %i.r = load i8, ptr %.01621, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = sub nsw i32 %i.q, %i.s                   ; 2 uses
  %.not19 = icmp eq i32 %i.t, 0
  br i1 %.not19, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.01720, i64 1     ; 2 uses
  %i.v = getelementptr i8, ptr %.01621, i64 1
  %exitcond.not = icmp eq ptr %i.u, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ], [ %i.t, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @str_end_hash(i64 noundef %0) #6 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = sub i64 %i.g, %i.f
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ]
  %.078 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.k = mul i64 %.09, 997
  %i.l = getelementptr i8, ptr %.078, i64 1
  %i.m = load i8, ptr %.078, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64
  %i.o = add i64 %i.k, %i.n
  %i.p = mul i64 %i.o, 997
  %i.q = getelementptr i8, ptr %.078, i64 2
  %i.r = load i8, ptr %i.l, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.p, %i.s
  %i.u = mul i64 %i.t, 997
  %i.v = getelementptr i8, ptr %.078, i64 3
  %i.w = load i8, ptr %i.q, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i64
  %i.y = add i64 %i.u, %i.x
  %i.z = mul i64 %i.y, 997
  %i.aa = getelementptr i8, ptr %.078, i64 4
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.z, %i.ac
  %i.ae = mul i64 %i.ad, 997
  %i.af = getelementptr i8, ptr %.078, i64 5
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ae, %i.ah
  %i.aj = mul i64 %i.ai, 997
  %i.ak = getelementptr i8, ptr %.078, i64 6
  %i.al = load i8, ptr %i.af, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.aj, %i.am
  %i.ao = mul i64 %i.an, 997
  %i.ap = getelementptr i8, ptr %.078, i64 7
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.ao, %i.ar
  %i.at = mul i64 %i.as, 997
  %i.au = getelementptr i8, ptr %.078, i64 8      ; 2 uses
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i64
  %i.ax = add i64 %i.at, %i.aw                    ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.09.epil = phi i64 [ %i.bc, %.lr.ph.epil ], [ %.09.epil.init, %.lr.ph.epil.preheader ]
  %.078.epil = phi ptr [ %i.az, %.lr.ph.epil ], [ %.078.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
end_hunk_0
begin_hunk_1_@fetch_token:bb.a
  br i1 %i.lt, label %bb.ek, label %.thread985

bb.ek:                                            ; preds = %bb.ej
  %i.lu = load i32, ptr %i.w, align 4, !tbaa !104
  %i.lv = and i32 %i.lu, 256
  %.not867 = icmp eq i32 %i.lv, 0
  br i1 %.not867, label %.thread985, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lw = load i32, ptr %i.s, align 8, !tbaa !70
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ly = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.lz = zext i8 %i.ly to i32
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.ma = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.mb = tail call i32 %i.ma(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1239 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.mc = phi i32 [ 1, %bb.em ], [ %.pre1239, %bb.en ] ; 2 uses
  %i.md = phi i32 [ %i.lz, %bb.em ], [ %i.mb, %bb.en ] ; 2 uses
  %i.me = load i32, ptr %i.u, align 4, !tbaa !47
  %i.mf = icmp eq i32 %i.mc, %i.me
  br i1 %i.mf, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mg = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.mh = phi i32 [ %i.mg, %bb.ep ], [ %i.mc, %bb.eo ]
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr i8, ptr %i.bm, i64 %i.mi
  store ptr %i.mj, ptr %i.a, align 8, !tbaa !69
  switch i32 %i.md, label %bb.es [
    i32 60, label %bb.er
    i32 39, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq, %bb.eq
  %i.mk = call fastcc i32 @fetch_named_backref_token(i32 noundef %i.md, ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %.loopexit, label %.thread985

bb.es:                                            ; preds = %bb.eq
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef %3, ptr noundef nonnull @.str)
  br label %.thread985

bb.et:                                            ; preds = %bb.p
  %i.mm = icmp ult ptr %i.bm, %2
  br i1 %i.mm, label %bb.eu, label %bb.fd

bb.eu:                                            ; preds = %bb.et
  %i.mn = load i32, ptr %i.w, align 4, !tbaa !104
  %i.mo = and i32 %i.mn, 67108864
  %.not865 = icmp eq i32 %i.mo, 0
  br i1 %.not865, label %bb.fd, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.mp = load i32, ptr %i.s, align 8, !tbaa !70
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.mr = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.ms = zext i8 %i.mr to i32
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.mt = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.mu = tail call i32 %i.mt(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1232 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.mv = phi i32 [ 1, %bb.ew ], [ %.pre1232, %bb.ex ] ; 2 uses
  %i.mw = phi i32 [ %i.ms, %bb.ew ], [ %i.mu, %bb.ex ]
  %i.mx = load i32, ptr %i.u, align 4, !tbaa !47
  %i.my = icmp eq i32 %i.mv, %i.mx
  br i1 %i.my, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.mz = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.na = phi i32 [ %i.mz, %bb.ez ], [ %i.mv, %bb.ey ]
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr i8, ptr %i.bm, i64 %i.nb
  store ptr %i.nc, ptr %i.a, align 8, !tbaa !69
  %i.nd = icmp eq i32 %i.mw, 123
  br i1 %i.nd, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ne = call fastcc i32 @fetch_named_backref_token(i32 noundef 123, ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 0
  br i1 %i.nf, label %.loopexit, label %._crit_edge1233

._crit_edge1233:                                  ; preds = %bb.fb
  %.pre1234 = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !69
  br label %bb.fd

bb.fd:                                            ; preds = %._crit_edge1233, %bb.fc, %bb.et, %bb.eu
  %i.ng = phi ptr [ %.pre1234, %._crit_edge1233 ], [ %i.bm, %bb.fc ], [ %i.bm, %bb.et ], [ %i.bm, %bb.eu ] ; 6 uses
  %i.nh = icmp ult ptr %i.ng, %2
  br i1 %i.nh, label %bb.fe, label %.thread985

bb.fe:                                            ; preds = %bb.fd
  %i.ni = load i32, ptr %i.w, align 4, !tbaa !104
  %i.nj = and i32 %i.ni, 512
  %.not866 = icmp eq i32 %i.nj, 0
  br i1 %.not866, label %.thread985, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.nk = load i32, ptr %i.s, align 8, !tbaa !70
  %i.nl = icmp eq i32 %i.nk, 1
  br i1 %i.nl, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.nm = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.nn = zext i8 %i.nm to i32
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.no = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.np = tail call i32 %i.no(ptr noundef %i.ng, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1235 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.nq = phi i32 [ 1, %bb.fg ], [ %.pre1235, %bb.fh ] ; 2 uses
  %i.nr = phi i32 [ %i.nn, %bb.fg ], [ %i.np, %bb.fh ] ; 3 uses
  %i.ns = load i32, ptr %i.u, align 4, !tbaa !47
  %i.nt = icmp eq i32 %i.nq, %i.ns
  br i1 %i.nt, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nu = tail call i32 @onigenc_mbclen(ptr noundef %i.ng, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj
  %i.nv = phi i32 [ %i.nu, %bb.fj ], [ %i.nq, %bb.fi ]
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr i8, ptr %i.ng, i64 %i.nw  ; 9 uses
  store ptr %i.nx, ptr %i.a, align 8, !tbaa !69
  switch i32 %i.nr, label %bb.ga [
    i32 60, label %bb.fl
    i32 39, label %bb.fl
  ]

bb.fl:                                            ; preds = %bb.fk, %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ny = icmp ult ptr %i.nx, %2
  br i1 %i.ny, label %bb.fm, label %.thread988

bb.fm:                                            ; preds = %bb.fl
  %i.nz = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.oa = tail call i32 %i.nz(ptr noundef %i.nx, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  switch i32 %i.oa, label %.thread988 [
    i32 48, label %bb.fn
    i32 43, label %bb.fw
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ob = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.oc = load i32, ptr %i.u, align 4, !tbaa !47
  %i.od = icmp eq i32 %i.ob, %i.oc
  br i1 %i.od, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.oe = tail call i32 @onigenc_mbclen(ptr noundef %i.nx, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %i.of = phi i32 [ %i.oe, %bb.fo ], [ %i.ob, %bb.fn ]
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr i8, ptr %i.nx, i64 %i.og  ; 6 uses
  store ptr %i.oh, ptr %i.a, align 8, !tbaa !69
  %i.oi = icmp ult ptr %i.oh, %2                  ; 2 uses
  br i1 %i.oi, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.oj = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.ok = tail call i32 %i.oj(ptr noundef %i.oh, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %i.ol = phi i32 [ %i.ok, %bb.fq ], [ 0, %bb.fp ]
  %switch.tableidx = add i32 %i.nr, -39           ; 2 uses
  %4 = icmp ult i32 %switch.tableidx, 22
  br i1 %4, label %bb.fs, label %get_name_end_code_point.exit

bb.fs:                                            ; preds = %bb.fr
  %5 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.fetch_token, i64 %5
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_name_end_code_point.exit

get_name_end_code_point.exit:                     ; preds = %bb.fr, %bb.fs
  %.0.i = phi i32 [ %switch.load, %bb.fs ], [ 0, %bb.fr ]
  %i.om = icmp eq i32 %i.ol, %.0.i
  br i1 %i.om, label %bb.ft, label %.thread988

bb.ft:                                            ; preds = %get_name_end_code_point.exit
  %i.on = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.oo = load i32, ptr %i.u, align 4, !tbaa !47
  %i.op = icmp eq i32 %i.on, %i.oo
  br i1 %i.op, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %spec.select958 = select i1 %i.oi, i32 %i.on, i32 0
  br label %.thread992

bb.fv:                                            ; preds = %bb.ft
  %i.oq = tail call i32 @onigenc_mbclen(ptr noundef %i.oh, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %.thread992

.thread992:                                       ; preds = %bb.fv, %bb.fu
  %i.or = phi i32 [ %i.oq, %bb.fv ], [ %spec.select958, %bb.fu ]
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr i8, ptr %i.oh, i64 %i.os  ; 3 uses
  store ptr %i.ot, ptr %i.a, align 8, !tbaa !69
  br label %.thread994

bb.fw:                                            ; preds = %bb.fm
  %i.ou = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.ov = load i32, ptr %i.u, align 4, !tbaa !47
  %i.ow = icmp eq i32 %i.ou, %i.ov
  br i1 %i.ow, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ox = tail call i32 @onigenc_mbclen(ptr noundef %i.nx, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %i.oy = phi i32 [ %i.ox, %bb.fx ], [ %i.ou, %bb.fw ]
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr i8, ptr %i.nx, i64 %i.oz  ; 2 uses
  store ptr %i.pa, ptr %i.a, align 8, !tbaa !69
  br label %.thread988

.thread988:                                       ; preds = %get_name_end_code_point.exit, %bb.fy, %bb.fm, %bb.fl
  %i.pb = phi ptr [ %i.nx, %bb.fl ], [ %i.nx, %bb.fm ], [ %i.pa, %bb.fy ], [ %i.oh, %get_name_end_code_point.exit ]
  %.0770991 = phi i32 [ 0, %bb.fl ], [ 0, %bb.fm ], [ 1, %bb.fy ], [ 0, %get_name_end_code_point.exit ]
  %i.pc = call fastcc i32 @fetch_name(i32 noundef %i.nr, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.c, ptr noundef %3, ptr noundef %i.b, i32 noundef 1) ; 2 uses
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %bb.fz, label %..thread994_crit_edge1236

..thread994_crit_edge1236:                        ; preds = %.thread988
  %.pre1237 = load ptr, ptr %i.c, align 8, !tbaa !69
  %.pre1238 = load i32, ptr %i.b, align 4, !tbaa !7
  br label %.thread994

.thread994:                                       ; preds = %..thread994_crit_edge1236, %.thread992
  %i.pe = phi i32 [ %.pre1238, %..thread994_crit_edge1236 ], [ 0, %.thread992 ]
  %i.pf = phi ptr [ %.pre1237, %..thread994_crit_edge1236 ], [ %i.ot, %.thread992 ]
  %i.pg = phi ptr [ %i.pb, %..thread994_crit_edge1236 ], [ %i.ot, %.thread992 ]
  %.0770990 = phi i32 [ %.0770991, %..thread994_crit_edge1236 ], [ 0, %.thread992 ]
  store i32 8, ptr %0, align 8, !tbaa !99
  store ptr %i.pg, ptr %i.x, align 8, !tbaa !13
  %i.ph = getelementptr i8, ptr %0, i64 32
  store ptr %i.pf, ptr %i.ph, align 8, !tbaa !13
  %i.pi = getelementptr i8, ptr %0, i64 40
  store i32 %i.pe, ptr %i.pi, align 8, !tbaa !13
  %i.pj = getelementptr i8, ptr %0, i64 44
  store i32 %.0770990, ptr %i.pj, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.thread985

bb.fz:                                            ; preds = %.thread988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ga:                                            ; preds = %bb.fk
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef %3, ptr noundef nonnull @.str.1)
  store ptr %i.ng, ptr %i.a, align 8, !tbaa !69
  br label %.thread985

bb.gb:                                            ; preds = %bb.p
  %i.pk = load i32, ptr %i.w, align 4, !tbaa !104
  %i.pl = and i32 %i.pk, 1
  %.not864 = icmp eq i32 %i.pl, 0
  br i1 %.not864, label %.thread985, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store i32 17, ptr %0, align 8, !tbaa !99
  br label %.thread985

bb.gd:                                            ; preds = %bb.p, %bb.p
  %i.pm = icmp ult ptr %i.bm, %2
  br i1 %i.pm, label %bb.ge, label %.critedge

bb.ge:                                            ; preds = %bb.gd
  %i.pn = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.po = tail call i32 %i.pn(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.pp = icmp eq i32 %i.po, 123
  br i1 %i.pp, label %bb.gf, label %.critedge

bb.gf:                                            ; preds = %bb.ge
  %i.pq = load i32, ptr %i.w, align 4, !tbaa !104
  %i.pr = and i32 %i.pq, 65536
  %.not862 = icmp eq i32 %i.pr, 0
  br i1 %.not862, label %.critedge, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ps = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.pt = load i32, ptr %i.u, align 4, !tbaa !47
  %i.pu = icmp eq i32 %i.ps, %i.pt
  br i1 %i.pu, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.pv = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gg, %bb.gh
  %i.pw = phi i32 [ %i.pv, %bb.gh ], [ %i.ps, %bb.gg ]
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr i8, ptr %i.bm, i64 %i.px  ; 7 uses
  store ptr %i.py, ptr %i.a, align 8, !tbaa !69
  store i32 18, ptr %0, align 8, !tbaa !99
  %i.pz = icmp eq i32 %i.bg, 80
  %i.qa = zext i1 %i.pz to i32
  %i.qb = getelementptr i8, ptr %0, i64 28        ; 3 uses
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !13
  %i.qc = icmp ult ptr %i.py, %2
  br i1 %i.qc, label %bb.gj, label %.thread985

bb.gj:                                            ; preds = %bb.gi
  %i.qd = load i32, ptr %i.w, align 4, !tbaa !104
  %i.qe = and i32 %i.qd, 131072
  %.not863 = icmp eq i32 %i.qe, 0
  br i1 %.not863, label %.thread985, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.qf = load i32, ptr %i.s, align 8, !tbaa !70
  %i.qg = icmp eq i32 %i.qf, 1
  br i1 %i.qg, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.qh = load i8, ptr %i.py, align 1, !tbaa !13
  %i.qi = zext i8 %i.qh to i32
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  %i.qj = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.qk = tail call i32 %i.qj(ptr noundef %i.py, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1231 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.ql = phi i32 [ 1, %bb.gl ], [ %.pre1231, %bb.gm ] ; 2 uses
  %i.qm = phi i32 [ %i.qi, %bb.gl ], [ %i.qk, %bb.gm ]
  %i.qn = load i32, ptr %i.u, align 4, !tbaa !47
  %i.qo = icmp eq i32 %i.ql, %i.qn
  br i1 %i.qo, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.qp = tail call i32 @onigenc_mbclen(ptr noundef %i.py, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %i.qq = phi i32 [ %i.qp, %bb.go ], [ %i.ql, %bb.gn ]
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr i8, ptr %i.py, i64 %i.qr
  store ptr %i.qs, ptr %i.a, align 8, !tbaa !69
  %i.qt = icmp eq i32 %i.qm, 94
  br i1 %i.qt, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.qu = load i32, ptr %i.qb, align 4, !tbaa !13
  %i.qv = icmp eq i32 %i.qu, 0
  %i.qw = zext i1 %i.qv to i32
  store i32 %i.qw, ptr %i.qb, align 4, !tbaa !13
  br label %.thread985

bb.gr:                                            ; preds = %bb.gp
  store ptr %i.py, ptr %i.a, align 8, !tbaa !69
  br label %.thread985

.critedge:                                        ; preds = %bb.gd, %bb.gf, %bb.ge
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %i.bg)
  br label %.thread985

bb.gs:                                            ; preds = %bb.p
  %i.qx = load i32, ptr %i.w, align 4, !tbaa !104
  %i.qy = and i32 %i.qx, 2097152
  %.not861 = icmp eq i32 %i.qy, 0
  br i1 %.not861, label %.thread985, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i32 19, ptr %0, align 8, !tbaa !99
  br label %.thread985

bb.gu:                                            ; preds = %bb.p
  %i.qz = load i32, ptr %i.w, align 4, !tbaa !104
  %i.ra = and i32 %i.qz, 4194304
  %.not860 = icmp eq i32 %i.ra, 0
  br i1 %.not860, label %.thread985, label %bb.gv
end_hunk_1
