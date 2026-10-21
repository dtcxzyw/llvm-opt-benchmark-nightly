Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/syncrep_gram?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { ptr }

@yypact = internal unnamed_addr constant [24 x i8] c"\FE\F6\FB\0B\0E\13\F6\FC\F6\06\0C\0D\F6\06\F6\02\06\06\F6\F6\04\07\F6\F6", align 16
@yytranslate = internal unnamed_addr constant [263 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\08\09\02\02\0A\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07", align 16
@yycheck = internal unnamed_addr constant [23 x i8] c"\09\03\04\08\06\07\0A\10\11\03\04\09\0A\09\0A\04\09\0A\04\00\08\08\0D", align 16
@yytable = internal unnamed_addr constant [23 x i8] c"\0F\01\02\09\03\04\0D\14\15\01\0E\13\0D\16\0D\0A\17\0D\0B\0C\10\11\12", align 16
@yydefact = internal unnamed_addr constant [24 x i8] c"\00\09\0A\00\00\00\02\03\07\00\00\00\01\00\0A\00\00\00\08\04\00\00\05\06", align 16
@yyr2 = internal unnamed_addr constant [11 x i8] c"\00\02\01\01\04\05\05\01\03\01\01", align 1
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@yyr1 = internal unnamed_addr constant [11 x i8] c"\00\0B\0C\0D\0D\0D\0D\0E\0E\0F\0F", align 1
@yypgoto = internal unnamed_addr constant [5 x i8] c"\F6\F6\F6\F7\09", align 1
@yydefgoto = internal unnamed_addr constant [5 x i8] c"\00\05\06\07\08", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @syncrep_yyparse(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.YYSTYPE, align 8             ; 5 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %4 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.ah, %bb.r
  %.0219.in = phi i8 [ %i.as, %bb.r ], [ %.in, %bb.ah ]
  %.0199 = phi ptr [ %.3202, %bb.r ], [ %i.cg, %bb.ah ]
  %.0187 = phi ptr [ %i.at, %bb.r ], [ %i.ch, %bb.ah ]
  %.0176 = phi i32 [ -2, %bb.r ], [ %.4, %bb.ah ]
  %.0219 = sext i8 %.0219.in to i32
  %i.b = getelementptr inbounds nuw i8, ptr %.0199, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1220 = phi i32 [ 0, %bb.a ], [ %.0219, %bb.b ] ; 3 uses
  %.0213 = phi i64 [ 200, %bb.a ], [ %.2215, %bb.b ] ; 4 uses
  %.0207 = phi ptr [ %i.a, %bb.a ], [ %.3210, %bb.b ] ; 8 uses
  %.1200 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.0195 = phi ptr [ %4, %bb.a ], [ %.3198, %bb.b ] ; 2 uses
  %.1188 = phi ptr [ %4, %bb.a ], [ %.0187, %bb.b ]
  %.1177 = phi i32 [ -2, %bb.a ], [ %.0176, %bb.b ] ; 3 uses
  %i.c = trunc nsw i32 %.1220 to i8
  store i8 %i.c, ptr %.1200, align 1
  %i.d = getelementptr inbounds i8, ptr %.0207, i64 %.0213
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp ugt ptr %i.e, %.1200
  br i1 %.not, label %.thread263, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.1200 to i64
  %i.g = ptrtoint ptr %.0207 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = icmp sgt i64 %.0213, 9999
  br i1 %i.j, label %.thread286.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %.0213, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.k, i64 10000) ; 4 uses
  %i.l = mul i64 %spec.store.select, 9
  %i.m = add i64 %i.l, 7
  %i.n = call ptr @palloc(i64 noundef %i.m) #7    ; 6 uses
  %.not234.not = icmp eq ptr %i.n, null
  br i1 %.not234.not, label %.thread286.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %.0207, i64 %i.i, i1 false)
  %i.o = add nsw i64 %spec.store.select, 7
  %i.p = sdiv i64 %i.o, 8
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = shl i64 %i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.0195, i64 %i.r, i1 false)
  %.not235 = icmp eq ptr %.0207, %i.a
  br i1 %.not235, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pfree(ptr noundef %.0207) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = add nsw i64 %spec.store.select, -1
  %.not236 = icmp sgt i64 %i.v, %i.h
  br i1 %.not236, label %.thread263, label %.thread286

.thread263:                                       ; preds = %bb.h, %bb.c
  %.2215 = phi i64 [ %.0213, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3210 = phi ptr [ %.0207, %bb.c ], [ %i.n, %bb.h ] ; 4 uses
  %.3202 = phi ptr [ %.1200, %bb.c ], [ %i.s, %bb.h ] ; 2 uses
  %.3198 = phi ptr [ %.0195, %bb.c ], [ %i.q, %bb.h ]
  %.3190 = phi ptr [ %.1188, %bb.c ], [ %i.u, %bb.h ] ; 16 uses
  %i.w = icmp eq i32 %.1220, 12
  br i1 %i.w, label %.thread286, label %bb.i

bb.i:                                             ; preds = %.thread263
  %i.x = sext i32 %.1220 to i64                   ; 3 uses
  %i.y = getelementptr inbounds i8, ptr @yypact, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = shl nuw i64 1, %i.x                     ; 2 uses
  %i.ac = and i64 %i.ab, 13390146
  %.not237 = icmp eq i64 %i.ac, 0
  br i1 %.not237, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %.1177, -2
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @syncrep_yylex(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.ae, %bb.k ], [ %.1177, %bb.j ] ; 6 uses
  %i.af = icmp slt i32 %.2, 1
  br i1 %i.af, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i32 %.2, 256
  br i1 %i.ag, label %.thread286, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp samesign ult i32 %.2, 263
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = zext nneg i32 %.2 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0184 = phi i32 [ 0, %bb.l ], [ %i.al, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 2 uses
  %i.am = add nsw i32 %.0184, %i.aa               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.am, 22
  br i1 %or.cond3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %.not238 = icmp eq i32 %.0184, %i.aq
  br i1 %.not238, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.3190, i64 8 ; 2 uses
  %i.au = load i64, ptr %3, align 8
  store i64 %i.au, ptr %i.at, align 8
  br label %bb.b

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1177, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ]
  %i.av = and i64 %i.ab, 3386937
  %.not240 = icmp eq i64 %i.av, 0
  br i1 %.not240, label %bb.t, label %.thread286.sink.split

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds i8, ptr @yydefact, i64 %i.x
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = sext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr @yyr2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = sext i8 %i.ba to i64                    ; 2 uses
  %i.bc = sub nsw i64 1, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %.3190, i64 %i.bc
  %.sroa.038.0.copyload = load ptr, ptr %i.bd, align 8 ; 2 uses
  switch i8 %i.ax, label %bb.ad [
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
    i8 6, label %bb.y
    i8 7, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %bb.ab
    i8 10, label %bb.ac
  ]

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %.3190, align 8
  store ptr %i.be, ptr %0, align 8
  br label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %.3190, align 8
  %i.bg = call fastcc ptr @create_syncrep_config(ptr noundef nonnull @.str, ptr noundef %i.bf, i8 noundef zeroext 0)
  br label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds i8, ptr %.3190, i64 -24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %.3190, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call fastcc ptr @create_syncrep_config(ptr noundef %i.bi, ptr noundef %i.bk, i8 noundef zeroext 0)
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds i8, ptr %.3190, i64 -24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %.3190, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call fastcc ptr @create_syncrep_config(ptr noundef %i.bn, ptr noundef %i.bp, i8 noundef zeroext 1)
  br label %bb.ad

bb.y:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds i8, ptr %.3190, i64 -24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %.3190, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call fastcc ptr @create_syncrep_config(ptr noundef %i.bs, ptr noundef %i.bu, i8 noundef zeroext 0)
  br label %bb.ad

bb.z:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %.3190, align 8
  %i.bx = call ptr @list_make1_impl(i32 noundef 1, ptr %i.bw) #7
  br label %bb.ad

bb.aa:                                            ; preds = %bb.t
  %i.by = getelementptr inbounds i8, ptr %.3190, i64 -16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %.3190, align 8
  %i.cb = call ptr @lappend(ptr noundef %i.bz, ptr noundef %i.ca) #7
  br label %bb.ad

bb.ab:                                            ; preds = %bb.t
  %i.cc = load ptr, ptr %.3190, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t
  %i.cd = load ptr, ptr %.3190, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.t, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.038.0 = phi ptr [ %.sroa.038.0.copyload, %bb.t ], [ %.sroa.038.0.copyload, %bb.u ], [ %i.bg, %bb.v ], [ %i.bl, %bb.w ], [ %i.bq, %bb.x ], [ %i.bv, %bb.y ], [ %i.bx, %bb.z ], [ %i.cb, %bb.aa ], [ %i.cc, %bb.ab ], [ %i.cd, %bb.ac ]
  %i.ce = sub nsw i64 0, %i.bb                    ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.3190, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.3202, i64 %i.ce ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %.sroa.038.0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds i8, ptr @yyr1, i64 %i.ay
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = sext i8 %i.cj to i64
  %i.cl = add nsw i64 %i.ck, -11                  ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr @yypgoto, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = sext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cg, align 1             ; 2 uses
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, %i.co                ; 2 uses
  %or.cond5 = icmp ult i32 %i.cr, 23
  br i1 %or.cond5, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, %i.cp
  br i1 %i.cv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.cs
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cx = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.cl
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.in.in = phi ptr [ %i.cw, %bb.af ], [ %i.cx, %bb.ag ]
  %.in = load i8, ptr %.in.in, align 1
  br label %bb.b

.thread286.sink.split:                            ; preds = %bb.e, %bb.d, %bb.s
  %.str.1.sink = phi ptr [ @.str.1, %bb.s ], [ @.str.4, %bb.d ], [ @.str.4, %bb.e ]
  %.0185284.ph = phi i32 [ 1, %bb.s ], [ 2, %bb.d ], [ 2, %bb.e ]
  %.5212278.ph = phi ptr [ %.3210, %bb.s ], [ %.0207, %bb.d ], [ %.0207, %bb.e ]
  call void @syncrep_yyerror(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.str.1.sink) #7
  br label %.thread286

.thread286:                                       ; preds = %.thread263, %bb.h, %bb.m, %.thread286.sink.split
  %.0185284 = phi i32 [ %.0185284.ph, %.thread286.sink.split ], [ 1, %bb.h ], [ 1, %bb.m ], [ 0, %.thread263 ]
  %.5212278 = phi ptr [ %.5212278.ph, %.thread286.sink.split ], [ %i.n, %bb.h ], [ %.3210, %bb.m ], [ %.3210, %.thread263 ] ; 2 uses
  %.not245 = icmp eq ptr %.5212278, %i.a
  br i1 %.not245, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread286
  call void @pfree(ptr noundef %.5212278) #7
  br label %bb.aj

bb.aj:                                            ; preds = %.thread286, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0185284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @syncrep_yylex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @create_syncrep_config(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph50, label %.critedge

.lr.ph50:                                         ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.04048 = phi i32 [ 16, %.lr.ph50 ], [ %i.k, %bb.b ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #8
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %.04048, 1
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 16, %bb.a ], [ 16, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = sext i32 %.0.lcssa to i64
  %i.m = tail call ptr @palloc(i64 noundef %i.l) #7 ; 7 uses
  store i32 %.0.lcssa, ptr %i.m, align 4
  %i.n = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #7, !inline_history !4
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 %2, ptr %i.q, align 4
  br i1 %.not, label %.critedge38.critedge, label %list_length.exit

list_length.exit:                                 ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = icmp sgt i32 %i.s, 0
  br i1 %i.v, label %.lr.ph58.preheader, label %.critedge38

.lr.ph58.preheader:                               ; preds = %list_length.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv60 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next61, %.lr.ph58 ] ; 2 uses
  %.0315257 = phi ptr [ %i.w, %.lr.ph58.preheader ], [ %i.ad, %.lr.ph58 ] ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv60
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0315257, ptr noundef nonnull dereferenceable(1) %i.z) #7 ; 0 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #8
  %i.ac = getelementptr i8, ptr %.0315257, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.ae = load i32, ptr %i.r, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next61, %i.af
  br i1 %i.ag, label %.lr.ph58, label %.critedge38

.critedge38.critedge:                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.ah, align 4
  br label %.critedge38

.critedge38:                                      ; preds = %.lr.ph58, %list_length.exit, %.critedge38.critedge
  ret ptr %i.m
}

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @syncrep_yyerror(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{null}
end_hunk_0
