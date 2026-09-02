Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_dfa_match?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcre2_real_match_context_8 = type { %struct.pcre2_memctl, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32 }
%struct.pcre2_memctl = type { ptr, ptr, ptr }
%struct.ucd_record = type { i8, i8, i8, i8, i32, i16, i16 }
%struct.pcre2_callout_block_8 = type { i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i32 }
%struct.dfa_match_block_8 = type { %struct.pcre2_memctl, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i16, ptr, ptr, ptr, ptr }
%struct.dfa_recursion_info = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_pcre2_default_match_context_8 = external local_unnamed_addr constant %struct.pcre2_real_match_context_8, align 8
@_pcre2_ucd_records_8 = external local_unnamed_addr constant [0 x %struct.ucd_record], align 4
@_pcre2_ucd_stage2_8 = external local_unnamed_addr constant [0 x i16], align 2
@_pcre2_ucd_stage1_8 = external local_unnamed_addr constant [0 x i16], align 2
@poptable = internal unnamed_addr constant [171 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", align 16
@toptable1 = internal unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\08\08\01\01\10\10\00\00", align 1
@toptable2 = internal unnamed_addr constant [14 x i8] c"\00\00\00\00\00\00\08\00\01\00\10\00\01\01", align 1
@_pcre2_ucp_gentype_8 = external local_unnamed_addr constant [0 x i32], align 4
@_pcre2_ucd_script_sets_8 = external local_unnamed_addr constant [0 x i32], align 4
@_pcre2_ucd_caseless_sets_8 = external local_unnamed_addr constant [0 x i32], align 4
@_pcre2_ucd_boolprop_sets_8 = external local_unnamed_addr constant [0 x i32], align 4
@coptable = internal unnamed_addr constant <{ [98 x i8], [73 x i8] }> <{ [98 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\03\03\03\01\01\01\03\01\01\01\01\01\01\03\03\03\01\01\01\03\01\01\01\01\01\01\03\03\03\01\01\01\03\01\01\01\01\01\01\03\03\03\01\01\01\03\01\01\01\01\01\01\03\03\03\01\01\01\03", [73 x i8] zeroinitializer }>, align 16
@_pcre2_OP_lengths_8 = external local_unnamed_addr constant [0 x i8], align 1
@switch.table.internal_dfa_match = private unnamed_addr constant [7 x i8] c"\05\05\03\03\03\05\05", align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @php_pcre2_dfa_match(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.pcre2_callout_block_8, align 8 ; 10 uses
  %10 = alloca %struct.dfa_match_block_8, align 8 ; 45 uses
  %i.a = alloca [7680 x i32], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 16, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 7680, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 7676, ptr %i.c, align 4, !tbaa !17
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq i64 %2, 0
  %or.cond = and i1 %i.d, %i.e
  %spec.store.select = select i1 %or.cond, ptr @.str, ptr %1 ; 12 uses
  %i.f = and i32 %4, 536854272
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread720

bb.b:                                             ; preds = %bb.a
  %i.g = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.h = insertelement <4 x ptr> %i.g, ptr %spec.store.select, i64 1
  %i.i = insertelement <4 x ptr> %i.h, ptr %7, i64 2
  %i.j = insertelement <4 x ptr> %i.i, ptr %5, i64 3
  %i.k = icmp eq <4 x ptr> %i.j, splat (ptr null)
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not910 = icmp eq i4 %i.l, 0
  br i1 %.not910, label %bb.c, label %.thread720

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %2, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i64 @_pcre2_strlen_8(ptr noundef nonnull %spec.store.select) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0595 = phi i64 [ %i.n, %bb.d ], [ %2, %bb.c ] ; 7 uses
  %.0593 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.o = icmp ult i64 %8, 20
  br i1 %i.o, label %.thread720, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ugt i64 %3, %.0595
  br i1 %i.p, label %.thread720, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %4, 48
  %.not637 = icmp eq i32 %i.q, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !67 ; 7 uses
  br i1 %.not637, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = or i32 %.pre, %4
  %i.s = and i32 %i.r, 536870912
  %.not638 = icmp eq i32 %i.s, 0
  br i1 %.not638, label %._crit_edge, label %.thread720

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.u = and i32 %.pre, 67108864
  %.not639 = icmp eq i32 %i.u, 0
  br i1 %.not639, label %bb.i, label %.thread720

bb.i:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !68
  %.not640 = icmp eq i32 %i.w, 1346589253
  br i1 %.not640, label %bb.j, label %.thread720

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69   ; 5 uses
  %i.z = and i32 %i.y, 7
  %.not641 = icmp eq i32 %i.z, 1
  br i1 %.not641, label %bb.k, label %.thread720

bb.k:                                             ; preds = %bb.j
  %i.aa = lshr i32 %i.y, 14
  %i.ab = and i32 %i.aa, 12
  %i.ac = or i32 %i.ab, %4
  %i.ad = and i32 %4, 64                          ; 2 uses
  %.not642 = icmp eq i32 %i.ad, 0
  br i1 %.not642, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %7, align 4, !tbaa !22
  %.not643 = icmp ult i32 %i.ae, 2
  br i1 %.not643, label %bb.m, label %.thread720

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %.thread720, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = add i64 %8, -2
  %i.aj = udiv i64 %i.ai, 3
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ag, %i.ak
  br i1 %i.al, label %.thread720, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.am = and i32 %.pre, 524288                   ; 2 uses
  %i.an = icmp ne i32 %i.am, 0                    ; 6 uses
  %.lobit = lshr exact i32 %i.am, 19              ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %3 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %.0595 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -1
  %i.ar = and i32 %4, -2147483584
  %.not644 = icmp ne i32 %i.ar, 0
  %i.as = icmp slt i32 %.pre, 0
  %spec.select = or i1 %.not644, %i.as            ; 4 uses
  %i.at = and i32 %i.y, 512
  %.not645 = icmp ne i32 %i.at, 0                 ; 2 uses
  %i.au = and i32 %.pre, 256
  %i.av = icmp eq i32 %i.au, 0
  %.not751 = or i1 %i.av, %spec.select            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %9, ptr %i.aw, align 8, !tbaa !26
  store i32 2, ptr %9, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %spec.store.select, ptr %i.ax, align 8, !tbaa !71
  %i.ay = ptrtoint ptr %spec.store.select to i64  ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.0595, ptr %i.az, align 8, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 0, ptr %i.ba, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !76
  %i.be = icmp eq ptr %6, null
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr null, ptr %i.bf, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !78
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_default_match_context_8, i64 84), align 4, !tbaa !80 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !30
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_default_match_context_8, i64 88), align 8, !tbaa !81 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !31
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !82 ; 2 uses
  %.not646 = icmp eq i64 %i.bl, -1
  br i1 %.not646, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = and i32 %.pre, 8388608
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread720, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %i.bl
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.0582 = phi ptr [ %i.bo, %bb.s ], [ %i.ap, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.br = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !77
  %i.bs = shufflevector <2 x ptr> %i.br, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !78
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !81 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 80
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.sink.in = phi ptr [ %i.bz, %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_pcre2_default_match_context_8, i64 80), %bb.p ]
  %i.ca = phi i32 [ %i.bx, %bb.t ], [ %i.bi, %bb.p ]
  %i.cb = phi i32 [ %i.bu, %bb.t ], [ %i.bg, %bb.p ]
  %.1583 = phi ptr [ %.0582, %bb.t ], [ %i.ap, %bb.p ]
  %.sink = load i32, ptr %.sink.in, align 8, !tbaa !83 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i32 %.sink, ptr %i.cc, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !84 ; 2 uses
end_hunk_0
begin_hunk_1_@php_pcre2_dfa_match:bb.a
  %i.rp = icmp eq i32 %i.ro, 2
  %or.cond716 = select i1 %switch713, i1 true, i1 %i.rp
  %spec.select717.idx = zext i1 %or.cond716 to i64
  %spec.select717 = getelementptr inbounds nuw i8, ptr %.13, i64 %spec.select717.idx
  br label %.backedge

.backedge:                                        ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.0587.be = phi ptr [ %.13, %bb.ea ], [ %spec.select717, %bb.ed ], [ %.13, %bb.ec ], [ %.13, %bb.eb ]
  br label %bb.bc

.thread730:                                       ; preds = %bb.br, %bb.cz, %bb.dg, %bb.bt, %.critedge37, %bb.dt, %bb.dw, %bb.dx, %.thread747, %bb.cg, %._crit_edge902, %.split860, %bb.dn, %bb.do, %bb.dp
  %.0594 = phi i32 [ %i.pd, %bb.do ], [ %i.pd, %bb.dn ], [ %i.pd, %bb.dp ], [ -1, %.split860 ], [ -1, %._crit_edge902 ], [ -1, %bb.cg ], [ -1, %.thread747 ], [ -1, %bb.dx ], [ -1, %bb.dw ], [ -1, %bb.dt ], [ -1, %.critedge37 ], [ -1, %bb.bt ], [ -1, %bb.dg ], [ -1, %bb.cz ], [ -1, %bb.br ] ; 2 uses
  %i.rq = load ptr, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  %.not690809 = icmp eq ptr %i.rq, null
  br i1 %.not690809, label %.thread720, label %.lr.ph810

.lr.ph810:                                        ; preds = %.thread730
  %i.rr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph810, %bb.ee
  %i.rt = phi ptr [ %i.rq, %.lr.ph810 ], [ %i.rx, %bb.ee ] ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !15
  store ptr %i.ru, ptr %i.a, align 16, !tbaa !15
  %i.rv = load ptr, ptr %i.rr, align 8, !tbaa !111
  %i.rw = load ptr, ptr %i.rs, align 8, !tbaa !55
  call void %i.rv(ptr noundef nonnull %i.rt, ptr noundef %i.rw) #6
  %i.rx = load ptr, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  %.not690 = icmp eq ptr %i.rx, null
  br i1 %.not690, label %.thread720, label %bb.ee, !llvm.loop !65

.thread720:                                       ; preds = %bb.ee, %.thread730, %bb.ak, %bb.an, %bb.dm, %bb.aa, %bb.r, %bb.l, %bb.m, %bb.n, %bb.j, %bb.i, %._crit_edge, %bb.h, %bb.f, %bb.e, %bb.b, %bb.a
  %.4 = phi i32 [ -38, %bb.l ], [ -34, %bb.a ], [ -51, %bb.b ], [ -43, %bb.e ], [ -33, %bb.f ], [ -34, %bb.h ], [ -66, %._crit_edge ], [ -31, %bb.i ], [ -32, %bb.j ], [ -56, %bb.r ], [ -44, %bb.aa ], [ -48, %bb.dm ], [ -38, %bb.m ], [ %i.es, %bb.an ], [ -38, %bb.n ], [ -36, %bb.ak ], [ %.0594, %.thread730 ], [ %.0594, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @_pcre2_strlen_8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @_pcre2_valid_utf_8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_is_newline_8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_pcre2_was_newline_8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_dfa_match(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef range(i32 0, 131071) %5, ptr nofree noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.dfa_recursion_info, align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = and i32 %i.m, 524288                     ; 2 uses
  %i.o = icmp ne i32 %i.n, 0                      ; 8 uses
  %.lobit = lshr exact i32 %i.n, 19               ; 16 uses
  %i.p = and i32 %i.m, 655360
  %i.q = icmp ne i32 %i.p, 0                      ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %.not = icmp ult i32 %i.s, %i.v
  br i1 %.not, label %bb.b, label %.critedge3469

bb.b:                                             ; preds = %bb.a
  %i.w = add i32 %8, 1                            ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = icmp ugt i32 %8, %i.y
  br i1 %i.z, label %.critedge3469, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %5, 131070                      ; 5 uses
  %i.ab = add nsw i32 %7, -2
  %i.ac = sdiv i32 %i.ab, 6                       ; 115 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 832 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 256 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  %i.ak = load i8, ptr %1, align 1, !tbaa !46     ; 2 uses
  %.off = add i8 %i.ak, 127
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.preheader4013, label %bb.l

.preheader4013:                                   ; preds = %bb.c, %.preheader4013
  %.02985 = phi ptr [ %i.bb, %.preheader4013 ], [ %1, %bb.c ] ; 5 uses
  %.02790 = phi i64 [ %spec.select, %.preheader4013 ], [ 0, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02985, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !46
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.02985, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %.02790) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02985, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.02985, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !46
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.02985, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !46
  %i.bd = icmp eq i8 %i.bc, 120
  br i1 %i.bd, label %.preheader4013, label %bb.d, !llvm.loop !112

bb.d:                                             ; preds = %.preheader4013
  br i1 %i.o, label %.preheader4011, label %bb.f

.preheader4011:                                   ; preds = %bb.d
  %i.be = icmp ne i64 %spec.select, 0
  %.not33204151 = icmp ugt ptr %2, %i.g
  %or.cond34674152 = select i1 %i.be, i1 %.not33204151, i1 false
  br i1 %or.cond34674152, label %.preheader4010, label %.loopexit4012

.preheader4010:                                   ; preds = %.preheader4011, %.critedge
  %.027884154 = phi i64 [ %i.bk, %.critedge ], [ 0, %.preheader4011 ] ; 2 uses
  %.031964153 = phi ptr [ %.131974601, %.critedge ], [ %2, %.preheader4011 ]
  %.131974600 = getelementptr inbounds i8, ptr %.031964153, i64 -1 ; 3 uses
  %i.bf = icmp ugt ptr %.131974600, %i.g
  br i1 %i.bf, label %.lr.ph4602, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph4602
  %.13197 = getelementptr inbounds i8, ptr %.131974601, i64 -1 ; 3 uses
  %i.bg = icmp ugt ptr %.13197, %i.g
  br i1 %i.bg, label %.lr.ph4602, label %.critedge.thread, !llvm.loop !113

.critedge.thread:                                 ; preds = %.preheader4010, %bb.e
  %.13197.lcssa = phi ptr [ %.13197, %bb.e ], [ %.131974600, %.preheader4010 ]
  %i.bh = add nuw nsw i64 %.027884154, 1
  br label %.loopexit4012

.lr.ph4602:                                       ; preds = %.preheader4010, %bb.e
  %.131974601 = phi ptr [ %.13197, %bb.e ], [ %.131974600, %.preheader4010 ] ; 4 uses
  %i.bi = load i8, ptr %.131974601, align 1, !tbaa !46
  %i.bj = icmp slt i8 %i.bi, -64
  br i1 %i.bj, label %bb.e, label %.critedge, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph4602
  %i.bk = add nuw nsw i64 %.027884154, 1          ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %spec.select
  br i1 %i.bl, label %.preheader4010, label %.loopexit4012, !llvm.loop !114

bb.f:                                             ; preds = %bb.d
  %i.bm = ptrtoint ptr %2 to i64
  %i.bn = ptrtoint ptr %i.g to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %spec.select) ; 2 uses
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  br label %.loopexit4012

.loopexit4012:                                    ; preds = %.critedge, %.critedge.thread, %.preheader4011, %bb.f
  %.23198 = phi ptr [ %i.br, %bb.f ], [ %2, %.preheader4011 ], [ %.13197.lcssa, %.critedge.thread ], [ %.131974601, %.critedge ] ; 3 uses
  %.12789 = phi i64 [ %i.bp, %bb.f ], [ 0, %.preheader4011 ], [ %i.bh, %.critedge.thread ], [ %i.bk, %.critedge ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bu = icmp ult ptr %.23198, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit4012
  store ptr %.23198, ptr %i.bs, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit4012
  %i.bv = ptrtoint ptr %i.k to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.03005 = phi ptr [ %i.aj, %bb.h ], [ %.23007, %bb.k ] ; 5 uses
  %.12986 = phi ptr [ %1, %bb.h ], [ %i.cx, %bb.k ] ; 7 uses
  %.02855 = phi i32 [ 0, %bb.h ], [ %.12856, %bb.k ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.12986, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !46
  %.not3321 = icmp eq i8 %i.bx, 125               ; 2 uses
  br i1 %.not3321, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.12986, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !46
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.12986, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !46
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.cb, %i.ce            ; 2 uses
  %.not3322 = icmp ugt i64 %i.cf, %.12789
  br i1 %.not3322, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.cg = phi i64 [ %i.cf, %bb.j ], [ 0, %bb.i ]
  %i.ch = icmp slt i32 %.02855, %i.ac
  br i1 %i.ch, label %.thread3571, label %.critedge3469

.thread3571:                                      ; preds = %.thread
  %i.ci = add nsw i32 %.02855, 1
  %.neg3325 = select i1 %.not3321, i32 -3, i32 0
  %i.cj = ptrtoint ptr %.12986 to i64
  %.neg = sub i64 %i.bv, %i.cj
  %.neg3323 = trunc i64 %.neg to i32
  %.neg3324 = add i32 %.neg3323, -3
  %.neg3326 = add i32 %.neg3324, %.neg3325
  store i32 %.neg3326, ptr %.03005, align 4, !tbaa !141
  %i.ck = getelementptr inbounds nuw i8, ptr %.03005, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !142
  %i.cl = sub i64 %.12789, %i.cg
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.03005, i64 8
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !143
  %i.co = getelementptr inbounds nuw i8, ptr %.03005, i64 12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread3571
  %.23007 = phi ptr [ %i.co, %.thread3571 ], [ %.03005, %bb.j ]
  %.12856 = phi i32 [ %i.ci, %.thread3571 ], [ %.02855, %bb.j ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.12986, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !46
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.12986, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !46
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.12986, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !46
  %i.cz = icmp eq i8 %i.cy, 120
  br i1 %i.cz, label %bb.i, label %.thread3582, !llvm.loop !115

bb.l:                                             ; preds = %bb.c
  %i.da = icmp eq i32 %8, 0
  br i1 %i.da, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  %i.dd = and i32 %i.dc, 64
  %.not3318 = icmp eq i32 %i.dd, 0
  br i1 %.not3318, label %bb.p, label %.preheader4016

.preheader4016:                                   ; preds = %bb.m, %.preheader4016
  %.32988 = phi ptr [ %i.dm, %.preheader4016 ], [ %1, %bb.m ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.32988, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !46
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = getelementptr inbounds nuw i8, ptr %.32988, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !46
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.32988, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !46
  %i.do = icmp eq i8 %i.dn, 120
  br i1 %i.do, label %.preheader4016, label %bb.n, !llvm.loop !116

bb.n:                                             ; preds = %.preheader4016
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !22 ; 3 uses
  %i.dr = load i32, ptr %6, align 4, !tbaa !22
  %.not3319 = icmp eq i32 %i.dr, 0
  br i1 %.not3319, label %bb.o, label %.thread3582

bb.o:                                             ; preds = %bb.n
  %i.ds = sext i32 %i.dq to i64
  %i.dt = mul nsw i64 %i.ds, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %i.ah, i64 %i.dt, i1 false)
  br label %.thread3582

bb.p:                                             ; preds = %bb.m, %bb.l
  %switch.tableidx = add i8 %i.ak, 119            ; 2 uses
  %i.du = icmp ult i8 %switch.tableidx, 7
  br i1 %i.du, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.p
  %i.dv = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.internal_dfa_match, i64 %i.dv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %switch.edge

switch.edge:                                      ; preds = %bb.p, %switch.lookup
  %11 = phi i32 [ %switch.ext, %switch.lookup ], [ 3, %bb.p ]
  %i.dw = ptrtoint ptr %i.k to i64                ; 2 uses
  %exitcond.peel.not = icmp slt i32 %7, 8
  br i1 %exitcond.peel.not, label %.critedge3469, label %bb.q

bb.q:                                             ; preds = %switch.edge
  %i.dx = ptrtoint ptr %1 to i64
  %i.dy = sub i64 %i.dx, %i.dw
  %12 = trunc i64 %i.dy to i32
  %13 = add i32 %11, %12
  store i32 %13, ptr %i.aj, align 4, !tbaa !141
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.dz, align 4, !tbaa !142
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !46
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !46
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !46
  %i.ek = icmp eq i8 %i.ej, 120
  br i1 %i.ek, label %.peel.next.preheader, label %.thread3582

.peel.next.preheader:                             ; preds = %bb.q
  %.off4655 = add nsw i32 %7, -8
  %exitcond.not4595 = icmp ult i32 %.off4655, 6
  br i1 %exitcond.not4595, label %.critedge3469, label %.lr.ph4599

.peel.next:                                       ; preds = %.lr.ph4599
  %exitcond.not = icmp eq i32 %i.ac, %i.el
  br i1 %exitcond.not, label %.critedge3469, label %.lr.ph4599, !llvm.loop !117

.lr.ph4599:                                       ; preds = %.peel.next.preheader, %.peel.next
  %.328584598 = phi i32 [ %i.el, %.peel.next ], [ 1, %.peel.next.preheader ]
  %.429894597 = phi ptr [ %i.ez, %.peel.next ], [ %i.ei, %.peel.next.preheader ] ; 4 uses
  %.pn4596 = phi ptr [ %.43009, %.peel.next ], [ %i.aj, %.peel.next.preheader ] ; 2 uses
  %.43009 = getelementptr inbounds nuw i8, ptr %.pn4596, i64 12 ; 2 uses
  %i.el = add nuw nsw i32 %.328584598, 1          ; 3 uses
  %i.em = ptrtoint ptr %.429894597 to i64
  %i.en = sub i64 %i.em, %i.dw
  %i.eo = trunc i64 %i.en to i32
  %i.ep = add i32 %i.eo, 3
  store i32 %i.ep, ptr %.43009, align 4, !tbaa !141
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn4596, i64 16
  store i32 0, ptr %i.eq, align 4, !tbaa !142
  %i.er = getelementptr inbounds nuw i8, ptr %.429894597, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !46
  %i.et = zext i8 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.429894597, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !46
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.429894597, i64 %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46
  %i.fb = icmp eq i8 %i.fa, 120
  br i1 %i.fb, label %.peel.next, label %.thread3582, !llvm.loop !117

.thread3582:                                      ; preds = %.lr.ph4599, %bb.k, %bb.q, %bb.o, %bb.n
  %.33199 = phi ptr [ %2, %bb.q ], [ %2, %bb.n ], [ %2, %bb.o ], [ %.23198, %bb.k ], [ %2, %.lr.ph4599 ] ; 4 uses
  %.62991 = phi ptr [ %i.ei, %bb.q ], [ %i.dm, %bb.n ], [ %i.dm, %bb.o ], [ %i.cx, %bb.k ], [ %i.ez, %.lr.ph4599 ]
  %.42859 = phi i32 [ 1, %bb.q ], [ %i.dq, %bb.n ], [ %i.dq, %bb.o ], [ %.12856, %bb.k ], [ %i.el, %.lr.ph4599 ]
  store i32 0, ptr %6, align 4, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %invariant.op = add nsw i32 %i.ac, -1
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fg = ptrtoint ptr %.33199 to i64             ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fl = ptrtoint ptr %i.g to i64                ; 13 uses
  %i.fm = ptrtoint ptr %i.k to i64                ; 10 uses
  %i.fn = icmp sgt i32 %7, 7                      ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 21 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 19 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 32 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 19 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 11 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 %3
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gb = icmp samesign ugt i32 %5, 1             ; 2 uses
  %i.gc = icmp samesign ugt i32 %i.aa, 2          ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ge = sub i64 %i.fg, %i.fl
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %invariant.op4822 = add i64 %i.fl, 1
  %invariant.op4821 = add i64 %i.fl, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.afa, %.thread3582
  %.03179 = phi ptr [ %9, %.thread3582 ], [ %.153194.ph, %bb.afa ]
  %.03178 = phi ptr [ %i.ah, %.thread3582 ], [ %.03177, %bb.afa ] ; 2 uses
  %.03177 = phi ptr [ %i.aj, %.thread3582 ], [ %.03178, %bb.afa ] ; 7 uses
  %.02992 = phi ptr [ %.33199, %.thread3582 ], [ %i.dso, %bb.afa ] ; 14 uses
  %.52860 = phi i32 [ %.42859, %.thread3582 ], [ %.67.ph, %bb.afa ] ; 4 uses
  %.02847 = phi i32 [ -1, %.thread3582 ], [ %.42851.ph, %bb.afa ] ; 2 uses
  %.02839 = phi i32 [ 0, %.thread3582 ], [ %.62845.ph, %bb.afa ] ; 2 uses
  %i.gg = load ptr, ptr %i.fc, align 8, !tbaa !52
  %i.gh = icmp ugt ptr %.02992, %i.gg
  br i1 %i.gh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.02992, ptr %i.fc, align 8, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gi = load i32, ptr %6, align 4, !tbaa !22
  %i.gj = xor i32 %i.gi, 1
  store i32 %i.gj, ptr %6, align 4, !tbaa !22
  store i32 %.52860, ptr %i.fd, align 4, !tbaa !22
  %i.gk = sext i32 %.52860 to i64
  %i.gl = getelementptr inbounds [12 x i8], ptr %.03177, i64 %i.gk
  %i.gm = icmp ult ptr %.02992, %i.i
  br i1 %i.gm, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.gn = load i8, ptr %.02992, align 1, !tbaa !46 ; 2 uses
  %i.go = zext i8 %i.gn to i32                    ; 10 uses
  %i.gp = icmp ugt i8 %i.gn, -65
  %or.cond = select i1 %i.o, i1 %i.gp, i1 false
  br i1 %or.cond, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.gq = and i32 %i.go, 32
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %.02992, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !46
  %i.gu = and i8 %i.gt, 63
  %i.gv = zext nneg i8 %i.gu to i32               ; 5 uses
  br i1 %i.gr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gw = shl nuw nsw i32 %i.go, 6
  %i.gx = and i32 %i.gw, 1984
  %i.gy = or disjoint i32 %i.gx, %i.gv
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.gz = and i32 %i.go, 16
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hb = shl nuw nsw i32 %i.go, 12
  %i.hc = and i32 %i.hb, 61440
  %i.hd = shl nuw nsw i32 %i.gv, 6
  %i.he = or disjoint i32 %i.hd, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !46
  %i.hh = and i8 %i.hg, 63
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = or disjoint i32 %i.he, %i.hi
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.hk = and i32 %i.go, 8
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hm = shl nuw nsw i32 %i.go, 18
  %i.hn = and i32 %i.hm, 1835008
  %i.ho = shl nuw nsw i32 %i.gv, 12
  %i.hp = or disjoint i32 %i.ho, %i.hn
  %i.hq = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !46
  %i.hs = and i8 %i.hr, 63
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 6
  %i.hv = or disjoint i32 %i.hp, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %.02992, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !46
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hv, %i.hz
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.ib = and i32 %i.go, 4
  %i.ic = icmp eq i32 %i.ib, 0
  %i.id = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !46
  %i.if = and i8 %i.ie, 63
  %i.ig = zext nneg i8 %i.if to i32               ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.02992, i64 3
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !46
  %i.ij = and i8 %i.ii, 63
  %i.ik = zext nneg i8 %i.ij to i32               ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02992, i64 4
  %i.im = load i8, ptr %i.il, align 1, !tbaa !46
  %i.in = and i8 %i.im, 63
  %i.io = zext nneg i8 %i.in to i32               ; 2 uses
  br i1 %i.ic, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ip = shl nuw i32 %i.go, 24
  %i.iq = and i32 %i.ip, 50331648
  %i.ir = shl nuw nsw i32 %i.gv, 18
end_hunk_1
begin_hunk_2_@internal_dfa_match:bb.a
  %i.djj = add nsw i32 %.027684243, 1
  %i.djk = icmp sge i32 %i.djj, %.029164239
  %i.djl = icmp eq i32 %.628614240, 0
  %or.cond194 = select i1 %i.djk, i1 %i.djl, i1 false
  br i1 %or.cond194, label %bb.adi, label %bb.adk

bb.adi:                                           ; preds = %bb.adh
  br i1 %i.fn, label %bb.adj, label %.critedge3469

bb.adj:                                           ; preds = %bb.adi
  store i32 %i.dji, ptr %.530104236, align 4, !tbaa !141
  %i.djm = getelementptr inbounds nuw i8, ptr %.530104236, i64 4
  store i32 0, ptr %i.djm, align 4, !tbaa !142
  %i.djn = getelementptr inbounds nuw i8, ptr %.530104236, i64 12
  br label %.thread3602

bb.adk:                                           ; preds = %bb.adh
  %i.djo = ptrtoint ptr %.026774023 to i64
  %i.djp = sub i64 %i.djo, %i.die                 ; 6 uses
  %i.djq = icmp ult ptr %.129934237, %.026774023
  %or.cond4264 = select i1 %i.o, i1 %i.djq, i1 false
  br i1 %or.cond4264, label %.lr.ph4173.preheader, label %.loopexit4003

.lr.ph4173.preheader:                             ; preds = %bb.adk
  %min.iters.check4622 = icmp ult i64 %i.djp, 4
  br i1 %min.iters.check4622, label %.lr.ph4173.preheader4662, label %vector.ph4623

vector.ph4623:                                    ; preds = %.lr.ph4173.preheader
  %n.vec4624 = and i64 %i.djp, -4                 ; 3 uses
  %i.djr = getelementptr i8, ptr %.129934237, i64 %n.vec4624
  %i.djs = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.djp, i64 0
  br label %vector.body4625

vector.body4625:                                  ; preds = %vector.body4625, %vector.ph4623
  %index4626 = phi i64 [ 0, %vector.ph4623 ], [ %index.next4632, %vector.body4625 ] ; 2 uses
  %vec.phi4627 = phi <2 x i64> [ %i.djs, %vector.ph4623 ], [ %i.djy, %vector.body4625 ]
  %vec.phi4628 = phi <2 x i64> [ zeroinitializer, %vector.ph4623 ], [ %i.djz, %vector.body4625 ]
  %next.gep4629 = getelementptr i8, ptr %.129934237, i64 %index4626 ; 2 uses
  %i.djt = getelementptr i8, ptr %next.gep4629, i64 2
  %wide.load4630 = load <2 x i8>, ptr %next.gep4629, align 1, !tbaa !46
  %wide.load4631 = load <2 x i8>, ptr %i.djt, align 1, !tbaa !46
  %i.dju = icmp slt <2 x i8> %wide.load4630, splat (i8 -64)
  %i.djv = icmp slt <2 x i8> %wide.load4631, splat (i8 -64)
  %i.djw = sext <2 x i1> %i.dju to <2 x i64>
  %i.djx = sext <2 x i1> %i.djv to <2 x i64>
  %i.djy = add <2 x i64> %vec.phi4627, %i.djw     ; 2 uses
  %i.djz = add <2 x i64> %vec.phi4628, %i.djx     ; 2 uses
  %index.next4632 = add nuw i64 %index4626, 4     ; 2 uses
  %i.dka = icmp eq i64 %index.next4632, %n.vec4624
  br i1 %i.dka, label %middle.block4633, label %vector.body4625, !llvm.loop !134

middle.block4633:                                 ; preds = %vector.body4625
  %bin.rdx4634 = add <2 x i64> %i.djz, %i.djy
  %i.dkb = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx4634) ; 2 uses
  %cmp.n4635 = icmp eq i64 %i.djp, %n.vec4624
  br i1 %cmp.n4635, label %.loopexit4003, label %.lr.ph4173.preheader4662

.lr.ph4173.preheader4662:                         ; preds = %.lr.ph4173.preheader, %middle.block4633
  %.026744172.ph = phi ptr [ %.129934237, %.lr.ph4173.preheader ], [ %i.djr, %middle.block4633 ]
  %.026794171.ph = phi i64 [ %i.djp, %.lr.ph4173.preheader ], [ %i.dkb, %middle.block4633 ]
  br label %.lr.ph4173

.lr.ph4173:                                       ; preds = %.lr.ph4173.preheader4662, %.lr.ph4173
  %.026744172 = phi ptr [ %i.dkc, %.lr.ph4173 ], [ %.026744172.ph, %.lr.ph4173.preheader4662 ] ; 2 uses
  %.026794171 = phi i64 [ %spec.select3500, %.lr.ph4173 ], [ %.026794171.ph, %.lr.ph4173.preheader4662 ]
  %i.dkc = getelementptr inbounds nuw i8, ptr %.026744172, i64 1 ; 2 uses
  %i.dkd = load i8, ptr %.026744172, align 1, !tbaa !46
  %i.dke = icmp slt i8 %i.dkd, -64
  %i.dkf = sext i1 %i.dke to i64
  %spec.select3500 = add i64 %.026794171, %i.dkf  ; 2 uses
  %exitcond4301.not = icmp eq ptr %i.dkc, %.026774023
  br i1 %exitcond4301.not, label %.loopexit4003, label %.lr.ph4173, !llvm.loop !135

.loopexit4003:                                    ; preds = %.lr.ph4173, %middle.block4633, %bb.adk
  %.22681 = phi i64 [ %i.djp, %bb.adk ], [ %i.dkb, %middle.block4633 ], [ %spec.select3500, %.lr.ph4173 ]
  %i.dkg = icmp slt i32 %.628614240, %i.ac
  br i1 %i.dkg, label %bb.adl, label %.critedge3469

bb.adl:                                           ; preds = %.loopexit4003
  %i.dkh = add nsw i32 %.628614240, 1
  %i.dki = sub i32 -3, %i.djh
  store i32 %i.dki, ptr %.530104236, align 4, !tbaa !141
  %i.dkj = getelementptr inbounds nuw i8, ptr %.530104236, i64 4
  store i32 0, ptr %i.dkj, align 4, !tbaa !142
  %i.dkk = trunc i64 %.22681 to i32
  %i.dkl = add i32 %i.dkk, -1
  %i.dkm = getelementptr inbounds nuw i8, ptr %.530104236, i64 8
  store i32 %i.dkl, ptr %i.dkm, align 4, !tbaa !143
  %i.dkn = getelementptr inbounds nuw i8, ptr %.530104236, i64 12
  br label %.thread3602

bb.adm:                                           ; preds = %bb.bg
  %i.dko = getelementptr inbounds nuw i8, ptr %.131804233, i64 12
  %i.dkp = load i32, ptr %i.dko, align 4, !tbaa !17 ; 2 uses
  %i.dkq = icmp ult i32 %i.dkp, 1004
  br i1 %i.dkq, label %bb.adn, label %bb.ads

bb.adn:                                           ; preds = %bb.adm
  %i.dkr = load ptr, ptr %.131804233, align 8, !tbaa !15 ; 3 uses
  %.not.i3531 = icmp eq ptr %i.dkr, null
  br i1 %.not.i3531, label %bb.ado, label %._crit_edge.i3532

._crit_edge.i3532:                                ; preds = %bb.adn
  %.phi.trans.insert.i3533 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 8
  %.pre.i3534 = load i32, ptr %.phi.trans.insert.i3533, align 8, !tbaa !16
  br label %bb.adr

bb.ado:                                           ; preds = %bb.adn
  %i.dks = getelementptr inbounds nuw i8, ptr %.131804233, i64 8
  %i.dkt = load i32, ptr %i.dks, align 8, !tbaa !16
  %i.dku = call i32 @llvm.umin.i32(i32 %i.dkt, i32 536870910)
  %spec.select.i3537 = lshr i32 %i.dku, 7         ; 2 uses
  %i.dkv = zext nneg i32 %spec.select.i3537 to i64
  %i.dkw = load i64, ptr %i.fi, align 8, !tbaa !42 ; 2 uses
  %i.dkx = add i64 %i.dkw, %i.dkv
  %i.dky = load i32, ptr %i.fj, align 8, !tbaa !32 ; 2 uses
  %i.dkz = zext i32 %i.dky to i64
  %i.dla = icmp ugt i64 %i.dkx, %i.dkz
  %i.dlb = trunc i64 %i.dkw to i32
  %i.dlc = sub i32 %i.dky, %i.dlb
  %.030.i3538 = select i1 %i.dla, i32 %i.dlc, i32 %spec.select.i3537 ; 2 uses
  %i.dld = zext i32 %.030.i3538 to i64
  %i.dle = shl i32 %.030.i3538, 8                 ; 4 uses
  %i.dlf = icmp ult i32 %i.dle, 1008
  br i1 %i.dlf, label %.critedge3469, label %bb.adp

bb.adp:                                           ; preds = %bb.ado
  %i.dlg = zext i32 %i.dle to i64
  %i.dlh = load ptr, ptr %0, align 8, !tbaa !56
  %i.dli = shl nuw nsw i64 %i.dlg, 2
  %i.dlj = load ptr, ptr %i.fk, align 8, !tbaa !55
  %i.dlk = call ptr %i.dlh(i64 noundef %i.dli, ptr noundef %i.dlj) #6, !inline_history !149 ; 5 uses
  %i.dll = icmp eq ptr %i.dlk, null
  br i1 %i.dll, label %.critedge3469, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.dlm = load i64, ptr %i.fi, align 8, !tbaa !42
  %i.dln = add i64 %i.dlm, %i.dld
  store i64 %i.dln, ptr %i.fi, align 8, !tbaa !42
  store ptr null, ptr %i.dlk, align 8, !tbaa !15
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dlk, i64 8
  store i32 %i.dle, ptr %i.dlo, align 8, !tbaa !16
  store ptr %i.dlk, ptr %.131804233, align 8, !tbaa !15
  br label %bb.adr

bb.adr:                                           ; preds = %bb.adq, %._crit_edge.i3532
  %i.dlp = phi i32 [ %i.dle, %bb.adq ], [ %.pre.i3534, %._crit_edge.i3532 ]
  %.1.i3535 = phi ptr [ %i.dlk, %bb.adq ], [ %i.dkr, %._crit_edge.i3532 ] ; 2 uses
  %i.dlq = add i32 %i.dlp, -4                     ; 2 uses
  %i.dlr = getelementptr inbounds nuw i8, ptr %.1.i3535, i64 12
  store i32 %i.dlq, ptr %i.dlr, align 4, !tbaa !17
  br label %bb.ads

bb.ads:                                           ; preds = %bb.adr, %bb.adm
  %i.dls = phi i32 [ %i.dlq, %bb.adr ], [ %i.dkp, %bb.adm ] ; 2 uses
  %.03563 = phi ptr [ %.1.i3535, %bb.adr ], [ %.131804233, %bb.adm ] ; 10 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %.03563, i64 8
  %i.dlu = load i32, ptr %i.dlt, align 8, !tbaa !16
  %i.dlv = zext i32 %i.dlu to i64
  %i.dlw = getelementptr inbounds nuw [4 x i8], ptr %.03563, i64 %i.dlv
  %i.dlx = getelementptr inbounds nuw i8, ptr %.03563, i64 12 ; 3 uses
  %i.dly = zext i32 %i.dls to i64
  %i.dlz = sub nsw i64 0, %i.dly
  %i.dma = getelementptr inbounds [4 x i8], ptr %i.dlw, i64 %i.dlz ; 4 uses
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 16
  %i.dmc = add i32 %i.dls, -1004
  store i32 %i.dmc, ptr %i.dlx, align 4, !tbaa !17
  %i.dmd = ptrtoint ptr %.129934237 to i64
  %i.dme = sub i64 %i.dmd, %i.fl
  %i.dmf = call fastcc i32 @internal_dfa_match(ptr noundef %0, ptr noundef nonnull %i.lg, ptr noundef %.129934237, i64 noundef %i.dme, ptr noundef %i.dma, i32 noundef 2, ptr noundef nonnull %i.dmb, i32 noundef 1000, i32 noundef %i.w, ptr noundef nonnull %.03563) ; 3 uses
  %i.dmg = load i32, ptr %i.dlx, align 4, !tbaa !17
  %i.dmh = add i32 %i.dmg, 1004
  store i32 %i.dmh, ptr %i.dlx, align 4, !tbaa !17
  %i.dmi = icmp sgt i32 %i.dmf, -1
  br i1 %i.dmi, label %bb.adt, label %bb.aej

bb.adt:                                           ; preds = %bb.ads
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dma, i64 8
  %i.dmk = load i64, ptr %i.dmj, align 8, !tbaa !54 ; 4 uses
  %i.dml = load i64, ptr %i.dma, align 8, !tbaa !54 ; 5 uses
  br label %bb.adu

bb.adu:                                           ; preds = %bb.adu, %bb.adt
  %.02673 = phi ptr [ %i.lg, %bb.adt ], [ %i.dmu, %bb.adu ] ; 3 uses
  %i.dmm = getelementptr inbounds nuw i8, ptr %.02673, i64 1
  %i.dmn = load i8, ptr %i.dmm, align 1, !tbaa !46
  %i.dmo = zext i8 %i.dmn to i64
  %i.dmp = shl nuw nsw i64 %i.dmo, 8
  %i.dmq = getelementptr inbounds nuw i8, ptr %.02673, i64 2
  %i.dmr = load i8, ptr %i.dmq, align 1, !tbaa !46
  %i.dms = zext i8 %i.dmr to i64
  %i.dmt = getelementptr inbounds nuw i8, ptr %.02673, i64 %i.dmp
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmt, i64 %i.dms ; 5 uses
  %i.dmv = load i8, ptr %i.dmu, align 1, !tbaa !46 ; 2 uses
  %i.dmw = icmp eq i8 %i.dmv, 120
  br i1 %i.dmw, label %bb.adu, label %bb.adv, !llvm.loop !136

bb.adv:                                           ; preds = %bb.adu
  %i.dmx = sub i64 %i.dmk, %i.dml                 ; 6 uses
  %i.dmy = ptrtoint ptr %i.dmu to i64
  %i.dmz = sub i64 %i.dmy, %i.fm
  %i.dna = trunc i64 %i.dmz to i32                ; 3 uses
  %i.dnb = add i32 %i.dna, 3                      ; 2 uses
  %i.dnc = and i8 %i.dmv, -2
  %switch3511 = icmp eq i8 %i.dnc, 122
  br i1 %switch3511, label %bb.adw, label %bb.adx

bb.adw:                                           ; preds = %bb.adv
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dmu, i64 1
  %i.dne = load i8, ptr %i.dnd, align 1, !tbaa !46
  %14 = zext i8 %i.dne to i32
  %15 = shl nuw nsw i32 %14, 8
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dmu, i64 2
  %i.dng = load i8, ptr %i.dnf, align 1, !tbaa !46
  %16 = zext i8 %i.dng to i32
  %17 = or disjoint i32 %15, %16
  %18 = sub i32 %i.dna, %17
  br label %bb.adx

bb.adx:                                           ; preds = %bb.adv, %bb.adw
  %i.dnh = phi i32 [ %18, %bb.adw ], [ -1, %bb.adv ] ; 4 uses
  %i.dni = icmp eq i64 %i.dmx, 0
  br i1 %i.dni, label %bb.ady, label %bb.aea

bb.ady:                                           ; preds = %bb.adx
  %i.dnj = icmp slt i32 %.029164239, %i.ac
  br i1 %i.dnj, label %bb.adz, label %.critedge3469

bb.adz:                                           ; preds = %bb.ady
  %i.dnk = add nsw i32 %.029164239, 1
  store i32 %i.dnb, ptr %.030764234, align 4, !tbaa !141
  %i.dnl = getelementptr inbounds nuw i8, ptr %.030764234, i64 4
  store i32 0, ptr %i.dnl, align 4, !tbaa !142
  %i.dnm = getelementptr inbounds nuw i8, ptr %.030764234, i64 12
  br label %.thread3602

bb.aea:                                           ; preds = %bb.adx
  %i.dnn = add nsw i32 %.027684243, 1
  %i.dno = icmp sge i32 %i.dnn, %.029164239
  %i.dnp = icmp eq i32 %.628614240, 0
  %or.cond196 = select i1 %i.dno, i1 %i.dnp, i1 false
  br i1 %or.cond196, label %bb.aeb, label %bb.aee

bb.aeb:                                           ; preds = %bb.aea
  %i.dnq = getelementptr inbounds nuw i8, ptr %.129934237, i64 %i.dmx ; 2 uses
  br i1 %i.fn, label %bb.aec, label %.critedge3469

bb.aec:                                           ; preds = %bb.aeb
  store i32 %i.dnb, ptr %.530104236, align 4, !tbaa !141
  %i.dnr = getelementptr inbounds nuw i8, ptr %.530104236, i64 4
  store i32 0, ptr %i.dnr, align 4, !tbaa !142
  %i.dns = getelementptr inbounds nuw i8, ptr %.530104236, i64 12 ; 2 uses
  %i.dnt = icmp sgt i32 %i.dnh, -1
  br i1 %i.dnt, label %bb.aed, label %.thread3602

bb.aed:                                           ; preds = %bb.aec
  store i32 %i.dnh, ptr %.03177, align 4, !tbaa !141
  store i32 0, ptr %i.jo, align 4, !tbaa !142
  br label %.thread3602

bb.aee:                                           ; preds = %bb.aea
  br i1 %i.o, label %bb.aef, label %.loopexit4006

bb.aef:                                           ; preds = %bb.aee
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dmk
  %i.dnv = icmp samesign ult i64 %i.dml, %i.dmk
  br i1 %i.dnv, label %.lr.ph4160.preheader, label %.loopexit4006

.lr.ph4160.preheader:                             ; preds = %bb.aef
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dml ; 3 uses
  %.reass4823 = add i64 %i.dml, %invariant.op4822
  %i.dnx = add i64 %i.dmk, %i.fl
  %i.dny = call i64 @llvm.umax.i64(i64 %.reass4823, i64 %i.dnx)
  %i.dnz = add i64 %i.dml, %i.fl
  %i.doa = sub i64 %i.dny, %i.dnz                 ; 3 uses
  %min.iters.check4639 = icmp ult i64 %i.doa, 4
  br i1 %min.iters.check4639, label %.lr.ph4160.preheader4663, label %vector.ph4640

vector.ph4640:                                    ; preds = %.lr.ph4160.preheader
  %n.vec4641 = and i64 %i.doa, -4                 ; 3 uses
  %i.dob = getelementptr i8, ptr %i.dnw, i64 %n.vec4641
  %i.doc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dmx, i64 0
  br label %vector.body4642

vector.body4642:                                  ; preds = %vector.body4642, %vector.ph4640
  %index4643 = phi i64 [ 0, %vector.ph4640 ], [ %index.next4649, %vector.body4642 ] ; 2 uses
  %vec.phi4644 = phi <2 x i64> [ %i.doc, %vector.ph4640 ], [ %i.doi, %vector.body4642 ]
  %vec.phi4645 = phi <2 x i64> [ zeroinitializer, %vector.ph4640 ], [ %i.doj, %vector.body4642 ]
  %next.gep4646 = getelementptr i8, ptr %i.dnw, i64 %index4643 ; 2 uses
  %i.dod = getelementptr i8, ptr %next.gep4646, i64 2
  %wide.load4647 = load <2 x i8>, ptr %next.gep4646, align 1, !tbaa !46
  %wide.load4648 = load <2 x i8>, ptr %i.dod, align 1, !tbaa !46
  %i.doe = icmp slt <2 x i8> %wide.load4647, splat (i8 -64)
  %i.dof = icmp slt <2 x i8> %wide.load4648, splat (i8 -64)
  %i.dog = sext <2 x i1> %i.doe to <2 x i64>
  %i.doh = sext <2 x i1> %i.dof to <2 x i64>
  %i.doi = add <2 x i64> %vec.phi4644, %i.dog     ; 2 uses
  %i.doj = add <2 x i64> %vec.phi4645, %i.doh     ; 2 uses
  %index.next4649 = add nuw i64 %index4643, 4     ; 2 uses
  %i.dok = icmp eq i64 %index.next4649, %n.vec4641
  br i1 %i.dok, label %middle.block4650, label %vector.body4642, !llvm.loop !137

middle.block4650:                                 ; preds = %vector.body4642
  %bin.rdx4651 = add <2 x i64> %i.doj, %i.doi
  %i.dol = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx4651) ; 2 uses
  %cmp.n4652 = icmp eq i64 %i.doa, %n.vec4641
  br i1 %cmp.n4652, label %.loopexit4006, label %.lr.ph4160.preheader4663

.lr.ph4160.preheader4663:                         ; preds = %.lr.ph4160.preheader, %middle.block4650
  %.04158.ph = phi ptr [ %i.dnw, %.lr.ph4160.preheader ], [ %i.dob, %middle.block4650 ]
  %.026724157.ph = phi i64 [ %i.dmx, %.lr.ph4160.preheader ], [ %i.dol, %middle.block4650 ]
  br label %.lr.ph4160

.lr.ph4160:                                       ; preds = %.lr.ph4160.preheader4663, %.lr.ph4160
  %.04158 = phi ptr [ %i.dom, %.lr.ph4160 ], [ %.04158.ph, %.lr.ph4160.preheader4663 ] ; 2 uses
  %.026724157 = phi i64 [ %spec.select3501, %.lr.ph4160 ], [ %.026724157.ph, %.lr.ph4160.preheader4663 ]
  %i.dom = getelementptr inbounds nuw i8, ptr %.04158, i64 1 ; 2 uses
  %i.don = load i8, ptr %.04158, align 1, !tbaa !46
  %i.doo = icmp slt i8 %i.don, -64
  %i.dop = sext i1 %i.doo to i64
  %spec.select3501 = add i64 %.026724157, %i.dop  ; 2 uses
  %i.doq = icmp ult ptr %i.dom, %i.dnu
  br i1 %i.doq, label %.lr.ph4160, label %.loopexit4006, !llvm.loop !138

.loopexit4006:                                    ; preds = %.lr.ph4160, %middle.block4650, %bb.aef, %bb.aee
  %.2 = phi i64 [ %i.dmx, %bb.aee ], [ %i.dmx, %bb.aef ], [ %i.dol, %middle.block4650 ], [ %spec.select3501, %.lr.ph4160 ]
  %i.dor = add nsw i32 %.628614240, 1             ; 2 uses
  %i.dos = icmp slt i32 %.628614240, %i.ac
  br i1 %i.dos, label %bb.aeg, label %.critedge3469

bb.aeg:                                           ; preds = %.loopexit4006
  %i.dot = sub i32 -3, %i.dna
  store i32 %i.dot, ptr %.530104236, align 4, !tbaa !141
  %i.dou = getelementptr inbounds nuw i8, ptr %.530104236, i64 4
  store i32 0, ptr %i.dou, align 4, !tbaa !142
  %i.dov = trunc i64 %.2 to i32
  %i.dow = add i32 %i.dov, -1                     ; 2 uses
  %i.dox = getelementptr inbounds nuw i8, ptr %.530104236, i64 8
  store i32 %i.dow, ptr %i.dox, align 4, !tbaa !143
  %i.doy = getelementptr inbounds nuw i8, ptr %.530104236, i64 12 ; 2 uses
  %i.doz = icmp sgt i32 %i.dnh, -1
  br i1 %i.doz, label %bb.aeh, label %.thread3602

bb.aeh:                                           ; preds = %bb.aeg
  %i.dpa = icmp slt i32 %i.dor, %i.ac
  br i1 %i.dpa, label %bb.aei, label %.critedge3469

bb.aei:                                           ; preds = %bb.aeh
  %i.dpb = add nsw i32 %.628614240, 2
  %i.dpc = sub nsw i32 0, %i.dnh
  store i32 %i.dpc, ptr %i.doy, align 4, !tbaa !141
  %i.dpd = getelementptr inbounds nuw i8, ptr %.530104236, i64 16
  store i32 0, ptr %i.dpd, align 4, !tbaa !142
  %i.dpe = getelementptr inbounds nuw i8, ptr %.530104236, i64 20
  store i32 %i.dow, ptr %i.dpe, align 4, !tbaa !143
  %i.dpf = getelementptr inbounds nuw i8, ptr %.530104236, i64 24
  br label %.thread3602

bb.aej:                                           ; preds = %bb.ads
  %.not3336 = icmp eq i32 %i.dmf, -1
  br i1 %.not3336, label %.thread3602, label %.critedge3469

bb.aek:                                           ; preds = %bb.bg, %bb.bg
  %i.dpg = load ptr, ptr %i.fe, align 8, !tbaa !26 ; 11 uses
  %i.dph = icmp eq i8 %i.lh, 118
  br i1 %i.dph, label %bb.ael, label %bb.aem

bb.ael:                                           ; preds = %bb.aek
  %i.dpi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_OP_lengths_8, i64 118), align 1, !tbaa !46
  %i.dpj = zext i8 %i.dpi to i64
  br label %bb.aen

bb.aem:                                           ; preds = %bb.aek
  %i.dpk = getelementptr inbounds nuw i8, ptr %i.lg, i64 5
  %i.dpl = load i8, ptr %i.dpk, align 1, !tbaa !46
  %i.dpm = zext i8 %i.dpl to i64
  %i.dpn = shl nuw nsw i64 %i.dpm, 8
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.lg, i64 6
  %i.dpp = load i8, ptr %i.dpo, align 1, !tbaa !46
  %i.dpq = zext i8 %i.dpp to i64
  %i.dpr = or disjoint i64 %i.dpn, %i.dpq
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aem, %bb.ael
  %i.dps = phi i64 [ %i.dpj, %bb.ael ], [ %i.dpr, %bb.aem ] ; 2 uses
  %i.dpt = load ptr, ptr %i.ff, align 8, !tbaa !29 ; 2 uses
  %i.dpu = icmp eq ptr %i.dpt, null
  br i1 %i.dpu, label %.thread3920, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpg, i64 16
  store ptr %4, ptr %i.dpv, align 8, !tbaa !150
  %i.dpw = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.dpx = ptrtoint ptr %i.dpw to i64             ; 2 uses
  %i.dpy = sub i64 %i.fg, %i.dpx
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpg, i64 48
  store i64 %i.dpy, ptr %i.dpz, align 8, !tbaa !151
  %i.dqa = ptrtoint ptr %.129934237 to i64
  %i.dqb = sub i64 %i.dqa, %i.dpx
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dpg, i64 56
  store i64 %i.dqb, ptr %i.dqc, align 8, !tbaa !152
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.dqe = load i8, ptr %i.dqd, align 1, !tbaa !46
  %i.dqf = zext i8 %i.dqe to i64
  %i.dqg = shl nuw nsw i64 %i.dqf, 8
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.dqi = load i8, ptr %i.dqh, align 1, !tbaa !46
  %i.dqj = zext i8 %i.dqi to i64
  %i.dqk = or disjoint i64 %i.dqg, %i.dqj
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dpg, i64 64
  store i64 %i.dqk, ptr %i.dql, align 8, !tbaa !153
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.lg, i64 3
  %i.dqn = load i8, ptr %i.dqm, align 1, !tbaa !46
  %i.dqo = zext i8 %i.dqn to i64
  %i.dqp = shl nuw nsw i64 %i.dqo, 8
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.dqr = load i8, ptr %i.dqq, align 1, !tbaa !46
  %i.dqs = zext i8 %i.dqr to i64
  %i.dqt = or disjoint i64 %i.dqp, %i.dqs
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dpg, i64 72
  store i64 %i.dqt, ptr %i.dqu, align 8, !tbaa !154
end_hunk_2
