Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/busmaster_parser?download=true
inline.NumInlined: 51
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.token_t = type { i64, i64, i64, i64 }
%union.YYMINORTYPE = type { %struct.token_t, [40 x i8] }
%struct.wtap_can_msg_data_t = type { i8, [64 x i8] }

@yyRuleInfoNRhs = internal unnamed_addr constant [64 x i8] c"\00\FD\EE\FD\FD\F9\FB\F5\FB\F9\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FE\FD\FC\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FE\00\FE\00\FD\00\FE\FE\FD", align 16
@yy_shift_ofst = internal unnamed_addr constant [78 x i8] c"\22------------2A>LM------>OZ]^]^fimq\9E\9E\9E\9E\9E\9E\9E\1BSU:knoprtuy|\80\85\86\81{}~\7F\82\83\84\87\88\89\8B\8E\91\92\95\97\9B\9C\9D", align 16
@yy_lookahead = internal unnamed_addr constant [178 x i8] c"\1C\1D\1E\1F !\22#$%&'()*+,-\1C\1D\1E\1F !\22#$%&'()*+,-\14\1C\1C\1C\0D\0E\08\22\22\22\0C&&(\1C\11+\1F !\22\1B\00\0E\0A\03./0123456\1C\1C\08:1\0E\22\22\1C6&&\17(\22\039\03&\0E(\09\18\09\16\13\12\1C\1C\1C\17\1C\1C\0E\15\18\0E\0E\079\06\1A\19\05\1A\19\0498\0D777\0E\0E\0E\03\00\0F\0E\0E\0B\00\0077\0E\09;\0E\10\03\10\0E\03\0E\10\03\03\0E\10\03\10\03\00\00\00;;;;;;;;;;;;;;;;;;;;", align 16
@yy_default = internal unnamed_addr constant [78 x i8] c"\B8\D8\D8\D4\CB\E6\D1\B5\E4\CF\B5\E3\E1\F0\B5\B5\B5\C3\B5\B5\B5\DB\DA\D9\B5\B5\B5\B5\B5\B5\B5\F0\F0\F0\F0\F0\F4\F2\F2\F2\F2\F2\B5\B5\BA\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\EF\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5", align 16
@yy_action = internal unnamed_addr constant [158 x i8] c"\17\BF\C7\C8\C9\CA\04\CC\CD\CE\09\D0\06\D2\D3\03\D5\D6\17\BD\C7\C8\C9\CA\04\CC\CD\CE\09\D0\06\D2\D3\03\D5\D6*\14\14\144\10#\0A\0A\E0\1C\07\E2\05\17\7F\E7\DD\DE\DF\E0G\EB\94\1E\0E\B6MLK-987J\14\14#6\B9\81\0C\0A\14J\E2\07\01\E5\0B\B0+\B3\08\80\E5\AE3\B2\BE\83\82\DC\12\13\02\15\16\11\18\19D>E+F\F7\1BH\BB\1DI:,\0F\1F \0D./05\EE12\1Ay\ED\EC!\22}\AE\B7<;$=~%@?&'BA(C)\EA\E9\E8", align 16
@.str = private unnamed_addr constant [22 x i8] c"Parser stack overflow\00", align 1
@yyRuleInfoLhs = internal unnamed_addr constant [64 x i8] c"/01\1B2345\19\1A\14\18\17\15\16\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1C\1E\1F !\22#$%&'()*+,-.......69977888:", align 16
@yy_reduce_ofst = internal unnamed_addr constant [42 x i8] c"\10\E4\F6\09\16,3\0A\0A+\0B\0B\0B\1E\1A<EIFGHFJKNTRVXY[5555=?BCDPQ", align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"Syntax Error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Parse Error\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define hidden void @BusmasterParserInit(ptr noundef initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %i.b, ptr %0, align 8
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %0, i64 7944
  %i.e = getelementptr i8, ptr %0, i64 8024
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @BusmasterParserAlloc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr %0(i64 noundef 8032)       ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  store i32 -1, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 25
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %i.a, i64 7944
  %i.f = getelementptr i8, ptr %i.a, i64 8024
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define hidden void @BusmasterParserFinalize(ptr nofree noundef captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.b = icmp ugt ptr %.promoted, %i.a
  br i1 %i.b, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.d, %.lr.ph ], [ %.promoted, %bb.a ]
  %i.d = getelementptr i8, ptr %i.c, i64 -80      ; 3 uses
  %i.e = icmp ugt ptr %i.d, %i.a
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.d, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @BusmasterParserFree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8        ; 2 uses
  %i.c = icmp ugt ptr %.promoted.i, %i.b
  br i1 %i.c, label %.lr.ph.i, label %BusmasterParserFinalize.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.d = phi ptr [ %i.e, %.lr.ph.i ], [ %.promoted.i, %bb.b ]
  %i.e = getelementptr i8, ptr %i.d, i64 -80      ; 3 uses
  %i.f = icmp ugt ptr %i.e, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.e, ptr %0, align 8
  br label %BusmasterParserFinalize.exit

BusmasterParserFinalize.exit:                     ; preds = %bb.b, %._crit_edge.i
  tail call void %1(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %BusmasterParserFinalize.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @BusmasterParser(ptr nofree noundef captures(address) initializes((16, 24)) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.token_t) align 8 captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %union.YYMINORTYPE, align 8         ; 24 uses
  %.sroa.64.i = alloca %struct.wtap_can_msg_data_t, align 8 ; 4 uses
  %.sroa.6.i = alloca %struct.wtap_can_msg_data_t, align 8 ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 10 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = icmp eq i32 %1, 0
  %i.c = load ptr, ptr %0, align 8
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i32 %1 to i8                       ; 2 uses
  %.mask = and i32 %1, 255
  %i.f = zext nneg i32 %.mask to i64
  %i.g = getelementptr i8, ptr %0, i64 8024       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ai, %bb.a
  %.033 = phi i8 [ %i.d, %bb.a ], [ %i.gn, %bb.ai ] ; 3 uses
  %i.n = icmp ugt i8 %.033, 77
  br i1 %i.n, label %yy_find_shift_action.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %.033 to i64                ; 2 uses
  %i.p = getelementptr i8, ptr @yy_shift_ofst, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, %i.f               ; 2 uses
  %i.t = getelementptr i8, ptr @yy_lookahead, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %.not.i = icmp eq i8 %i.u, %i.e
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr @yy_default, i64 %i.o
  %i.w = load i8, ptr %i.v, align 1
  br label %yy_find_shift_action.exit

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr @yy_action, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1
  br label %yy_find_shift_action.exit

yy_find_shift_action.exit:                        ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i8 [ %i.y, %bb.e ], [ %i.w, %bb.d ], [ %.033, %bb.b ] ; 7 uses
  %i.z = icmp ugt i8 %.0.i, -73
  br i1 %i.z, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %yy_find_shift_action.exit
  %i.aa = zext i8 %.0.i to i32
  %i.ab = add nsw i32 %i.aa, -184                 ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.ad, 1513209479091453953
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.a, align 8
  %.pre53 = load ptr, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %0, align 8               ; 4 uses
  %i.ag = load ptr, ptr %i.g, align 8
  %.not36 = icmp ult ptr %i.af, %i.ag
  %.pre52 = load ptr, ptr %i.a, align 8           ; 4 uses
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.aj = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.ak = getelementptr i8, ptr %i.aj, i64 -80    ; 3 uses
  %i.al = icmp ugt ptr %i.ak, %i.ah
  br i1 %i.al, label %.lr.ph.i, label %.g_strdup_inline.exit_crit_edge.i, !llvm.loop !8

.g_strdup_inline.exit_crit_edge.i:                ; preds = %.lr.ph.i
  store ptr %i.ak, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.g_strdup_inline.exit_crit_edge.i, %bb.h
  %i.am = getelementptr i8, ptr %.pre52, i64 16   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  call void @g_free(ptr noundef %i.an)
  %i.ao = getelementptr i8, ptr %.pre52, i64 72
  store i32 -1, ptr %i.ao, align 8
  %i.ap = call noalias dereferenceable_or_null(22) ptr @g_malloc(i64 noundef 22) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(22) %i.ap, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 noundef 22, i1 noundef false) #12
  store ptr %i.ap, ptr %i.am, align 8
  store ptr %.pre52, ptr %i.a, align 8
  br label %bb.at

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.aq = phi ptr [ %.pre53, %._crit_edge ], [ %i.af, %bb.g ] ; 51 uses
  %i.ar = phi ptr [ %.pre, %._crit_edge ], [ %.pre52, %bb.g ] ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  switch i32 %i.ab, label %bb.ai [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 10, label %bb.x
    i32 11, label %bb.y
    i32 12, label %bb.z
    i32 13, label %bb.aa
    i32 14, label %bb.aa
    i32 47, label %bb.ah
    i32 46, label %bb.ah
    i32 45, label %bb.ah
    i32 44, label %bb.ah
    i32 43, label %bb.ah
    i32 42, label %bb.ah
    i32 41, label %bb.ah
    i32 40, label %bb.ah
    i32 39, label %bb.ah
    i32 38, label %bb.ah
    i32 37, label %bb.ah
    i32 36, label %bb.ag
    i32 35, label %bb.af
    i32 34, label %bb.ae
    i32 33, label %bb.ad
    i32 32, label %bb.ac
    i32 31, label %bb.ab
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ar, i64 72
  store i32 1, ptr %i.as, align 8
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.ar, i64 72
  store i32 4, ptr %i.at, align 8
  br label %bb.ai

bb.l:                                             ; preds = %bb.i
  %i.au = getelementptr i8, ptr %i.ar, i64 72
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.ar, i64 108
  %i.aw = getelementptr i8, ptr %i.aq, i64 -632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(28) %i.av, ptr noundef align 8 dereferenceable(28) %i.aw, i64 28, i1 false)
  %i.ax = getelementptr i8, ptr %i.aq, i64 -1112
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.ar, i64 96
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.aq, i64 -392
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.ar, i64 100
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.aq, i64 -152
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr i8, ptr %i.ar, i64 104
  store i32 %i.bh, ptr %i.bi, align 8
  br label %bb.ai

bb.m:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.aq, i64 -152
  %i.bk = getelementptr i8, ptr %i.aq, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.bj, ptr noundef align 8 dereferenceable(12) %i.bk, i64 12, i1 false)
  %i.bl = getelementptr i8, ptr %i.aq, i64 -140
  %i.bm = getelementptr i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bl, ptr noundef align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  br label %bb.ai

bb.n:                                             ; preds = %bb.i
  %i.bn = getelementptr i8, ptr %i.ar, i64 72
  store i32 3, ptr %i.bn, align 8
  br label %bb.ai

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i)
  %i.bo = getelementptr i8, ptr %i.ar, i64 100
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr i8, ptr %i.aq, i64 -72    ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = mul nuw i32 %i.bt, 10
  %i.bv = and i32 %i.bs, 15
  %i.bw = add nuw i32 %i.bu, %i.bv
  store i32 %i.bw, ptr %i.br, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = getelementptr i8, ptr %i.aq, i64 -152
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = and i32 %i.by, -2
  %switch.i = icmp eq i32 %i.bz, 2
  br i1 %switch.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(65) %i.ca, i8 noundef 0, i64 noundef 65, i1 noundef false) #12
  %i.cb = getelementptr i8, ptr %i.aq, i64 -72
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %i.ca, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = getelementptr i8, ptr %i.aq, i64 -472
  %i.cf = getelementptr i8, ptr %i.aq, i64 -232
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.sroa.64.i, ptr noundef align 8 dereferenceable(65) %i.ch, i64 65, i1 false)
  %i.ci = getelementptr i8, ptr %i.ar, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ci, ptr noundef align 8 dereferenceable(16) %i.ce, i64 16, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 152
  store i32 %i.by, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.53.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 156
  store i32 %i.cg, ptr %.sroa.53.0..sroa_idx.i, align 4
  %.sroa.64.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %.sroa.64.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(65) %.sroa.64.i, i64 65, i1 false)
  %i.cj = getelementptr i8, ptr %i.ar, i64 72
  store i32 5, ptr %i.cj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i)
  br label %bb.ai

bb.t:                                             ; preds = %bb.i
  %i.ck = getelementptr i8, ptr %i.aq, i64 -312
  %i.cl = getelementptr i8, ptr %i.aq, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.ar, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cn, ptr noundef align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  %.sroa.4.0..sroa_idx3.i = getelementptr i8, ptr %i.ar, i64 152
  store i32 %i.cm, ptr %.sroa.4.0..sroa_idx3.i, align 8
  %.sroa.5.0..sroa_idx4.i = getelementptr i8, ptr %i.ar, i64 156
  store i32 0, ptr %.sroa.5.0..sroa_idx4.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 160
  store i8 8, ptr %.sroa.65.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 161
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i8 0, i64 64, i1 false)
  %i.co = getelementptr i8, ptr %i.ar, i64 72
  store i32 5, ptr %i.co, align 8
  br label %bb.ai

bb.u:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cp = getelementptr i8, ptr %i.aq, i64 -792
  %i.cq = getelementptr i8, ptr %i.aq, i64 -632
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = getelementptr i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.sroa.6.i, ptr noundef align 8 dereferenceable(65) %i.cs, i64 65, i1 false)
  %i.ct = getelementptr i8, ptr %i.ar, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ct, ptr noundef align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 152
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 156
  store i32 %i.cr, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(65) %.sroa.6.i, i64 65, i1 false)
  %i.cu = getelementptr i8, ptr %i.ar, i64 72
  store i32 5, ptr %i.cu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ai

bb.v:                                             ; preds = %bb.i
  %i.cv = getelementptr i8, ptr %i.aq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %4, align 8
  %i.cy = getelementptr i8, ptr %i.aq, i64 -152
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = trunc i64 %i.cz to i32
  store i32 %i.da, ptr %i.k, align 4
  %i.db = getelementptr i8, ptr %i.aq, i64 -312   ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.db, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.ai

bb.w:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %i.aq, i64 -472   ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr %4, align 8
  %i.dh = getelementptr i8, ptr %i.aq, i64 -312
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.k, align 4
  %i.dk = getelementptr i8, ptr %i.aq, i64 -152
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.l, align 8
  %i.dn = getelementptr i8, ptr %i.aq, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = trunc i64 %i.do to i32
  %i.dq = mul i32 %i.dp, 1000
  store i32 %i.dq, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %bb.ai

bb.x:                                             ; preds = %bb.i
  %i.dr = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %4, align 8
  %i.du = getelementptr i8, ptr %i.aq, i64 16
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.k, align 4
  %i.dx = getelementptr i8, ptr %i.aq, i64 24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.l, align 8
  %i.ea = getelementptr i8, ptr %i.aq, i64 32
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = mul i32 %i.ec, 100
  store i32 %i.ed, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %bb.ai

bb.y:                                             ; preds = %bb.i
  %i.ee = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ee, align 8
  br label %bb.ai

bb.z:                                             ; preds = %bb.i
  %i.eh = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.eh, align 8
  br label %bb.ai

bb.aa:                                            ; preds = %bb.i, %bb.i
  %i.ek = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = trunc i64 %i.el to i32
  store i32 %i.em, ptr %i.ek, align 8
  br label %bb.ai

bb.ab:                                            ; preds = %bb.i
  %i.en = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = trunc i64 %i.eo to i8
  store i8 %i.ep, ptr %i.en, align 8
  br label %bb.ai

bb.ac:                                            ; preds = %bb.i
  %i.eq = getelementptr i8, ptr %i.aq, i64 88
  store i8 0, ptr %i.eq, align 8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.i
  store i8 1, ptr %4, align 8
  %i.er = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.es = load i8, ptr %i.er, align 8
  store i8 %i.es, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %i.er, ptr noundef nonnull align 8 dereferenceable(65) %4, i64 65, i1 false)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.i
  store i8 2, ptr %4, align 8
  %i.et = getelementptr i8, ptr %i.aq, i64 -72    ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8
  store i8 %i.eu, ptr %i.h, align 1
  %i.ev = getelementptr i8, ptr %i.aq, i64 8
  %i.ew = load i8, ptr %i.ev, align 8
  store i8 %i.ew, ptr %i.i, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %i.et, ptr noundef nonnull align 8 dereferenceable(65) %4, i64 65, i1 false)
  br label %bb.ai

bb.af:                                            ; preds = %bb.i
  store i8 3, ptr %4, align 8
  %i.ex = getelementptr i8, ptr %i.aq, i64 -152   ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8
  store i8 %i.ey, ptr %i.h, align 1
  %i.ez = getelementptr i8, ptr %i.aq, i64 -72
  %i.fa = load i8, ptr %i.ez, align 8
  store i8 %i.fa, ptr %i.i, align 2
  %i.fb = getelementptr i8, ptr %i.aq, i64 8
  %i.fc = load i8, ptr %i.fb, align 8
  store i8 %i.fc, ptr %i.j, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %i.ex, ptr noundef nonnull align 8 dereferenceable(65) %4, i64 65, i1 false)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.i
  store i8 4, ptr %4, align 8
  %i.fd = getelementptr i8, ptr %i.aq, i64 -232   ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8
  store i8 %i.fe, ptr %i.h, align 1
  %i.ff = getelementptr i8, ptr %i.aq, i64 -152
  %i.fg = load i8, ptr %i.ff, align 8
  store i8 %i.fg, ptr %i.i, align 2
  %i.fh = getelementptr i8, ptr %i.aq, i64 -72
  %i.fi = load i8, ptr %i.fh, align 8
  store i8 %i.fi, ptr %i.j, align 1
  %i.fj = getelementptr i8, ptr %i.aq, i64 8
  %i.fk = load i8, ptr %i.fj, align 8
  store i8 %i.fk, ptr %i.k, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %i.fd, ptr noundef nonnull align 8 dereferenceable(65) %4, i64 65, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.fl = getelementptr i8, ptr %i.aq, i64 -72    ; 2 uses
  %i.fm = getelementptr i8, ptr %i.aq, i64 8
  %i.fn = load i8, ptr %i.fl, align 1             ; 2 uses
  %i.fo = load i8, ptr %i.fm, align 1             ; 2 uses
  %i.fp = add i8 %i.fo, %i.fn
  store i8 %i.fp, ptr %4, align 8
  %i.fq = getelementptr i8, ptr %i.aq, i64 -71
  %i.fr = zext i8 %i.fn to i64                    ; 3 uses
  %i.fs = call ptr @__memcpy_chk(ptr noundef nonnull %i.h, ptr noundef readonly %i.fq, i64 noundef %i.fr, i64 noundef 71) #12, !alias.scope !16 ; 0 uses
  %i.ft = add nuw nsw i64 %i.fr, 1
  %i.fu = getelementptr i8, ptr %i.h, i64 %i.fr
  %i.fv = getelementptr i8, ptr %i.aq, i64 9
  %i.fw = zext i8 %i.fo to i64
  %i.fx = call i64 @llvm.usub.sat.i64(i64 72, i64 %i.ft)
  %i.fy = call ptr @__memcpy_chk(ptr noundef %i.fu, ptr noundef readonly %i.fv, i64 noundef %i.fw, i64 noundef %i.fx) #12, !alias.scope !17 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(65) %i.fl, ptr noundef nonnull align 8 dereferenceable(65) %4, i64 65, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.fz = getelementptr i8, ptr @yyRuleInfoLhs, i64 %i.ac
  %i.ga = load i8, ptr %i.fz, align 1             ; 2 uses
  %i.gb = getelementptr i8, ptr @yyRuleInfoNRhs, i64 %i.ac
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = sext i8 %i.gc to i64
  %i.ge = getelementptr [80 x i8], ptr %i.aq, i64 %i.gd ; 3 uses
  %i.gf = load i8, ptr %i.ge, align 8
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr i8, ptr @yy_reduce_ofst, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = sext i8 %i.gi to i64
  %i.gk = zext i8 %i.ga to i64
  %i.gl = getelementptr i8, ptr @yy_action, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gk
  %i.gn = load i8, ptr %i.gm, align 1             ; 2 uses
  %i.go = getelementptr i8, ptr %i.ge, i64 80     ; 2 uses
  store ptr %i.go, ptr %0, align 8
  store i8 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %i.ge, i64 81
  store i8 %i.ga, ptr %i.gp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b

bb.aj:                                            ; preds = %yy_find_shift_action.exit
  %i.gq = icmp ult i8 %.0.i, -75
  br i1 %i.gq, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %0, align 8               ; 6 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 80     ; 3 uses
  store ptr %i.gs, ptr %0, align 8
  %i.gt = load ptr, ptr %i.g, align 8
  %i.gu = icmp ugt ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.al, label %bb.am
end_hunk_0
