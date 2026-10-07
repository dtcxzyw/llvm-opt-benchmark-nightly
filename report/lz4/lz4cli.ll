Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4cli?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
begin_hunk_0
@.str.119 = private unnamed_addr constant [35 x i8] c"Which values can [output] have ? \0A\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"[output] : a filename \0A\00", align 1
@.str.122 = private unnamed_addr constant [56 x i8] c"          '%s', or '-' for standard output (pipe mode)\0A\00", align 1
@.str.123 = private unnamed_addr constant [47 x i8] c"          '%s' to discard output (test mode) \0A\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.125 = private unnamed_addr constant [77 x i8] c"[output] can be left empty. In this case, it receives the following value :\0A\00", align 1
@.str.126 = private unnamed_addr constant [67 x i8] c"          - if stdout is not the console, then [output] = stdout \0A\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"          - if stdout is console : \0A\00", align 1
@.str.128 = private unnamed_addr constant [57 x i8] c"               + for compression, output to filename%s \0A\00", align 1
@.str.129 = private unnamed_addr constant [69 x i8] c"               + for decompression, output to filename without '%s'\0A\00", align 1
@.str.130 = private unnamed_addr constant [72 x i8] c"                    > if input filename has no '%s' extension : error \0A\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"Compression levels : \0A\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"---------------------\0A\00", align 1
@.str.133 = private unnamed_addr constant [41 x i8] c"-0  => Default level, identical to -%u \0A\00", align 1
@.str.134 = private unnamed_addr constant [26 x i8] c"-1  => Fast compression \0A\00", align 1
@.str.135 = private unnamed_addr constant [77 x i8] c"-2 .. -%d => High compression; higher number == more compression but slower\0A\00", align 1
@.str.136 = private unnamed_addr constant [57 x i8] c"--best    => Highest available compression level (-%d) \0A\00", align 1
@.str.137 = private unnamed_addr constant [76 x i8] c"--fast=#  => Faster compression; higher number == faster but compress less\0A\00", align 1
@.str.138 = private unnamed_addr constant [34 x i8] c"stdin, stdout and the console : \0A\00", align 1
@.str.139 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.140 = private unnamed_addr constant [68 x i8] c"To protect the console from binary flooding (bad argument mistake)\0A\00", align 1
@.str.141 = private unnamed_addr constant [59 x i8] c"%s will refuse to read from console, or write to console \0A\00", align 1
@.str.142 = private unnamed_addr constant [66 x i8] c"except if '-c' command is specified, to force output to console \0A\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"Simple example :\0A\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.145 = private unnamed_addr constant [72 x i8] c"1 : compress 'filename' fast, using default output name 'filename.lz4'\0A\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"          %s filename\0A\00", align 1
@.str.147 = private unnamed_addr constant [50 x i8] c"Short arguments can be aggregated. For example :\0A\00", align 1
@.str.148 = private unnamed_addr constant [36 x i8] c"----------------------------------\0A\00", align 1
@.str.149 = private unnamed_addr constant [78 x i8] c"2 : compress 'filename' in high compression mode, overwrite output if exists\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"          %s -9 -f filename \0A\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"    is equivalent to :\0A\00", align 1
@.str.152 = private unnamed_addr constant [28 x i8] c"          %s -9f filename \0A\00", align 1
@.str.153 = private unnamed_addr constant [51 x i8] c"%s can be used in 'pure pipe mode'. For example :\0A\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"-------------------------------------\0A\00", align 1
@.str.155 = private unnamed_addr constant [70 x i8] c"3 : compress data stream from 'generator', send result to 'consumer'\0A\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"          generator | %s | consumer \0A\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"***** Warning  ***** \0A\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"Legacy arguments take precedence. Therefore : \0A\00", align 1
@.str.159 = private unnamed_addr constant [36 x i8] c"--------------------------------- \0A\00", align 1
@.str.160 = private unnamed_addr constant [28 x i8] c"          %s -hc filename \0A\00", align 1
@.str.161 = private unnamed_addr constant [53 x i8] c"means 'compress filename in high compression mode' \0A\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"It is not equivalent to : \0A\00", align 1
@.str.163 = private unnamed_addr constant [30 x i8] c"          %s -h -c filename \0A\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"which displays help text and exits \0A\00", align 1
@.str.165 = private unnamed_addr constant [32 x i8] c"Cannot open directory '%s': %s\0A\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"readdir(%s) error: %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"Press enter to continue...\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 30 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.67) #22 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %init_cLevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10    ; 2 uses
  %i.h = add i8 %i.g, -48
  %or.cond.i = icmp ult i8 %i.h, 10
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi i8 [ %i.o, %.lr.ph.i.i ], [ %i.g, %bb.b ]
  %.020.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.j = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.f, %bb.b ]
  %i.k = mul i32 %.020.i.i, 10
  %narrow.i.i = add nsw i8 %i.i, -48
  %i.l = zext nneg i8 %narrow.i.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 4 uses
  %i.p = add i8 %i.o, -48
  %or.cond.i.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  switch i8 %i.o, label %init_cLevel.exit [
    i8 75, label %bb.c
    i8 77, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge.i.i, %.critedge.i.i
  %i.q = icmp eq i8 %i.o, 77
  %spec.select.v.i.i = select i1 %i.q, i32 20, i32 10
  %spec.select.i.i = shl i32 %i.m, %spec.select.v.i.i
  br label %init_cLevel.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.s = icmp ugt i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %init_cLevel.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.f) #23 ; 0 uses
  br label %init_cLevel.exit

init_cLevel.exit:                                 ; preds = %bb.a, %.critedge.i.i, %bb.c, %bb.d, %bb.e
  %.1.i = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 1, %bb.d ], [ %i.m, %.critedge.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.v = tail call ptr @getenv(ptr noundef nonnull @.str.69) #22 ; 4 uses
  %.not.i461 = icmp eq ptr %i.v, null
  br i1 %.not.i461, label %init_nbWorkers.exit, label %bb.f

bb.f:                                             ; preds = %init_cLevel.exit
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10    ; 2 uses
  %i.x = add i8 %i.w, -48
  %or.cond.i462 = icmp ult i8 %i.x, 10
  br i1 %or.cond.i462, label %.lr.ph.i.i464, label %bb.h

.lr.ph.i.i464:                                    ; preds = %bb.f, %.lr.ph.i.i464
  %i.y = phi i8 [ %i.ae, %.lr.ph.i.i464 ], [ %i.w, %bb.f ]
  %.020.i.i465 = phi i32 [ %i.ac, %.lr.ph.i.i464 ], [ 0, %bb.f ]
  %i.z = phi ptr [ %i.ad, %.lr.ph.i.i464 ], [ %i.v, %bb.f ]
  %i.aa = mul i32 %.020.i.i465, 10
  %narrow.i.i466 = add nsw i8 %i.y, -48
  %i.ab = zext nneg i8 %narrow.i.i466 to i32
  %i.ac = add i32 %i.aa, %i.ab                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10  ; 4 uses
  %i.af = add i8 %i.ae, -48
  %or.cond.i.i467 = icmp ult i8 %i.af, 10
  br i1 %or.cond.i.i467, label %.lr.ph.i.i464, label %.critedge.i.i468, !llvm.loop !0

.critedge.i.i468:                                 ; preds = %.lr.ph.i.i464
  switch i8 %i.ae, label %init_nbWorkers.exit [
    i8 75, label %bb.g
    i8 77, label %bb.g
  ]

bb.g:                                             ; preds = %.critedge.i.i468, %.critedge.i.i468
  %i.ag = icmp eq i8 %i.ae, 77
  %spec.select.v.i.i469 = select i1 %i.ag, i32 20, i32 10
  %spec.select.i.i470 = shl i32 %i.ac, %spec.select.v.i.i469
  br label %init_nbWorkers.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.ai = icmp ugt i32 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %init_nbWorkers.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.v) #23 ; 0 uses
  br label %init_nbWorkers.exit

init_nbWorkers.exit:                              ; preds = %init_cLevel.exit, %.critedge.i.i468, %bb.g, %bb.h, %bb.i
  %.1.i463 = phi i32 [ 0, %init_cLevel.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.ac, %.critedge.i.i468 ], [ %spec.select.i.i470, %bb.g ] ; 2 uses
  %i.al = sext i32 %0 to i64
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 8) #24 ; 11 uses
  %i.an = tail call ptr @LZ4IO_defaultPreferences() #22 ; 36 uses
  %i.ao = tail call i64 @LZ4IO_setBlockSizeID(ptr noundef %i.an, i32 noundef 7) #22 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.aq = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, i32 noundef 47) #25 ; 2 uses
  %.not.i471 = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %spec.select.i = select i1 %.not.i471, ptr %i.ap, ptr %i.ar ; 2 uses
  %i.as = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %spec.select.i, i32 noundef 92) #25 ; 2 uses
  %.not8.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.1.i472 = select i1 %.not8.i, ptr %spec.select.i, ptr %i.at ; 18 uses
  %i.au = icmp eq ptr %i.am, null
  br i1 %i.au, label %.thread700, label %bb.j

.thread700:                                       ; preds = %init_nbWorkers.exit
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite455 = tail call i64 @fwrite(ptr nonnull @.str, i64 38, i64 1, ptr %i.av) #26 ; 0 uses
  br label %bb.hu

bb.j:                                             ; preds = %init_nbWorkers.exit
  store ptr @.str.1, ptr %i.am, align 8, !tbaa !17
  %i.aw = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  %i.ax = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %.1.i472, ptr noundef nonnull dereferenceable(7) @.str.2, i64 noundef 6) #25
  %.not.i473 = icmp eq i32 %i.ax, 0
  br i1 %.not.i473, label %bb.k, label %exeNameMatch.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i472, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  switch i8 %i.az, label %exeNameMatch.exit.thread [
    i8 0, label %exeNameMatch.exit.thread553
    i8 46, label %exeNameMatch.exit.thread553
  ]

exeNameMatch.exit.thread553:                      ; preds = %bb.k, %bb.k
  %i.ba = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  %i.bb = tail call i32 @LZ4IO_setPassThrough(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  tail call void @LZ4IO_setRemoveSrcFile(ptr noundef %i.an, i32 noundef 0) #22
  store i32 1, ptr @displayLevel, align 4, !tbaa !12
  br label %exeNameMatch.exit.thread

exeNameMatch.exit.thread:                         ; preds = %bb.k, %bb.j, %exeNameMatch.exit.thread553
  %.0318 = phi i32 [ 1, %exeNameMatch.exit.thread553 ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.0295 = phi i32 [ 2, %exeNameMatch.exit.thread553 ], [ 0, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0284 = phi ptr [ @.str.3, %exeNameMatch.exit.thread553 ], [ null, %bb.k ], [ null, %bb.j ] ; 2 uses
  %i.bc = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %.1.i472, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #25
  %.not.i474 = icmp eq i32 %i.bc, 0
  br i1 %.not.i474, label %bb.l, label %exeNameMatch.exit475.thread557

bb.l:                                             ; preds = %exeNameMatch.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i472, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10  ; 2 uses
  %3 = icmp eq i8 %i.be, 0
  br i1 %3, label %exeNameMatch.exit475.thread557, label %exeNameMatch.exit475.thread

exeNameMatch.exit475.thread:                      ; preds = %bb.l
  %4 = icmp eq i8 %i.be, 46
  %5 = select i1 %4, i32 2, i32 %.0295
  br label %exeNameMatch.exit475.thread557

exeNameMatch.exit475.thread557:                   ; preds = %exeNameMatch.exit.thread, %bb.l, %exeNameMatch.exit475.thread
  %i.bf = phi i32 [ %.0295, %exeNameMatch.exit.thread ], [ 2, %bb.l ], [ %5, %exeNameMatch.exit475.thread ] ; 2 uses
  %i.bg = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %.1.i472, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #25
  %.not.i476 = icmp eq i32 %i.bg, 0
  br i1 %.not.i476, label %bb.m, label %exeNameMatch.exit477.thread

bb.m:                                             ; preds = %exeNameMatch.exit475.thread557
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i472, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10
  switch i8 %i.bi, label %exeNameMatch.exit477.thread [
    i8 0, label %exeNameMatch.exit477.thread561
    i8 46, label %exeNameMatch.exit477.thread561
  ]

exeNameMatch.exit477.thread561:                   ; preds = %bb.m, %bb.m
  store i1 true, ptr @g_lz4c_legacy_commands, align 4
  br label %exeNameMatch.exit477.thread

exeNameMatch.exit477.thread:                      ; preds = %bb.m, %exeNameMatch.exit475.thread557, %exeNameMatch.exit477.thread561
  %i.bj = icmp sgt i32 %0, 1
  br i1 %i.bj, label %.lr.ph1256, label %._crit_edge

.lr.ph1256:                                       ; preds = %exeNameMatch.exit477.thread, %.thread566
  %.02391255 = phi i32 [ %i.mf, %.thread566 ], [ 1, %exeNameMatch.exit477.thread ] ; 37 uses
  %.02401254 = phi i32 [ %.4244604, %.thread566 ], [ %.1.i, %exeNameMatch.exit477.thread ] ; 32 uses
  %.02481253 = phi i32 [ %.3251603, %.thread566 ], [ -10000, %exeNameMatch.exit477.thread ] ; 35 uses
  %.02561252 = phi i32 [ %.4260602, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 35 uses
  %.02611251 = phi i64 [ %.6267601, %.thread566 ], [ %i.ao, %exeNameMatch.exit477.thread ] ; 35 uses
  %.02681250 = phi i32 [ %.1269600, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 38 uses
  %.02791249 = phi ptr [ %.4283599, %.thread566 ], [ null, %exeNameMatch.exit477.thread ] ; 35 uses
  %.12851248 = phi ptr [ %.5289598, %.thread566 ], [ %.0284, %exeNameMatch.exit477.thread ] ; 33 uses
  %.02911247 = phi ptr [ %.2293597, %.thread566 ], [ null, %exeNameMatch.exit477.thread ] ; 38 uses
  %.22971246 = phi i32 [ %.5300596, %.thread566 ], [ %i.bf, %exeNameMatch.exit477.thread ] ; 32 uses
  %.03051245 = phi i32 [ %.4309595, %.thread566 ], [ %.1.i463, %exeNameMatch.exit477.thread ] ; 34 uses
  %.03101244 = phi i32 [ %.1311594, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 36 uses
  %.03161243 = phi i32 [ %.1317592, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 6 uses
  %.13191242 = phi i32 [ %.4322591, %.thread566 ], [ %.0318, %exeNameMatch.exit477.thread ] ; 30 uses
  %.03241241 = phi i32 [ %.3327590, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 38 uses
  %.03291240 = phi i32 [ %.3332589, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 36 uses
  %.13341239 = phi i32 [ %.4337588, %.thread566 ], [ %.0318, %exeNameMatch.exit477.thread ] ; 33 uses
  %.03381238 = phi i32 [ %.3341587, %.thread566 ], [ 0, %exeNameMatch.exit477.thread ] ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bk = sext i32 %.02391255 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 35 uses
  store ptr %i.bm, ptr %i.d, align 8, !tbaa !17
  %.not397 = icmp eq ptr %i.bm, null
  br i1 %.not397, label %.thread566, label %bb.n

bb.n:                                             ; preds = %.lr.ph1256
  %.not398 = icmp eq i32 %.03161243, 0
  br i1 %.not398, label %bb.o, label %bb.em

bb.o:                                             ; preds = %bb.n
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = icmp eq i8 %i.bn, 45
  br i1 %i.bo, label %bb.p, label %bb.em

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.bq, label %bb.bz [
    i8 0, label %bb.q
    i8 45, label %.tail
  ]

bb.q:                                             ; preds = %bb.p
  %.not447 = icmp eq ptr %.02911247, null         ; 2 uses
  %.str.1..0291 = select i1 %.not447, ptr @.str.1, ptr %.02911247
  %.1285..str.3 = select i1 %.not447, ptr %.12851248, ptr @.str.3
  br label %.thread566

.tail:                                            ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.thread566, label %bb.r

bb.r:                                             ; preds = %.tail
  %i.bu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(11) @.str.7) #25
  %.not400 = icmp eq i32 %i.bu, 0
  br i1 %.not400, label %.thread566, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(13) @.str.8) #25
  %.not401 = icmp eq i32 %i.bv, 0
  br i1 %.not401, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(13) @.str.9) #25
  %.not402 = icmp eq i32 %i.bw, 0
  br i1 %.not402, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not403 = icmp eq i32 %.22971246, 4
  %spec.store.select = select i1 %.not403, i32 4, i32 2
  tail call void @BMK_setDecodeOnlyMode(i32 noundef 1) #22
  br label %.thread566

bb.v:                                             ; preds = %bb.t
  %i.bx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(11) @.str.10) #25
  %.not404 = icmp eq i32 %i.bx, 0
  br i1 %.not404, label %.thread566, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(7) @.str.11) #25
  %.not405 = icmp eq i32 %i.by, 0
  br i1 %.not405, label %.thread566, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(8) @.str.12) #25
  %.not406 = icmp eq i32 %i.bz, 0
  br i1 %.not406, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.thread566

bb.z:                                             ; preds = %bb.x
  %i.cb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(11) @.str.13) #25
  %.not407 = icmp eq i32 %i.cb, 0
  br i1 %.not407, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  br label %.thread566

bb.ab:                                            ; preds = %bb.z
  %i.cd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(9) @.str.14) #25
  %.not408 = icmp eq i32 %i.cd, 0
  br i1 %.not408, label %.thread566, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(12) @.str.15) #25
  %.not409 = icmp eq i32 %i.ce, 0
  br i1 %.not409, label %.thread566, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(12) @.str.16) #25
  %.not410 = icmp eq i32 %i.cf, 0
  br i1 %.not410, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cg = tail call i32 @LZ4IO_setStreamChecksumMode(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  tail call void @BMK_skipChecksums(i32 noundef 0) #22
  br label %.thread566

bb.af:                                            ; preds = %bb.ad
  %i.ch = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(15) @.str.17) #25
  %.not411 = icmp eq i32 %i.ch, 0
  br i1 %.not411, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ci = tail call i32 @LZ4IO_setStreamChecksumMode(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  tail call void @BMK_skipChecksums(i32 noundef 1) #22
  br label %.thread566

bb.ah:                                            ; preds = %bb.af
  %i.cj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(9) @.str.18) #25
  %.not412 = icmp eq i32 %i.cj, 0
  br i1 %.not412, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ck = tail call i32 @LZ4IO_setStreamChecksumMode(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  %i.cl = tail call i32 @LZ4IO_setBlockChecksumMode(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  tail call void @BMK_skipChecksums(i32 noundef 1) #22
  br label %.thread566

bb.aj:                                            ; preds = %bb.ah
  %i.cm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(15) @.str.19) #25
  %.not413 = icmp eq i32 %i.cm, 0
  br i1 %.not413, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cn = tail call i32 @LZ4IO_setContentSize(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.thread566

bb.al:                                            ; preds = %bb.aj
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(18) @.str.20) #25
  %.not414 = icmp eq i32 %i.co, 0
  br i1 %.not414, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cp = tail call i32 @LZ4IO_setContentSize(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  br label %.thread566

bb.an:                                            ; preds = %bb.al
  %i.cq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(7) @.str.21) #25
  %.not415 = icmp eq i32 %i.cq, 0
  br i1 %.not415, label %.thread566, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(9) @.str.22) #25
  %.not416 = icmp eq i32 %i.cr, 0
  br i1 %.not416, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cs = tail call i32 @LZ4IO_setSparseFile(ptr noundef %i.an, i32 noundef 2) #22 ; 0 uses
  br label %.thread566

bb.aq:                                            ; preds = %bb.ao
  %i.ct = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(12) @.str.23) #25
  %.not417 = icmp eq i32 %i.ct, 0
  br i1 %.not417, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cu = tail call i32 @LZ4IO_setSparseFile(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  br label %.thread566

bb.as:                                            ; preds = %bb.aq
  %i.cv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(17) @.str.24) #25
  %.not418 = icmp eq i32 %i.cv, 0
  br i1 %.not418, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @LZ4IO_favorDecSpeed(ptr noundef %i.an, i32 noundef 1) #22
  br label %.thread566

bb.au:                                            ; preds = %bb.as
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(10) @.str.25) #25
  %.not419 = icmp eq i32 %i.cw, 0
  br i1 %.not419, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cx = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr @displayLevel, align 4, !tbaa !12
  br label %.thread566

bb.aw:                                            ; preds = %bb.au
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(8) @.str.26) #25
  %.not420 = icmp eq i32 %i.cz, 0
  br i1 %.not420, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.da = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %.not421 = icmp eq i32 %i.da, 0
  br i1 %.not421, label %.thread566, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @displayLevel, align 4, !tbaa !12
  br label %.thread566

bb.az:                                            ; preds = %bb.aw
  %i.dc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(10) @.str.27) #25
  %.not422 = icmp eq i32 %i.dc, 0
  br i1 %.not422, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.de = tail call ptr @LZ4_versionString() #22
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %i.de, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #22 ; 0 uses
  br label %.thread621

bb.bb:                                            ; preds = %bb.az
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(7) @.str.32) #25
  %.not423 = icmp eq i32 %i.dg, 0
  br i1 %.not423, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @usage_advanced(ptr noundef nonnull %.1.i472)
  br label %.thread621

bb.bd:                                            ; preds = %bb.bb
  %i.dh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(7) @.str.33) #25
  %.not424 = icmp eq i32 %i.dh, 0
  br i1 %.not424, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @LZ4IO_setRemoveSrcFile(ptr noundef %i.an, i32 noundef 0) #22
  br label %.thread566

bb.bf:                                            ; preds = %bb.bd
  %i.di = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(5) @.str.34) #25
  %.not425 = icmp eq i32 %i.di, 0
  br i1 %.not425, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @LZ4IO_setRemoveSrcFile(ptr noundef %i.an, i32 noundef 1) #22
  br label %.thread566

bb.bh:                                            ; preds = %bb.bf
  %i.dj = call fastcc i32 @longCommandWArg(ptr noundef %i.d, ptr noundef nonnull @.str.35)
  %.not426 = trunc nuw i32 %i.dj to i1
  br i1 %.not426, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !10
  %i.dm = icmp eq i8 %i.dl, 61
  br i1 %i.dm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !17
  br label %bb.bq

bb.bk:                                            ; preds = %bb.bi
  %i.do = add nsw i32 %.02391255, 1               ; 3 uses
  %.not441 = icmp slt i32 %i.do, %0
  br i1 %.not441, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dp = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not444 = icmp eq i32 %i.dp, 0
  br i1 %.not444, label %.thread643, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite445 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 33, i64 1, ptr %i.dq) #26 ; 0 uses
  br label %.thread643

bb.bn:                                            ; preds = %bb.bk
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  store ptr %i.dt, ptr %i.e, align 8, !tbaa !17
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = icmp eq i8 %i.du, 45
  br i1 %i.dv, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.dw = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not442 = icmp eq i32 %i.dw, 0
  br i1 %.not442, label %.thread643, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite443 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 73, i64 1, ptr %i.dx) #26 ; 0 uses
  br label %.thread643

bb.bq:                                            ; preds = %bb.bn, %bb.bj
  %.1 = phi i32 [ %.02391255, %bb.bj ], [ %i.do, %bb.bn ]
  %i.dy = call fastcc i32 @readU32FromChar(ptr noundef %i.e)
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !10
  %.not446 = icmp eq i8 %i.ea, 0
  br i1 %.not446, label %bb.ev, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @errorOut()
  unreachable

bb.bs:                                            ; preds = %bb.bh
  %i.eb = call fastcc i32 @longCommandWArg(ptr noundef %i.d, ptr noundef nonnull @.str.39)
  %.not427 = trunc nuw i32 %i.eb to i1
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !17  ; 5 uses
  br i1 %.not427, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  switch i8 %i.ed, label %bb.bx [
    i8 61, label %bb.bu
    i8 0, label %.thread566
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store ptr %i.ee, ptr %i.d, align 8, !tbaa !17
  %i.ef = call fastcc i32 @readU32FromChar(ptr noundef %i.d) ; 2 uses
  %.not440 = icmp eq i32 %i.ef, 0
  br i1 %.not440, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eg = sub nsw i32 0, %i.ef
  br label %.thread566

bb.bw:                                            ; preds = %bb.bu
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.bx:                                            ; preds = %bb.bt
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.by:                                            ; preds = %bb.bs
  %i.eh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(7) @.str.40) #25
  %.not428 = icmp eq i32 %i.eh, 0
  br i1 %.not428, label %.thread566, label %._crit_edge1484

._crit_edge1484:                                  ; preds = %bb.by
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge1484, %bb.p
  %i.ei = phi i8 [ %i.bq, %bb.p ], [ %.pre, %._crit_edge1484 ] ; 2 uses
  %.promoted1191 = phi ptr [ %i.bm, %bb.p ], [ %i.ec, %._crit_edge1484 ] ; 2 uses
  %.not429111211491206 = icmp eq i8 %i.ei, 0
  br i1 %.not429111211491206, label %.thread566, label %.lr.ph.lr.ph.preheader

.lr.ph.lr.ph.preheader:                           ; preds = %bb.bz
  %i.ej = getelementptr inbounds nuw i8, ptr %.promoted1191, i64 1
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.preheader, %.thread563
  %i.ek = phi i8 [ %i.lw, %.thread563 ], [ %i.ei, %.lr.ph.lr.ph.preheader ]
  %i.el = phi ptr [ %i.lv, %.thread563 ], [ %i.ej, %.lr.ph.lr.ph.preheader ]
  %.3.ph1221 = phi i32 [ %.5, %.thread563 ], [ %.02391255, %.lr.ph.lr.ph.preheader ] ; 23 uses
  %.3243.ph1220 = phi i32 [ %.3243.ph7411151, %.thread563 ], [ %.02401254, %.lr.ph.lr.ph.preheader ]
  %.1249.ph1219 = phi i32 [ %.2250, %.thread563 ], [ %.02481253, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.1257.ph1218 = phi i32 [ %.3259, %.thread563 ], [ %.02561252, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.1262.ph1217 = phi i64 [ %.5266, %.thread563 ], [ %.02611251, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.1280.ph1216 = phi ptr [ %.3282, %.thread563 ], [ %.02791249, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.3287.ph1215 = phi ptr [ %.4288, %.thread563 ], [ %.12851248, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.3298.ph1214 = phi i32 [ %.4299, %.thread563 ], [ %.22971246, %.lr.ph.lr.ph.preheader ] ; 19 uses
  %.2307.ph1213 = phi i32 [ %.3308, %.thread563 ], [ %.03051245, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.2320.ph1212 = phi i32 [ %.3321, %.thread563 ], [ %.13191242, %.lr.ph.lr.ph.preheader ] ; 19 uses
  %.1325.ph1211 = phi i32 [ %.2326, %.thread563 ], [ %.03241241, %.lr.ph.lr.ph.preheader ] ; 24 uses
  %.1330.ph1210 = phi i32 [ %.2331, %.thread563 ], [ %.03291240, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.2335.ph1209 = phi i32 [ %.3336, %.thread563 ], [ %.13341239, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.1339.ph1208 = phi i32 [ %.2340, %.thread563 ], [ %.03381238, %.lr.ph.lr.ph.preheader ] ; 21 uses
  %.lcssa11841187.lcssa11921207 = phi ptr [ %.lcssa11841187.lcssa1193, %.thread563 ], [ %.promoted1191, %.lr.ph.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer740.backedge
  %i.em = phi i8 [ %i.ek, %.lr.ph.lr.ph ], [ %i.fe, %.outer740.backedge ]
  %i.en = phi ptr [ %i.el, %.lr.ph.lr.ph ], [ %i.fd, %.outer740.backedge ]
  %.3243.ph7411151 = phi i32 [ %.3243.ph1220, %.lr.ph.lr.ph ], [ %.3243.ph741.be, %.outer740.backedge ] ; 3 uses
  %.lcssa114211441150 = phi ptr [ %.lcssa11841187.lcssa11921207, %.lr.ph.lr.ph ], [ %.lcssa11421145, %.outer740.backedge ]
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph, %bb.cf
  %i.eo = phi i8 [ %i.em, %.lr.ph ], [ %i.fw, %bb.cf ] ; 4 uses
  %i.ep = phi ptr [ %i.en, %.lr.ph ], [ %i.fv, %bb.cf ] ; 32 uses
  %i.eq = phi ptr [ %.lcssa114211441150, %.lr.ph ], [ %i.ep, %bb.cf ] ; 8 uses
  %.b = load i1, ptr @g_lz4c_legacy_commands, align 4
  br i1 %.b, label %sub_0715, label %.tail734.thread

sub_0715:                                         ; preds = %bb.ca
  switch i8 %i.eo, label %.tail734.thread [
    i8 99, label %sub_1716
    i8 104, label %sub_1731
    i8 121, label %.tail734
  ]

sub_1716:                                         ; preds = %sub_0715
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.es = load i8, ptr %i.er, align 1
  %.not1281.a = icmp eq i8 %i.es, 48
  br i1 %.not1281.a, label %.tail714, label %sub_1721

.tail714:                                         ; preds = %sub_1716
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.cb, label %sub_1721

bb.cb:                                            ; preds = %.tail714
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  br label %.outer740.backedge

sub_1721:                                         ; preds = %.tail714, %sub_1716
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.ey = load i8, ptr %i.ex, align 1
  %.not1283 = icmp eq i8 %i.ey, 49
  br i1 %.not1283, label %.tail719, label %sub_1726

.tail719:                                         ; preds = %sub_1721
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.cc, label %sub_1726

bb.cc:                                            ; preds = %.tail719
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  br label %.outer740.backedge

.outer740.backedge:                               ; preds = %bb.cc, %readU32FromChar.exit, %bb.cb, %bb.ce, %bb.cd
  %.lcssa11421145 = phi ptr [ %i.fk, %bb.cd ], [ %i.fq, %bb.ce ], [ %i.ew, %bb.cb ], [ %i.gq, %readU32FromChar.exit ], [ %i.fc, %bb.cc ] ; 2 uses
  %.3243.ph741.be = phi i32 [ 12, %bb.cd ], [ 12, %bb.ce ], [ 0, %bb.cb ], [ %.2.i, %readU32FromChar.exit ], [ 9, %bb.cc ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.lcssa11421145, i64 1 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !10  ; 2 uses
  %.not4291112 = icmp eq i8 %i.fe, 0
  br i1 %.not4291112, label %.thread566, label %.lr.ph, !llvm.loop !20

sub_1726:                                         ; preds = %.tail719, %sub_1721
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fg = load i8, ptr %i.ff, align 1
  %.not1285 = icmp eq i8 %i.fg, 50
  br i1 %.not1285, label %.tail724, label %.tail734.thread.thread.thread1549

.tail724:                                         ; preds = %sub_1726
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.cd, label %.tail734.thread.thread.thread1549

bb.cd:                                            ; preds = %.tail724
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  br label %.outer740.backedge

sub_1731:                                         ; preds = %sub_0715
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fm = load i8, ptr %i.fl, align 1
  %.not1287 = icmp eq i8 %i.fm, 99
  br i1 %.not1287, label %.tail729, label %.tail734.thread.thread.thread

.tail729:                                         ; preds = %sub_1731
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.ce, label %.tail734.thread.thread.thread

bb.ce:                                            ; preds = %.tail729
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  br label %.outer740.backedge

.tail734:                                         ; preds = %sub_0715
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.cf, label %.thread1544

bb.cf:                                            ; preds = %.tail734
  %i.fu = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !10  ; 2 uses
  %.not429 = icmp eq i8 %i.fw, 0
  br i1 %.not429, label %.thread566, label %bb.ca, !llvm.loop !20

.tail734.thread:                                  ; preds = %sub_0715, %bb.ca
  %i.fx = add i8 %i.eo, -48
  %or.cond457 = icmp ult i8 %i.fx, 10
  br i1 %or.cond457, label %.lr.ph.i, label %.tail734.thread.thread

.lr.ph.i:                                         ; preds = %.tail734.thread, %.lr.ph.i
  %i.fy = phi i8 [ %i.ge, %.lr.ph.i ], [ %i.eo, %.tail734.thread ]
  %.020.i = phi i32 [ %i.gc, %.lr.ph.i ], [ 0, %.tail734.thread ]
  %i.fz = phi ptr [ %i.gd, %.lr.ph.i ], [ %i.ep, %.tail734.thread ] ; 3 uses
  %i.ga = mul i32 %.020.i, 10
  %narrow.i = add nsw i8 %i.fy, -48
  %i.gb = zext nneg i8 %narrow.i to i32
  %i.gc = add i32 %i.ga, %i.gb                    ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 4 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10  ; 4 uses
  %i.gf = add i8 %i.ge, -48
  %or.cond.i479 = icmp ult i8 %i.gf, 10
  br i1 %or.cond.i479, label %.lr.ph.i, label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.lr.ph.i
  switch i8 %i.ge, label %readU32FromChar.exit [
    i8 75, label %bb.cg
    i8 77, label %bb.cg
  ]

bb.cg:                                            ; preds = %.critedge.i, %.critedge.i
  %i.gg = icmp eq i8 %i.ge, 77
end_hunk_0
begin_hunk_1_@main:bb.a

bb.ec:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ed:                                            ; preds = %.tail734.thread.thread
  tail call void @BMK_setBenchSeparately(i32 noundef 1) #22
  br label %.thread563

bb.ee:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ef:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.eg:                                            ; preds = %.tail734.thread.thread
  %i.ky = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 4 uses
  store ptr %i.ky, ptr %i.d, align 8, !tbaa !17
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !10  ; 3 uses
  %i.la = add i8 %i.kz, -48
  %or.cond19.i526 = icmp ult i8 %i.la, 10
  br i1 %or.cond19.i526, label %.lr.ph.i535, label %.critedge.i527

.lr.ph.i535:                                      ; preds = %bb.eg, %.lr.ph.i535
  %i.lb = phi i8 [ %i.lh, %.lr.ph.i535 ], [ %i.kz, %bb.eg ]
  %.020.i536 = phi i32 [ %i.lf, %.lr.ph.i535 ], [ 0, %bb.eg ]
  %i.lc = phi ptr [ %i.lg, %.lr.ph.i535 ], [ %i.ky, %bb.eg ]
  %i.ld = mul i32 %.020.i536, 10
  %narrow.i537 = add nsw i8 %i.lb, -48
  %i.le = zext nneg i8 %narrow.i537 to i32
  %i.lf = add i32 %i.ld, %i.le                    ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 4 uses
  store ptr %i.lg, ptr %i.d, align 8, !tbaa !17
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !10  ; 3 uses
  %i.li = add i8 %i.lh, -48
  %or.cond.i538 = icmp ult i8 %i.li, 10
  br i1 %or.cond.i538, label %.lr.ph.i535, label %.critedge.i527, !llvm.loop !0

.critedge.i527:                                   ; preds = %.lr.ph.i535, %bb.eg
  %.lcssa11841187.lcssa1195 = phi ptr [ %i.ky, %bb.eg ], [ %i.lg, %.lr.ph.i535 ] ; 4 uses
  %.0.lcssa.i528 = phi i32 [ 0, %bb.eg ], [ %i.lf, %.lr.ph.i535 ] ; 2 uses
  %.lcssa.i530 = phi i8 [ %i.kz, %bb.eg ], [ %i.lh, %.lr.ph.i535 ] ; 2 uses
  switch i8 %.lcssa.i530, label %readU32FromChar.exit539 [
    i8 75, label %bb.eh
    i8 77, label %bb.eh
  ]

bb.eh:                                            ; preds = %.critedge.i527, %.critedge.i527
  %i.lj = icmp eq i8 %.lcssa.i530, 77
  %spec.select.v.i531 = select i1 %i.lj, i32 20, i32 10
  %spec.select.i532 = shl i32 %.0.lcssa.i528, %spec.select.v.i531 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 1 ; 3 uses
  store ptr %i.lk, ptr %i.d, align 8, !tbaa !17
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !10  ; 2 uses
  %i.lm = icmp eq i8 %i.ll, 105
  br i1 %i.lm, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ln = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 2 ; 3 uses
  store ptr %i.ln, ptr %i.d, align 8, !tbaa !17
  %.pre.i534 = load i8, ptr %i.ln, align 1, !tbaa !10
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.lcssa11841187.lcssa1194 = phi ptr [ %i.ln, %bb.ei ], [ %i.lk, %bb.eh ]
  %i.lo = phi i8 [ %.pre.i534, %bb.ei ], [ %i.ll, %bb.eh ]
  %i.lp = phi i64 [ 2, %bb.ei ], [ 1, %bb.eh ]
  %i.lq = icmp eq i8 %i.lo, 66
  br i1 %i.lq, label %bb.ek, label %readU32FromChar.exit539

bb.ek:                                            ; preds = %bb.ej
  %i.lr = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  br label %readU32FromChar.exit539

readU32FromChar.exit539:                          ; preds = %.critedge.i527, %bb.ej, %bb.ek
  %.lcssa11841187.lcssa1196 = phi ptr [ %i.ls, %bb.ek ], [ %.lcssa11841187.lcssa1194, %bb.ej ], [ %.lcssa11841187.lcssa1195, %.critedge.i527 ]
  %.2.i533 = phi i32 [ %spec.select.i532, %bb.ek ], [ %spec.select.i532, %bb.ej ], [ %.0.lcssa.i528, %.critedge.i527 ]
  %i.lt = getelementptr inbounds i8, ptr %.lcssa11841187.lcssa1196, i64 -1 ; 2 uses
  store ptr %i.lt, ptr %i.d, align 8, !tbaa !17
  %i.lu = load i32, ptr @displayLevel, align 4, !tbaa !12
  tail call void @BMK_setNotificationLevel(i32 noundef %i.lu) #22
  tail call void @BMK_setNbSeconds(i32 noundef %.2.i533) #22
  br label %.thread563

bb.el:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

.thread1544:                                      ; preds = %.tail734.thread.thread, %.tail734
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

.thread563.loopexit:                              ; preds = %.preheader739, %bb.dn
  store ptr %.lcssa11841187, ptr %i.d, align 8
  br label %.thread563

.thread563:                                       ; preds = %.thread563.loopexit, %bb.ee, %.tail734.thread.thread, %bb.dh, %bb.di, %bb.el, %readU32FromChar.exit539, %bb.ef, %bb.ed, %bb.ec, %bb.dj, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %readU32FromChar.exit509, %readU32FromChar.exit494
  %.lcssa11841187.lcssa1193 = phi ptr [ %i.lt, %readU32FromChar.exit539 ], [ %i.hp, %readU32FromChar.exit494 ], [ %i.ep, %bb.el ], [ %i.il, %readU32FromChar.exit509 ], [ %i.iw, %bb.da ], [ %i.ep, %bb.db ], [ %i.ep, %bb.dc ], [ %i.ep, %bb.dd ], [ %i.ep, %bb.de ], [ %i.ep, %bb.df ], [ %i.ep, %bb.dg ], [ %i.ep, %bb.di ], [ %i.ep, %bb.dh ], [ %i.ep, %bb.dj ], [ %i.ep, %bb.ef ], [ %i.ep, %bb.ee ], [ %i.ep, %bb.ec ], [ %i.ep, %bb.ed ], [ %i.ep, %.tail734.thread.thread ], [ %.lcssa11841187, %.thread563.loopexit ] ; 2 uses
  %.2340 = phi i32 [ %.1339.ph1208, %readU32FromChar.exit539 ], [ %.1339.ph1208, %readU32FromChar.exit494 ], [ %.1339.ph1208, %bb.el ], [ %.1339.ph1208, %readU32FromChar.exit509 ], [ %.1339.ph1208, %bb.da ], [ 1, %bb.db ], [ %.1339.ph1208, %bb.dc ], [ %.1339.ph1208, %bb.dd ], [ %.1339.ph1208, %bb.de ], [ %.1339.ph1208, %bb.df ], [ %.1339.ph1208, %bb.dg ], [ %.1339.ph1208, %bb.di ], [ %.1339.ph1208, %bb.dh ], [ %.1339.ph1208, %bb.dj ], [ %.1339.ph1208, %bb.ef ], [ %.1339.ph1208, %bb.ee ], [ %.1339.ph1208, %bb.ec ], [ %.1339.ph1208, %bb.ed ], [ %.1339.ph1208, %.tail734.thread.thread ], [ %.1339.ph1208, %.thread563.loopexit ] ; 2 uses
  %.3336 = phi i32 [ %.2335.ph1209, %readU32FromChar.exit539 ], [ %.2335.ph1209, %readU32FromChar.exit494 ], [ %.2335.ph1209, %bb.el ], [ %.2335.ph1209, %readU32FromChar.exit509 ], [ %.2335.ph1209, %bb.da ], [ %.2335.ph1209, %bb.db ], [ %.2335.ph1209, %bb.dc ], [ 1, %bb.dd ], [ %.2335.ph1209, %bb.de ], [ %.2335.ph1209, %bb.df ], [ %.2335.ph1209, %bb.dg ], [ %.2335.ph1209, %bb.di ], [ %.2335.ph1209, %bb.dh ], [ %.2335.ph1209, %bb.dj ], [ %.2335.ph1209, %bb.ef ], [ %.2335.ph1209, %bb.ee ], [ %.2335.ph1209, %bb.ec ], [ %.2335.ph1209, %bb.ed ], [ %.2335.ph1209, %.tail734.thread.thread ], [ %.2335.ph1209, %.thread563.loopexit ] ; 2 uses
  %.2331 = phi i32 [ %.1330.ph1210, %readU32FromChar.exit539 ], [ %.1330.ph1210, %readU32FromChar.exit494 ], [ %.1330.ph1210, %bb.el ], [ %.1330.ph1210, %readU32FromChar.exit509 ], [ %.1330.ph1210, %bb.da ], [ %.1330.ph1210, %bb.db ], [ %.1330.ph1210, %bb.dc ], [ %.1330.ph1210, %bb.dd ], [ %.1330.ph1210, %bb.de ], [ 1, %bb.df ], [ %.1330.ph1210, %bb.dg ], [ %.1330.ph1210, %bb.di ], [ %.1330.ph1210, %bb.dh ], [ %.1330.ph1210, %bb.dj ], [ %.1330.ph1210, %bb.ef ], [ %.1330.ph1210, %bb.ee ], [ %.1330.ph1210, %bb.ec ], [ %.1330.ph1210, %bb.ed ], [ %.1330.ph1210, %.tail734.thread.thread ], [ %.1330.ph1210, %.thread563.loopexit ] ; 2 uses
  %.2326 = phi i32 [ %.1325.ph1211, %readU32FromChar.exit539 ], [ %.1325.ph1211, %readU32FromChar.exit494 ], [ 1, %bb.el ], [ %.1325.ph1211, %readU32FromChar.exit509 ], [ %.1325.ph1211, %bb.da ], [ %.1325.ph1211, %bb.db ], [ %.1325.ph1211, %bb.dc ], [ %.1325.ph1211, %bb.dd ], [ %.1325.ph1211, %bb.de ], [ %.1325.ph1211, %bb.df ], [ %.1325.ph1211, %bb.dg ], [ %.1325.ph1211, %bb.di ], [ %.1325.ph1211, %bb.dh ], [ %.1325.ph1211, %bb.dj ], [ %.1325.ph1211, %bb.ef ], [ %.1325.ph1211, %bb.ee ], [ %.1325.ph1211, %bb.ec ], [ %.1325.ph1211, %bb.ed ], [ %.1325.ph1211, %.tail734.thread.thread ], [ %.1325.ph1211, %.thread563.loopexit ] ; 2 uses
  %.3321 = phi i32 [ %.2320.ph1212, %readU32FromChar.exit539 ], [ %.2320.ph1212, %readU32FromChar.exit494 ], [ %.2320.ph1212, %bb.el ], [ %.2320.ph1212, %readU32FromChar.exit509 ], [ %.2320.ph1212, %bb.da ], [ %.2320.ph1212, %bb.db ], [ %.2320.ph1212, %bb.dc ], [ %.2320.ph1212, %bb.dd ], [ %.2320.ph1212, %bb.de ], [ %.2320.ph1212, %bb.df ], [ %.2320.ph1212, %bb.dg ], [ %.2320.ph1212, %bb.di ], [ %.2320.ph1212, %bb.dh ], [ %.2320.ph1212, %bb.dj ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ec ], [ %.2320.ph1212, %bb.ed ], [ %.2320.ph1212, %.tail734.thread.thread ], [ %.2320.ph1212, %.thread563.loopexit ] ; 2 uses
  %.3308 = phi i32 [ %.2307.ph1213, %readU32FromChar.exit539 ], [ %.2307.ph1213, %readU32FromChar.exit494 ], [ %.2307.ph1213, %bb.el ], [ %.2.i503, %readU32FromChar.exit509 ], [ %.2307.ph1213, %bb.da ], [ %.2307.ph1213, %bb.db ], [ %.2307.ph1213, %bb.dc ], [ %.2307.ph1213, %bb.dd ], [ %.2307.ph1213, %bb.de ], [ %.2307.ph1213, %bb.df ], [ %.2307.ph1213, %bb.dg ], [ %.2307.ph1213, %bb.di ], [ %.2307.ph1213, %bb.dh ], [ %.2307.ph1213, %bb.dj ], [ %.2307.ph1213, %bb.ef ], [ %.2307.ph1213, %bb.ee ], [ %.2307.ph1213, %bb.ec ], [ %.2307.ph1213, %bb.ed ], [ %.2307.ph1213, %.tail734.thread.thread ], [ %.2307.ph1213, %.thread563.loopexit ] ; 2 uses
  %.4299 = phi i32 [ %.3298.ph1214, %readU32FromChar.exit539 ], [ %.3298.ph1214, %readU32FromChar.exit494 ], [ %.3298.ph1214, %bb.el ], [ %.3298.ph1214, %readU32FromChar.exit509 ], [ %.3298.ph1214, %bb.da ], [ %.3298.ph1214, %bb.db ], [ %spec.store.select2, %bb.dc ], [ %.3298.ph1214, %bb.dd ], [ 3, %bb.de ], [ %.3298.ph1214, %bb.df ], [ %.3298.ph1214, %bb.dg ], [ %.3298.ph1214, %bb.di ], [ %.3298.ph1214, %bb.dh ], [ %.3298.ph1214, %bb.dj ], [ %.3298.ph1214, %bb.ef ], [ %.3298.ph1214, %bb.ee ], [ 4, %bb.ec ], [ %.3298.ph1214, %bb.ed ], [ 1, %.tail734.thread.thread ], [ %.3298.ph1214, %.thread563.loopexit ] ; 2 uses
  %.4288 = phi ptr [ %.3287.ph1215, %readU32FromChar.exit539 ], [ %.3287.ph1215, %readU32FromChar.exit494 ], [ %.3287.ph1215, %bb.el ], [ %.3287.ph1215, %readU32FromChar.exit509 ], [ %.3287.ph1215, %bb.da ], [ %.3287.ph1215, %bb.db ], [ %.3287.ph1215, %bb.dc ], [ @.str.3, %bb.dd ], [ %.3287.ph1215, %bb.de ], [ %.3287.ph1215, %bb.df ], [ %.3287.ph1215, %bb.dg ], [ %.3287.ph1215, %bb.di ], [ %.3287.ph1215, %bb.dh ], [ %.3287.ph1215, %bb.dj ], [ %.3287.ph1215, %bb.ef ], [ %.3287.ph1215, %bb.ee ], [ %.3287.ph1215, %bb.ec ], [ %.3287.ph1215, %bb.ed ], [ %.3287.ph1215, %.tail734.thread.thread ], [ %.3287.ph1215, %.thread563.loopexit ] ; 2 uses
  %.3282 = phi ptr [ %.1280.ph1216, %readU32FromChar.exit539 ], [ %.1280.ph1216, %readU32FromChar.exit494 ], [ %.1280.ph1216, %bb.el ], [ %.1280.ph1216, %readU32FromChar.exit509 ], [ %.2281, %bb.da ], [ %.1280.ph1216, %bb.db ], [ %.1280.ph1216, %bb.dc ], [ %.1280.ph1216, %bb.dd ], [ %.1280.ph1216, %bb.de ], [ %.1280.ph1216, %bb.df ], [ %.1280.ph1216, %bb.dg ], [ %.1280.ph1216, %bb.di ], [ %.1280.ph1216, %bb.dh ], [ %.1280.ph1216, %bb.dj ], [ %.1280.ph1216, %bb.ef ], [ %.1280.ph1216, %bb.ee ], [ %.1280.ph1216, %bb.ec ], [ %.1280.ph1216, %bb.ed ], [ %.1280.ph1216, %.tail734.thread.thread ], [ %.1280.ph1216, %.thread563.loopexit ] ; 2 uses
  %.5266 = phi i64 [ %.1262.ph1217, %readU32FromChar.exit539 ], [ %.1262.ph1217, %readU32FromChar.exit494 ], [ %.1262.ph1217, %bb.el ], [ %.1262.ph1217, %readU32FromChar.exit509 ], [ %.1262.ph1217, %bb.da ], [ 8388608, %bb.db ], [ %.1262.ph1217, %bb.dc ], [ %.1262.ph1217, %bb.dd ], [ %.1262.ph1217, %bb.de ], [ %.1262.ph1217, %bb.df ], [ %.1262.ph1217, %bb.dg ], [ %.1262.ph1217, %bb.di ], [ %.1262.ph1217, %bb.dh ], [ %.1262.ph1217, %bb.dj ], [ %.1262.ph1217, %bb.ef ], [ %.1262.ph1217, %bb.ee ], [ %.1262.ph1217, %bb.ec ], [ %.1262.ph1217, %bb.ed ], [ %.1262.ph1217, %.tail734.thread.thread ], [ %.2263, %.thread563.loopexit ] ; 2 uses
  %.3259 = phi i32 [ %.1257.ph1218, %readU32FromChar.exit539 ], [ %.1257.ph1218, %readU32FromChar.exit494 ], [ %.1257.ph1218, %bb.el ], [ %.1257.ph1218, %readU32FromChar.exit509 ], [ %.1257.ph1218, %bb.da ], [ %.1257.ph1218, %bb.db ], [ %.1257.ph1218, %bb.dc ], [ %.1257.ph1218, %bb.dd ], [ %.1257.ph1218, %bb.de ], [ %.1257.ph1218, %bb.df ], [ %.1257.ph1218, %bb.dg ], [ %.1257.ph1218, %bb.di ], [ %.1257.ph1218, %bb.dh ], [ %.1257.ph1218, %bb.dj ], [ %.1257.ph1218, %bb.ef ], [ 1, %bb.ee ], [ %.1257.ph1218, %bb.ec ], [ %.1257.ph1218, %bb.ed ], [ %.1257.ph1218, %.tail734.thread.thread ], [ %.1257.ph1218, %.thread563.loopexit ] ; 2 uses
  %.2250 = phi i32 [ %.1249.ph1219, %readU32FromChar.exit539 ], [ %.2.i488, %readU32FromChar.exit494 ], [ %.1249.ph1219, %bb.el ], [ %.1249.ph1219, %readU32FromChar.exit509 ], [ %.1249.ph1219, %bb.da ], [ %.1249.ph1219, %bb.db ], [ %.1249.ph1219, %bb.dc ], [ %.1249.ph1219, %bb.dd ], [ %.1249.ph1219, %bb.de ], [ %.1249.ph1219, %bb.df ], [ %.1249.ph1219, %bb.dg ], [ %.1249.ph1219, %bb.di ], [ %.1249.ph1219, %bb.dh ], [ %.1249.ph1219, %bb.dj ], [ %.1249.ph1219, %bb.ef ], [ %.1249.ph1219, %bb.ee ], [ %.1249.ph1219, %bb.ec ], [ %.1249.ph1219, %bb.ed ], [ %.1249.ph1219, %.tail734.thread.thread ], [ %.1249.ph1219, %.thread563.loopexit ] ; 2 uses
  %.5 = phi i32 [ %.3.ph1221, %readU32FromChar.exit539 ], [ %.3.ph1221, %readU32FromChar.exit494 ], [ %.3.ph1221, %bb.el ], [ %.3.ph1221, %readU32FromChar.exit509 ], [ %.4, %bb.da ], [ %.3.ph1221, %bb.db ], [ %.3.ph1221, %bb.dc ], [ %.3.ph1221, %bb.dd ], [ %.3.ph1221, %bb.de ], [ %.3.ph1221, %bb.df ], [ %.3.ph1221, %bb.dg ], [ %.3.ph1221, %bb.di ], [ %.3.ph1221, %bb.dh ], [ %.3.ph1221, %bb.dj ], [ %.3.ph1221, %bb.ef ], [ %.3.ph1221, %bb.ee ], [ %.3.ph1221, %bb.ec ], [ %.3.ph1221, %bb.ed ], [ %.3.ph1221, %.tail734.thread.thread ], [ %.3.ph1221, %.thread563.loopexit ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1193, i64 1 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !10  ; 2 uses
  %.not42911121149 = icmp eq i8 %i.lw, 0
  br i1 %.not42911121149, label %.thread566, label %.lr.ph.lr.ph, !llvm.loop !20

bb.em:                                            ; preds = %bb.o, %bb.n
  %.not448 = icmp eq i32 %.13191242, 0
  br i1 %.not448, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.lx = add i32 %.02681250, 1
  %i.ly = zext i32 %.02681250 to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ly
  store ptr %i.bm, ptr %i.lz, align 8, !tbaa !17
  br label %.thread566

bb.eo:                                            ; preds = %bb.em
  %.not449 = icmp eq ptr %.02911247, null
  br i1 %.not449, label %.thread566, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.not450 = icmp eq ptr %.12851248, null
  br i1 %.not450, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ma = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(5) @.str.124) #25
  %.not451 = icmp eq i32 %i.ma, 0
  %spec.store.select3 = select i1 %.not451, ptr @.str.48, ptr %i.bm
  br label %.thread566

bb.er:                                            ; preds = %bb.ep
  %i.mb = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not452 = icmp eq i32 %i.mb, 0
  br i1 %.not452, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !15
  %.not453 = icmp eq i32 %.03291240, 0
  %i.md = select i1 %.not453, ptr @.str.51, ptr @.str.50
  %i.me = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.md, ptr noundef nonnull %i.bm) #23 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.not454 = icmp eq i32 %.03291240, 0
  br i1 %.not454, label %bb.eu, label %.thread566

bb.eu:                                            ; preds = %bb.et
  tail call void @exit(i32 noundef 1) #27
  unreachable

.thread621:                                       ; preds = %bb.ba, %bb.ck, %.tail734.thread.thread.thread, %bb.cl, %bb.bc
  %.3327.ph610 = phi i32 [ %.03241241, %bb.bc ], [ %.1325.ph1211, %bb.cl ], [ %.1325.ph1211, %.tail734.thread.thread.thread ], [ %.1325.ph1211, %bb.ck ], [ %.03241241, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hs

.thread643:                                       ; preds = %bb.bo, %bb.bl, %bb.bm, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hs

bb.ev:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.thread566

.thread566:                                       ; preds = %.thread563, %.outer740.backedge, %bb.cf, %bb.eo, %bb.bv, %bb.bt, %bb.ay, %bb.ac, %.lr.ph1256, %.tail, %bb.u, %bb.r, %bb.v, %bb.y, %bb.aa, %bb.w, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ab, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.an, %bb.be, %bb.bg, %bb.by, %bb.ax, %bb.q, %bb.et, %bb.eq, %bb.en, %bb.bz, %bb.ev
  %.6605 = phi i32 [ %.1, %bb.ev ], [ %.02391255, %bb.eo ], [ %.02391255, %bb.en ], [ %.02391255, %bb.bv ], [ %.02391255, %bb.bt ], [ %.02391255, %bb.ay ], [ %.02391255, %bb.ac ], [ %.02391255, %.lr.ph1256 ], [ %.02391255, %.tail ], [ %.02391255, %bb.u ], [ %.02391255, %bb.r ], [ %.02391255, %bb.v ], [ %.02391255, %bb.y ], [ %.02391255, %bb.aa ], [ %.02391255, %bb.w ], [ %.02391255, %bb.ae ], [ %.02391255, %bb.ag ], [ %.02391255, %bb.ai ], [ %.02391255, %bb.ak ], [ %.02391255, %bb.am ], [ %.02391255, %bb.ab ], [ %.02391255, %bb.ap ], [ %.02391255, %bb.ar ], [ %.02391255, %bb.at ], [ %.02391255, %bb.av ], [ %.02391255, %bb.an ], [ %.02391255, %bb.be ], [ %.02391255, %bb.bg ], [ %.02391255, %bb.eq ], [ %.02391255, %bb.by ], [ %.02391255, %bb.ax ], [ %.02391255, %bb.q ], [ %.02391255, %bb.et ], [ %.3.ph1221, %bb.cf ], [ %.3.ph1221, %.outer740.backedge ], [ %.02391255, %bb.bz ], [ %.5, %.thread563 ]
  %.4244604 = phi i32 [ %.02401254, %bb.ev ], [ %.02401254, %bb.eo ], [ %.02401254, %bb.en ], [ %i.eg, %bb.bv ], [ -1, %bb.bt ], [ %.02401254, %bb.ay ], [ %.02401254, %bb.ac ], [ %.02401254, %.lr.ph1256 ], [ %.02401254, %.tail ], [ %.02401254, %bb.u ], [ %.02401254, %bb.r ], [ %.02401254, %bb.v ], [ %.02401254, %bb.y ], [ %.02401254, %bb.aa ], [ %.02401254, %bb.w ], [ %.02401254, %bb.ae ], [ %.02401254, %bb.ag ], [ %.02401254, %bb.ai ], [ %.02401254, %bb.ak ], [ %.02401254, %bb.am ], [ %.02401254, %bb.ab ], [ %.02401254, %bb.ap ], [ %.02401254, %bb.ar ], [ %.02401254, %bb.at ], [ %.02401254, %bb.av ], [ %.02401254, %bb.an ], [ %.02401254, %bb.be ], [ %.02401254, %bb.bg ], [ %.02401254, %bb.eq ], [ 12, %bb.by ], [ %.02401254, %bb.ax ], [ %.02401254, %bb.q ], [ %.02401254, %bb.et ], [ %.3243.ph7411151, %bb.cf ], [ %.3243.ph741.be, %.outer740.backedge ], [ %.02401254, %bb.bz ], [ %.3243.ph7411151, %.thread563 ] ; 2 uses
  %.3251603 = phi i32 [ %.02481253, %bb.ev ], [ %.02481253, %bb.eo ], [ %.02481253, %bb.en ], [ %.02481253, %bb.bv ], [ %.02481253, %bb.bt ], [ %.02481253, %bb.ay ], [ %.02481253, %bb.ac ], [ %.02481253, %.lr.ph1256 ], [ %.02481253, %.tail ], [ %.02481253, %bb.u ], [ %.02481253, %bb.r ], [ %.02481253, %bb.v ], [ %.02481253, %bb.y ], [ %.02481253, %bb.aa ], [ %.02481253, %bb.w ], [ %.02481253, %bb.ae ], [ %.02481253, %bb.ag ], [ %.02481253, %bb.ai ], [ %.02481253, %bb.ak ], [ %.02481253, %bb.am ], [ %.02481253, %bb.ab ], [ %.02481253, %bb.ap ], [ %.02481253, %bb.ar ], [ %.02481253, %bb.at ], [ %.02481253, %bb.av ], [ %.02481253, %bb.an ], [ %.02481253, %bb.be ], [ %.02481253, %bb.bg ], [ %.02481253, %bb.eq ], [ %.02481253, %bb.by ], [ %.02481253, %bb.ax ], [ %.02481253, %bb.q ], [ %.02481253, %bb.et ], [ %.1249.ph1219, %bb.cf ], [ %.1249.ph1219, %.outer740.backedge ], [ %.02481253, %bb.bz ], [ %.2250, %.thread563 ] ; 2 uses
  %.4260602 = phi i32 [ %.02561252, %bb.ev ], [ %.02561252, %bb.eo ], [ %.02561252, %bb.en ], [ %.02561252, %bb.bv ], [ %.02561252, %bb.bt ], [ %.02561252, %bb.ay ], [ %.02561252, %bb.ac ], [ %.02561252, %.lr.ph1256 ], [ %.02561252, %.tail ], [ %.02561252, %bb.u ], [ %.02561252, %bb.r ], [ %.02561252, %bb.v ], [ %.02561252, %bb.y ], [ %.02561252, %bb.aa ], [ %.02561252, %bb.w ], [ %.02561252, %bb.ae ], [ %.02561252, %bb.ag ], [ %.02561252, %bb.ai ], [ %.02561252, %bb.ak ], [ %.02561252, %bb.am ], [ %.02561252, %bb.ab ], [ %.02561252, %bb.ap ], [ %.02561252, %bb.ar ], [ %.02561252, %bb.at ], [ %.02561252, %bb.av ], [ %.02561252, %bb.an ], [ %.02561252, %bb.be ], [ %.02561252, %bb.bg ], [ %.02561252, %bb.eq ], [ %.02561252, %bb.by ], [ %.02561252, %bb.ax ], [ %.02561252, %bb.q ], [ %.02561252, %bb.et ], [ %.1257.ph1218, %bb.cf ], [ %.1257.ph1218, %.outer740.backedge ], [ %.02561252, %bb.bz ], [ %.3259, %.thread563 ] ; 2 uses
  %.6267601 = phi i64 [ %.02611251, %bb.ev ], [ %.02611251, %bb.eo ], [ %.02611251, %bb.en ], [ %.02611251, %bb.bv ], [ %.02611251, %bb.bt ], [ %.02611251, %bb.ay ], [ %.02611251, %bb.ac ], [ %.02611251, %.lr.ph1256 ], [ %.02611251, %.tail ], [ %.02611251, %bb.u ], [ %.02611251, %bb.r ], [ %.02611251, %bb.v ], [ %.02611251, %bb.y ], [ %.02611251, %bb.aa ], [ %.02611251, %bb.w ], [ %.02611251, %bb.ae ], [ %.02611251, %bb.ag ], [ %.02611251, %bb.ai ], [ %.02611251, %bb.ak ], [ %.02611251, %bb.am ], [ %.02611251, %bb.ab ], [ %.02611251, %bb.ap ], [ %.02611251, %bb.ar ], [ %.02611251, %bb.at ], [ %.02611251, %bb.av ], [ %.02611251, %bb.an ], [ %.02611251, %bb.be ], [ %.02611251, %bb.bg ], [ %.02611251, %bb.eq ], [ %.02611251, %bb.by ], [ %.02611251, %bb.ax ], [ %.02611251, %bb.q ], [ %.02611251, %bb.et ], [ %.1262.ph1217, %bb.cf ], [ %.1262.ph1217, %.outer740.backedge ], [ %.02611251, %bb.bz ], [ %.5266, %.thread563 ] ; 2 uses
  %.1269600 = phi i32 [ %.02681250, %bb.ev ], [ %.02681250, %bb.eo ], [ %i.lx, %bb.en ], [ %.02681250, %bb.bv ], [ %.02681250, %bb.bt ], [ %.02681250, %bb.ay ], [ %.02681250, %bb.ac ], [ %.02681250, %.lr.ph1256 ], [ %.02681250, %.tail ], [ %.02681250, %bb.u ], [ %.02681250, %bb.r ], [ %.02681250, %bb.v ], [ %.02681250, %bb.y ], [ %.02681250, %bb.aa ], [ %.02681250, %bb.w ], [ %.02681250, %bb.ae ], [ %.02681250, %bb.ag ], [ %.02681250, %bb.ai ], [ %.02681250, %bb.ak ], [ %.02681250, %bb.am ], [ %.02681250, %bb.ab ], [ %.02681250, %bb.ap ], [ %.02681250, %bb.ar ], [ %.02681250, %bb.at ], [ %.02681250, %bb.av ], [ %.02681250, %bb.an ], [ %.02681250, %bb.be ], [ %.02681250, %bb.bg ], [ %.02681250, %bb.eq ], [ %.02681250, %bb.by ], [ %.02681250, %bb.ax ], [ %.02681250, %bb.q ], [ %.02681250, %bb.et ], [ %.02681250, %bb.cf ], [ %.02681250, %.outer740.backedge ], [ %.02681250, %bb.bz ], [ %.02681250, %.thread563 ] ; 2 uses
  %.4283599 = phi ptr [ %.02791249, %bb.ev ], [ %.02791249, %bb.eo ], [ %.02791249, %bb.en ], [ %.02791249, %bb.bv ], [ %.02791249, %bb.bt ], [ %.02791249, %bb.ay ], [ %.02791249, %bb.ac ], [ %.02791249, %.lr.ph1256 ], [ %.02791249, %.tail ], [ %.02791249, %bb.u ], [ %.02791249, %bb.r ], [ %.02791249, %bb.v ], [ %.02791249, %bb.y ], [ %.02791249, %bb.aa ], [ %.02791249, %bb.w ], [ %.02791249, %bb.ae ], [ %.02791249, %bb.ag ], [ %.02791249, %bb.ai ], [ %.02791249, %bb.ak ], [ %.02791249, %bb.am ], [ %.02791249, %bb.ab ], [ %.02791249, %bb.ap ], [ %.02791249, %bb.ar ], [ %.02791249, %bb.at ], [ %.02791249, %bb.av ], [ %.02791249, %bb.an ], [ %.02791249, %bb.be ], [ %.02791249, %bb.bg ], [ %.02791249, %bb.eq ], [ %.02791249, %bb.by ], [ %.02791249, %bb.ax ], [ %.02791249, %bb.q ], [ %.02791249, %bb.et ], [ %.1280.ph1216, %bb.cf ], [ %.1280.ph1216, %.outer740.backedge ], [ %.02791249, %bb.bz ], [ %.3282, %.thread563 ] ; 2 uses
  %.5289598 = phi ptr [ %.12851248, %bb.ev ], [ %.12851248, %bb.eo ], [ %.12851248, %bb.en ], [ %.12851248, %bb.bv ], [ %.12851248, %bb.bt ], [ %.12851248, %bb.ay ], [ @.str.3, %bb.ac ], [ %.12851248, %.lr.ph1256 ], [ %.12851248, %.tail ], [ %.12851248, %bb.u ], [ %.12851248, %bb.r ], [ %.12851248, %bb.v ], [ %.12851248, %bb.y ], [ %.12851248, %bb.aa ], [ %.12851248, %bb.w ], [ %.12851248, %bb.ae ], [ %.12851248, %bb.ag ], [ %.12851248, %bb.ai ], [ %.12851248, %bb.ak ], [ %.12851248, %bb.am ], [ @.str.3, %bb.ab ], [ %.12851248, %bb.ap ], [ %.12851248, %bb.ar ], [ %.12851248, %bb.at ], [ %.12851248, %bb.av ], [ %.12851248, %bb.an ], [ %.12851248, %bb.be ], [ %.12851248, %bb.bg ], [ %spec.store.select3, %bb.eq ], [ %.12851248, %bb.by ], [ %.12851248, %bb.ax ], [ %.1285..str.3, %bb.q ], [ %.12851248, %bb.et ], [ %.3287.ph1215, %bb.cf ], [ %.3287.ph1215, %.outer740.backedge ], [ %.12851248, %bb.bz ], [ %.4288, %.thread563 ] ; 2 uses
  %.2293597 = phi ptr [ %.02911247, %bb.ev ], [ %i.bm, %bb.eo ], [ %.02911247, %bb.en ], [ %.02911247, %bb.bv ], [ %.02911247, %bb.bt ], [ %.02911247, %bb.ay ], [ %.02911247, %bb.ac ], [ %.02911247, %.lr.ph1256 ], [ %.02911247, %.tail ], [ %.02911247, %bb.u ], [ %.02911247, %bb.r ], [ %.02911247, %bb.v ], [ %.02911247, %bb.y ], [ %.02911247, %bb.aa ], [ %.02911247, %bb.w ], [ %.02911247, %bb.ae ], [ %.02911247, %bb.ag ], [ %.02911247, %bb.ai ], [ %.02911247, %bb.ak ], [ %.02911247, %bb.am ], [ %.02911247, %bb.ab ], [ %.02911247, %bb.ap ], [ %.02911247, %bb.ar ], [ %.02911247, %bb.at ], [ %.02911247, %bb.av ], [ %.02911247, %bb.an ], [ %.02911247, %bb.be ], [ %.02911247, %bb.bg ], [ %.02911247, %bb.eq ], [ %.02911247, %bb.by ], [ %.02911247, %bb.ax ], [ %.str.1..0291, %bb.q ], [ %.02911247, %bb.et ], [ %.02911247, %bb.cf ], [ %.02911247, %.outer740.backedge ], [ %.02911247, %bb.bz ], [ %.02911247, %.thread563 ] ; 2 uses
  %.5300596 = phi i32 [ %.22971246, %bb.ev ], [ %.22971246, %bb.eo ], [ %.22971246, %bb.en ], [ %.22971246, %bb.bv ], [ %.22971246, %bb.bt ], [ %.22971246, %bb.ay ], [ %.22971246, %bb.ac ], [ %.22971246, %.lr.ph1256 ], [ %.22971246, %.tail ], [ %spec.store.select, %bb.u ], [ 1, %bb.r ], [ %.22971246, %bb.v ], [ %.22971246, %bb.y ], [ %.22971246, %bb.aa ], [ 3, %bb.w ], [ %.22971246, %bb.ae ], [ %.22971246, %bb.ag ], [ %.22971246, %bb.ai ], [ %.22971246, %bb.ak ], [ %.22971246, %bb.am ], [ %.22971246, %bb.ab ], [ %.22971246, %bb.ap ], [ %.22971246, %bb.ar ], [ %.22971246, %bb.at ], [ %.22971246, %bb.av ], [ 5, %bb.an ], [ %.22971246, %bb.be ], [ %.22971246, %bb.bg ], [ %.22971246, %bb.eq ], [ %.22971246, %bb.by ], [ %.22971246, %bb.ax ], [ %.22971246, %bb.q ], [ %.22971246, %bb.et ], [ %.3298.ph1214, %bb.cf ], [ %.3298.ph1214, %.outer740.backedge ], [ %.22971246, %bb.bz ], [ %.4299, %.thread563 ] ; 2 uses
  %.4309595 = phi i32 [ %i.dy, %bb.ev ], [ %.03051245, %bb.eo ], [ %.03051245, %bb.en ], [ %.03051245, %bb.bv ], [ %.03051245, %bb.bt ], [ %.03051245, %bb.ay ], [ %.03051245, %bb.ac ], [ %.03051245, %.lr.ph1256 ], [ %.03051245, %.tail ], [ %.03051245, %bb.u ], [ %.03051245, %bb.r ], [ %.03051245, %bb.v ], [ %.03051245, %bb.y ], [ %.03051245, %bb.aa ], [ %.03051245, %bb.w ], [ %.03051245, %bb.ae ], [ %.03051245, %bb.ag ], [ %.03051245, %bb.ai ], [ %.03051245, %bb.ak ], [ %.03051245, %bb.am ], [ %.03051245, %bb.ab ], [ %.03051245, %bb.ap ], [ %.03051245, %bb.ar ], [ %.03051245, %bb.at ], [ %.03051245, %bb.av ], [ %.03051245, %bb.an ], [ %.03051245, %bb.be ], [ %.03051245, %bb.bg ], [ %.03051245, %bb.eq ], [ %.03051245, %bb.by ], [ %.03051245, %bb.ax ], [ %.03051245, %bb.q ], [ %.03051245, %bb.et ], [ %.2307.ph1213, %bb.cf ], [ %.2307.ph1213, %.outer740.backedge ], [ %.03051245, %bb.bz ], [ %.3308, %.thread563 ] ; 2 uses
  %.1311594 = phi i32 [ %.03101244, %bb.ev ], [ %.03101244, %bb.eo ], [ %.03101244, %bb.en ], [ %.03101244, %bb.bv ], [ %.03101244, %bb.bt ], [ %.03101244, %bb.ay ], [ %.03101244, %bb.ac ], [ %.03101244, %.lr.ph1256 ], [ %.03101244, %.tail ], [ %.03101244, %bb.u ], [ %.03101244, %bb.r ], [ %.03101244, %bb.v ], [ %.03101244, %bb.y ], [ %.03101244, %bb.aa ], [ %.03101244, %bb.w ], [ %.03101244, %bb.ae ], [ %.03101244, %bb.ag ], [ %.03101244, %bb.ai ], [ 1, %bb.ak ], [ %.03101244, %bb.am ], [ %.03101244, %bb.ab ], [ %.03101244, %bb.ap ], [ %.03101244, %bb.ar ], [ %.03101244, %bb.at ], [ %.03101244, %bb.av ], [ %.03101244, %bb.an ], [ %.03101244, %bb.be ], [ %.03101244, %bb.bg ], [ %.03101244, %bb.eq ], [ %.03101244, %bb.by ], [ %.03101244, %bb.ax ], [ %.03101244, %bb.q ], [ %.03101244, %bb.et ], [ %.03101244, %bb.cf ], [ %.03101244, %.outer740.backedge ], [ %.03101244, %bb.bz ], [ %.03101244, %.thread563 ] ; 2 uses
  %.1317592 = phi i32 [ 0, %bb.ev ], [ %.03161243, %bb.eo ], [ %.03161243, %bb.en ], [ 0, %bb.bv ], [ 0, %bb.bt ], [ 0, %bb.ay ], [ 0, %bb.ac ], [ %.03161243, %.lr.ph1256 ], [ 1, %.tail ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.an ], [ 0, %bb.be ], [ 0, %bb.bg ], [ %.03161243, %bb.eq ], [ 0, %bb.by ], [ 0, %bb.ax ], [ 0, %bb.q ], [ %.03161243, %bb.et ], [ 0, %bb.cf ], [ 0, %.outer740.backedge ], [ 0, %bb.bz ], [ 0, %.thread563 ]
  %.4322591 = phi i32 [ %.13191242, %bb.ev ], [ 0, %bb.eo ], [ 1, %bb.en ], [ %.13191242, %bb.bv ], [ %.13191242, %bb.bt ], [ %.13191242, %bb.ay ], [ %.13191242, %bb.ac ], [ %.13191242, %.lr.ph1256 ], [ %.13191242, %.tail ], [ %.13191242, %bb.u ], [ %.13191242, %bb.r ], [ 1, %bb.v ], [ %.13191242, %bb.y ], [ %.13191242, %bb.aa ], [ %.13191242, %bb.w ], [ %.13191242, %bb.ae ], [ %.13191242, %bb.ag ], [ %.13191242, %bb.ai ], [ %.13191242, %bb.ak ], [ %.13191242, %bb.am ], [ %.13191242, %bb.ab ], [ %.13191242, %bb.ap ], [ %.13191242, %bb.ar ], [ %.13191242, %bb.at ], [ %.13191242, %bb.av ], [ 1, %bb.an ], [ %.13191242, %bb.be ], [ %.13191242, %bb.bg ], [ 0, %bb.eq ], [ %.13191242, %bb.by ], [ %.13191242, %bb.ax ], [ %.13191242, %bb.q ], [ 0, %bb.et ], [ %.2320.ph1212, %bb.cf ], [ %.2320.ph1212, %.outer740.backedge ], [ %.13191242, %bb.bz ], [ %.3321, %.thread563 ] ; 2 uses
  %.3327590 = phi i32 [ %.03241241, %bb.ev ], [ %.03241241, %bb.eo ], [ %.03241241, %bb.en ], [ %.03241241, %bb.bv ], [ %.03241241, %bb.bt ], [ %.03241241, %bb.ay ], [ %.03241241, %bb.ac ], [ %.03241241, %.lr.ph1256 ], [ %.03241241, %.tail ], [ %.03241241, %bb.u ], [ %.03241241, %bb.r ], [ %.03241241, %bb.v ], [ %.03241241, %bb.y ], [ %.03241241, %bb.aa ], [ %.03241241, %bb.w ], [ %.03241241, %bb.ae ], [ %.03241241, %bb.ag ], [ %.03241241, %bb.ai ], [ %.03241241, %bb.ak ], [ %.03241241, %bb.am ], [ %.03241241, %bb.ab ], [ %.03241241, %bb.ap ], [ %.03241241, %bb.ar ], [ %.03241241, %bb.at ], [ %.03241241, %bb.av ], [ %.03241241, %bb.an ], [ %.03241241, %bb.be ], [ %.03241241, %bb.bg ], [ %.03241241, %bb.eq ], [ %.03241241, %bb.by ], [ %.03241241, %bb.ax ], [ %.03241241, %bb.q ], [ %.03241241, %bb.et ], [ %.1325.ph1211, %bb.cf ], [ %.1325.ph1211, %.outer740.backedge ], [ %.03241241, %bb.bz ], [ %.2326, %.thread563 ] ; 2 uses
  %.3332589 = phi i32 [ %.03291240, %bb.ev ], [ %.03291240, %bb.eo ], [ %.03291240, %bb.en ], [ %.03291240, %bb.bv ], [ %.03291240, %bb.bt ], [ %.03291240, %bb.ay ], [ %.03291240, %bb.ac ], [ %.03291240, %.lr.ph1256 ], [ %.03291240, %.tail ], [ %.03291240, %bb.u ], [ %.03291240, %bb.r ], [ %.03291240, %bb.v ], [ %.03291240, %bb.y ], [ %.03291240, %bb.aa ], [ %.03291240, %bb.w ], [ %.03291240, %bb.ae ], [ %.03291240, %bb.ag ], [ %.03291240, %bb.ai ], [ %.03291240, %bb.ak ], [ %.03291240, %bb.am ], [ %.03291240, %bb.ab ], [ %.03291240, %bb.ap ], [ %.03291240, %bb.ar ], [ %.03291240, %bb.at ], [ %.03291240, %bb.av ], [ %.03291240, %bb.an ], [ %.03291240, %bb.be ], [ %.03291240, %bb.bg ], [ %.03291240, %bb.eq ], [ %.03291240, %bb.by ], [ %.03291240, %bb.ax ], [ %.03291240, %bb.q ], [ 1, %bb.et ], [ %.1330.ph1210, %bb.cf ], [ %.1330.ph1210, %.outer740.backedge ], [ %.03291240, %bb.bz ], [ %.2331, %.thread563 ]
  %.4337588 = phi i32 [ %.13341239, %bb.ev ], [ %.13341239, %bb.eo ], [ %.13341239, %bb.en ], [ %.13341239, %bb.bv ], [ %.13341239, %bb.bt ], [ %.13341239, %bb.ay ], [ 1, %bb.ac ], [ %.13341239, %.lr.ph1256 ], [ %.13341239, %.tail ], [ %.13341239, %bb.u ], [ %.13341239, %bb.r ], [ %.13341239, %bb.v ], [ %.13341239, %bb.y ], [ %.13341239, %bb.aa ], [ %.13341239, %bb.w ], [ %.13341239, %bb.ae ], [ %.13341239, %bb.ag ], [ %.13341239, %bb.ai ], [ %.13341239, %bb.ak ], [ %.13341239, %bb.am ], [ 1, %bb.ab ], [ %.13341239, %bb.ap ], [ %.13341239, %bb.ar ], [ %.13341239, %bb.at ], [ %.13341239, %bb.av ], [ %.13341239, %bb.an ], [ %.13341239, %bb.be ], [ %.13341239, %bb.bg ], [ %.13341239, %bb.eq ], [ %.13341239, %bb.by ], [ %.13341239, %bb.ax ], [ %.13341239, %bb.q ], [ %.13341239, %bb.et ], [ %.2335.ph1209, %bb.cf ], [ %.2335.ph1209, %.outer740.backedge ], [ %.13341239, %bb.bz ], [ %.3336, %.thread563 ] ; 2 uses
  %.3341587 = phi i32 [ %.03381238, %bb.ev ], [ %.03381238, %bb.eo ], [ %.03381238, %bb.en ], [ %.03381238, %bb.bv ], [ %.03381238, %bb.bt ], [ %.03381238, %bb.ay ], [ %.03381238, %bb.ac ], [ %.03381238, %.lr.ph1256 ], [ %.03381238, %.tail ], [ %.03381238, %bb.u ], [ %.03381238, %bb.r ], [ %.03381238, %bb.v ], [ %.03381238, %bb.y ], [ %.03381238, %bb.aa ], [ %.03381238, %bb.w ], [ %.03381238, %bb.ae ], [ %.03381238, %bb.ag ], [ %.03381238, %bb.ai ], [ %.03381238, %bb.ak ], [ %.03381238, %bb.am ], [ %.03381238, %bb.ab ], [ %.03381238, %bb.ap ], [ %.03381238, %bb.ar ], [ %.03381238, %bb.at ], [ %.03381238, %bb.av ], [ %.03381238, %bb.an ], [ %.03381238, %bb.be ], [ %.03381238, %bb.bg ], [ %.03381238, %bb.eq ], [ %.03381238, %bb.by ], [ %.03381238, %bb.ax ], [ %.03381238, %bb.q ], [ %.03381238, %bb.et ], [ %.1339.ph1208, %bb.cf ], [ %.1339.ph1208, %.outer740.backedge ], [ %.03381238, %bb.bz ], [ %.2340, %.thread563 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.mf = add nsw i32 %.6605, 1                   ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %0
  br i1 %i.mg, label %.lr.ph1256, label %._crit_edge.loopexit, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.thread566
  %i.mh = icmp eq i32 %.4260602, 0
  %6 = trunc nuw i32 %.1311594 to i1
  %i.mi = icmp eq i32 %.3341587, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %exeNameMatch.exit477.thread
  %.0338.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %i.mi, %._crit_edge.loopexit ]
  %.1334.lcssa = phi i32 [ %.0318, %exeNameMatch.exit477.thread ], [ %.4337588, %._crit_edge.loopexit ]
  %.0324.lcssa = phi i32 [ 0, %exeNameMatch.exit477.thread ], [ %.3327590, %._crit_edge.loopexit ] ; 8 uses
  %.1319.lcssa = phi i32 [ %.0318, %exeNameMatch.exit477.thread ], [ %.4322591, %._crit_edge.loopexit ] ; 4 uses
  %.0310.lcssa = phi i1 [ false, %exeNameMatch.exit477.thread ], [ %6, %._crit_edge.loopexit ]
  %.0305.lcssa = phi i32 [ %.1.i463, %exeNameMatch.exit477.thread ], [ %.4309595, %._crit_edge.loopexit ]
  %.2297.lcssa = phi i32 [ %i.bf, %exeNameMatch.exit477.thread ], [ %.5300596, %._crit_edge.loopexit ] ; 4 uses
  %.0291.lcssa = phi ptr [ null, %exeNameMatch.exit477.thread ], [ %.2293597, %._crit_edge.loopexit ]
  %.1285.lcssa = phi ptr [ %.0284, %exeNameMatch.exit477.thread ], [ %.5289598, %._crit_edge.loopexit ]
  %.0279.lcssa = phi ptr [ null, %exeNameMatch.exit477.thread ], [ %.4283599, %._crit_edge.loopexit ] ; 4 uses
  %.0268.lcssa = phi i32 [ 0, %exeNameMatch.exit477.thread ], [ %.1269600, %._crit_edge.loopexit ] ; 5 uses
  %.0261.lcssa = phi i64 [ %i.ao, %exeNameMatch.exit477.thread ], [ %.6267601, %._crit_edge.loopexit ]
  %.0256.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %i.mh, %._crit_edge.loopexit ]
  %.0248.lcssa = phi i32 [ -10000, %exeNameMatch.exit477.thread ], [ %.3251603, %._crit_edge.loopexit ]
  %.0240.lcssa = phi i32 [ %.1.i, %exeNameMatch.exit477.thread ], [ %.4244604, %._crit_edge.loopexit ] ; 5 uses
  %i.mj = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mk = icmp ugt i32 %i.mj, 2
  br i1 %i.mk, label %bb.ew, label %.thread653

bb.ew:                                            ; preds = %._crit_edge
  %i.ml = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mm = tail call ptr @LZ4_versionString() #22
  %i.mn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %i.mm, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #23 ; 0 uses
  %.pr = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mo = icmp ugt i32 %.pr, 3
  br i1 %i.mo, label %bb.ex, label %.thread653

bb.ex:                                            ; preds = %bb.ew
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef nonnull @.str.52, i64 noundef 200809) #23 ; 0 uses
  %.pr649 = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mr = icmp ugt i32 %.pr649, 3
  br i1 %i.mr, label %.thread651, label %.thread653

.thread651:                                       ; preds = %bb.ex
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.53, i64 noundef 200809) #23 ; 0 uses
  %.pr652.pr = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mu = icmp ugt i32 %.pr652.pr, 3
  br i1 %i.mu, label %bb.ey, label %.thread653

bb.ey:                                            ; preds = %.thread651
  %i.mv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mv, ptr noundef nonnull @.str.54, i64 noundef 200809) #23 ; 0 uses
  %.pre1485.a = load i32, ptr @displayLevel, align 4
  br label %.thread653

.thread653:                                       ; preds = %bb.ew, %._crit_edge, %bb.ex, %bb.ey, %.thread651
  %i.mx = phi i32 [ %.pr, %bb.ew ], [ %i.mj, %._crit_edge ], [ %.pr649, %bb.ex ], [ %.pre1485.a, %bb.ey ], [ %.pr652.pr, %.thread651 ] ; 2 uses
  %i.my = icmp ugt i32 %.0305.lcssa, 1
  %i.mz = icmp ugt i32 %i.mx, 1
  %or.cond20 = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond20, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.thread653
  %i.na = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.55, i64 57, i64 1, ptr %i.na) #26 ; 0 uses
  %.pre1486.a = load i32, ptr @displayLevel, align 4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.thread653
  %i.nb = phi i32 [ %.pre1486.a, %bb.ez ], [ %i.mx, %.thread653 ]
  %i.nc = icmp eq i32 %.2297.lcssa, 1
  %i.nd = icmp eq i32 %.2297.lcssa, 4             ; 2 uses
  %or.cond = or i1 %i.nc, %i.nd
  %i.ne = icmp ugt i32 %i.nb, 3
  %or.cond22 = select i1 %or.cond, i1 %i.ne, i1 false
  br i1 %or.cond22, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.nf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ng = lshr i64 %.0261.lcssa, 10
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nf, ptr noundef nonnull @.str.56, i32 noundef %i.nh) #23 ; 0 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.nj = icmp ne i32 %.1319.lcssa, 0             ; 4 uses
  br i1 %i.nj, label %bb.fd, label %bb.fr

bb.fd:                                            ; preds = %bb.fc
  %i.nk = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  br i1 %.0256.lcssa, label %bb.fr, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.nl = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #28 ; 4 uses
  store ptr %i.nl, ptr %i.b, align 8, !tbaa !17
  %.not.i540 = icmp eq ptr %i.nl, null
  br i1 %.not.i540, label %UTIL_createFileList.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %.not74.i = icmp eq i32 %.0268.lcssa, 0
  br i1 %.not74.i, label %UTIL_createFileList.exit.thread.sink.split, label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %bb.ff
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.trip.count.i = zext i32 %.0268.lcssa to i64
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fl, %.lr.ph.i541
  %i.nn = phi ptr [ %i.nl, %.lr.ph.i541 ], [ %i.ol, %bb.fl ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i541 ], [ %indvars.iv.next.i, %bb.fl ] ; 2 uses
  %.04170.i = phi i64 [ 8192, %.lr.ph.i541 ], [ %.5.i, %bb.fl ] ; 4 uses
  %.04369.i = phi i32 [ 0, %.lr.ph.i541 ], [ %.245.i, %bb.fl ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i ; 4 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.nq = call i32 @stat(ptr noundef readonly %i.np, ptr noundef nonnull %2) #22
  %.not.i.i = icmp eq i32 %i.nq, 0
  %i.nr = load i32, ptr %i.nm, align 8
  %i.ns = and i32 %i.nr, 61440
  %7 = icmp eq i32 %i.ns, 16384
  %narrow.i.not.i = select i1 %.not.i.i, i1 %7, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %narrow.i.not.i, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nt = load ptr, ptr %i.no, align 8, !tbaa !17 ; 2 uses
  %i.nu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nt) #25
  %i.nv = add i64 %i.nu, 1                        ; 2 uses
  %i.nw = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.nx = add i64 %i.nw, %i.nv                    ; 3 uses
  %.not57.i = icmp ult i64 %i.nx, %.04170.i
  br i1 %.not57.i, label %bb.fj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.fh, %.preheader.i
  %.142.i = phi i64 [ %i.ny, %.preheader.i ], [ %.04170.i, %bb.fh ] ; 4 uses
  %.not58.i = icmp ult i64 %i.nx, %.142.i
  %i.ny = add i64 %.142.i, 8192
  br i1 %.not58.i, label %bb.fi, label %.preheader.i, !llvm.loop !22

bb.fi:                                            ; preds = %.preheader.i
  %i.nz = tail call ptr @realloc(ptr noundef %i.nn, i64 noundef %.142.i) #29 ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.not.i.i, label %UTIL_createFileList.exit.thread.sink.split, label %UTIL_realloc.exit.i

UTIL_realloc.exit.i:                              ; preds = %bb.fi
  store ptr %i.nz, ptr %i.b, align 8, !tbaa !17
  %.pre.i543 = load ptr, ptr %i.no, align 8, !tbaa !17
  br label %bb.fj

bb.fj:                                            ; preds = %UTIL_realloc.exit.i, %bb.fh
  %i.oa = phi ptr [ %.pre.i543, %UTIL_realloc.exit.i ], [ %i.nt, %bb.fh ]
  %i.ob = phi ptr [ %i.nz, %UTIL_realloc.exit.i ], [ %i.nn, %bb.fh ] ; 2 uses
  %.2.i544 = phi i64 [ %.142.i, %UTIL_realloc.exit.i ], [ %.04170.i, %bb.fh ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oc, ptr align 1 %i.oa, i64 %i.nv, i1 false)
  store i64 %i.nx, ptr %i.a, align 8, !tbaa !19
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.od = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.04170.i
  store ptr %i.od, ptr %i.c, align 8, !tbaa !17
  %i.oe = load ptr, ptr %i.no, align 8, !tbaa !17
  %i.of = call fastcc i32 @UTIL_prepareFileList(ptr noundef %i.oe, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %i.c)
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %.not60.i = icmp eq ptr %i.og, null
  %i.oh = load ptr, ptr %i.c, align 8
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.og to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %.not60.i, label %UTIL_createFileList.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.ol = phi ptr [ %i.og, %bb.fk ], [ %i.ob, %bb.fj ] ; 6 uses
  %.pn.i = phi i32 [ %i.of, %bb.fk ], [ 1, %bb.fj ]
  %.5.i = phi i64 [ %i.ok, %bb.fk ], [ %.2.i544, %bb.fj ] ; 2 uses
  %.245.i = add i32 %.pn.i, %.04369.i             ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.fg, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.fl
  %i.om = icmp eq i32 %.245.i, 0
  br i1 %i.om, label %UTIL_createFileList.exit.thread.sink.split, label %bb.fm

bb.fm:                                            ; preds = %._crit_edge.i
  %i.on = zext i32 %.245.i to i64                 ; 3 uses
  %i.oo = shl nuw nsw i64 %i.on, 3
  %i.op = add nuw nsw i64 %i.oo, 8
  %i.oq = tail call noalias ptr @malloc(i64 noundef %i.op) #28 ; 5 uses
  %.not55.i = icmp eq ptr %i.oq, null
  br i1 %.not55.i, label %UTIL_createFileList.exit.thread.sink.split, label %.preheader738

.preheader738:                                    ; preds = %bb.fm, %.preheader738
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.preheader738 ], [ 0, %bb.fm ] ; 2 uses
  %i.or = phi i64 [ %i.ow, %.preheader738 ], [ 0, %bb.fm ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv77.i
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !17
  %i.ou = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.os) #25
  %i.ov = add i64 %i.or, 1
  %i.ow = add i64 %i.ov, %i.ou                    ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %i.on
  br i1 %exitcond81.not.i, label %bb.fn, label %.preheader738, !llvm.loop !24

bb.fn:                                            ; preds = %.preheader738
  %i.ox = icmp ugt i64 %i.ow, %.5.i
  br i1 %i.ox, label %bb.fo, label %UTIL_createFileList.exit

bb.fo:                                            ; preds = %bb.fn
  tail call void @free(ptr noundef nonnull %i.ol) #22
  br label %UTIL_createFileList.exit.thread.sink.split

UTIL_createFileList.exit.thread.sink.split:       ; preds = %bb.fi, %bb.fm, %bb.ff, %._crit_edge.i, %bb.fo
  %.lcssa1554.sink = phi ptr [ %i.nl, %bb.ff ], [ %i.ol, %bb.fm ], [ %i.oq, %bb.fo ], [ %i.ol, %._crit_edge.i ], [ %i.nn, %bb.fi ]
  tail call void @free(ptr noundef %.lcssa1554.sink) #22
  br label %UTIL_createFileList.exit.thread

UTIL_createFileList.exit.thread:                  ; preds = %bb.fk, %UTIL_createFileList.exit.thread.sink.split, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.fr

UTIL_createFileList.exit:                         ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.oy = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.oz = icmp ugt i32 %i.oy, 3
  br i1 %i.oz, label %UTIL_createFileList.exit.split, label %.split.us

UTIL_createFileList.exit.split:                   ; preds = %UTIL_createFileList.exit, %bb.fq
  %i.pa = phi i32 [ %i.ph, %bb.fq ], [ %i.oy, %UTIL_createFileList.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fq ], [ 0, %UTIL_createFileList.exit ] ; 3 uses
  %i.pb = icmp ugt i32 %i.pa, 3
  br i1 %i.pb, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %UTIL_createFileList.exit.split
  %i.pc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !17
  %i.pf = trunc nuw i64 %indvars.iv to i32
  %i.pg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pc, ptr noundef nonnull @.str.57, i32 noundef %i.pf, ptr noundef %i.pe) #23 ; 0 uses
  %.pre1487 = load i32, ptr @displayLevel, align 4, !tbaa !12
  br label %bb.fq

bb.fq:                                            ; preds = %UTIL_createFileList.exit.split, %bb.fp
  %i.ph = phi i32 [ %i.pa, %UTIL_createFileList.exit.split ], [ %.pre1487, %bb.fp ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.on
  br i1 %exitcond.not, label %.split.us, label %UTIL_createFileList.exit.split, !llvm.loop !25

.split.us:                                        ; preds = %bb.fq, %UTIL_createFileList.exit
  tail call void @free(ptr noundef %i.am) #22
  br label %bb.fr

bb.fr:                                            ; preds = %UTIL_createFileList.exit.thread, %.split.us, %bb.fd, %bb.fc
  %.0549 = phi ptr [ null, %bb.fd ], [ null, %UTIL_createFileList.exit.thread ], [ %i.ol, %.split.us ], [ null, %bb.fc ] ; 8 uses
  %.3294 = phi ptr [ %i.nk, %bb.fd ], [ %i.nk, %UTIL_createFileList.exit.thread ], [ %i.nk, %.split.us ], [ %.0291.lcssa, %bb.fc ] ; 2 uses
  %.1274 = phi ptr [ %i.am, %bb.fd ], [ %i.am, %UTIL_createFileList.exit.thread ], [ %i.oq, %.split.us ], [ %i.am, %bb.fc ] ; 14 uses
  %.3271 = phi i32 [ %.0268.lcssa, %bb.fd ], [ %.0268.lcssa, %UTIL_createFileList.exit.thread ], [ %.245.i, %.split.us ], [ %.0268.lcssa, %bb.fc ] ; 8 uses
  %.not368 = icmp eq ptr %.0279.lcssa, null
  br i1 %.not368, label %bb.fy, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0279.lcssa, ptr noundef nonnull dereferenceable(6) @.str.1) #25
  %.not369 = icmp eq i32 %i.pi, 0
  br i1 %.not369, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.pj = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.pk = tail call i32 @fileno(ptr noundef %i.pj) #22
  %i.pl = tail call i32 @isatty(i32 noundef %i.pk) #22
  %.not370 = icmp eq i32 %i.pl, 0
  br i1 %.not370, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pm = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not371 = icmp eq i32 %i.pm, 0
  br i1 %.not371, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite372 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 32, i64 1, ptr %i.pn) #26 ; 0 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.fx:                                            ; preds = %bb.ft, %bb.fs
  %i.po = tail call i32 @LZ4IO_setDictionaryFilename(ptr noundef %i.an, ptr noundef nonnull %.0279.lcssa) #22 ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fr
  br i1 %i.nd, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.pp = load i32, ptr @displayLevel, align 4, !tbaa !12
  tail call void @BMK_setNotificationLevel(i32 noundef %i.pp) #22
  %i.pq = tail call i32 @BMK_benchFiles(ptr noundef nonnull %.1274, i32 noundef %.3271, i32 noundef %.0240.lcssa, i32 noundef %.0248.lcssa, ptr noundef %.0279.lcssa) #22
  br label %bb.hs

bb.ga:                                            ; preds = %bb.fy
  %i.pr = icmp eq i32 %.2297.lcssa, 3
  br i1 %i.pr, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ps = tail call i32 @LZ4IO_setTestMode(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.6301 = phi i32 [ 2, %bb.gb ], [ %.2297.lcssa, %bb.ga ] ; 3 uses
  %.6290 = phi ptr [ @.str.48, %bb.gb ], [ %.1285.lcssa, %bb.ga ] ; 4 uses
  %.not373 = icmp eq ptr %.3294, null
  %spec.store.select5 = select i1 %.not373, ptr @.str.1, ptr %.3294 ; 15 uses
  %i.pt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select5, ptr noundef nonnull dereferenceable(6) @.str.1) #25
  %.not374 = icmp eq i32 %i.pt, 0
  br i1 %.not374, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  %i.pu = load ptr, ptr @stdin, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@usage_longhelp:bb.a
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.160, ptr noundef %0) #23 ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 52, i64 1, ptr %i.bp) #26 ; 0 uses
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite52 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 27, i64 1, ptr %i.bq) #26 ; 0 uses
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.163, ptr noundef %0) #23 ; 0 uses
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite53 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 36, i64 1, ptr %i.bt) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @LZ4IO_setBlockMode(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BMK_setBlockSize(i64 noundef) local_unnamed_addr #3

declare i64 @LZ4IO_setBlockSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BMK_setBenchSeparately(i32 noundef) local_unnamed_addr #3

declare void @BMK_setNotificationLevel(i32 noundef) local_unnamed_addr #3

declare void @BMK_setNbSeconds(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @LZ4IO_setDictionaryFilename(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BMK_benchFiles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_setTestMode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare i32 @LZ4IO_setNotificationLevel(i32 noundef) local_unnamed_addr #3

declare i32 @LZ4IO_decompressMultipleFilenames(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_decompressFilename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_displayCompressedFilesInfo(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @LZ4IO_compressMultipleFilenames_Legacy(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_compressFilename_Legacy(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_compressMultipleFilenames(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LZ4IO_compressFilename(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @waitEnter() unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.169, i64 27, i64 1, ptr %i.a) #26 ; 0 uses
  %i.b = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.c = tail call i32 @getc(ptr noundef %i.b), !inline_history !28 ; 0 uses
  ret void
}

declare void @LZ4IO_freePreferences(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.103, i64 9, i64 1, ptr %i.a) #26 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.104, ptr noundef %0) #23 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.d) ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 22, i64 1, ptr %i.e) #26 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.1) #23 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 13, i64 1, ptr %i.h) #26 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 38, i64 1, ptr %i.i) #26 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.109, i32 noundef 12) #23 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.60) #23 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %i.n) #26 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 47, i64 1, ptr %i.o) #26 ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 65, i64 1, ptr %i.p) #26 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 43, i64 1, ptr %i.q) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc i32 @UTIL_prepareFileList(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call noalias ptr @opendir(ptr noundef %0) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = tail call ptr @__errno_location() #30    ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = load i32, ptr %i.b, align 4, !tbaa !12
  %i.e = tail call ptr @strerror(i32 noundef %i.d) #22
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.165, ptr noundef %0, ptr noundef %i.e) #23 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.h = tail call ptr @readdir(ptr noundef nonnull %i.a) #22 ; 2 uses
  %.not8098 = icmp eq ptr %i.h, null
  br i1 %.not8098, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %bb.c
  %i.i = add i64 %i.g, 2
  %i.j = add i64 %i.g, 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.n
  %i.l = phi ptr [ %i.h, %sub_0.lr.ph ], [ %i.bo, %bb.n ] ; 4 uses
  %.06999 = phi i32 [ 0, %sub_0.lr.ph ], [ %.2, %bb.n ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 19 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not100.a = icmp eq i8 %i.n, 46
  br i1 %.not100.a, label %sub_1, label %.tail89.thread

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = load i8, ptr %i.o, align 1
  %.not101 = icmp eq i8 %i.p, 46
  br i1 %.not101, label %.tail, label %.tail89

.tail:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.n, label %.tail89, !llvm.loop !29

.tail89:                                          ; preds = %.tail, %sub_1
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.n, label %.tail89.thread, !llvm.loop !29

.tail89.thread:                                   ; preds = %sub_0, %.tail89
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #25 ; 3 uses
  %i.x = add i64 %i.i, %i.w
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #28 ; 10 uses
  %.not82 = icmp eq ptr %i.y, null
  br i1 %.not82, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.tail89.thread
  %i.z = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %.tail89.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.g ; 2 uses
  store i8 47, ptr %i.aa, align 1, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.m, i64 %i.w, i1 false)
  %i.ac = add i64 %i.j, %i.w                      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ae = call i32 @stat(ptr noundef nonnull readonly %i.y, ptr noundef nonnull %4) #22
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = load i32, ptr %i.k, align 8
  %i.ag = and i32 %i.af, 61440
  %5 = icmp eq i32 %i.ag, 16384
  %narrow.i.not = select i1 %.not.i, i1 %5, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %narrow.i.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call fastcc i32 @UTIL_prepareFileList(ptr noundef nonnull %i.y, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.ai = add nsw i32 %i.ah, %.06999
  %i.aj = load ptr, ptr %1, align 8, !tbaa !17
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.y) #22
  %i.al = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %1, align 8, !tbaa !17    ; 5 uses
  %i.an = load i64, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ac
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %.not84 = icmp ult ptr %i.ap, %i.aq
  br i1 %.not84, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = add i64 %i.at, 8192                     ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call ptr @realloc(ptr noundef %i.am, i64 noundef %i.au) #29 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.not.i, label %.sink.split.i, label %UTIL_realloc.exit

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  tail call void @free(ptr noundef %i.am) #22
  br label %UTIL_realloc.exit

UTIL_realloc.exit:                                ; preds = %bb.j, %.sink.split.i
  %.1.i = phi ptr [ %i.aw, %bb.j ], [ null, %.sink.split.i ] ; 2 uses
  store ptr %.1.i, ptr %1, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !17
  %i.ay = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %.not85 = icmp eq ptr %i.ay, null
  br i1 %.not85, label %bb.k, label %UTIL_realloc.exit..critedge_crit_edge

UTIL_realloc.exit..critedge_crit_edge:            ; preds = %UTIL_realloc.exit
  %.pre = load i64, ptr %2, align 8, !tbaa !19
  br label %.critedge

bb.k:                                             ; preds = %UTIL_realloc.exit
  tail call void @free(ptr noundef nonnull %i.y) #22
  %i.az = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread

.critedge:                                        ; preds = %UTIL_realloc.exit..critedge_crit_edge, %bb.h
  %i.ba = phi ptr [ %i.ax, %UTIL_realloc.exit..critedge_crit_edge ], [ %i.aq, %bb.h ] ; 2 uses
  %i.bb = phi i64 [ %.pre, %UTIL_realloc.exit..critedge_crit_edge ], [ %i.an, %bb.h ]
  %i.bc = phi ptr [ %i.ay, %UTIL_realloc.exit..critedge_crit_edge ], [ %i.am, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ac
  %i.bf = icmp ult ptr %i.be, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = tail call ptr @strncpy(ptr noundef %i.bd, ptr noundef nonnull %i.y, i64 noundef %i.bi) #22 ; 0 uses
  %i.bk = add i64 %i.ac, 1
  %i.bl = load i64, ptr %2, align 8, !tbaa !19
  %i.bm = add i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %2, align 8, !tbaa !19
  %i.bn = add nsw i32 %.06999, 1
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.f
  %.170 = phi i32 [ %i.ai, %bb.f ], [ %i.bn, %bb.l ], [ %.06999, %.critedge ]
  tail call void @free(ptr noundef nonnull %i.y) #22
  store i32 0, ptr %i.b, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %.tail, %.tail89, %bb.m
  %.2 = phi i32 [ %.06999, %.tail ], [ %.06999, %.tail89 ], [ %.170, %bb.m ] ; 2 uses
  %i.bo = tail call ptr @readdir(ptr noundef nonnull %i.a) #22 ; 2 uses
  %.not80 = icmp eq ptr %i.bo, null
  br i1 %.not80, label %._crit_edge, label %sub_0

._crit_edge:                                      ; preds = %bb.n, %bb.c
  %.069.lcssa = phi i32 [ 0, %bb.c ], [ %.2, %bb.n ]
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %.not81 = icmp eq i32 %i.bp, 0
  br i1 %.not81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = tail call ptr @strerror(i32 noundef %i.bp) #22
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.168, ptr noundef nonnull %0, ptr noundef %i.br) #23 ; 0 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bt) #22
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.bu = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.g, %bb.d, %bb.p, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ %.069.lcssa, %bb.p ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.k ]
  ret i32 %.5
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #19

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!7, !7, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
end_hunk_2
