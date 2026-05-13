inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0
@.str.112 = private unnamed_addr constant [5 x i8] c"clam\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"-p-\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@__const.scancompressed.args.117 = private unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr null, ptr null], align 16
@__const.scancompressed.args.118 = private unnamed_addr constant [5 x ptr] [ptr @.str.2, ptr @.str.114, ptr @.str.116, ptr null, ptr null], align 16
@.str.119 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@__const.scancompressed.args.122 = private unnamed_addr constant [6 x ptr] [ptr @.str.3, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr null, ptr null], align 16
@__const.scancompressed.args.123 = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr null, ptr null], align 16
@.str.124 = private unnamed_addr constant [3 x i8] c"xf\00", align 1
@__const.scancompressed.args.125 = private unnamed_addr constant [4 x ptr] [ptr @.str.5, ptr @.str.124, ptr null, ptr null], align 16
@.str.126 = private unnamed_addr constant [6 x i8] c"-xpvf\00", align 1
@__const.scancompressed.args.127 = private unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.126, ptr null, ptr null], align 16
@.str.128 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@__const.scancompressed.args.129 = private unnamed_addr constant [4 x ptr] [ptr @.str.128, ptr @.str.114, ptr null, ptr null], align 16
@.str.130 = private unnamed_addr constant [7 x i8] c"-zxpvf\00", align 1
@__const.scancompressed.args.131 = private unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.130, ptr null, ptr null], align 16
@recursion = external local_unnamed_addr global i16, align 2
@.str.132 = private unnamed_addr constant [12 x i8] c"leave-temps\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"!Can't fork()\0A\00", align 1
@.str.134 = private unnamed_addr constant [86 x i8] c"^Can't execute some unpacker. Check paths and permissions on the temporary directory\0A\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"%s: Infected.Archive FOUND\0A\00", align 1
@.str.136 = private unnamed_addr constant [50 x i8] c"^Strange value (%d) returned in scancompressed()\0A\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"ERROR: setgid(%d) failed\0A\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"ERROR: setuid(%d) failed\0A\00", align 1
@.str.139 = private unnamed_addr constant [25 x i8] c"ERROR: chdir(%s) failed\0A\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.141 = private unnamed_addr constant [69 x i8] c"Non fatal error: cannot open /dev/null. Continuing with full output\0A\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"execv(p)\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"*n.files: %u, n.space: %lu\0A\00", align 1
@.str.144 = private unnamed_addr constant [53 x i8] c"\0AUnpacker process %d stopped due to exceeded limits\0A\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"^Can't run %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [44 x i8] c"^\0AUnpacker stopped with external signal %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @scanmanager(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %struct.cl_limits, align 8          ; 14 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.1) #19
  %.not184 = icmp eq i32 %i.d, 0
  br i1 %.not184, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.2) #19
  %.not185 = icmp eq i32 %i.e, 0
  br i1 %.not185, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.3) #19
  %.not186 = icmp eq i32 %i.f, 0
  br i1 %.not186, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.4) #19
  %.not187 = icmp eq i32 %i.g, 0
  br i1 %.not187, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.5) #19
  %.not188 = icmp eq i32 %i.h, 0
  br i1 %.not188, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.6) #19
  %.not189 = icmp eq i32 %i.i, 0
  br i1 %.not189, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.7) #19
  %.not190 = icmp eq i32 %i.j, 0
  br i1 %.not190, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.8) #19
  %.not191 = icmp eq i32 %i.k, 0
  br i1 %.not191, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = tail call i32 @geteuid() #19
  %.not193 = icmp eq i32 %i.l, 0
  br i1 %.not193, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.m = tail call ptr @getpwnam(ptr noundef nonnull @.str.9) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.o = tail call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.10) #19 ; 0 uses
  tail call void @exit(i32 noundef 60) #20
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.j
  %.not192240 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.i ] ; 2 uses
  %.0168 = phi ptr [ null, %bb.j ], [ %i.m, %bb.k ], [ null, %bb.i ] ; 3 uses
  %i.p = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.11) #19
  %.not194 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not194, i32 2, i32 0 ; 2 uses
  %i.q = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.12) #19
  %.not195 = icmp eq i32 %i.q, 0
  %i.r = or disjoint i32 %spec.select, 8
  %.1170 = select i1 %.not195, i32 %i.r, i32 %spec.select ; 2 uses
  %i.s = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.13) #19
  %.not196 = icmp eq i32 %i.s, 0
  %.0157 = select i1 %.not196, i32 1024, i32 0    ; 2 uses
  %i.t = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.14) #19
  %.not197 = icmp eq i32 %i.t, 0
  %i.u = or disjoint i32 %.0157, 2048
  %.1158 = select i1 %.not197, i32 %.0157, i32 %i.u ; 2 uses
  %i.v = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.15) #19
  %.not198 = icmp eq i32 %i.v, 0
  %i.w = or disjoint i32 %.1158, 4096
  %.2159 = select i1 %.not198, i32 %.1158, i32 %i.w ; 2 uses
  %i.x = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.16) #19
  %.not199 = icmp eq i32 %i.x, 0
  %i.y = or disjoint i32 %.1170, 4
  %.2171 = select i1 %.not199, i32 %.1170, i32 %i.y ; 2 uses
  %i.z = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.17) #19
  %.not200 = icmp eq i32 %i.z, 0
  br i1 %.not200, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.aa = tail call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.17) #19
  %i.ab = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aa, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.ac = trunc i64 %i.ab to i8
  tail call void @cli_ac_setdepth(i8 noundef zeroext 2, i8 noundef zeroext %i.ac) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ad = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.18) #19
  %.not201 = icmp eq i32 %i.ad, 0
  %i.ae = or disjoint i32 %.2171, 16
  %spec.select236 = select i1 %.not201, i32 %.2171, i32 %i.ae ; 2 uses
  %i.af = tail call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.19) #19
  %.not202 = icmp eq i32 %i.af, 0
  br i1 %.not202, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.19) #19
  %i.ah = call i32 @cl_load(ptr noundef %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull @info, i32 noundef %spec.select236) #19 ; 2 uses
  %.not204 = icmp eq i32 %i.ah, 0
  br i1 %.not204, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = call ptr @cl_strerror(i32 noundef %i.ah) #19
  %i.aj = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.20, ptr noundef %i.ai) #19 ; 0 uses
  br label %bb.bm

bb.q:                                             ; preds = %bb.n
  %i.ak = tail call ptr @freshdbdir() #19         ; 3 uses
  %i.al = call i32 @cl_load(ptr noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull @info, i32 noundef %spec.select236) #19 ; 2 uses
  %.not203 = icmp eq i32 %i.al, 0
  br i1 %.not203, label %.thread241, label %bb.r

.thread241:                                       ; preds = %bb.q
  call void @free(ptr noundef %i.ak) #19
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = call ptr @cl_strerror(i32 noundef %i.al) #19
  %i.an = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.20, ptr noundef %i.am) #19 ; 0 uses
  call void @free(ptr noundef %i.ak) #19
  br label %bb.bm

bb.s:                                             ; preds = %.thread241, %bb.o
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not205 = icmp eq ptr %i.ao, null
  br i1 %.not205, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.bm

bb.u:                                             ; preds = %bb.s
  %i.aq = call i32 @cl_build(ptr noundef nonnull %i.ao) #19 ; 2 uses
  %.not206 = icmp eq i32 %i.aq, 0
  br i1 %.not206, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = call ptr @cl_strerror(i32 noundef %i.aq) #19
  %i.as = call i32 (ptr, ...) @logg(ptr noundef nonnull @.str.22, ptr noundef %i.ar) #19 ; 0 uses
  br label %bb.bm

bb.w:                                             ; preds = %bb.u
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.at = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.23) #19
  %.not207 = icmp eq i32 %i.at, 0
  br i1 %.not207, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.23) #19 ; 5 uses
  %i.av = tail call ptr @__ctype_tolower_loc() #21
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #22 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = icmp eq i32 %i.bd, 109
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = call noalias ptr @calloc(i64 noundef %i.ax, i64 noundef 1) #23 ; 3 uses
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #22
  %i.bh = add i64 %i.bg, -1
  %i.bi = call ptr @strncpy(ptr noundef %i.bf, ptr noundef nonnull %i.au, i64 noundef %i.bh) #19 ; 0 uses
  %i.bj = call i64 @strtol(ptr noundef nonnull captures(none) %i.bf, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = shl nsw i32 %i.bk, 20
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !15
  call void @free(ptr noundef %i.bf) #19
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bo = call i64 @strtol(ptr noundef nonnull captures(none) %i.au, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = shl nsw i32 %i.bp, 10
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !15
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 10485760, ptr %i.bt, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.bu = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  %.not208 = icmp eq i32 %i.bu, 0
  br i1 %.not208, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  %i.bw = call i64 @strtol(ptr noundef nonnull captures(none) %i.bv, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.bx = trunc i64 %i.bw to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink = phi i32 [ %i.bx, %bb.ac ], [ 500, %bb.ab ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink, ptr %i.by, align 4, !tbaa !19
  %i.bz = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  %.not209 = icmp eq i32 %i.bz, 0
  br i1 %.not209, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  %i.cb = call i64 @strtol(ptr noundef nonnull captures(none) %i.ca, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %storemerge = phi i32 [ %i.cc, %bb.ae ], [ 8, %bb.ad ]
  store i32 %storemerge, ptr %1, align 8, !tbaa !20
  %i.cd = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.26) #19
  %.not210 = icmp eq i32 %i.cd, 0
  br i1 %.not210, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.26) #19
  %i.cf = call i64 @strtol(ptr noundef nonnull captures(none) %i.ce, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.cg = trunc i64 %i.cf to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sink263 = phi i32 [ %i.cg, %bb.ag ], [ 64, %bb.af ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink263, ptr %i.ch, align 8, !tbaa !21
  %i.ci = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.27) #19
  %.not211 = icmp eq i32 %i.ci, 0
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = call ptr @opt_arg(ptr noundef %0, ptr noundef nonnull @.str.27) #19
  %i.ck = call i64 @strtol(ptr noundef nonnull captures(none) %i.cj, ptr noundef null, i32 noundef 10) #19, !inline_history !11
  %i.cl = trunc i64 %i.ck to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink264 = phi i32 [ %i.cl, %bb.ai ], [ 250, %bb.ah ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink264, ptr %i.cm, align 4, !tbaa !22
  %i.cn = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.28) #19
  %.not212 = icmp eq i32 %i.cn, 0
  br i1 %.not212, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.co = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.29) #19
  %.not213 = icmp eq i32 %i.co, 0
  %i.cp = zext i1 %.not213 to i32
  %spec.select255 = or disjoint i32 %.2159, %i.cp
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3160 = phi i32 [ %.2159, %bb.aj ], [ %spec.select255, %bb.ak ] ; 2 uses
  %i.cq = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.30) #19
  %.not214 = icmp eq i32 %i.cq, 0
  %i.cr = or i32 %.3160, 64
  %spec.select237 = select i1 %.not214, i32 %.3160, i32 %i.cr ; 2 uses
  %i.cs = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %.not215 = icmp eq i32 %i.cs, 0
  %i.ct = or i32 %spec.select237, 8
  %.5162 = select i1 %.not215, i32 %spec.select237, i32 %i.ct ; 2 uses
  %i.cu = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.32) #19
  %.not216 = icmp eq i32 %i.cu, 0
  %i.cv = or i32 %.5162, 256
  %.6163 = select i1 %.not216, i32 %.5162, i32 %i.cv
  %i.cw = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.33) #19
  %.not217 = icmp eq i32 %i.cw, 0
  %i.cx = and i32 %.6163, -24629
  %masksel = select i1 %.not217, i32 32, i32 0
  %i.cy = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.34) #19
  %.not218 = icmp eq i32 %i.cy, 0
  %masksel250 = select i1 %.not218, i32 8192, i32 0
  %i.cz = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.35) #19
  %.not219 = icmp eq i32 %i.cz, 0
  %masksel251 = select i1 %.not219, i32 4, i32 0
  %i.da = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.36) #19
  %.not220 = icmp eq i32 %i.da, 0
  %masksel252 = select i1 %.not220, i32 16384, i32 0
  %i.db = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %.not221 = icmp eq i32 %i.db, 0
  %masksel253 = select i1 %.not221, i32 16, i32 0
  %.7 = or disjoint i32 %masksel250, %masksel
  %.8 = or disjoint i32 %.7, %i.cx
  %.9 = or disjoint i32 %.8, %masksel251
  %.10 = or disjoint i32 %.9, %masksel252
  %.11 = or disjoint i32 %.10, %masksel253        ; 2 uses
  %i.dc = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.38) #19
  %.not222 = icmp eq i32 %i.dc, 0
  br i1 %.not222, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = and i32 %.11, -3
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.de = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.39) #19
  %.not223 = icmp eq i32 %i.de, 0
  %spec.select238.v = select i1 %.not223, i32 2, i32 130
  %spec.select238 = or i32 %spec.select238.v, %.11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.12 = phi i32 [ %i.dd, %bb.am ], [ %spec.select238, %bb.an ]
  %i.df = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.40) #19
  %.not224 = icmp eq i32 %i.df, 0
  %i.dg = and i32 %.12, -513
  %masksel254 = select i1 %.not224, i32 512, i32 0
  %.13 = or disjoint i32 %masksel254, %i.dg       ; 4 uses
  store i64 0, ptr @procdev, align 8, !tbaa !23
  %i.dh = call i32 @stat(ptr noundef nonnull @.str.41, ptr noundef nonnull %2) #19
  %i.di = icmp eq i32 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp ne i64 %i.dk, 0
  %or.cond = select i1 %i.di, i1 true, i1 %i.dl
  br i1 %or.cond, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.dm, ptr @procdev, align 8, !tbaa !23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %char0 = load i8, ptr %i.do, align 1
  switch i8 %char0, label %.preheader [
    i8 0, label %bb.as
    i8 45, label %.tail
  ]

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dq = call ptr @getcwd(ptr noundef nonnull %i.b, i64 noundef 1024) #19
  %.not234 = icmp eq ptr %i.dq, null
end_hunk_0
