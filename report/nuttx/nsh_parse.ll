Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nsh_parse?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
begin_hunk_0

%struct.nsh_param_s = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nsh_memlist_s = type { i32, [16 x ptr] }
%struct.nsh_alist_s = type { i32, [1 x ptr] }

@g_nshgreeting = dso_local local_unnamed_addr constant [31 x i8] c"\0ANuttShell (NSH) NuttX-13.0.1\0A\00", align 16
@g_fmtsyntax = dso_local local_unnamed_addr constant [23 x i8] c"nsh: %s: syntax error\0A\00", align 16
@g_fmtargrequired = dso_local local_unnamed_addr constant [39 x i8] c"nsh: %s: missing required argument(s)\0A\00", align 16
@g_fmtnomatching = dso_local constant [25 x i8] c"nsh: %s: no matching %s\0A\00", align 16
@g_fmtarginvalid = dso_local constant [27 x i8] c"nsh: %s: argument invalid\0A\00", align 16
@g_fmtargrange = dso_local local_unnamed_addr constant [29 x i8] c"nsh: %s: value out of range\0A\00", align 16
@g_fmtcmdnotfound = dso_local local_unnamed_addr constant [28 x i8] c"nsh: %s: command not found\0A\00", align 16
@g_fmtnosuch = dso_local local_unnamed_addr constant [25 x i8] c"nsh: %s: no such %s: %s\0A\00", align 16
@g_fmttoomanyargs = dso_local constant [29 x i8] c"nsh: %s: too many arguments\0A\00", align 16
@g_fmtdeepnesting = dso_local constant [27 x i8] c"nsh: %s: nesting too deep\0A\00", align 16
@g_fmtcontext = dso_local constant [36 x i8] c"nsh: %s: not valid in this context\0A\00", align 16
@g_fmtcmdfailed = dso_local constant [24 x i8] c"nsh: %s: %s failed: %d\0A\00", align 16
@g_fmtcmdoutofmemory = dso_local constant [24 x i8] c"nsh: %s: out of memory\0A\00", align 16
@g_fmtinternalerror = dso_local constant [25 x i8] c"nsh: %s: Internal error\0A\00", align 16
@g_fmtsignalrecvd = dso_local local_unnamed_addr constant [32 x i8] c"nsh: %s: Interrupted by signal\0A\00", align 16
@g_line_separator = internal constant [6 x i8] c"\22'#;\0A\00", align 1
@g_token_separator = internal constant [4 x i8] c" \09\0A\00", align 1
@g_redirect_out2 = internal constant [3 x i8] c">>\00", align 1
@g_redirect_out1 = internal constant [2 x i8] c">\00", align 1
@g_redirect_in1 = internal constant [2 x i8] c"<\00", align 1
@g_redirect_err3 = internal constant [5 x i8] c"2>&1\00", align 1
@g_redirect_err2 = internal constant [4 x i8] c"2>>\00", align 1
@g_redirect_err1 = internal constant [3 x i8] c"2>\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@g_quote_separator = internal unnamed_addr constant [4 x i8] c"'\22`\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@g_arg_separator = internal constant [3 x i8] c"`$\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@g_nullstring = internal constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  %s=%s\0A\00", align 1
@g_exitstatus = internal constant [2 x i8] c"?\00", align 1
@g_failure = internal constant [2 x i8] c"1\00", align 1
@g_success = internal constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.13 = private constant [2 x i8] c"!\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"/nshlib/nsh_parse.c\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"strncmp(argv[0], sh_cmd, 3) != 0\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @nsh_parse(ptr noundef initializes((1248, 1251)) %0, ptr noundef %1) local_unnamed_addr #3 {
.lr.ph:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1250 ; 2 uses
  store i8 0, ptr %i.b, align 2
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1228
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.m
  %.04067 = phi ptr [ %1, %.lr.ph ], [ %.4, %bb.m ] ; 4 uses
  %.04266 = phi ptr [ %1, %.lr.ph ], [ %.143, %bb.m ] ; 5 uses
  %i.f = ptrtoint ptr %.04067 to i64
  %i.g = sub i64 %i.f, %i.c
  %i.h = trunc i64 %i.g to i16
  store i16 %i.h, ptr %i.d, align 8
  %i.i = tail call i64 @strcspn(ptr noundef %.04067, ptr noundef nonnull @g_line_separator) #22
  %i.j = getelementptr inbounds nuw i8, ptr %.04067, i64 %i.i ; 6 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  switch i8 %i.k, label %bb.e [
    i8 0, label %bb.b
    i8 10, label %bb.b
    i8 35, label %bb.b
    i8 59, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = tail call fastcc i32 @nsh_parse_command(ptr noundef nonnull %0, ptr noundef %.04266) #22
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store i8 0, ptr %i.j, align 1
  %i.n = tail call fastcc i32 @nsh_parse_command(ptr noundef nonnull %0, ptr noundef %.04266) #22
  %.not54 = icmp eq i32 %i.n, 0
  br i1 %.not54, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.e, align 4
  %i.p = and i8 %i.o, 1
  %.not55 = icmp eq i8 %i.p, 0
  br i1 %.not55, label %.critedge, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 2 uses
  %.not = icmp ult ptr %i.q, %.04266
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 92
  br i1 %i.s, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.04067, i64 1
  br label %bb.m

bb.h:                                             ; preds = %.preheader, %bb.k
  %.pn = phi ptr [ %.012.i, %bb.k ], [ %i.j, %.preheader ] ; 2 uses
  %.0.i = phi i1 [ %.1.i, %bb.k ], [ false, %.preheader ] ; 2 uses
  %.012.i = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.u = load i8, ptr %.012.i, align 1            ; 3 uses
  %i.v = icmp ne i8 %i.u, 92
  %or.cond.i = or i1 %.0.i, %i.v                  ; 2 uses
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = icmp ne i8 %i.k, %i.u
  %or.cond3.i = or i1 %.0.i, %i.w
  br i1 %or.cond3.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = icmp eq i8 %i.u, 0
  br i1 %i.x, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1.i = xor i1 %or.cond.i, true
  br label %bb.h

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.y = load i8, ptr %i.j, align 1
  store i8 %i.y, ptr %i.a, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 (ptr, ptr, ...) %i.ab(ptr noundef %0, ptr noundef nonnull @g_fmtnomatching, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.c, %bb.d
  %.143 = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.04266, %bb.g ], [ %.04266, %bb.l ]
  %.4 = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.t, %bb.g ], [ %i.ad, %bb.l ]
  %i.ae = load i8, ptr %i.b, align 2, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.critedge, label %bb.a, !llvm.loop !10

.critedge:                                        ; preds = %bb.d, %bb.m, %.thread, %bb.b
  %.5 = phi i32 [ %i.l, %bb.b ], [ -1, %.thread ], [ -1, %bb.d ], [ 0, %bb.m ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strcspn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @nsh_parse_command(ptr noundef initializes((1184, 1188)) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.nsh_param_s, align 8        ; 15 uses
  %3 = alloca %struct.nsh_memlist_s, align 8      ; 23 uses
  %4 = alloca %struct.nsh_alist_s, align 8        ; 17 uses
  %i.b = alloca [12 x ptr], align 16              ; 12 uses
  %i.c = alloca ptr, align 8                      ; 21 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store <2 x i32> splat (i32 -1), ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 -1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1185 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1186 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1187 ; 8 uses
  store i32 0, ptr %i.g, align 8
  store ptr %1, ptr %i.c, align 8
  %i.k = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 10 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread242, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.7) #22
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %i.n = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.8) #22
  %i.o = icmp eq i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.p = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 (ptr, ptr, ...) %i.u(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.mask.i = and i8 %i.ab, -64
  %i.ac = icmp eq i8 %.mask.i, 64
  br i1 %i.ac, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1251 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = lshr i8 %i.ai, 6
  %.off.i = add nsw i8 %i.aj, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call i32 (ptr, ptr, ...) %i.ar(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.at = icmp ugt i8 %i.af, 1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 (ptr, ptr, ...) %i.av(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtdeepnesting, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.ax = select i1 %i.m, i8 64, i8 -128
  %i.ay = call fastcc zeroext i1 @nsh_cmdenabled(ptr noundef nonnull %0) #22
  %i.az = zext i1 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = zext i16 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.ao, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1250
  store i8 0, ptr %i.be, align 2
  %i.bf = add nuw nsw i8 %i.af, 1                 ; 2 uses
  store i8 %i.bf, ptr %i.ae, align 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bg ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, 62
  %i.bk = or disjoint i8 %i.ax, %i.az
  %i.bl = or disjoint i8 %i.bk, %i.bj
  store i8 %i.bl, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.y, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bd, ptr %i.bn, align 8
  br label %.thread233

bb.n:                                             ; preds = %bb.b
  %i.bo = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.9) #22
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1251
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.bx = lshr i8 %i.bw, 6
  %.off119.i = add nsw i8 %i.bx, -1
  %switch120.i = icmp ult i8 %.off119.i, 2
  br i1 %switch120.i, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 (ptr, ptr, ...) %i.bz(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.9) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.q:                                             ; preds = %bb.n
  %i.cb = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.10) #22
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.cd = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %.not114.i = icmp eq ptr %i.cd, null
  br i1 %.not114.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 (ptr, ptr, ...) %i.cf(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.t:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1251 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1             ; 3 uses
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ck ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 8             ; 3 uses
  %.not115.i = icmp ugt i8 %i.cm, -65
  br i1 %.not115.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 (ptr, ptr, ...) %i.co(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.cq = icmp eq i8 %i.cj, 0
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call i32 (ptr, ptr, ...) %i.cs(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtinternalerror, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.cu = and i8 %i.cm, 1
  %.not116.i = icmp eq i8 %i.cu, 0
  br i1 %.not116.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = trunc i64 %i.cy to i32
  %i.da = call i32 @lseek(i32 noundef %i.cw, i32 noundef %i.cz, i32 noundef 0) #24
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@nsh_parse_command:bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1             ; 2 uses
  %.mask106.i = and i8 %i.gf, -64
  %.not105.i = icmp eq i8 %.mask106.i, 64
  br i1 %.not105.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call i32 (ptr, ptr, ...) %i.gh(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.14) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.aw:                                            ; preds = %bb.au
  %i.gj = and i8 %i.gf, 63
  %i.gk = or disjoint i8 %i.gj, -128
  store i8 %i.gk, ptr %i.ge, align 1
  br label %bb.bm

bb.ax:                                            ; preds = %bb.at
  %i.gl = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.15) #22
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.gn = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.gq = load i8, ptr %i.gp, align 4
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1             ; 2 uses
  %.not103.i = icmp slt i8 %i.gt, -64
  br i1 %.not103.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call i32 (ptr, ptr, ...) %i.gv(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.15) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.ba:                                            ; preds = %bb.ay
  %i.gx = or i8 %i.gt, -64
  store i8 %i.gx, ptr %i.gs, align 1
  br label %bb.bm

bb.bb:                                            ; preds = %bb.ax
  %i.gy = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.16) #22
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ha = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %.not100.i = icmp eq ptr %i.ha, null
  br i1 %.not100.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call i32 (ptr, ptr, ...) %i.hc(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.16) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1252 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 4             ; 3 uses
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %switch.not.i = icmp sgt i8 %i.hj, -1
  br i1 %switch.not.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call i32 (ptr, ptr, ...) %i.hl(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.16) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.hn = icmp eq i8 %i.hg, 0
  br i1 %i.hn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call i32 (ptr, ptr, ...) %i.hp(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtinternalerror, ptr noundef nonnull @.str.12) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.hr = add i8 %i.hg, -1
  store i8 %i.hr, ptr %i.hf, align 4
  br label %.thread242

bb.bj:                                            ; preds = %bb.bb
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.hu = load i8, ptr %i.ht, align 4
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1
  %.mask.i201 = and i8 %i.hx, -64
  %i.hy = icmp eq i8 %.mask.i201, 64
  br i1 %i.hy, label %bb.bk, label %.thread247

bb.bk:                                            ; preds = %bb.bj
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call i32 (ptr, ptr, ...) %i.ia(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull %.1220.ph236) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh, %bb.bf, %bb.bd, %bb.az, %bb.av, %bb.ar, %bb.ap, %bb.an, %bb.aj
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1252
  store i8 0, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1253 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = and i8 %i.ie, 56
  store i8 %i.if, ptr %i.id, align 1
  %i.ig = call fastcc i32 @nsh_saveresult(ptr noundef nonnull %0, i1 noundef zeroext true) #22
  br label %.thread256

.thread242:                                       ; preds = %bb.bi, %bb.ag, %bb.ac, %bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i32 0, ptr %i.ih, align 8
  br label %.thread256

.thread247:                                       ; preds = %bb.bj, %bb.as
  %.4223.ph.ph246 = phi ptr [ %.3222, %bb.as ], [ %.1220.ph236, %bb.bj ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  store i32 0, ptr %i.ii, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ba, %bb.aw
  %.4223.ph = phi ptr [ %i.fz, %bb.aw ], [ %i.gn, %bb.ba ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  store i32 0, ptr %i.ij, align 8
  %.not.i202 = icmp eq ptr %.4223.ph, null
  br i1 %.not.i202, label %.thread256, label %bb.bn

bb.bn:                                            ; preds = %.thread247, %bb.bm
  %i.ik = phi ptr [ %i.ii, %.thread247 ], [ %i.ij, %bb.bm ] ; 2 uses
  %.4223.ph250 = phi ptr [ %.4223.ph.ph246, %.thread247 ], [ %.4223.ph, %bb.bm ] ; 2 uses
  %i.il = call i32 @strcmp(ptr noundef nonnull %.4223.ph250, ptr noundef nonnull @.str.17) #22
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.bo, label %.thread260

bb.bo:                                            ; preds = %bb.bn
  store i32 10, ptr %i.ik, align 8
  %i.in = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 4 uses
  %.not44.i = icmp eq ptr %i.in, null
  br i1 %.not44.i, label %.thread256, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.io = call i32 @strcmp(ptr noundef nonnull %i.in, ptr noundef nonnull @.str.18) #22
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.bq, label %.thread260

bb.bq:                                            ; preds = %bb.bp
  %i.iq = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 3 uses
  %.not45.i = icmp eq ptr %i.iq, null
  br i1 %.not45.i, label %.thread260, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ir = call i64 @strtol(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.a, i32 noundef 0) #22
  %i.is = trunc i64 %i.ir to i32                  ; 2 uses
  store i32 %i.is, ptr %i.ik, align 8
  %i.it = add i32 %i.is, -20
  %or.cond.i203 = icmp ult i32 %i.it, -40
  br i1 %or.cond.i203, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.iq
  br i1 %i.iv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iw = load i8, ptr %i.iu, align 1
  %.not46.i = icmp eq i8 %i.iw, 0
  br i1 %.not46.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call i32 (ptr, ptr, ...) %i.iy(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.17) #24, !inline_history !13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ja = call fastcc i32 @nsh_saveresult(ptr noundef nonnull %0, i1 noundef zeroext true) #22
  br label %.thread256

bb.bv:                                            ; preds = %bb.bt
  %i.jb = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not174 = icmp eq ptr %i.jb, null
  br i1 %.not174, label %.thread256, label %.thread260

.thread260:                                       ; preds = %bb.bn, %bb.bp, %bb.bq, %bb.bv
  %.5224.ph263 = phi ptr [ %i.jb, %bb.bv ], [ %.4223.ph250, %bb.bn ], [ %i.in, %bb.bp ], [ %i.in, %bb.bq ] ; 3 uses
  %i.jc = call fastcc zeroext i1 @nsh_cmdenabled(ptr noundef nonnull %0) #22
  br i1 %i.jc, label %bb.bw, label %.thread256

bb.bw:                                            ; preds = %.thread260
  store ptr %.5224.ph263, ptr %i.b, align 16
  %.promoted = load i32, ptr %i.f, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.promoted388 = load i32, ptr %i.jd, align 4
  %.promoted396 = load ptr, ptr %i.je, align 8
  %.promoted404 = load i32, ptr %i.jf, align 4
  %.promoted412 = load ptr, ptr %i.jg, align 8
  %.promoted420 = load i32, ptr %i.jh, align 8
  %.promoted428 = load ptr, ptr %i.ji, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.cv
  %5 = phi ptr [ %.promoted428, %bb.bw ], [ %11, %bb.cv ] ; 7 uses
  %6 = phi i32 [ %.promoted420, %bb.bw ], [ %12, %bb.cv ] ; 7 uses
  %7 = phi ptr [ %.promoted412, %bb.bw ], [ %13, %bb.cv ] ; 8 uses
  %8 = phi i32 [ %.promoted404, %bb.bw ], [ %14, %bb.cv ] ; 8 uses
  %9 = phi ptr [ %.promoted396, %bb.bw ], [ %15, %bb.cv ] ; 7 uses
  %10 = phi i32 [ %.promoted388, %bb.bw ], [ %16, %bb.cv ] ; 7 uses
  %.0131381 = phi i8 [ 0, %bb.bw ], [ %.4135, %bb.cv ] ; 7 uses
  %.0138380 = phi i8 [ 0, %bb.bw ], [ %.3141, %bb.cv ] ; 9 uses
  %.0144379 = phi i8 [ 0, %bb.bw ], [ %.4148, %bb.cv ] ; 8 uses
  %.0158384 = phi i32 [ 1, %bb.bw ], [ %.5163, %bb.cv ] ; 5 uses
  %.0158378 = phi i32 [ %.promoted, %bb.bw ], [ %17, %bb.cv ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4
  %i.jj = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 4 uses
  %i.jk = sext i32 %.0158384 to i64               ; 4 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jk
  store ptr %i.jj, ptr %i.jl, align 8
  %.not175 = icmp eq ptr %i.jj, null
  br i1 %.not175, label %bb.cw, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jm = load i32, ptr %i.d, align 4
  %.not176 = icmp eq i32 %i.jm, 0
  br i1 %.not176, label %.thread265, label %.preheader

.preheader:                                       ; preds = %bb.by, %bb.cd
  %i.jn = phi ptr [ %.1, %bb.cd ], [ %i.jj, %bb.by ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ %i.jk, %bb.by ] ; 6 uses
  %i.jo = load i8, ptr %i.jn, align 1             ; 2 uses
  %.not177374 = icmp eq i8 %i.jo, 0
  br i1 %.not177374, label %.thread265.loopexit382.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.bz
  %i.jp = phi i8 [ %i.jt, %bb.bz ], [ %i.jo, %.preheader ]
  %.0128375 = phi ptr [ %i.js, %bb.bz ], [ %i.jn, %.preheader ] ; 4 uses
  %i.jq = sext i8 %i.jp to i32
  %i.jr = call ptr @strchr(ptr noundef nonnull @g_token_separator, i32 noundef range(i32 -128, 128) %i.jq) #22
  %.not178 = icmp eq ptr %i.jr, null
  br i1 %.not178, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %.lr.ph
  %i.js = getelementptr inbounds nuw i8, ptr %.0128375, i64 1 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1             ; 2 uses
  %.not177 = icmp eq i8 %i.jt, 0
  br i1 %.not177, label %.thread265.loopexit, label %.lr.ph, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph
  %.pr = load i8, ptr %.0128375, align 1
  %i.ju = icmp eq i8 %.pr, 0
  br i1 %i.ju, label %.thread265.loopexit382.split.loop.exit489, label %bb.ca

bb.ca:                                            ; preds = %.critedge
  store i8 0, ptr %.0128375, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %.0128.pn = phi ptr [ %.0128375, %bb.ca ], [ %.1, %bb.cc ]
  %.1 = getelementptr inbounds nuw i8, ptr %.0128.pn, i64 1 ; 4 uses
  %i.jv = load i8, ptr %.1, align 1               ; 2 uses
  %.not179 = icmp eq i8 %i.jv, 0
  br i1 %.not179, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jw = sext i8 %i.jv to i32
  %i.jx = call ptr @strchr(ptr noundef nonnull @g_token_separator, i32 noundef range(i32 -128, 128) %i.jw) #22
  %.not180 = icmp eq ptr %i.jx, null
  br i1 %.not180, label %bb.cd, label %bb.cb, !llvm.loop !15

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1, ptr %i.jy, align 8
  %exitcond.not = icmp eq i64 %indvars.iv, 10
  br i1 %exitcond.not, label %.thread265.loopexit382, label %.preheader

.thread265.loopexit382.split.loop.exit:           ; preds = %.preheader
  %i.jz = trunc nsw i64 %indvars.iv to i32
  br label %.thread265.loopexit382

.thread265.loopexit382.split.loop.exit489:        ; preds = %.critedge
  %i.ka = trunc nsw i64 %indvars.iv to i32
  br label %.thread265.loopexit382

.thread265.loopexit382:                           ; preds = %bb.cd, %.thread265.loopexit382.split.loop.exit489, %.thread265.loopexit382.split.loop.exit
  %.3161.ph = phi i32 [ %i.ka, %.thread265.loopexit382.split.loop.exit489 ], [ %i.jz, %.thread265.loopexit382.split.loop.exit ], [ 11, %bb.cd ] ; 2 uses
  %.phi.trans.insert = sext i32 %.3161.ph to i64  ; 2 uses
  %.phi.trans.insert416 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert416, align 8
  br label %.thread265

.thread265.loopexit:                              ; preds = %bb.bz
  %i.kb = trunc nsw i64 %indvars.iv to i32
  br label %.thread265

.thread265:                                       ; preds = %.thread265.loopexit, %.thread265.loopexit382, %bb.by
  %.pre-phi = phi i64 [ %.phi.trans.insert, %.thread265.loopexit382 ], [ %i.jk, %bb.by ], [ %indvars.iv, %.thread265.loopexit ]
  %i.kc = phi ptr [ %.pre, %.thread265.loopexit382 ], [ %i.jj, %bb.by ], [ %i.jn, %.thread265.loopexit ]
  %.3161 = phi i32 [ %.3161.ph, %.thread265.loopexit382 ], [ %.0158384, %bb.by ], [ %i.kb, %.thread265.loopexit ] ; 7 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre-phi
  %i.ke = call i32 @strncmp(ptr noundef %i.kc, ptr noundef nonnull @g_redirect_out2, i64 noundef 2) #22
  %.not181 = icmp eq i32 %i.ke, 0
  %i.kf = load ptr, ptr %i.kd, align 8            ; 10 uses
  br i1 %.not181, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %.thread265
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1
  %.not182 = icmp eq i8 %i.kh, 0
  br i1 %.not182, label %bb.cf, label %.thread270

bb.cf:                                            ; preds = %bb.ce
  %i.ki = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not183.not = icmp eq ptr %i.ki, null
  br i1 %.not183.not, label %.thread321, label %.thread270

.thread270:                                       ; preds = %bb.ce, %bb.cf
  %.0127273 = phi ptr [ %i.ki, %bb.cf ], [ %i.kg, %bb.ce ]
  %i.kj = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.h, align 1
  %i.kk = call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef nonnull %.0127273) #24
  br label %bb.cv

bb.cg:                                            ; preds = %.thread265
  %i.kl = call i32 @strncmp(ptr noundef %i.kf, ptr noundef nonnull @g_redirect_out1, i64 noundef 1) #22
  %.not184 = icmp eq i32 %i.kl, 0
  br i1 %.not184, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1
  %.not185 = icmp eq i8 %i.kn, 0
  br i1 %.not185, label %bb.ci, label %.thread280

bb.ci:                                            ; preds = %bb.ch
  %i.ko = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not186.not = icmp eq ptr %i.ko, null
  br i1 %.not186.not, label %.thread321, label %.thread280

.thread280:                                       ; preds = %bb.ch, %bb.ci
  %.0126283 = phi ptr [ %i.ko, %bb.ci ], [ %i.km, %bb.ch ]
  %i.kp = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.h, align 1
  %i.kq = call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef nonnull %.0126283) #24
  br label %bb.cv

bb.cj:                                            ; preds = %bb.cg
  %i.kr = call i32 @strncmp(ptr noundef %i.kf, ptr noundef nonnull @g_redirect_in1, i64 noundef 1) #22
  %.not187 = icmp eq i32 %i.kr, 0
  br i1 %.not187, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1
  %.not188 = icmp eq i8 %i.kt, 0
  br i1 %.not188, label %bb.cl, label %.thread290

bb.cl:                                            ; preds = %bb.ck
  %i.ku = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not189.not = icmp eq ptr %i.ku, null
  br i1 %.not189.not, label %.thread321, label %.thread290

.thread290:                                       ; preds = %bb.ck, %bb.cl
  %.0125293 = phi ptr [ %i.ku, %bb.cl ], [ %i.ks, %bb.ck ]
  %i.kv = load i8, ptr %i.i, align 2, !range !7, !noundef !8
  store i8 1, ptr %i.i, align 2
  %i.kw = call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef nonnull %.0125293) #24
  br label %bb.cv

bb.cm:                                            ; preds = %bb.cj
  %i.kx = call i32 @strncmp(ptr noundef %i.kf, ptr noundef nonnull @g_redirect_err3, i64 noundef 4) #22
  %.not190 = icmp eq i32 %i.kx, 0
  br i1 %.not190, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ky = load i8, ptr %i.j, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.j, align 1
  br label %bb.cv

bb.co:                                            ; preds = %bb.cm
  %i.kz = call i32 @strncmp(ptr noundef %i.kf, ptr noundef nonnull @g_redirect_err2, i64 noundef 3) #22
  %.not191 = icmp eq i32 %i.kz, 0
  br i1 %.not191, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.la = getelementptr inbounds nuw i8, ptr %i.kf, i64 3 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1
  %.not192 = icmp eq i8 %i.lb, 0
  br i1 %.not192, label %bb.cq, label %.thread300

bb.cq:                                            ; preds = %bb.cp
  %i.lc = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not193.not = icmp eq ptr %i.lc, null
  br i1 %.not193.not, label %.thread321, label %.thread300

.thread300:                                       ; preds = %bb.cp, %bb.cq
  %.0124303 = phi ptr [ %i.lc, %bb.cq ], [ %i.la, %bb.cp ]
  %i.ld = load i8, ptr %i.j, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.j, align 1
  %i.le = call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef nonnull %.0124303) #24
  br label %bb.cv

bb.cr:                                            ; preds = %bb.co
  %i.lf = call i32 @strncmp(ptr noundef %i.kf, ptr noundef nonnull @g_redirect_err1, i64 noundef 2) #22
  %.not194 = icmp eq i32 %i.lf, 0
  br i1 %.not194, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1
  %.not195 = icmp eq i8 %i.lh, 0
  br i1 %.not195, label %bb.ct, label %.thread310

bb.ct:                                            ; preds = %bb.cs
  %i.li = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not196.not = icmp eq ptr %i.li, null
  br i1 %.not196.not, label %.thread321, label %.thread310

.thread310:                                       ; preds = %bb.cs, %bb.ct
  %.0313 = phi ptr [ %i.li, %bb.ct ], [ %i.lg, %bb.cs ]
  %i.lj = load i8, ptr %i.j, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.j, align 1
  %i.lk = call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef nonnull %.0313) #24
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  %i.ll = add nsw i32 %.3161, 1
  br label %bb.cv

.thread321:                                       ; preds = %bb.ct, %bb.cq, %bb.cl, %bb.ci, %bb.cf
  store i32 %10, ptr %i.jd, align 4
  store ptr %9, ptr %i.je, align 8
  store i32 %8, ptr %i.jf, align 4
  store ptr %7, ptr %i.jg, align 8
  store i32 %6, ptr %i.jh, align 8
  store ptr %5, ptr %i.ji, align 8
  store i32 %.0158378, ptr %i.f, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call i32 (ptr, ptr, ...) %i.ln(ptr noundef %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull %.5224.ph263) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %.thread256

bb.cv:                                            ; preds = %bb.cu, %bb.cn, %.thread270, %.thread280, %.thread290, %.thread300, %.thread310
  %11 = phi ptr [ %5, %.thread310 ], [ %5, %.thread300 ], [ %5, %bb.cn ], [ %5, %.thread290 ], [ %i.kq, %.thread280 ], [ %i.kk, %.thread270 ], [ %5, %bb.cu ] ; 2 uses
  %12 = phi i32 [ %6, %.thread310 ], [ %6, %.thread300 ], [ %6, %bb.cn ], [ %6, %.thread290 ], [ 577, %.thread280 ], [ 1089, %.thread270 ], [ %6, %bb.cu ] ; 2 uses
  %13 = phi ptr [ %7, %.thread310 ], [ %7, %.thread300 ], [ %7, %bb.cn ], [ %i.kw, %.thread290 ], [ %7, %.thread280 ], [ %7, %.thread270 ], [ %7, %bb.cu ] ; 2 uses
  %14 = phi i32 [ %8, %.thread310 ], [ %8, %.thread300 ], [ %8, %bb.cn ], [ 0, %.thread290 ], [ %8, %.thread280 ], [ %8, %.thread270 ], [ %8, %bb.cu ] ; 2 uses
  %15 = phi ptr [ %i.lk, %.thread310 ], [ %i.le, %.thread300 ], [ %9, %bb.cn ], [ %9, %.thread290 ], [ %9, %.thread280 ], [ %9, %.thread270 ], [ %9, %bb.cu ] ; 2 uses
  %16 = phi i32 [ 577, %.thread310 ], [ 1089, %.thread300 ], [ %10, %bb.cn ], [ %10, %.thread290 ], [ %10, %.thread280 ], [ %10, %.thread270 ], [ %10, %bb.cu ] ; 2 uses
  %17 = phi i32 [ %.0158378, %.thread310 ], [ %.0158378, %.thread300 ], [ 1, %bb.cn ], [ %.0158378, %.thread290 ], [ %.0158378, %.thread280 ], [ %.0158378, %.thread270 ], [ %.0158378, %bb.cu ] ; 2 uses
  %.5163 = phi i32 [ %.3161, %.thread310 ], [ %.3161, %.thread300 ], [ %.3161, %bb.cn ], [ %.3161, %.thread290 ], [ %.3161, %.thread280 ], [ %.3161, %.thread270 ], [ %i.ll, %bb.cu ] ; 3 uses
  %.4148 = phi i8 [ %.0144379, %.thread310 ], [ %.0144379, %.thread300 ], [ %.0144379, %bb.cn ], [ %.0144379, %.thread290 ], [ %i.kp, %.thread280 ], [ %i.kj, %.thread270 ], [ %.0144379, %bb.cu ] ; 2 uses
  %.3141 = phi i8 [ %.0138380, %.thread310 ], [ %.0138380, %.thread300 ], [ %.0138380, %bb.cn ], [ %i.kv, %.thread290 ], [ %.0138380, %.thread280 ], [ %.0138380, %.thread270 ], [ %.0138380, %bb.cu ] ; 2 uses
  %.4135 = phi i8 [ %i.lj, %.thread310 ], [ %i.ld, %.thread300 ], [ %i.ky, %bb.cn ], [ %.0131381, %.thread290 ], [ %.0131381, %.thread280 ], [ %.0131381, %.thread270 ], [ %.0131381, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.lp = icmp slt i32 %.5163, 11
  br i1 %i.lp, label %bb.bx, label %.thread333.loopexit

bb.cw:                                            ; preds = %bb.bx
  store i32 %10, ptr %i.jd, align 4
  store ptr %9, ptr %i.je, align 8
  store i32 %8, ptr %i.jf, align 4
  store ptr %7, ptr %i.jg, align 8
  store i32 %6, ptr %i.jh, align 8
  store ptr %5, ptr %i.ji, align 8
  store i32 %.0158378, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.lq = icmp sgt i32 %.0158384, 1
  br i1 %i.lq, label %.thread333, label %.thread334

.thread334:                                       ; preds = %bb.cw
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jk
  store ptr null, ptr %i.lr, align 8
  br label %bb.da

.thread333.loopexit:                              ; preds = %bb.cv
  store i32 %16, ptr %i.jd, align 4
  store ptr %15, ptr %i.je, align 8
  store i32 %14, ptr %i.jf, align 4
  store ptr %13, ptr %i.jg, align 8
  store i32 %12, ptr %i.jh, align 8
  store ptr %11, ptr %i.ji, align 8
  store i32 %17, ptr %i.f, align 8
  br label %.thread333

.thread333:                                       ; preds = %.thread333.loopexit, %bb.cw
  %.0158373 = phi i32 [ %.5163, %.thread333.loopexit ], [ %.0158384, %bb.cw ] ; 3 uses
  %.0144366 = phi i8 [ %.4148, %.thread333.loopexit ], [ %.0144379, %bb.cw ] ; 2 uses
  %.0138357 = phi i8 [ %.3141, %.thread333.loopexit ], [ %.0138380, %bb.cw ] ; 2 uses
  %.0131348 = phi i8 [ %.4135, %.thread333.loopexit ], [ %.0131381, %bb.cw ] ; 2 uses
  %i.ls = zext nneg i32 %.0158373 to i64          ; 2 uses
  %i.lt = getelementptr [8 x i8], ptr %i.b, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 -8
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = call i32 @strcmp(ptr noundef %i.lv, ptr noundef nonnull @.str) #22
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.thread333
  store i8 1, ptr %i.g, align 8
  %i.ly = add nsw i32 %.0158373, -1               ; 2 uses
  %.pre418 = zext nneg i32 %i.ly to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.thread333
  %.pre-phi419 = phi i64 [ %.pre418, %bb.cx ], [ %i.ls, %.thread333 ]
  %.7165 = phi i32 [ %i.ly, %bb.cx ], [ %.0158373, %.thread333 ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.pre-phi419
  store ptr null, ptr %i.lz, align 8
  %i.ma = icmp samesign ugt i32 %.7165, 7
  br i1 %i.ma, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = call i32 (ptr, ptr, ...) %i.mc(ptr noundef %0, ptr noundef nonnull @g_fmttoomanyargs, ptr noundef nonnull %.5224.ph263) #24 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %.thread334, %bb.cz, %bb.cy
  %.0144365 = phi i8 [ %.0144379, %.thread334 ], [ %.0144366, %bb.cz ], [ %.0144366, %bb.cy ]
  %.0138356 = phi i8 [ %.0138380, %.thread334 ], [ %.0138357, %bb.cz ], [ %.0138357, %bb.cy ]
  %.0131347 = phi i8 [ %.0131381, %.thread334 ], [ %.0131348, %bb.cz ], [ %.0131348, %bb.cy ]
  %.7165336 = phi i32 [ %.0158384, %.thread334 ], [ %.7165, %bb.cz ], [ %.7165, %bb.cy ]
  %i.me = call fastcc i32 @nsh_execute(ptr noundef %0, i32 noundef %.7165336, ptr noundef %i.b, ptr noundef %2) #22
  br label %.thread256

.thread256:                                       ; preds = %bb.bm, %.thread242, %bb.bo, %.thread321, %bb.bv, %.thread260, %bb.da, %bb.bu, %bb.bl, %bb.af
  %.8 = phi i32 [ %i.ef, %bb.af ], [ %i.ig, %bb.bl ], [ %i.ja, %bb.bu ], [ %i.me, %bb.da ], [ -1, %.thread321 ], [ 0, %.thread260 ], [ 0, %bb.bv ], [ 0, %bb.bo ], [ 0, %.thread242 ], [ 0, %bb.bm ]
  %.6150 = phi i8 [ 0, %bb.af ], [ 0, %bb.bl ], [ 0, %bb.bu ], [ %.0144365, %bb.da ], [ %.0144379, %.thread321 ], [ 0, %.thread260 ], [ 0, %bb.bv ], [ 0, %bb.bo ], [ 0, %.thread242 ], [ 0, %bb.bm ]
  %.5143 = phi i8 [ 0, %bb.af ], [ 0, %bb.bl ], [ 0, %bb.bu ], [ %.0138356, %bb.da ], [ %.0138380, %.thread321 ], [ 0, %.thread260 ], [ 0, %bb.bv ], [ 0, %bb.bo ], [ 0, %.thread242 ], [ 0, %bb.bm ]
  %.6137 = phi i8 [ 0, %bb.af ], [ 0, %bb.bl ], [ 0, %bb.bu ], [ %.0131347, %bb.da ], [ %.0131381, %.thread321 ], [ 0, %.thread260 ], [ 0, %bb.bv ], [ 0, %bb.bo ], [ 0, %.thread242 ], [ 0, %bb.bm ]
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %.not197 = icmp eq ptr %i.mg, null
  br i1 %.not197, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.thread256
  call void @nsh_freefullpath(ptr noundef nonnull %i.mg) #24
  store i8 %.6150, ptr %i.h, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.thread256
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8            ; 2 uses
  %.not198 = icmp eq ptr %i.mi, null
  br i1 %.not198, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @nsh_freefullpath(ptr noundef nonnull %i.mi) #24
  store i8 %.5143, ptr %i.i, align 2
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8            ; 2 uses
  %.not199 = icmp eq ptr %i.mk, null
  br i1 %.not199, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @nsh_freefullpath(ptr noundef nonnull %i.mk) #24
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ml = load i8, ptr %i.j, align 1, !range !7, !noundef !8
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.dh, label %.preheader.i

bb.dh:                                            ; preds = %bb.dg
  store i8 %.6137, ptr %i.j, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.dg, %bb.dh
  %i.mn = load i32, ptr %4, align 8               ; 2 uses
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph.i, label %nsh_alist_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mq = zext nneg i32 %i.mn to i64
  br label %bb.di

bb.di:                                            ; preds = %bb.dk, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.dk ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.i ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8            ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 8             ; 2 uses
  %i.mv = and i8 %i.mu, -2
  store i8 %i.mv, ptr %i.mt, align 8
  %i.mw = and i8 %i.mu, 2
  %.not16.i = icmp eq i8 %i.mw, 0
  br i1 %.not16.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @nsh_aliasfree(ptr noundef nonnull %0, ptr noundef nonnull %i.ms) #24
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  store ptr null, ptr %i.mr, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next.i, %i.mq
  br i1 %exitcond414.not, label %nsh_alist_free.exit, label %bb.di, !llvm.loop !16

nsh_alist_free.exit:                              ; preds = %bb.dk, %.preheader.i
  %i.mx = load i32, ptr %3, align 8               ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph.i206, label %nsh_memlist_free.exit

.lr.ph.i206:                                      ; preds = %nsh_alist_free.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.na = zext nneg i32 %i.mx to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph.i206
  %indvars.iv.i207 = phi i64 [ 0, %.lr.ph.i206 ], [ %indvars.iv.next.i208, %bb.dl ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv.i207 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8
  call void @free(ptr noundef %i.nc) #22
  store ptr null, ptr %i.nb, align 8
  %indvars.iv.next.i208 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next.i208, %i.na
  br i1 %exitcond415.not, label %nsh_memlist_free.exit, label %bb.dl, !llvm.loop !17

nsh_memlist_free.exit:                            ; preds = %bb.dl, %nsh_alist_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @cmd_break(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1251
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = icmp ugt i8 %i.f, -65
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1252
  store i8 %i.i, ptr %i.j, align 4
  %i.k = and i8 %i.f, -2
  store i8 %i.k, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc ptr @nsh_argument(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %.not171 = icmp eq i8 %i.c, 0
  br i1 %.not171, label %nsh_memlist_add.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %.076172 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 12 uses
  %i.e = sext i8 %i.d to i32
  %i.f = tail call ptr @strchr(ptr noundef nonnull @g_token_separator, i32 noundef range(i32 -128, 128) %i.e) #22
  %.not92 = icmp eq ptr %i.f, null
  br i1 %.not92, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.076172, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %nsh_memlist_add.exit, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %.lr.ph
  %.pr = load i8, ptr %.076172, align 1           ; 2 uses
  switch i8 %.pr, label %bb.c [
    i8 0, label %nsh_memlist_add.exit
    i8 62, label %thread-pre-split
  ]

thread-pre-split:                                 ; preds = %.critedge
  %i.i = getelementptr inbounds nuw i8, ptr %.076172, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 62
  %i.l = getelementptr inbounds nuw i8, ptr %.076172, i64 2
  %storemerge = select i1 %i.k, ptr %i.l, ptr %i.i
  store ptr %storemerge, ptr %1, align 8
  %.pr124 = load i8, ptr %.076172, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %.critedge
  %i.m = phi i8 [ %.pr124, %thread-pre-split ], [ %.pr, %.critedge ] ; 2 uses
  switch i8 %i.m, label %.lr.ph180 [
    i8 60, label %bb.d
    i8 35, label %bb.e
    i8 0, label %nsh_strchr.exit114.thread136
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.076172, i64 1
  store ptr %i.n, ptr %1, align 8
  br label %nsh_memlist_add.exit

bb.e:                                             ; preds = %bb.c
  store ptr %.076172, ptr %1, align 8
  br label %nsh_memlist_add.exit

.lr.ph180:                                        ; preds = %bb.c, %.thread
  %i.o = phi i8 [ %i.as, %.thread ], [ %i.m, %bb.c ] ; 7 uses
  %.064179 = phi i1 [ %.1, %.thread ], [ false, %bb.c ] ; 2 uses
  %.065178 = phi i1 [ %.3, %.thread ], [ false, %bb.c ] ; 5 uses
  %.068177 = phi i1 [ %.169, %.thread ], [ false, %bb.c ]
  %.070176 = phi ptr [ %.375, %.thread ], [ null, %bb.c ] ; 2 uses
end_hunk_1
