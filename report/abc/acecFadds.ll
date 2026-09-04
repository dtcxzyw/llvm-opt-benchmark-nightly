Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecFadds?download=true
inline.NumInlined: 540
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [38 x i8] c"Found %d half-adders with XOR gates: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d=%d \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%3d : %5d %5d -> %5d %5d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Box %4d  [%d x %d] :   \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Input obj IDs = \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"  Output obj IDs = \00", align 1
@__const.Dtc_ObjComputeTruth.Truths = private unnamed_addr constant [3 x i32] [i32 170, i32 204, i32 240], align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"Nodes = %d.  Cuts = %d.  Cuts/Node = %.2f.  Ints/Node = %.2f.\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%6d : \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%6d \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" ->  \00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"XOR3 cuts = %d.  MAJ cuts = %d.  Full-adders = %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"XOR3 cuts = %d.  MAJ cuts = %d.\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Chain %4d : %4d    \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%d(%d) \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Total chains = %d. Total full-adders = %d.\0A\00", align 1
@__const.Gia_ManCollectTruthTables.pCut = private unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 0, i32 0], align 16
@.str.24 = private unnamed_addr constant [27 x i8] c"Carry-chain detection time\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"AIG with boxes construction time\00", align 1
@.str.27 = private unnamed_addr constant [84 x i8] c"Running path detection: BoxDelay = %d, PathMin = %d, PathMax = %d, PathLimit = %d.\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"Iter %5d : Paths = %2d. Boxes = %2d. Total boxes = %6d.  Max delay = %5d.\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [22 x i8] c"Skipping other FADDs.\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@str.2 = private unnamed_addr constant [86 x i8] c"Warning: Sequential design is converted into combinational one by adding white boxes.\00", align 1
@str.3 = private unnamed_addr constant [74 x i8] c"Currently natural carry-chains cannot be detected when boxes are present.\00", align 1
@str.4 = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManDetectHalfAdders(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [5 x i32], align 16               ; 10 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !20
  store i32 1000, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  tail call void @Gia_ManHashStart(ptr noundef %0) #31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !70
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %Gia_ObjIsXor.exit.thread
  %i.n = phi i32 [ %i.ap, %Gia_ObjIsXor.exit.thread ], [ %i.l, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_ObjIsXor.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %.val169 = load ptr, ptr %i.j, align 8, !tbaa !42 ; 2 uses
  %.not160 = icmp eq ptr %.val169, null
  br i1 %.not160, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.val169, i64 %indvars.iv
  %.val171 = load i64, ptr %i.o, align 4          ; 4 uses
  %i.p = and i64 %.val171, 2147483648
  %.not.i = icmp ne i64 %i.p, 0
  %i.q = and i64 %.val171, 536870911
  %i.r = icmp eq i64 %i.q, 536870911
  %narrow.i.not = or i1 %.not.i, %i.r
  br i1 %narrow.i.not, label %Gia_ObjIsXor.exit.thread, label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %bb.b
  %i.s = trunc i64 %.val171 to i32
  %i.t = and i32 %i.s, 536870911                  ; 2 uses
  %i.u = lshr i64 %.val171, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = and i32 %i.v, 536870911                  ; 2 uses
  %.not195 = icmp samesign ult i32 %i.t, %i.w
  br i1 %.not195, label %bb.c, label %Gia_ObjIsXor.exit.thread

bb.c:                                             ; preds = %Gia_ObjIsXor.exit
  %i.x = trunc nuw nsw i64 %indvars.iv to i32     ; 6 uses
  %i.y = sub nsw i32 %i.x, %i.t
  %i.z = sub nsw i32 %i.x, %i.w
  %i.aa = shl nsw i32 %i.y, 1                     ; 3 uses
  %i.ab = shl nsw i32 %i.z, 1                     ; 3 uses
  %i.ac = tail call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.ab) #31 ; 2 uses
  %.not164 = icmp eq i32 %i.ac, 0
  br i1 %.not164, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = ashr i32 %i.ac, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.x, i32 noundef %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]        ; 2 uses
  %i.ae = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.af = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ag = tail call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.af) #31 ; 2 uses
  %.not165 = icmp eq i32 %i.ag, 0
  br i1 %.not165, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = ashr i32 %i.ag, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.x, i32 noundef %i.ah)
  %2 = add nuw nsw i64 %.0, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %2, %bb.f ], [ %.0, %bb.e ]     ; 2 uses
  %i.ai = tail call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.af) #31 ; 2 uses
  %.not166 = icmp eq i32 %i.ai, 0
  br i1 %.not166, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = ashr i32 %i.ai, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.x, i32 noundef %i.aj)
  %3 = add nuw nsw i64 %.1, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i64 [ %3, %bb.h ], [ %.1, %bb.g ]     ; 2 uses
  %i.ak = tail call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ab) #31 ; 2 uses
  %.not167 = icmp eq i32 %i.ak, 0
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ashr i32 %i.ak, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.x, i32 noundef %i.al)
  %4 = add nuw nsw i64 %.2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi i64 [ %4, %bb.j ], [ %.2, %bb.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.3 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !43
  %.pre = load i32, ptr %i.k, align 8, !tbaa !41
  br label %Gia_ObjIsXor.exit.thread

Gia_ObjIsXor.exit.thread:                         ; preds = %bb.k, %bb.b, %Gia_ObjIsXor.exit
  %i.ap = phi i32 [ %.pre, %bb.k ], [ %i.n, %bb.b ], [ %i.n, %Gia_ObjIsXor.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge, !llvm.loop !67

bb.l:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %.not150 = icmp eq ptr %i.at, null
  br i1 %.not150, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.at) #31
  store ptr null, ptr %i.as, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  tail call void @Gia_ManCreateRefs(ptr noundef nonnull %0) #31
  %i.au = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph202, label %.critedge2

.lr.ph202:                                        ; preds = %bb.n, %bb.ac
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %bb.ac ], [ 0, %bb.n ] ; 3 uses
  %.val168 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %.val168, i64 %indvars.iv207 ; 6 uses
  %.not151 = icmp eq ptr %.val168, null
  br i1 %.not151, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %.lr.ph202
  %.val170 = load i64, ptr %i.ay, align 4         ; 2 uses
  %i.az = and i64 %.val170, 2147483648
  %.not.i191 = icmp ne i64 %i.az, 0
  %i.ba = and i64 %.val170, 536870911
  %i.bb = icmp eq i64 %i.ba, 536870911
  %narrow.i192.not = or i1 %.not.i191, %i.bb
  br i1 %narrow.i192.not, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = call i32 @Gia_ObjRecognizeExor(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31
  %.not154 = icmp eq i32 %i.bc, 0
  br i1 %.not154, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val175 = load i64, ptr %i.ay, align 4         ; 2 uses
  %i.bd = trunc i64 %.val175 to i32
  %i.be = and i32 %i.bd, 536870911
  %i.bf = trunc nuw nsw i64 %indvars.iv207 to i32 ; 7 uses
  %i.bg = sub nsw i32 %i.bf, %i.be                ; 2 uses
  %.val182 = load ptr, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val182, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bf, i32 noundef %i.bg)
  %.val179.pre = load i64, ptr %i.ay, align 4
  %.val181.pre = load ptr, ptr %i.as, align 8, !tbaa !45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val181 = phi ptr [ %.val181.pre, %bb.r ], [ %.val182, %bb.q ]
  %.val179 = phi i64 [ %.val179.pre, %bb.r ], [ %.val175, %bb.q ] ; 2 uses
  %.4 = phi i64 [ 1, %bb.r ], [ 0, %bb.q ]        ; 2 uses
  %i.bl = lshr i64 %.val179, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 536870911
  %i.bo = sub nsw i32 %i.bf, %i.bn                ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %.val181, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bf, i32 noundef %i.bo)
  %5 = add nuw nsw i64 %.4, 1
  %.pre218 = load i64, ptr %i.ay, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = phi i64 [ %.pre218, %bb.t ], [ %.val179, %bb.s ]
  %.5 = phi i64 [ %5, %bb.t ], [ %.4, %bb.s ]     ; 4 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !71
  %.val184 = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.val184 to i64            ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 12
  %i.bz = trunc i64 %i.by to i32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bw
  %i.cd = sdiv exact i64 %i.cc, 12
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i64 %i.bt, 536870911
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr inbounds [12 x i8], ptr %i.ay, i64 %i.cg
  %.val185 = load i64, ptr %i.ch, align 4         ; 2 uses
  %i.ci = trunc i64 %.val185 to i32
  %i.cj = lshr i32 %i.ci, 29
  %i.ck = lshr i64 %.val185, 61
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = xor i32 %i.cj, %i.cl
  %i.cn = and i32 %i.cm, 1
  %.not155 = icmp eq i32 %i.cn, 0
  %i.co = shl nsw i32 %i.bz, 1                    ; 4 uses
  %i.cp = shl nsw i32 %i.ce, 1                    ; 4 uses
  br i1 %.not155, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.cp) #31 ; 2 uses
  %.not158 = icmp eq i32 %i.cq, 0
  br i1 %.not158, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = ashr i32 %i.cq, 1
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bf, i32 noundef %i.cr)
  %6 = add nuw nsw i64 %.5, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.6 = phi i64 [ %6, %bb.w ], [ %.5, %bb.v ]     ; 2 uses
  %i.cs = or disjoint i32 %i.co, 1
  %i.ct = or disjoint i32 %i.cp, 1
  %i.cu = call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.cs, i32 noundef %i.ct) #31 ; 2 uses
  %.not159 = icmp eq i32 %i.cu, 0
  br i1 %.not159, label %bb.ab, label %.sink.split

bb.y:                                             ; preds = %bb.u
  %i.cv = or disjoint i32 %i.cp, 1
  %i.cw = call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.cv) #31 ; 2 uses
  %.not156 = icmp eq i32 %i.cw, 0
  br i1 %.not156, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = ashr i32 %i.cw, 1
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bf, i32 noundef %i.cx)
  %7 = add nuw nsw i64 %.5, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.7 = phi i64 [ %7, %bb.z ], [ %.5, %bb.y ]     ; 2 uses
  %i.cy = or disjoint i32 %i.co, 1
  %i.cz = call i32 @Gia_ManHashLookupInt(ptr noundef nonnull %0, i32 noundef %i.cy, i32 noundef %i.cp) #31 ; 2 uses
  %.not157 = icmp eq i32 %i.cz, 0
  br i1 %.not157, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.x
  %.sink232 = phi i32 [ %i.cu, %bb.x ], [ %i.cz, %bb.aa ]
  %.7.sink = phi i64 [ %.6, %bb.x ], [ %.7, %bb.aa ]
  %i.da = ashr i32 %.sink232, 1
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bf, i32 noundef %i.da)
  %8 = add nuw nsw i64 %.7.sink, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa, %bb.x
  %.8 = phi i64 [ %.7, %bb.aa ], [ %.6, %bb.x ], [ %8, %.sink.split ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !43
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o, %bb.p
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.de = load i32, ptr %i.av, align 8, !tbaa !41
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next208, %i.df
  br i1 %i.dg, label %.lr.ph202, label %.critedge2, !llvm.loop !68

.critedge2:                                       ; preds = %.lr.ph202, %bb.ac, %bb.n
  %i.dh = load ptr, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %.not152 = icmp eq ptr %i.dh, null
  br i1 %.not152, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.critedge2
  call void @free(ptr noundef nonnull %i.dh) #31
  store ptr null, ptr %i.as, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %Gia_ObjIsXor.exit.thread, %.lr.ph, %.preheader, %bb.ad, %.critedge2
  call void @Gia_ManHashStop(ptr noundef nonnull %0) #31
  %.not161 = icmp eq i32 %1, 0
  br i1 %.not161, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %.val188 = load i32, ptr %i.e, align 4, !tbaa !20 ; 3 uses
  %i.di = sdiv i32 %.val188, 2
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.di) ; 0 uses
  %i.dk = load i32, ptr %i.c, align 16, !tbaa !43
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0, i32 noundef %i.dk) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !43
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1, i32 noundef %i.dn) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !43
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2, i32 noundef %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !43
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 3, i32 noundef %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !43
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 4, i32 noundef %i.dw) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.dy = icmp sgt i32 %.val188, 1
  br i1 %i.dy, label %.critedge4.lr.ph, label %.loopexit

.critedge4.lr.ph:                                 ; preds = %bb.ae
  %.val190 = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.dz = getelementptr i8, ptr %0, i64 32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.lr.ph, %.critedge4
  %indvars.iv213 = phi i64 [ 0, %.critedge4.lr.ph ], [ %indvars.iv.next214, %.critedge4 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val190, i64 %indvars.iv213 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !43 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !43
  %.val = load ptr, ptr %i.dz, align 8, !tbaa !42
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.ee
  %.val173 = load i64, ptr %i.ef, align 4         ; 2 uses
  %i.eg = trunc i64 %.val173 to i32
  %i.eh = and i32 %i.eg, 536870911
  %i.ei = sub nsw i32 %i.eb, %i.eh
  %i.ej = lshr i64 %.val173, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = and i32 %i.ek, 536870911
  %i.em = sub nsw i32 %i.eb, %i.el
  %i.en = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.en, i32 noundef %i.ei, i32 noundef %i.em, i32 noundef %i.eb, i32 noundef %i.ed) ; 0 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %i.ep = trunc i64 %indvars.iv.next214 to i32
  %i.eq = or disjoint i32 %i.ep, 1
  %i.er = icmp slt i32 %i.eq, %.val188
  br i1 %i.er, label %.critedge4, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %.critedge4, %bb.ae, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @Gia_ManHashStart(ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManHashLookupInt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushTwo(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !21
  %.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 4 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !20
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !43
  %i.z = load i32, ptr %i.a, align 4, !tbaa !20   ; 7 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !21
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %Vec_IntPush.exit10

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %Vec_IntGrow.exit11.sink.split.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp samesign ult i32 %i.z, 1073741823
  %i.ae = shl nuw nsw i32 %i.z, 1
  %spec.select.i3 = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 3 uses
  %.not.i9.i4 = icmp samesign ult i32 %i.z, %spec.select.i3
  br i1 %.not.i9.i4, label %bb.m, label %Vec_IntPush.exit10

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i32 %spec.select.i3 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  br label %Vec_IntGrow.exit11.sink.split.i6

Vec_IntGrow.exit11.sink.split.i6:                 ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ %i.ag, %bb.m ], [ 64, %bb.k ]
  %spec.select.sink.i7 = phi i32 [ %spec.select.i3, %bb.m ], [ 16, %bb.k ]
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %.sink) #32 ; 2 uses
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !22
  store i32 %spec.select.sink.i7, ptr %0, align 8, !tbaa !21
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !20
  br label %Vec_IntPush.exit10
end_hunk_0
