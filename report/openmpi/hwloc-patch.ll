Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hwloc-patch?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [84 x i8] c"Usage: hwloc-patch [options] [<old.xml> | refname] [<diff.xml> | -] [<output.xml>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"  -R --reverse     Reverse the sense of the difference\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"  --version        Report version and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"  -h --help        Show this usage\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"HWLOC_XML_VERBOSE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"HWLOC_XML_VERBOSE=1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"--reverse\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"2.7.1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"Unrecognized options: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to load XML topology diff %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"Couldn't find the reference topology name from the input diff %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"Failed to load XML topology %s (from input diff %s refname)\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Failed to load XML topology %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Failed to load topology\0A\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"Failed to%s apply topology diff %s, failed for hunk #%d hunk\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" reverse\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Failed to export patched topology %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [186 x i8] c"%s compiled for hwloc API 0x%x but running on library API 0x%x.\0AYou may need to point LD_LIBRARY_PATH to the right hwloc library.\0AAborting since the new ABI is not backward compatible.\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [44 x i8] c"Failed to realloc buffer for reading diff.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define hidden void @usage(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 83, i64 1, ptr %1) ; 0 uses
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 9, i64 1, ptr %1) ; 0 uses
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 55, i64 1, ptr %1) ; 0 uses
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 43, i64 1, ptr %1) ; 0 uses
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 35, i64 1, ptr %1) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 47) #14 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.052 = select i1 %.not, ptr %i.d, ptr %i.f     ; 2 uses
  %i.g = tail call i32 @hwloc_get_api_version() #13 ; 2 uses
  %.mask.i = and i32 %i.g, -65536
  %.not.i = icmp eq i32 %.mask.i, 131072
  br i1 %.not.i, label %hwloc_utils_check_api_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.25, ptr noundef nonnull %.052, i32 noundef 132352, i32 noundef %i.g) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

hwloc_utils_check_api_version.exit:               ; preds = %bb.a
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.5) #13
  %.not59 = icmp eq ptr %i.j, null
  br i1 %.not59, label %bb.c, label %bb.d

bb.c:                                             ; preds = %hwloc_utils_check_api_version.exit
  %i.k = tail call i32 @putenv(ptr noundef nonnull @.str.6) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %hwloc_utils_check_api_version.exit
  %.05590 = add nsw i32 %0, -1                    ; 2 uses
  %.not6091 = icmp eq i32 %.05590, 0
  br i1 %.not6091, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.05495143 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %2 = load ptr, ptr %.05495143, align 8, !tbaa !17 ; 3 uses
  %3 = load i8, ptr %2, align 1, !tbaa !20
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %sub_1, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %5 = xor i64 %.05394145, 1                      ; 2 uses
  %.05495 = getelementptr inbounds nuw i8, ptr %.05495146, i64 8 ; 2 uses
  %i.l = load ptr, ptr %.05495, align 8, !tbaa !17 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %sub_1, label %.critedge, !llvm.loop !12

sub_1:                                            ; preds = %.lr.ph.preheader, %.lr.ph
  %6 = phi ptr [ %i.l, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %.05495146 = phi ptr [ %.05495, %.lr.ph ], [ %.05495143, %.lr.ph.preheader ] ; 2 uses
  %.05394145 = phi i64 [ %5, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05596144 = phi i32 [ %.055, %.lr.ph ], [ %.05590, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.not98 = icmp eq i8 %i.p, 82
  br i1 %.not98, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %.tail
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(10) @.str.8) #14
  %.not67 = icmp eq i32 %i.t, 0
  br i1 %.not67, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail.thread, %.tail
  %.055 = add nsw i32 %.05596144, -1              ; 2 uses
  %.not60 = icmp eq i32 %.055, 0
  br i1 %.not60, label %.critedge.thread, label %.lr.ph, !llvm.loop !12

bb.f:                                             ; preds = %.tail.thread
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(10) @.str.9) #14
  %.not68 = icmp eq i32 %i.u, 0
  br i1 %.not68, label %bb.g, label %sub_174

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %.052, ptr noundef nonnull @.str.11) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable

sub_174:                                          ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %.not100 = icmp eq i8 %i.x, 104
  br i1 %.not100, label %.tail72, label %.tail72.thread

.tail72:                                          ; preds = %sub_174
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.tail72.thread

.tail72.thread:                                   ; preds = %sub_174, %.tail72
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(7) @.str.13) #14
  %.not70 = icmp eq i32 %i.ab, 0
  br i1 %.not70, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.tail72.thread, %.tail72
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !19
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ac)
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.i:                                             ; preds = %.tail72.thread
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.14, ptr noundef nonnull %6) #15 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @usage(ptr nonnull poison, ptr noundef %i.af)
  tail call void @exit(i32 noundef 1) #16
  unreachable

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.05394.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %5, %.lr.ph ] ; 2 uses
  %.pn93.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.05495146, %.lr.ph ] ; 2 uses
  %.055.in92.lcssa = phi i32 [ %0, %.lr.ph.preheader ], [ %.05596144, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.ag = icmp slt i32 %.055.in92.lcssa, 3
  br i1 %i.ag, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %bb.e, %bb.d, %.critedge
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ah)
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.j:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn93.lcssa, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 7 uses
  %.not61 = icmp eq i32 %.055.in92.lcssa, 3
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn93.lcssa, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.al, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.am = load i8, ptr %i.aj, align 1
  %.not44.i = icmp eq i8 %i.am, 45
  br i1 %.not44.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %bb.l
  %i.aq = call i32 @hwloc_topology_diff_load_xml(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13
  br label %hwloc_diff_read.exit

bb.m:                                             ; preds = %.tail.i
  %i.ar = tail call noalias dereferenceable_or_null(4097) ptr @malloc(i64 noundef 4097) #18 ; 5 uses
  %.not35.i = icmp eq ptr %i.ar, null
  br i1 %.not35.i, label %hwloc_diff_read.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.as = load ptr, ptr @stdin, align 8, !tbaa !19
  %i.at = tail call i64 @fread(ptr noundef nonnull %i.ar, i64 noundef 1, i64 noundef 4096, ptr noundef %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !20
  %.not3640.i = icmp eq i64 %i.at, 4096
  br i1 %.not3640.i, label %.lr.ph.i, label %._crit_edge.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.av = and i64 %.03141.i, 9223372036854771712  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.ax = load ptr, ptr @stdin, align 8, !tbaa !19
  %i.ay = tail call i64 @fread(ptr noundef nonnull %i.aw, i64 noundef 1, i64 noundef %i.av, ptr noundef %i.ax) ; 2 uses
  %i.az = add i64 %i.ay, %i.bb                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  %.not36.i = icmp eq i64 %i.ay, %i.av
  br i1 %.not36.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.n
  %i.bb = phi i64 [ %i.az, %bb.n ], [ 4096, %.preheader.i ] ; 2 uses
  %.042.i = phi ptr [ %i.be, %bb.n ], [ %i.ar, %.preheader.i ] ; 2 uses
  %.03141.i = phi i64 [ %i.bc, %bb.n ], [ 4096, %.preheader.i ] ; 2 uses
  %i.bc = shl i64 %.03141.i, 1                    ; 2 uses
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = tail call ptr @realloc(ptr noundef nonnull %.042.i, i64 noundef %i.bd) #19 ; 5 uses
  %.not37.i = icmp eq ptr %i.be, null
  br i1 %.not37.i, label %bb.o, label %bb.n

bb.o:                                             ; preds = %.lr.ph.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.27, i64 43, i64 1, ptr %i.bf) #20 ; 0 uses
  tail call void @free(ptr noundef nonnull %.042.i) #13
  br label %hwloc_diff_read.exit.thread

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.ar, %.preheader.i ], [ %i.be, %bb.n ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.at, %.preheader.i ], [ %i.az, %bb.n ]
  %i.bg = trunc i64 %.lcssa.i to i32
  %i.bh = add i32 %i.bg, 1
  %i.bi = call i32 @hwloc_topology_diff_load_xmlbuffer(ptr noundef nonnull %.0.lcssa.i, i32 noundef %i.bh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13
  call void @free(ptr noundef nonnull %.0.lcssa.i) #13
  br label %hwloc_diff_read.exit

hwloc_diff_read.exit:                             ; preds = %.tail.thread.i, %._crit_edge.i
  %.032.i = phi i32 [ %i.aq, %.tail.thread.i ], [ %i.bi, %._crit_edge.i ]
  %i.bj = icmp slt i32 %.032.i, 0
  br i1 %i.bj, label %hwloc_diff_read.exit.thread, label %bb.p

hwloc_diff_read.exit.thread:                      ; preds = %bb.o, %bb.m, %hwloc_diff_read.exit
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.aj) #15 ; 0 uses
  br label %bb.ae

bb.p:                                             ; preds = %hwloc_diff_read.exit
  %i.bm = call i32 @hwloc_topology_init(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bo = call i32 @hwloc_topology_set_all_types_filter(ptr noundef %i.bn, i32 noundef 0) #13 ; 0 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bq = call i32 @hwloc_topology_set_flags(ptr noundef %i.bp, i64 noundef 9) #13 ; 0 uses
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa, ptr noundef nonnull dereferenceable(8) @.str.16) #14
  %.not62 = icmp eq i32 %i.br, 0
  br i1 %.not62, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not63 = icmp eq ptr %i.bs, null
  br i1 %.not63, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.aj) #15 ; 0 uses
  br label %bb.ad

bb.s:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bw = call i32 @hwloc_topology_set_xml(ptr noundef %i.bv, ptr noundef nonnull %i.bs) #13
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.18, ptr noundef %i.bz, ptr noundef nonnull %i.aj) #15 ; 0 uses
  br label %bb.ad

bb.u:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.cc = call i32 @hwloc_topology_set_xml(ptr noundef %i.cb, ptr noundef nonnull %.lcssa) #13
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.19, ptr noundef nonnull %.lcssa) #15 ; 0 uses
  br label %bb.ad

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ch = call i32 @hwloc_topology_load(ptr noundef %i.cg) #13
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = call i64 @fwrite(ptr nonnull @.str.20, i64 24, i64 1, ptr %i.cj) #20 ; 0 uses
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cm = call i32 @hwloc_topology_diff_apply(ptr noundef %i.ck, ptr noundef %i.cl, i64 noundef %.05394.lcssa) #13 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !19
  %.not65 = icmp eq i64 %.05394.lcssa, 0
  %i.cp = select i1 %.not65, ptr @.str.23, ptr @.str.22
  %i.cq = sub nsw i32 0, %i.cm
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.aj, i32 noundef %i.cq) #15 ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not64 = icmp eq ptr %.0, null
  %i.ct = select i1 %.not64, ptr %.lcssa, ptr %.0
  %i.cu = call i32 @hwloc_topology_export_xml(ptr noundef %i.cs, ptr noundef nonnull %i.ct, i64 noundef 0) #13
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.24, ptr noundef %.0) #15 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @hwloc_topology_destroy(ptr noundef %i.cy) #13
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.da = call i32 @hwloc_topology_diff_destroy(ptr noundef %i.cz) #13 ; 0 uses
  call void @exit(i32 noundef 0) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @hwloc_topology_destroy(ptr noundef %i.db) #13
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.dd = call i32 @hwloc_topology_diff_destroy(ptr noundef %i.dc) #13 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %hwloc_diff_read.exit.thread
  call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @hwloc_topology_init(ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_set_all_types_filter(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_set_xml(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_load(ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_diff_apply(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_export_xml(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @hwloc_topology_destroy(ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_topology_diff_destroy(ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_get_api_version() local_unnamed_addr #8

declare i32 @hwloc_topology_diff_load_xml(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @hwloc_topology_diff_load_xmlbuffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !21}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS21hwloc_topology_diff_u", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTS14hwloc_topology", !13, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
